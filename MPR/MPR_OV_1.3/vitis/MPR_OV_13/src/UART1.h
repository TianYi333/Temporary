#ifndef UART1_H_
#define UART1_H_

#include "main.h"
#include <stdio.h>
#include "xparameters.h"    // 硬件参数头文件
#include "xuartps.h"        // Xilinx UART驱动库
#include "xil_printf.h"     // 调试输出库

// 全局变量
extern XUartPs UartCtrl;            // UART控制器实例

#define UART_DEVICE_ID 	XPAR_XUARTPS_1_DEVICE_ID //串口设备 ID
#define INTC_DEVICE_ID 		XPAR_SCUGIC_SINGLE_DEVICE_ID //中断 ID
#define UART_INT_IRQ_ID 	XPAR_XUARTPS_1_INTR //串口中断 ID

#define UART_BAUDRATE       	115200                  // 波特率
#define BUFFER_SIZE         		1024                        	// 收发缓冲区大小
#define RX_TRIGGER_LEVEL    	14                      // FIFO触发阈值（建议4-8字节）

extern volatile u8 rx_buffer[BUFFER_SIZE];  // 中断接收缓冲区
extern volatile u32 rx_head;    // 缓冲区写入指针
extern volatile u32 rx_tail;    // 缓冲区读取指针
extern volatile u8 data_ready;  // 数据就绪标志

void UART_IRQ_Handler(void *Instance);
int UART1_Init();
int uart_Interrupt_Init();





#endif /* UART1_H_ */
