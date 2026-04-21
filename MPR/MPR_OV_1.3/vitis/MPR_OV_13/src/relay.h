#ifndef __RELAY_H_
#define __RELAY_H_

#include "main.h"
 #include "xparameters.h" 	//器件参数信息
#include "xstatus.h" 		//包含 XST_FAILURE 和 XST_SUCCESS 的宏定义
#include "xil_printf.h" 	//包含 print()函数
#include "xgpiops.h" 		//包含 PS GPIO 的函数


#define GPIO_DEVICE_ID XPAR_XGPIOPS_0_DEVICE_ID
#define RELAY 13 //连接到 MIO7
void Radar_Power();

extern XGpioPs Gpio;





























#endif /* __RELAY_H_ */
