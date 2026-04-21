#include "GPIO_MIO.h"

// 设备实例
XGpioPs Gpio; //PS 端 GPIO 驱动实例
u32 key_press; //KEY 按键按下的标志

// 中断服务函数
void GpioHandler(void *CallbackRef)
{
	XGpioPs *gpio = (XGpioPs *) CallbackRef;

	//读取 KEY 按键引脚的中断状态，判断是否发生中断
	if (XGpioPs_IntrGetStatusPin(gpio, KEY)){
		key_press = TRUE;
		XGpioPs_IntrDisablePin(gpio, KEY); //屏蔽按键 KEY 中断
	}
}

// 初始化中断系统
int SetupInterruptSystem(XScuGic *GicPtr, XGpioPs *GpioPtr, u16 GpioIntrId)
{
//    // 初始化中断控制器
//    XScuGic_Config *IntcConfig;
//    IntcConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
//    XScuGic_CfgInitialize(GicPtr, IntcConfig, IntcConfig->CpuBaseAddress);
//
//    // 设置异常处理
//    Xil_ExceptionInit();
//    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
//                                (Xil_ExceptionHandler)XScuGic_InterruptHandler,
//                                GicPtr);

    // 启用异常
    Xil_ExceptionEnable();

    // 连接GPIO中断处理程序
    XScuGic_Connect(GicPtr, GpioIntrId,
                   (Xil_ExceptionHandler)GpioHandler,
                   (void *)GpioPtr);

    //使能来自于 Gpio 器件的中断
    XScuGic_Enable(GicPtr, GpioIntrId);

    //设置 KEY 按键的中断类型为下降沿中断
    XGpioPs_SetIntrTypePin(GpioPtr, KEY, XGPIOPS_IRQ_TYPE_EDGE_FALLING);

    //使能按键 KEY 中断
    XGpioPs_IntrEnablePin(GpioPtr, KEY);

    return XST_SUCCESS;
}
