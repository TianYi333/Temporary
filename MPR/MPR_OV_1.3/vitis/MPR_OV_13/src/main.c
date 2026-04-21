/*
 * Copyright (C) 2018 - 2019 Xilinx, Inc.
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
struct netif server_netif;

uint8_t *recv_buffer = Int16_Data_Address;//雷达数据地址
uint8_t FLAG_MD5_check=0;//MD5校验标志位
uint8_t FLAG_command_send_OK=0;//设置发送成功标志位
volatile uint8_t FLAG_Collection_Status=0;//雷达采集状态
volatile uint8_t FLAG_Collection_Start=1;//雷达采集开始标志位（默认开始）
uint8_t  received_frame_count = 0; // 已接收数据帧数
volatile uint32_t sampling_interval=30;//采集间隔（单位s）
int  frame_data_count = 0; // 一帧数据数
char* MD5_Hash_Result_buf;//雷达校验码

// 全局设备信息结构体初始化
Device_Information g_Device_Information = {
	    .Model = 24,    		// 型号24
	    .year = 26,   			// 2026年
	    .month = 2,     		// 2月
	    .number = 1,    	// 序号1
};

// 全局时间结构体初始化（默认值，上位机下发后覆盖）
TimeTarInfo_t g_time_tar_info = {
    .year = 25,    // 2025
    .month = 12,   // 12月
    .day = 12,     // 12日
    .hour = 10,    // 10时
    .min = 0,      // 0分
    .tar_num = 0   // 初始目标数0
};

/******************************任务函数定义******************************/
static sys_thread_t main_thread_handle;
void network_thread(void *p);
void main_thread(void *p);
void md5_thread();
void clientr1_data_processing_thread();
void clientr2_data_processing_thread();
void key_thread();
void Timed_Trigger_thread();
void Trigger_Protection_thread();
void Emmc_Reading_writing_thread(void *p);
void Wdt_thread(void *p);
void UART1_thread(void *p);
void UART1_send_thread(void *p);
void Radar_Power_thread(void *p);
void Timing_thread(void *p);
void OV5640_thread(void *p);

/******************************消息队列******************************/
QueueHandle_t Lwip_Server_Send_host_computer_Queue = NULL;	//以太网服务端发送到上位机队列
QueueHandle_t Lwip_Server_Recv_To_Emmc_Queue = NULL;		//以太网服务端数据接收队列
QueueHandle_t Lwip_Server_Recv_To_Algorithm_Queue = NULL;	//网口服务端接收到算法部分
QueueHandle_t Lwip_Server_Recv_To_OV5640_Queue = NULL;//网口服务端接收到摄像头处理部分
QueueHandle_t Lwip_Clientr1_Recv_Queue = NULL;				//以太网客户端1数据接收队列
QueueHandle_t Lwip_Clientr1_Send_Queue = NULL;				//以太网客户端1数据发送队列
QueueHandle_t Lwip_Clientr2_Recv_count_Queue = NULL;		//以太网客户端2数据接收计数队列
QueueHandle_t UART_Recv_Queue = NULL;						//UART1数据接收计数队列
QueueHandle_t UART_Send_Queue = NULL;						//UART1数据发送计数队列
QueueHandle_t Radar_Power_Queue = NULL;						//雷达电源控制数据队列

/******************************信号量******************************/
//二值信号量
SemaphoreHandle_t xKey_flagSemaphore;				//按键信号量
SemaphoreHandle_t xReceive_endSemaphore;			//数据接收完成信号量
SemaphoreHandle_t xFMCW_parameter_changeSemaphore;	//FMCW参数更新信号量

//互斥信号量
SemaphoreHandle_t xClient1Mutex;        			//Client1全局变量互斥信号量
SemaphoreHandle_t xClient2Mutex;        			//Client2全局变量互斥信号量
SemaphoreHandle_t xTargetConfigSemaphore; 			//参数写入互斥信号量
SemaphoreHandle_t xTimeMutex;						//时间互斥信号量
SemaphoreHandle_t xTempStorageSemaphore;			//存储保护互斥信号量
SemaphoreHandle_t xEmmcFileSemaphore;				//EMMC文件操作互斥信号量




// 提取标志字符串后到分隔符前的内容
char *extract_after_marker_safe(const char *str, const char *marker, char delimiter) {
    if (!str || !marker) return NULL;

    char *start = strstr(str, marker);
    if (!start) return NULL;

    start += strlen(marker);

    // 处理空字符串情况
    if (*start == '\0') return NULL;

    char *end = strchr(start, delimiter);

    if (!end) {
        return strdup(start);
    } else {
        // 检查长度是否有效
        if (end <= start) return NULL;

        size_t len = end - start;
        char *result = malloc(len + 1);
        if (!result) return NULL;

        strncpy(result, start, len);
        result[len] = '\0';
        return result;
    }
}


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
	sys_thread_new("start_application_server", start_application_server, 0,
			2048,
			DEFAULT_THREAD_PRIO+1);

	sys_thread_new("start_application_client1", start_application_client1, 0,
			2048,
			DEFAULT_THREAD_PRIO);

	sys_thread_new("start_application_client2", start_application_client2, 0,
			2048,
			DEFAULT_THREAD_PRIO);

	vTaskDelete(NULL);
	return;
}

void clientr1_data_processing_thread()
{
	char clientr1_recv_buf[100];
	char* MD5_buf=(char*)pvPortMalloc(50); // 动态分配内存;
	char* clientr1_recv_data;
	char* serial_number;//序列号

	while(1)
	{
		if(xQueueReceive(Lwip_Clientr1_Recv_Queue,clientr1_recv_buf,portMAX_DELAY))
		{
			clientr1_recv_data = clientr1_recv_buf;
			serial_number = extract_after_marker_safe(clientr1_recv_data, "Bailu, FMCW_x,BL", ',');
			if (serial_number)
			{
			    sprintf(MD5_buf, "%s!nmgfxt!@#$%%^&*", serial_number);// %和&可能被误认为格式说明符,因此双%%表示：输出一个实际的%字符
			    free(serial_number);
//				xil_printf("MD5_buf: %s \r\n", MD5_buf);
				char* result=md5_APP(MD5_buf);
				 if (result)
				 {
					 MD5_Hash_Result_buf=result;
					 xil_printf("MD5 Hash Result: %s\r\n", result);
					 xQueueSend(Lwip_Clientr1_Send_Queue,result,0);
					 FLAG_MD5_check=1;
				     free(result);// 使用完后，必须调用 free 释放内存！
				 }
				 else
				 {
					 xil_printf("Memory allocation failed!\r\n");
				 }
			}
		}
	}
	vPortFree(MD5_buf);
	vTaskDelete(NULL);
}




void clientr2_data_processing_thread()
{

	while(1)
	{
		vTaskDelay(1);
//		radar_algorithm_test();
		radar_algorithm_upgrade();//雷达数据算法函数
	}
	vTaskDelete(NULL);
}


void key_thread()
{
   int status;
   XGpioPs_Config *ConfigPtr; //PS 端 GPIO 配置信息
   //根据器件 ID 查找配置信息
   ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
   if (ConfigPtr == NULL) {
	   xil_printf("GPIO器件 ID 查找配置错误");
    }
   //初始化 Gpio driver
   XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);

   //设置 KEY 所连接的 MIO 引脚的方向为输入
   XGpioPs_SetDirectionPin(&Gpio, KEY, 0);
   //建立中断,出现错误则打印信息并退出
   status = SetupInterruptSystem(&xInterruptController, &Gpio, GPIO_INTERRUPT_ID);
   if (status != XST_SUCCESS) {
	   xil_printf("Setup interrupt system failed\r\n");
   }
	while(1)
	{
		vTaskDelay(1);//延时等待1ms
		if (key_press) {
			vTaskDelay(20);//延时等待20ms
			if (XGpioPs_ReadPin(&Gpio, KEY) == 0) {
				xil_printf("KEY!\r\n");
				xSemaphoreGive(xKey_flagSemaphore); // 释放按键信号量
			}
			key_press = FALSE;
			XGpioPs_IntrClearPin(&Gpio, KEY); //清除按键 KEY 中断
			XGpioPs_IntrEnablePin(&Gpio, KEY); //使能按键 KEY 中断
		}

	}
	vTaskDelete(NULL);
}

void Timed_Trigger_thread()//定时触发任务
{
	uint32_t Time_count=sampling_interval;
	while(1)
	{
		vTaskDelay(1);
		if(Time_count<sampling_interval)//等待30s
		{
			Time_count++;
			vTaskDelay(999);
		}
		else
		{
			if(FLAG_Collection_Start==1)
			{
				Time_count=0;
				if (FLAG_Equipment_operation_mode == 1 && Clientr1_state == 0 && Clientr2_state == 0) //正常采集模式下，端口1与端口2连接正常
				{
					xSemaphoreGive(xKey_flagSemaphore); // 开始采集
					xil_printf("Start collection!!!!!\r\n");
					FLAG_Collection_Status=1;
				}
			}
		}
	}
	vTaskDelete(NULL);
}

void Trigger_Protection_thread()//触发保障任务
{
	uint8_t send_count=0;//发送计数
	while(1)
	{
		vTaskDelay(1);
		if(FLAG_Collection_Status==1)
		{
			send_count=0;
			while(send_count<3&&FLAG_Collection_Status==1)
			{
//				vTaskDelay(5000);//等待接收5秒
				if(xSemaphoreTake(xReceive_endSemaphore,5000))//等待接收5秒----根据实际调整
				{
					FLAG_Collection_Status=0;
					xil_printf("FLAG_Collection_Status==%d\r\n",FLAG_Collection_Status);
					continue;
				}
				if(Clientr1_state != 0 || Clientr2_state != 0)//如果端口1与端口2断开连接，则循环等待。
				{
					xil_printf("Clientr1 = %d ;   Clientr2 = %d\r\n",Clientr1_state,Clientr2_state);
					vTaskDelay(10);//等待接收5秒
					continue;
				}
				xSemaphoreGive(xKey_flagSemaphore); // 开始采集
				xil_printf("Start collection!!!!!1\r\n");
				send_count++;
			}
			if(send_count>=3)
			{
				FLAG_Collection_Status=0;
			}
		}
	}
	vTaskDelete(NULL);
}



void Emmc_Reading_writing_thread(void *p)/* emmc读写任务 */
{
	vTaskDelay(2000);//延迟
	while(1)
	{
		emmc_FMCW_Parameter();
		vTaskDelay(1);
	}
	vTaskDelete(NULL);
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
//    	xil_printf("喂狗!\n");
	}
	vTaskDelete(NULL);
}

void UART1_thread(void *p)/* UART1任务  */
{
	vTaskDelay(2000);
	uint8_t Rx_uart1_buf[1024]= {0};
	uint8_t Tx_uart1_buf[RX_TRIGGER_LEVEL]= {0};
	uint8_t uart_to_emmc[50]={0};
	uint16_t parameter_hex_16bit=0;//16位的16进制参数
	uint8_t Radar_Power_buf=0;//雷达上电状态
	uint16_t data_byte=0;//数据字节数
	int ret;
    if (UART1_Init() != XST_SUCCESS || uart_Interrupt_Init() != XST_SUCCESS) {
        xil_printf("FATAL: System init failed\n");
    }
	sys_thread_new("UART1_send_thread", UART1_send_thread, 0,
			256,
			DEFAULT_THREAD_PRIO);
	uint8_t tcp_send_buf[50]={0};
	while(1)
	{
		vTaskDelay(1);
		if (data_ready)
		{
			memcpy(&Rx_uart1_buf[0], &rx_buffer[0], rx_head);
			memset(&rx_buffer[0] ,0, rx_head);
			rx_head=0;
			data_ready = 0;

			//串口打印接收到的数据
			printf("UART1 Recv(HEX): ");
		    for (int i = 0; i < RX_TRIGGER_LEVEL; i++) {
		        printf("%02X ", Rx_uart1_buf[i]); // %02X表示两位十六进制，不足补0
		    }
		    printf("\r\n");

			if(Rx_uart1_buf[0]==0xAA )//检验头
			{
				memcpy(Tx_uart1_buf, Rx_uart1_buf, RX_TRIGGER_LEVEL);
				data_byte=(Rx_uart1_buf[3]<<8)|Rx_uart1_buf[4];//大端;

				if(Rx_uart1_buf[1]==0xAA)
				{
					switch(Rx_uart1_buf[2])
					{
						case 0x01://开始采集
							if(Rx_uart1_buf[6]==0x00)//读
							{
						    	Tx_uart1_buf[13]=FLAG_Collection_Start;
							}
							else//写
							{
								if(Rx_uart1_buf[13]==0x00)//停止采集
								{
									FLAG_Collection_Start=0;
								}
								else//开始采集
								{
									FLAG_Collection_Start=1;
								}
							}
							break;

						case 0x02://雷达上电
							if(Rx_uart1_buf[6]==0x00)//读
							{
						    	Tx_uart1_buf[13]=(~XGpioPs_ReadPin(&Gpio, RELAY))&0xFF;//01:上电；00:断电
							}
							else//写
							{
								if(Rx_uart1_buf[13]==0x00)//雷达断电
								{
									Radar_Power_buf=0x00;
									xQueueSend(Radar_Power_Queue,&Radar_Power_buf, 0);
								}
								else//雷达上电
								{
									Radar_Power_buf=0x01;
									xQueueSend(Radar_Power_Queue,&Radar_Power_buf, 0);
								}
							}
							break;

						case 0x03://初始化年/月/日/时/分
						    if (Rx_uart1_buf[10] < 1 || Rx_uart1_buf[10] > 12 || Rx_uart1_buf[11] < 1 || Rx_uart1_buf[11] > 31 || Rx_uart1_buf[12] > 23 || Rx_uart1_buf[13] > 59) {
						        xil_printf("Time value invalid!\r\n");
								Tx_uart1_buf[9]=g_time_tar_info.year;
								Tx_uart1_buf[10]=g_time_tar_info.month;
								Tx_uart1_buf[11]=g_time_tar_info.day;
								Tx_uart1_buf[12]=g_time_tar_info.hour;
								Tx_uart1_buf[13]=g_time_tar_info.min;
						        break;
						    }
						    if (xSemaphoreTake(xTimeMutex, pdMS_TO_TICKS(100)) == pdTRUE)
						    {
								g_time_tar_info.year = Rx_uart1_buf[9];//年
								g_time_tar_info.month = Rx_uart1_buf[10];//月
								g_time_tar_info.day = Rx_uart1_buf[11];//日
								g_time_tar_info.hour = Rx_uart1_buf[12];//时
								g_time_tar_info.min = Rx_uart1_buf[13];//分
								xSemaphoreGive(xTimeMutex);
						    }
							break;

						case 0x04://采集间隔(单位s)（2字节）
							if(Rx_uart1_buf[6]==0x00)//读
							{
								Tx_uart1_buf[12]=(sampling_interval>>8)&0xff;
								Tx_uart1_buf[13]=sampling_interval&0xff;
							}
							else//写
							{
								parameter_hex_16bit=(Rx_uart1_buf[12]<<8)|Rx_uart1_buf[13];//大端
								if(parameter_hex_16bit>=30)
								{
									sampling_interval=parameter_hex_16bit;
								}
								else
								{
									Tx_uart1_buf[12]=(sampling_interval>>8)&0xff;
									Tx_uart1_buf[13]=sampling_interval&0xff;
									xil_printf("采集间隔太短!\r\n");
								}

							}
							break;

						case 0x05://查看当前设备电量信息

							break;

						case 0x06://查看当前设备编号
					    	Tx_uart1_buf[9]=g_Device_Information.Model;//设备型号
					    	Tx_uart1_buf[10]=g_Device_Information.year;//年
					    	Tx_uart1_buf[11]=g_Device_Information.month;//月
					    	Tx_uart1_buf[12]=(g_Device_Information.number>>8)&0xff;//设备编号高8位
					    	Tx_uart1_buf[13]=g_Device_Information.number&0xff;//设备编号高8位
							break;

						case 0x07://相机拍照
							xQueueSend(Lwip_Server_Recv_To_OV5640_Queue,Tx_uart1_buf,0);//发送到拍照
							break;

						case 0x66://打印emmc中储存的数据
						    ret = send_emmc_file_by_single_target_via_uart();
						    if(ret!=XST_SUCCESS)
						    {
						    	Tx_uart1_buf[9]=0xFF;
						    	Tx_uart1_buf[10]=0xFF;
						    	Tx_uart1_buf[11]=0xFF;
						    	Tx_uart1_buf[12]=0xFF;
						    	Tx_uart1_buf[13]=0xFF;
						    	xil_printf("发送结束：失败（错误码：%d）\r\n", ret);
						    }
							break;

						default:
							break;

					}
				}
				else if(Rx_uart1_buf[1]==0xBB)//雷达配置参数
				{
					switch(Rx_uart1_buf[2])
					{
						case 0x01://起始频率
							switch(Rx_uart1_buf[13])
							{
								case 0x01://9000000000
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x01;//开始频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x01;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									vTaskDelay(10);
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x02;//终止频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x06;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									break;

								case 0x02://9100000000
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x01;//开始频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x02;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									vTaskDelay(10);
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x02;//终止频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x07;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									break;

								case 0x03://9200000000
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x01;//开始频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x03;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									vTaskDelay(10);
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x02;//终止频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x08;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									break;

								case 0x04://9300000000
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x01;//开始频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x04;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									vTaskDelay(10);
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x02;//终止频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x09;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									break;

								case 0x05://9400000000
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x01;//开始频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x05;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									vTaskDelay(10);
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x02;//终止频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x0A;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									break;

								case 0x06://9500000000
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x01;//开始频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x06;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									vTaskDelay(10);
									uart_to_emmc[0]=0xAA;
									uart_to_emmc[1]=0xAA;
									uart_to_emmc[2]=0x02;//终止频率
									uart_to_emmc[3]=0x01;//写
									uart_to_emmc[4]=0x00;
									uart_to_emmc[5]=0x0B;
									uart_to_emmc[6]=0xBB;
									xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
									break;

								default:
									break;
							}
							break;

						case 0x02://发射功率（1字节）3~33
							uart_to_emmc[0]=0xAA;
							uart_to_emmc[1]=0xAA;
							uart_to_emmc[2]=0x04;//发射功率
							uart_to_emmc[3]=0x01;//写
							uart_to_emmc[4]=0x00;
							uart_to_emmc[5]=Rx_uart1_buf[13];
							uart_to_emmc[6]=0xBB;
							xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
							break;

						case 0x03://本振回扫时间（2字节）
							uart_to_emmc[0]=0xAA;
							uart_to_emmc[1]=0xAA;
							uart_to_emmc[2]=0x05;//本振回扫时间
							uart_to_emmc[3]=0x01;//写
							uart_to_emmc[4]=Rx_uart1_buf[12];
							uart_to_emmc[5]=Rx_uart1_buf[13];
							uart_to_emmc[6]=0xBB;
							xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
							break;

						case 0x04://中频增益（1字节）
							uart_to_emmc[0]=0xAA;
							uart_to_emmc[1]=0xAA;
							uart_to_emmc[2]=0x06;//中频增益
							uart_to_emmc[3]=0x01;//写
							uart_to_emmc[4]=0x00;
							uart_to_emmc[5]=Rx_uart1_buf[13];
							uart_to_emmc[6]=0xBB;
							xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
							break;

						case 0x05://雷达初始化（1字节）
							uart_to_emmc[0]=0xAA;
							uart_to_emmc[1]=0xAA;
							uart_to_emmc[2]=0x0E;//雷达调频初始化
							uart_to_emmc[3]=0x01;//写
							uart_to_emmc[4]=0x00;
							uart_to_emmc[5]=0X00;
							uart_to_emmc[6]=0xBB;
							xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,uart_to_emmc,0);//发送到雷达参数配置
							break;

						default:
							break;
					}
				}
				if(Rx_uart1_buf[1] == 0xAA && Rx_uart1_buf[2] == 0x07)//拍照
				{
					memset(&Rx_uart1_buf[0] ,0, RX_TRIGGER_LEVEL);
				}
				else if(Rx_uart1_buf[1] == 0xAA && Rx_uart1_buf[2] == 0x66)//上传100组已储存的数据
				{
					memset(&Rx_uart1_buf[0] ,0, RX_TRIGGER_LEVEL);
				}
				else
				{
					XUartPs_Send(&UartCtrl, (u8*)Tx_uart1_buf, RX_TRIGGER_LEVEL);
		             while (XUartPs_IsSending(&UartCtrl)) {
		                 vTaskDelay(pdMS_TO_TICKS(1));
		             }
					memset(&Rx_uart1_buf[0] ,0, RX_TRIGGER_LEVEL);
				}
			}
		}
	}
	vTaskDelete(NULL);
}

void UART1_send_thread(void *p)/*串口发送任务*/
{
    uint8_t Tx_uart1_buf[50]= {0};
    uint16_t data_byte=0;
	uint8_t send_header_buf[14]= {0};//头/年/月/日/时/分/目标数
	while(1)
	{
		vTaskDelay(1);
		if(xQueueReceive(UART_Send_Queue,Tx_uart1_buf,portMAX_DELAY))
		{
			if(Tx_uart1_buf[0]==0)
			{
				data_byte=6+g_target_count*11;
				g_time_tar_info.tar_num=g_target_count;
				send_header_buf[0] = 0xAA;
				send_header_buf[1] = 0xAA;
				send_header_buf[2] = 0x55;
				send_header_buf[3] = g_Device_Information.Model;//设备型号
				send_header_buf[4] = (g_Device_Information.number>>8)&0xff;//设备编号高8位
				send_header_buf[5] = g_Device_Information.number&0xff;//设备编号高8位
				send_header_buf[6] = 0x00;//上传
				send_header_buf[7] = (data_byte>>8)&0xff;
				send_header_buf[8] = data_byte&0xff;
				send_header_buf[9] = g_time_tar_info.year;
				send_header_buf[10] = g_time_tar_info.month;
				send_header_buf[11] = g_time_tar_info.day;
				send_header_buf[12] = g_time_tar_info.hour;
				send_header_buf[13] = g_time_tar_info.min;
				XUartPs_Send(&UartCtrl, (u8*)send_header_buf, 14);
	             while (XUartPs_IsSending(&UartCtrl)) {
	                 vTaskDelay(pdMS_TO_TICKS(1));
	             }
			}
		    XUartPs_Send(&UartCtrl, (u8*)Tx_uart1_buf, 11);
            while (XUartPs_IsSending(&UartCtrl)) {
                vTaskDelay(pdMS_TO_TICKS(1));
            }
		}
		memset(&Tx_uart1_buf[0] ,0, 11);
	}
	vTaskDelete(NULL);
}

void Radar_Power_thread(void *p)/*雷达上电任务*/
{

	while(1)
	{
		Radar_Power();
		vTaskDelay(1);
	}
	vTaskDelete(NULL);
}

void Timing_thread(void *p)/*时间更新任务*/
{
	uint8_t Time_count=0;
	while(1)
	{
		if(Time_count<60)//等待60s
		{
			Time_count++;
		}
		if(Time_count>=60)
		{
			Time_count=0;
			if (xSemaphoreTake(xTimeMutex, pdMS_TO_TICKS(100)) == pdTRUE) {
				g_time_tar_info.min++;
				// 边界1：分钟满60 → 小时+1，分钟归0
				if (g_time_tar_info.min >= 60) {
					g_time_tar_info.min = 0;
					g_time_tar_info.hour++;
					// 边界2：小时满24 → 日+1，小时归0
					if (g_time_tar_info.hour >= 24) {
						g_time_tar_info.hour = 0;
						g_time_tar_info.day++;
						// 边界3：日的最大值（简化版，可扩展为各月实际天数）
						uint8_t day_max = 31; // 暂按最大31天，可优化为按月份判断
						if (g_time_tar_info.month == 2) day_max = 28; // 平年2月，可扩展闰年判断
						else if (g_time_tar_info.month == 4 || g_time_tar_info.month == 6 ||
								 g_time_tar_info.month == 9 || g_time_tar_info.month == 11) day_max = 30;

						if (g_time_tar_info.day > day_max) {
							g_time_tar_info.day = 1;
							g_time_tar_info.month++;
							// 边界4：月份满12 → 年+1，月份归0
							if (g_time_tar_info.month > 12) {
								g_time_tar_info.month = 1;
								g_time_tar_info.year++; // 仅后两位，如25→26（2026）
							}
						}
					}
				}
				xSemaphoreGive(xTimeMutex);
			}
			else
			{
				// 互斥锁获取失败（超时），打印警告
				xil_printf("Time count task: take mutex timeout!\r\n");
			}
		}
		vTaskDelay(1000);
	}
	vTaskDelete(NULL);
}

void OV5640_thread(void *p)/*拍照任务*/
{
	vTaskDelay(5000);
	while(1)
	{
		ov5640_main();
		vTaskDelay(1);
	}
	vTaskDelete(NULL);
}


int main()
{
	main_thread_handle = sys_thread_new("main_thread", main_thread, 0,
				THREAD_STACKSIZE,
				DEFAULT_THREAD_PRIO);

	sys_thread_new("clientr1_data_processing_thread", clientr1_data_processing_thread, 0,
				512,
				DEFAULT_THREAD_PRIO);

	sys_thread_new("clientr2_data_processing_thread", clientr2_data_processing_thread, 0,
				4096,
				DEFAULT_THREAD_PRIO);

//	sys_thread_new("key_thread", key_thread, 0,
//				128,
//				DEFAULT_THREAD_PRIO);

	sys_thread_new("Timed_Trigger_thread", Timed_Trigger_thread, 0,
				128,
				DEFAULT_THREAD_PRIO);

	sys_thread_new("Trigger_Protection_thread", Trigger_Protection_thread, 0,
				128,
				DEFAULT_THREAD_PRIO);

	sys_thread_new("Emmc_Reading_writing_thread", Emmc_Reading_writing_thread, 0,
				4096,
				DEFAULT_THREAD_PRIO);

	sys_thread_new("Wdt_thread", Wdt_thread, 0,
				256,
				DEFAULT_THREAD_PRIO+1);

	sys_thread_new("UART1_thread", UART1_thread, 0,
				4096,
				DEFAULT_THREAD_PRIO);

	sys_thread_new("Radar_Power_thread", Radar_Power_thread, 0,
				256,
				DEFAULT_THREAD_PRIO);

	sys_thread_new("Timing_thread", Timing_thread, 0,
				128,
				DEFAULT_THREAD_PRIO);

	sys_thread_new("OV5640_thread", OV5640_thread, 0,
				4096,
				DEFAULT_THREAD_PRIO);

	xKey_flagSemaphore = xSemaphoreCreateBinary();				//二值信号量
	xReceive_endSemaphore = xSemaphoreCreateBinary();			//二值信号量
	xFMCW_parameter_changeSemaphore = xSemaphoreCreateBinary();	//二值信号量

    xClient1Mutex = xSemaphoreCreateMutex();					//Client1全局变量互斥信号量
    xClient2Mutex = xSemaphoreCreateMutex();					//Client2全局变量互斥信号量
    xTargetConfigSemaphore = xSemaphoreCreateMutex();			//参数写入互斥信号量
    xTimeMutex = xSemaphoreCreateMutex();						//时间互斥信号量
    xTempStorageSemaphore = xSemaphoreCreateMutex();			//存储保护互斥信号量
    xEmmcFileSemaphore = xSemaphoreCreateMutex();				//EMMC文件操作互斥信号量


	Lwip_Server_Send_host_computer_Queue = xQueueCreate(200,50);	//网口服务端发送计数暂订为50字节
	Lwip_Server_Recv_To_Emmc_Queue = xQueueCreate(100,50);		//网口服务端接收到emmc暂订为50字节
	Lwip_Server_Recv_To_Algorithm_Queue = xQueueCreate(100,50);	//网口服务端接收到算法部分暂订为50字节
	Lwip_Server_Recv_To_OV5640_Queue = xQueueCreate(10,50);	//网口服务端接收到摄像头处理部分暂订为50字节
	Lwip_Clientr1_Recv_Queue = xQueueCreate(10,100);			//网口客户端1接收数据暂订为100字节
	Lwip_Clientr1_Send_Queue = xQueueCreate(10,100);			//网口客户端1发送数据暂订为100字节
	Lwip_Clientr2_Recv_count_Queue = xQueueCreate(100,1);		//网口客户端1接收计数暂订为1字节
	UART_Recv_Queue = xQueueCreate(5,50);						//UART接收数据暂订为50字节
	UART_Send_Queue = xQueueCreate(5,50);						//UART发送数据暂订为50字节
	Radar_Power_Queue = xQueueCreate(5,1);						//雷达电源控制数据暂订为1字节

	vTaskStartScheduler();
	while(1);
	return 0;
}
