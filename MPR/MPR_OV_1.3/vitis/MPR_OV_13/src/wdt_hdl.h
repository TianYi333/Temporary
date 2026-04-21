#ifndef __WDT_HDL_H_
#define __WDL_HDL_H_

#include "xscuwdt.h"     // Xilinx看门狗驱动库
#include "xparameters.h" // 设备参数定义

/*************************************************全局变量声明*************************************************************************/
extern XScuWdt wdtInstance;


/*************************************************宏定义*************************************************************************/
#define WDT_DEVICE_ID			XPAR_SCUWDT_0_DEVICE_ID	//看门狗设备ID号
#define WDT_TIMEOUT_SEC  	10												// 设置10秒超时
#define WDT_LOAD_VALUE		(XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ / 2) * WDT_TIMEOUT_SEC


/*************************************************函数声明*************************************************************************/
int Wdt_Init(XScuWdt *InstancePtr);
void Wdt_Feed(XScuWdt *InstancePtr);



#endif /* __WDT_HDL_H_ */
