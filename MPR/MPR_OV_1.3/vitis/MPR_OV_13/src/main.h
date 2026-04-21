#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#include <unistd.h>
#include "netif/xadapter.h"
#include "platform_config.h"
#include "xil_printf.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "lwip/dhcp.h"
#include "lwipopts.h"
#include "xlwipconfig.h"
#include "lwip/tcp.h"
#include "lwip/ip_addr.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "freertos_tcp_perf_client.h"
#include "md5.h"
#include "kiss_fftr.h"
#include "GPIO_MIO.h"
#include <math.h>
#include "radar_algorithm.h"
#include "emmc_rw.h"
#include "wdt_hdl.h"
#include "relay.h"
#include <stdbool.h>
#include "UART1.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "OV5640/vdma_api/vdma_api.h"
#include "OV5640/clk_wiz/clk_wiz.h"
#include "OV5640/emio_sccb_cfg/emio_sccb_cfg.h"
#include "OV5640/ov5640/ov5640_init.h"
#include "ff.h"
#include "xil_cache.h"
#include "OV5640/ov5640/ov5640_APP.h"

/*************************************************结构体声明*************************************************************************/
//定义时间+目标点数结构体（各字段1字节，总6字节）
typedef struct {
    uint8_t year;    // 年份后两位（如25=2025）
    uint8_t month;   // 月份（1-12）
    uint8_t day;     // 日期（1-31）
    uint8_t hour;    // 小时（0-23）
    uint8_t min;     // 分钟（0-59）
    uint8_t tar_num; // 目标点数（0~MAX_TARGETS）
} TimeTarInfo_t;

//设备信息结构体（总5字节）
typedef struct {
    uint8_t Model;    		// 型号
    uint8_t year;   		// 年份后两位（如25=2025）
    uint8_t month;     		// 月份（1-12）
    uint16_t number;    	// 序号16位
} Device_Information;


/*************************************************全局变量声明*************************************************************************/
extern XScuGic xInterruptController;		// 引用FreeRTOS已初始化的中断控制器

/* 声明链接脚本中定义的符号 */
extern uint8_t __recv_buffer_start[];			//0x10000000
extern uint8_t __recv_buffer_end[];			//0x30000000
extern uint8_t *recv_buffer;						//雷达数据地址
extern uint8_t  received_frame_count; 		// 已接收数据帧数
extern int  frame_data_count; 					// 一帧数据数
extern int Clientr1_state;
extern int Clientr2_state;

extern QueueHandle_t Lwip_Server_Send_host_computer_Queue;		//以太网服务端发送到上位机队列
extern QueueHandle_t Lwip_Server_Recv_To_Emmc_Queue;				//以太网服务端数据接收队列
extern QueueHandle_t Lwip_Server_Recv_To_Algorithm_Queue;		//网口服务端接收到算法部分
extern QueueHandle_t Lwip_Server_Recv_To_OV5640_Queue;			//网口服务端接收到摄像头处理部分
extern QueueHandle_t Lwip_Clientr1_Recv_Queue;							//以太网客户端1数据接收队列
extern QueueHandle_t Lwip_Clientr1_Send_Queue;							//以太网客户端1数据发送队列
extern QueueHandle_t Lwip_Clientr2_Recv_count_Queue;					//以太网客户端2数据接收计数队列
extern QueueHandle_t UART_Recv_Queue;										//UART1数据接收计数队列
extern QueueHandle_t UART_Send_Queue;										//UART1数据发送计数队列
extern QueueHandle_t Radar_Power_Queue;									//雷达电源控制数据队列
//二值信号量
extern SemaphoreHandle_t xKey_flagSemaphore;									//按键信号量
extern SemaphoreHandle_t xReceive_endSemaphore;							//数据接收完成信号量
extern SemaphoreHandle_t xFMCW_parameter_changeSemaphore;		//FMCW参数更新信号量

//互斥信号量
extern SemaphoreHandle_t xClient1Mutex;        									//Client1全局变量互斥信号量
extern SemaphoreHandle_t xClient2Mutex;        									//Client2全局变量互斥信号量
extern SemaphoreHandle_t xTargetConfigSemaphore; 							//参数写入互斥信号量
extern SemaphoreHandle_t xTimeMutex;												//时间互斥信号量
extern SemaphoreHandle_t xTempStorageSemaphore;							//存储保护互斥信号量
extern SemaphoreHandle_t xEmmcFileSemaphore;								//EMMC文件操作互斥信号量


extern uint8_t FLAG_MD5_check;									//MD5校验标志位
extern uint8_t FLAG_command_send_OK;						//设置发送成功标志位
extern volatile uint8_t FLAG_Collection_Status;				//雷达采集状态
extern volatile uint8_t FLAG_Collection_Start;				//雷达采集开始标志位
extern char* MD5_Hash_Result_buf;								//雷达校验码
extern volatile uint32_t sampling_interval;					//采集间隔（单位s）
extern TimeTarInfo_t g_time_tar_info;							//全局时间结构体（供中断、发送、解析函数访问）
extern Device_Information g_Device_Information;			//全局设备信息结构体（总5字节）

/*************************************************宏定义*************************************************************************/
/* 内存地址分配 */
#define Int16_Data_Address	 				__recv_buffer_start 	//int16数据储存地址，缓存区大小0x12000000-0x10000000=32MB，单组数据大小(FRAME_NUMBER*Nr * sizeof(int16))，sizeof(int16)=2字节
#define Float_Data_Address	 				0x12000000				//浮点数数据储存地址，缓存区大小0x14000000-0x12000000=32MB(要储存两次的数据)，单组数据大小(FRAME_NUMBER*Nr * sizeof(float))，sizeof(float)=4字节
#define FFTR_Input_Address					0x14000000				//fftr输入数据储存地址(加窗后数据储存地址)，缓存区大小0x15000000-0x14000000=16MB，单组数据大小(FRAME_NUMBER*Nr * sizeof(float))，sizeof(float)=4字节
#define FFTR_Output_Address	 			0x15000000				//fftr输出数据储存地址，缓存区大小0x17000000-0x15000000=32MB，单组数据大小(FRAME_NUMBER*Nr * sizeof(kiss_fft_cpx))，sizeof(kiss_fft_cpx)=8字节
#define Amplitude_Value_Address	 	0x17000000				//幅度值数据储存地址，缓存区大小0x18000000-0x17000000=16MB，单组数据大小(Nr * sizeof(float))，sizeof(float)=4字节
#define BMP_Photo_Address	 			0x18000000				//BMP照片数据储存地址，缓存区大小0x19000000-0x18000000=16MB
#define Photo_Frame_Buffer_Address	0x19000000				//照片帧缓存地址，缓存区大小0x20000000-0x19000000=16MB

#define RECV_BUFFER_SIZE ((size_t)((__recv_buffer_end - __recv_buffer_start)/16))//(0x30000000-0x10000000)/1024/1024=512MB/16=32MB

#define THREAD_STACKSIZE 1024
#define TCP_CLIENT_THREAD_STACKSIZE 2048

#define DEFAULT_IP_ADDRESS	"192.168.1.10"
#define DEFAULT_IP_MASK		"255.255.255.0"
#define DEFAULT_GW_ADDRESS	"192.168.1.1"

#define TCP_SERVER_IP_ADDRESS "192.168.1.6"		//实际
//#define TCP_SERVER_IP_ADDRESS "192.168.1.55"		//与电脑实验IP
#define TCP_Server_CONN_PORT1 80
#define TCP_Client_CONN_PORT1 4060
#define TCP_Client_CONN_PORT2 4061


/*************************************************函数声明*************************************************************************/
char *extract_after_marker_safe(const char *str, const char *marker, char delimiter);

#endif /* SRC_MAIN_H_ */
