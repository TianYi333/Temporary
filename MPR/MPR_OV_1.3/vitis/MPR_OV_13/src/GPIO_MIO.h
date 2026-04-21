#ifndef GPIO_MIO_H
#define GPIO_MIO_H

#include "xparameters.h"
#include "xgpiops.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xparameters.h"
#include "xplatform_info.h"

/*************************************************宏定义*************************************************************************/
#define GPIO_DEVICE_ID 		XPAR_XGPIOPS_0_DEVICE_ID 	//PS 端 GPIO 器件 ID
#define GPIO_INTERRUPT_ID 	XPAR_XGPIOPS_0_INTR 		//PS 端 GPIO 中断 ID

#define KEY 11 //KEY 连接到 MIO11


/*************************************************全局变量声明*************************************************************************/
extern XGpioPs Gpio;	// 设备实例
extern u32 key_press; 	//KEY 按键按下的标志


/*************************************************函数声明*************************************************************************/
int SetupInterruptSystem(XScuGic *GicPtr, XGpioPs *GpioPtr, u16 GpioIntrId);
void GpioHandler(void *CallbackRef);


#endif /* LWIP_INCLUDED_POLARSSL_GPIO_MIO_H*/
