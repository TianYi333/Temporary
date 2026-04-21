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
#define DEFAULT_IP_ADDRESS "192.168.1.5"
#define DEFAULT_IP_MASK "255.255.255.0"
#define DEFAULT_GW_ADDRESS "192.168.1.1"
static int complete_nw_thread;
static sys_thread_t main_thread_handle;
void start_application();
#define THREAD_STACKSIZE 1024
struct netif server_netif;

/******************************任务函数定义******************************/
void network_thread(void *p);
void main_thread(void *p);
void Lwip_Receive_thread(void *p);/* 以太网数据接收处理任务 */
void PS_AXI_TO_PL_thread(void *p);/* PL端发送到PS端任务 */
void PL_AXI_TO_PS_thread(void *p);/* PS端发送到PL端任务 */
void Emmc_Reading_writing_thread(void *p);/* emmc读写任务  */
void Wdt_thread(void *p);/* 看门狗任务  */


/******************************消息队列******************************/
QueueHandle_t Lwip_Receive_Queue =NULL;/* 以太网数据接收队列 */
QueueHandle_t Lwip_Send_Queue =NULL;/* 以太网数据发送队列 */
QueueHandle_t PS_AXI_TO_PL_Queue =NULL;/* PS发送到PL队列 */
QueueHandle_t PL_AXI_TO_PS_Queue =NULL;/* PL发送到PS队列 */

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
		512,
		DEFAULT_THREAD_PRIO-1);

	sys_thread_new("PS_AXI_TO_PL_thread", PS_AXI_TO_PL_thread, 0,
		256*4,
		DEFAULT_THREAD_PRIO-1);

	sys_thread_new("PL_AXI_TO_PS_thread", PL_AXI_TO_PS_thread, 0,
		256*4,
		DEFAULT_THREAD_PRIO-1);

	sys_thread_new("Emmc_Reading_writing_thread", Emmc_Reading_writing_thread, 0,
		256*4,
		DEFAULT_THREAD_PRIO-1);

	sys_thread_new("Wdt_thread", Wdt_thread, 0,
		256,
		DEFAULT_THREAD_PRIO+1);

	Lwip_Receive_Queue = xQueueCreate(5,33);//网口接收数据暂订为32字节
	Lwip_Send_Queue = xQueueCreate(5,32);//网口发送数据暂订为32字节
	PS_AXI_TO_PL_Queue = xQueueCreate(5,32);//PS发送到PL队列暂订为32字节
	PL_AXI_TO_PS_Queue = xQueueCreate(5,32);//PL发送到PS队列暂订为32字节
	vTaskStartScheduler();
	while(1);
	return 0;
}


void main_thread(void *p)
{
#if ((LWIP_IPV6==0) && (LWIP_DHCP==1))
	int mscnt = 0;
#endif
	/* initialize lwIP before calling sys_thread_new */
	lwip_init();

	/* any thread using lwIP should be created using sys_thread_new */
	sys_thread_new("nw_thread", network_thread, NULL,
			THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);

	/* Suspend Task until auto-negotiation is completed */
	if (!complete_nw_thread)
		vTaskSuspend(NULL);

	while (1) {
		vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		if (server_netif.ip_addr.addr) {
			xil_printf("DHCP request success\r\n");
			break;
		}
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= 5000) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			assign_default_ip(&(server_netif.ip_addr),
						&(server_netif.netmask),
						&(server_netif.gw));
			break;
		}
	}

	xil_printf("\r\n");

	/* start the application*/
	start_application();

	vTaskDelete(NULL);
	return;
}

void network_thread(void *p)
{
#if ((LWIP_IPV6==0) && (LWIP_DHCP==1))
	int mscnt = 0;
#endif

	/* the mac address of the board. this should be unique per board */
	u8_t mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	xil_printf("\n\r\n\r");
	xil_printf("-----lwIP Socket Mode TCP Server Application------\r\n");

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
			THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);

	complete_nw_thread = 1;

	/* Resume the main thread; auto-negotiation is completed */
	vTaskResume(main_thread_handle);

#if ((LWIP_IPV6==0) && (LWIP_DHCP==1))
	dhcp_start(&server_netif);
	while (1) {
		vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		dhcp_fine_tmr();
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= DHCP_COARSE_TIMER_SECS*1000) {
			dhcp_coarse_tmr();
			mscnt = 0;
		}
	}
#else
	vTaskDelete(NULL);
#endif
}


void Lwip_Receive_thread(void *p)/* 以太网数据接收处理任务 */
{
	uint8_t timeout_count = 0;//超时计数
	while(1)
	{
		if(xQueueReceive(Lwip_Receive_Queue,Lwip_Receive_buf,1000) == pdFAIL)
		{
			timeout_count++;
			if(timeout_count>=30)
			{
				timeout_count=0;
				//strcpy(Lwip_Send_buf, "NO data");
				//xQueueSend(Lwip_Send_Queue,Lwip_Send_buf,0);
			}
			continue;
		}
		else
		{

			timeout_count = 0;
			Lwip_Receive_function();
		}
	}
	vTaskDelete( NULL );
}

uint32_t Tx_Data_0=1,Tx_Data_0_last;
void PS_AXI_TO_PL_thread(void *p)/* PS端发送到PL端任务*/
{
	uint32_t Tx_Data_1,Tx_Data_2,Tx_Data_3,Tx_Data_4,Tx_Data_5,Tx_Data_6,Tx_Data_7,Tx_Data_8;
	uint8_t Tx_Data_buf[32]={0};
	Tx_Data_0_last=Tx_Data_0;
	while(1)
	{
		if(xQueueReceive(PS_AXI_TO_PL_Queue,Tx_Data_buf,1000) == pdPASS)
		{

			Tx_Data_1=Tx_Data_buf[0]<<24|Tx_Data_buf[1]<<16|Tx_Data_buf[2]<<8|Tx_Data_buf[3];
			Tx_Data_2=Tx_Data_buf[4]<<24|Tx_Data_buf[5]<<16|Tx_Data_buf[6]<<8|Tx_Data_buf[7];
			Tx_Data_3=Tx_Data_buf[8]<<24|Tx_Data_buf[9]<<16|Tx_Data_buf[10]<<8|Tx_Data_buf[11];
			Tx_Data_4=Tx_Data_buf[12]<<24|Tx_Data_buf[13]<<16|Tx_Data_buf[14]<<8|Tx_Data_buf[15];
			Tx_Data_5=Tx_Data_buf[16]<<24|Tx_Data_buf[17]<<16|Tx_Data_buf[18]<<8|Tx_Data_buf[19];
			Tx_Data_6=Tx_Data_buf[20]<<24|Tx_Data_buf[21]<<16|Tx_Data_buf[22]<<8|Tx_Data_buf[23];
			Tx_Data_7=Tx_Data_buf[24]<<24|Tx_Data_buf[25]<<16|Tx_Data_buf[26]<<8|Tx_Data_buf[27];
			Tx_Data_8=Tx_Data_buf[28]<<24|Tx_Data_buf[29]<<16|Tx_Data_buf[30]<<8|Tx_Data_buf[31];
			PRO_FPGA_CTRL_mWriteReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG1_OFFSET,Tx_Data_1);
			PRO_FPGA_CTRL_mWriteReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG2_OFFSET,Tx_Data_2);
			PRO_FPGA_CTRL_mWriteReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG3_OFFSET,Tx_Data_3);
			PRO_FPGA_CTRL_mWriteReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG4_OFFSET,Tx_Data_4);
			PRO_FPGA_CTRL_mWriteReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG5_OFFSET,Tx_Data_5);
			PRO_FPGA_CTRL_mWriteReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG6_OFFSET,Tx_Data_6);
			PRO_FPGA_CTRL_mWriteReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG7_OFFSET,Tx_Data_7);
			PRO_FPGA_CTRL_mWriteReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG8_OFFSET,Tx_Data_8);
			xil_printf("Tx_Data_1 %08x\r\n",Tx_Data_1);
			xil_printf("Tx_Data_2 %08x\r\n",Tx_Data_2);
			xil_printf("Tx_Data_3 %08x\r\n",Tx_Data_3);
			xil_printf("Tx_Data_4 %08x\r\n",Tx_Data_4);
			xil_printf("Tx_Data_5 %08x\r\n",Tx_Data_5);
			xil_printf("Tx_Data_6 %08x\r\n",Tx_Data_6);
			xil_printf("Tx_Data_7 %08x\r\n",Tx_Data_7);
			xil_printf("Tx_Data_8 %08x\r\n",Tx_Data_8);
			if(Tx_Data_0==0xffffffff)
			{
				Tx_Data_0=1;
			}
			else
			{
				Tx_Data_0++;
			}
			PRO_FPGA_CTRL_mWriteReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG0_OFFSET,Tx_Data_0);
		}
	}
}

void PL_AXI_TO_PS_thread(void *p)/* PL端发送到PS端任务 */
{
	uint32_t Rx_Data_1,Rx_Data_16,Rx_Data_17,Rx_Data_18,Rx_Data_19,Rx_Data_20,Rx_Data_21,Rx_Data_22,Rx_Data_23,Rx_Data_24;
	uint8_t Rx_Axi_buf[32]={0};
	uint8_t Tx_Lwip_buf[32]={0};
	int n=0;
	while(1)
	{
		vTaskDelay(1);
		if(Tx_Data_0_last!=Tx_Data_0)
		{
			//因舵机控制指令无反馈，故在此判断若控制指令为舵机控制，则手动回复
			Rx_Data_1=(PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG1_OFFSET)>>8)&0xffffff;
			if(Rx_Data_1==0xAB0108||Rx_Data_1==0xAB010D)
			{
				Tx_Lwip_buf[0]=(Rx_Data_1>>16)&0xff;
				Tx_Lwip_buf[1]=(Rx_Data_1>>8)&0xff;
				Tx_Lwip_buf[2]=Rx_Data_1&0xff;
				Tx_Lwip_buf[3]=0x01;
				Tx_Lwip_buf[4]=0x00;
				Tx_Data_0_last=Tx_Data_0;
			}
			else
			{
				Rx_Data_16=PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG16_OFFSET);
				n=0;
				while(n<600&&(Rx_Data_16!=Tx_Data_0))//等待600ms
				{
					n++;
					Rx_Data_16=PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG16_OFFSET);
					vTaskDelay(1);
				}
				if(n>=300)
				{
					Tx_Lwip_buf[0]=0xAB;
					Tx_Lwip_buf[1]=0xff;
					Tx_Lwip_buf[2]=0x01;//功能码-响应超时
					Tx_Lwip_buf[3]=0x02;
					Tx_Lwip_buf[4]=0xff;
					Tx_Lwip_buf[5]=0xff;
					xil_printf("Error No response received\r\n");
				}
				else if((Rx_Data_16==Tx_Data_0)&&(Rx_Data_16>0))
				{
    				xil_printf("Rx_Data_16 %d\r\n",Rx_Data_16);
    				Rx_Data_17=PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG17_OFFSET);
    				Rx_Data_18=PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG18_OFFSET);
    				Rx_Data_19=PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG19_OFFSET);
    				Rx_Data_20=PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG20_OFFSET);
    				Rx_Data_21=PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG21_OFFSET);
    				Rx_Data_22=PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG22_OFFSET);
    				Rx_Data_23=PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG23_OFFSET);
    				Rx_Data_24=PRO_FPGA_CTRL_mReadReg(XPAR_PRO_FPGA_CTRL_0_S00_AXI_BASEADDR, PRO_FPGA_CTRL_S00_AXI_SLV_REG24_OFFSET);
    				xil_printf("rx_data_17 %08x\r\n",Rx_Data_17);
    				xil_printf("rx_data_18 %08x\r\n",Rx_Data_18);
    				xil_printf("rx_data_19 %08x\r\n",Rx_Data_19);
    				xil_printf("rx_data_20 %08x\r\n",Rx_Data_20);
    				xil_printf("rx_data_21 %08x\r\n",Rx_Data_21);
    				xil_printf("rx_data_22 %08x\r\n",Rx_Data_22);
    				xil_printf("rx_data_23 %08x\r\n",Rx_Data_23);
    				xil_printf("rx_data_24 %08x\r\n",Rx_Data_24);
    				Rx_Axi_buf[0]=(Rx_Data_17>>24)&0xff;
    				Rx_Axi_buf[1]=(Rx_Data_17>>16)&0xff;
    				Rx_Axi_buf[2]=(Rx_Data_17>>8)&0xff;
    				Rx_Axi_buf[3]=Rx_Data_17&0xff;
    				Rx_Axi_buf[4]=(Rx_Data_18>>24)&0xff;
    				Rx_Axi_buf[5]=(Rx_Data_18>>16)&0xff;
    				Rx_Axi_buf[6]=(Rx_Data_18>>8)&0xff;
    				Rx_Axi_buf[7]=Rx_Data_18&0xff;
    				Rx_Axi_buf[8]=(Rx_Data_19>>24)&0xff;
    				Rx_Axi_buf[9]=(Rx_Data_19>>16)&0xff;
    				Rx_Axi_buf[10]=(Rx_Data_19>>8)&0xff;
    				Rx_Axi_buf[11]=Rx_Data_19&0xff;
    				Rx_Axi_buf[12]=(Rx_Data_20>>24)&0xff;
    				Rx_Axi_buf[13]=(Rx_Data_20>>16)&0xff;
    				Rx_Axi_buf[14]=(Rx_Data_20>>8)&0xff;
    				Rx_Axi_buf[15]=Rx_Data_20&0xff;
    				Rx_Axi_buf[16]=(Rx_Data_21>>24)&0xff;
    				Rx_Axi_buf[17]=(Rx_Data_21>>16)&0xff;
    				Rx_Axi_buf[18]=(Rx_Data_21>>8)&0xff;
    				Rx_Axi_buf[19]=Rx_Data_21&0xff;
    				Rx_Axi_buf[20]=(Rx_Data_22>>24)&0xff;
    				Rx_Axi_buf[21]=(Rx_Data_22>>16)&0xff;
    				Rx_Axi_buf[22]=(Rx_Data_22>>8)&0xff;
    				Rx_Axi_buf[23]=Rx_Data_22&0xff;
    				Rx_Axi_buf[24]=(Rx_Data_23>>24)&0xff;
    				Rx_Axi_buf[25]=(Rx_Data_23>>16)&0xff;
    				Rx_Axi_buf[26]=(Rx_Data_23>>8)&0xff;
    				Rx_Axi_buf[27]=Rx_Data_23&0xff;
    				Rx_Axi_buf[28]=(Rx_Data_24>>24)&0xff;
    				Rx_Axi_buf[29]=(Rx_Data_24>>16)&0xff;
    				Rx_Axi_buf[30]=(Rx_Data_24>>8)&0xff;
    				Rx_Axi_buf[31]=Rx_Data_24&0xff;
    				if(Rx_Axi_buf[0]==0xAB)
    				{
    					Tx_Lwip_buf[0]=Rx_Axi_buf[0];
    					Tx_Lwip_buf[1]=Rx_Axi_buf[1];
    					switch(Rx_Axi_buf[1])
    					{
    						case 0x01://舵机
    						  memcpy(Tx_Lwip_buf, Rx_Axi_buf, 32);
    						  break;

    						case 0x02://状态灯
    							Tx_Lwip_buf[2]=Rx_Axi_buf[2];//功能码
    							Tx_Lwip_buf[3]=0x01;//内容长度
    							Tx_Lwip_buf[4]=Rx_Axi_buf[3];//内容
    							break;

    						case 0x03://温湿度传感器
    							Tx_Lwip_buf[2]=0x01;//功能码
    							Tx_Lwip_buf[3]=0x0F;//内容长度
    							memcpy(&Tx_Lwip_buf[4], &Rx_Axi_buf[2], 15);
    							break;

    						case 0x04://角度传感器
    							break;

    						case 0x05://显示屏
    							Tx_Lwip_buf[2]=0X00;//功能码
    							Tx_Lwip_buf[3]=0X01;//内容长度
    							Tx_Lwip_buf[4]=0X00;//内容
    							break;

    						case 0x06://继电器
    							if(Rx_Axi_buf[2]==0x00)
    							{
									Tx_Lwip_buf[2]=Rx_Axi_buf[2];//功能码
									Tx_Lwip_buf[3]=0X01;//内容长度
									Tx_Lwip_buf[4]=0x00;//内容
    							}
    							else if(Rx_Axi_buf[2]==0x01)
    							{
									Tx_Lwip_buf[2]=Rx_Axi_buf[2];//功能码
									Tx_Lwip_buf[3]=0X01;//内容长度
									Tx_Lwip_buf[4]=Rx_Axi_buf[3];//内容
    							}
    							break;

    						case 0x07://相机控制
    							break;

    						case 0x08://转台
    							Tx_Lwip_buf[2]=0X00;//功能码
    							Tx_Lwip_buf[3]=0X01;//内容长度
    							Tx_Lwip_buf[4]=0X00;//内容
    							break;

    						default:
    							break;
    					}
    				}
    				else if(Rx_Axi_buf[0]==0xCC)
    				{
    					Tx_Lwip_buf[0]=Rx_Axi_buf[0];
    					Tx_Lwip_buf[1]=Rx_Axi_buf[1];
    					Tx_Lwip_buf[2]=0x01;//功能码
    					Tx_Lwip_buf[3]=0x0C;//内容长度
    					memcpy(&Tx_Lwip_buf[4], &Rx_Axi_buf[2], 12);
    				}
    				else
    				{
    					Tx_Lwip_buf[0]=0xAB;
    					Tx_Lwip_buf[1]=0xff;
    					Tx_Lwip_buf[2]=0x02;//功能码-响应错误
    					Tx_Lwip_buf[3]=0x02;
    					Tx_Lwip_buf[4]=0xff;
    					Tx_Lwip_buf[5]=0xff;
    					xil_printf("Error No correct response received\r\n");
    				}
    			}
				Tx_Data_0_last=Tx_Data_0;
			}
			xQueueSend(Lwip_Send_Queue,Tx_Lwip_buf,0);
			memset(Rx_Axi_buf,0,32);
			memset(Tx_Lwip_buf,0,32);
		}
	}
}

void Emmc_Reading_writing_thread(void *p)/* emmc读写任务 */
{
	vTaskDelay(10000);
    int status,len,num_len;
	char receive_str[40]={0};
    char num_str[10]={0};
    int num = 0;
	char str_date[40] = __DATE__; //示例 "Mar 23 2022"
	char str_time[10] = __TIME__;
	const char newline_str[] = "\r\n";
	strcat(str_date, newline_str);
	strcat(str_time, newline_str);
	strcat(str_date, str_time);

    status = sd_mount();           //挂载SD卡
    if(status != XST_SUCCESS){
		xil_printf("Failed to open SD card!\n");
    }
    else
    {
        xil_printf("Success to open SD card!\n");
    }
	sd_read_data(FILE_NAME,(u32)receive_str,40);
	xil_printf("last time %s",receive_str);
	len = strlen(str_date);         //计算字符串长度
	sd_write_data(FILE_NAME,(u32)str_date,len);

	while(1)
	{
		for(int n=0;n<60;n++)//十分钟写入一次（10s*60）
		{
			vTaskDelay(10000);
		}
		num++;
		sprintf(num_str, "%d\r\n", num);
		num_len = strlen(num_str);         //计算字符串长度
		sd_write_data_appoint(FILE_NAME,(u32)num_str,num_len,23);
		sd_read_data(FILE_NAME,(u32)receive_str,len+num_len);
		xil_printf("%s",receive_str);
    	vTaskDelay(1);
	}
}

void Wdt_thread(void *p)/* 看门狗任务  */
{
	 /* 初始化看门狗 */
	if (Wdt_Init(&wdtInstance) != XST_SUCCESS) {
		xil_printf("WDT Init Failed!\n");
	}
	while(1)
	{
		XScuWdt_RestartWdt(&wdtInstance);
    	vTaskDelay(5000);
	}
}
