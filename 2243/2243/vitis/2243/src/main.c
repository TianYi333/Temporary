/*
 * Copyright (C) 2018 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include "main.h"

extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
static int complete_nw_thread;
static sys_thread_t main_thread_handle;

struct netif server_netif;
volatile uint8_t *recv_buffer = (volatile uint8_t *)__recv_buffer_start;//数据地址

/******************************任务函数定义******************************/
void network_thread(void *p);
void main_thread(void *p);
void Lwip_Receive_thread(void *p);/* 以太网数据接收处理任务 */
void PS_AXI_Lite_PL_thread(void *p);/* PS端发送到PL端任务 */
void PL_AXI_Lite_PS_thread(void *p);/* PL端发送到PS端任务 */
void MMWL_App_thread(void *p);/* MMWL任务  */


/******************************消息队列******************************/
QueueHandle_t Lwip_Receive_Queue =NULL;/* 以太网数据接收队列 */
QueueHandle_t Lwip_Send_Queue =NULL;/* 以太网数据发送队列 */
QueueHandle_t PS_AXI_TO_PL_Queue =NULL;/* PS发送到PL队列 */
QueueHandle_t PL_AXI_TO_PS_Queue =NULL;/* PL发送到PS队列 */


/******************************信号量******************************/
SemaphoreHandle_t g_version_sem = NULL;  // 信号量：等待版本回复

static void print_ip(char *msg, ip_addr_t *ip)
{
	xil_printf(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
				ip4_addr3(ip), ip4_addr4(ip));
}

static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	int err;

	xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

	err = inet_aton(DEFAULT_IP_ADDRESS, ip);
	if(!err)
		xil_printf("Invalid default IP address: %d\r\n", err);

	err = inet_aton(DEFAULT_IP_MASK, mask);
	if(!err)
		xil_printf("Invalid default IP MASK: %d\r\n", err);

	err = inet_aton(DEFAULT_GW_ADDRESS, gw);
	if(!err)
		xil_printf("Invalid default gateway address: %d\r\n", err);

	print_ip("Board IP:       ", ip);
	print_ip("Netmask :       ", mask);
	print_ip("Gateway :       ", gw);
}


int main()
{
	main_thread_handle = sys_thread_new("main_thread", main_thread, 0,
		THREAD_STACKSIZE,
		DEFAULT_THREAD_PRIO);

	sys_thread_new("Lwip_Receive_thread", Lwip_Receive_thread, 0,
		1024,
		DEFAULT_THREAD_PRIO);

	sys_thread_new("PS_AXI_Lite_PL_thread", PS_AXI_Lite_PL_thread, 0,
		1024,
		DEFAULT_THREAD_PRIO);

	sys_thread_new("PL_AXI_Lite_PS_thread", PL_AXI_Lite_PS_thread, 0,
		1024,
		DEFAULT_THREAD_PRIO);

	sys_thread_new("MMWL_App_thread", MMWL_App_thread, 0,
		2048,
		DEFAULT_THREAD_PRIO);

	Lwip_Receive_Queue = xQueueCreate(200,63);//网口接收数据暂订为32字节
	Lwip_Send_Queue = xQueueCreate(200,60);//网口发送数据暂订为32字节
	PS_AXI_TO_PL_Queue = xQueueCreate(8,sizeof(AxiLiteFrame_t));//PS发送到PL队列暂订为32字节
	PL_AXI_TO_PS_Queue = xQueueCreate(8,sizeof(AxiLiteFrame_t));//PL发送到PS队列暂订为32字节


	vTaskStartScheduler();
	while(1);
	return 0;
}


void main_thread(void *p)
{
	/* initialize lwIP before calling sys_thread_new */
	lwip_init();

	/* any thread using lwIP should be created using sys_thread_new */
	sys_thread_new("nw_thread", network_thread, NULL,
			THREAD_STACKSIZE,
			DEFAULT_THREAD_PRIO);

	/* Suspend Task until auto-negotiation is completed */
	if (!complete_nw_thread)
		vTaskSuspend(NULL);

	assign_default_ip(&(server_netif.ip_addr), &(server_netif.netmask),
							&(server_netif.gw));

	xil_printf("\r\n");

	/* start the application*/
	start_application();

	vTaskDelete(NULL);
	return;
}

void network_thread(void *p)
{
	u8_t mac_ethernet_address[] =	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	xil_printf("\n\r\n\r");
	xil_printf("------lwIP Socket Mode TCP Client Application------\r\n");

	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(&server_netif, NULL, NULL, NULL, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\r\n");
		return;
	}

	netif_set_default(&server_netif);

	/* specify that the network if is up */
	netif_set_up(&server_netif);

	/* start packet receive thread - required for lwIP operation */
	sys_thread_new("xemacif_input_thread",
			(void(*)(void*))xemacif_input_thread, &server_netif,
			THREAD_STACKSIZE,
			DEFAULT_THREAD_PRIO);

	complete_nw_thread = 1;

	/* Resume the main thread; auto-negotiation is completed */
	vTaskResume(main_thread_handle);

	vTaskDelete(NULL);

	return;
}

void Lwip_Receive_thread(void *p)/* 以太网数据接收处理任务 */
{
	while(1)
	{
		vTaskDelay(1);
		Lwip_Receive_function();
	}
	vTaskDelete( NULL );
}


void PS_AXI_Lite_PL_thread(void *p)/* PS端发送到PL端任务*/
{

	while(1)
	{
		vTaskDelay(1);
		PS_AXI_Lite_PL_function();
	}
	vTaskDelete( NULL );
}

void PL_AXI_Lite_PS_thread(void *p)/* PL端发送到PS端任务*/
{

	while(1)
	{
		vTaskDelay(1);
		PL_AXI_Lite_PS_function();
	}
	vTaskDelete( NULL );
}

void MMWL_App_thread(void *p)
{

	while (1)
	{
		vTaskDelay(5000);
		MMWL_App();
	}
	vTaskDelete( NULL );
}
