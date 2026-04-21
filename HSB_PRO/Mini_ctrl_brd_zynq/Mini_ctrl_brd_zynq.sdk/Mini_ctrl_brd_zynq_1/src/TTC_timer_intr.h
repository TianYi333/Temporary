#ifndef SRC_TTC_TIMER_INTR_H_
#define SRC_TTC_TIMER_INTR_H_

#include "main.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xttcps.h"
#include "xscugic.h"

#define TTC_DEVICE_ID 		XPAR_XTTCPS_0_DEVICE_ID// TTC0模块
#define TTC_INTR_ID    		XPAR_XTTCPS_0_INTR// TTC0中断ID
#define CPU_CLK_FREQ_HZ    XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ  // CPU时钟频率


void TTC_IRQHandler(void *CallBackRef);
int TTC_Init(void);
int Interrupt_Init(void);

#endif /* SRC_TTC_TIMER_INTR_H_ */
