#include "UART1.h"


XUartPs UartCtrl;

volatile u8 rx_buffer[BUFFER_SIZE];  // 中断接收缓冲区
volatile u32 rx_head = 0;    // 缓冲区写入指针
volatile u32 rx_tail = 0;    // 缓冲区读取指针
volatile u8 data_ready = 0;  // 数据就绪标志

void UART_IRQ_Handler(void *Instance) {
    XUartPs *UartInst = (XUartPs *)Instance;
    u32 IntrStatus;

    //读取中断 ID 寄存器，判断触发的是哪种中断
    IntrStatus = XUartPs_ReadReg(UartInst->Config.BaseAddress, XUARTPS_IMR_OFFSET) &
                 XUartPs_ReadReg(UartInst->Config.BaseAddress, XUARTPS_ISR_OFFSET);
    //清除中断标志
    XUartPs_WriteReg(UartInst->Config.BaseAddress, XUARTPS_ISR_OFFSET, IntrStatus);

    //判断中断标志位 RxFIFO 是否触发
    if (IntrStatus & (u32)(XUARTPS_IXR_RXOVR | XUARTPS_IXR_TOUT | XUARTPS_IXR_OVER)) {
        while (XUartPs_IsReceiveData(UartInst->Config.BaseAddress)) {
            // 写入环形缓冲区
            rx_buffer[rx_head] = XUartPs_ReadReg(UartInst->Config.BaseAddress, XUARTPS_FIFO_OFFSET);
            rx_head = (rx_head + 1) % BUFFER_SIZE;
            if (rx_head == rx_tail) {  // 缓冲区溢出处理
                rx_tail = (rx_tail + 1) % BUFFER_SIZE;
                xil_printf("Warning: Buffer overflow!\n");
            }
        }
        data_ready = 1;  // 设置数据就绪标志
    }
}

int UART1_Init()
{
	   XUartPs_Config *UartCfg;

	    // 1. 查找并加载配置
	    if ((UartCfg = XUartPs_LookupConfig(UART_DEVICE_ID)) == NULL) {
	        xil_printf("ERROR: UART config not found\n");
	        return XST_FAILURE;
	    }

	    // 2. 初始化控制器
	    if (XUartPs_CfgInitialize(&UartCtrl, UartCfg, UartCfg->BaseAddress) != XST_SUCCESS) {
	        xil_printf("ERROR: UART init failed\n");
	        return XST_FAILURE;
	    }

	    //UART 设备自检
	    if (XUartPs_SelfTest(&UartCtrl) != XST_SUCCESS)
	    return XST_FAILURE;

	    //设置工作模式:正常模式
	    XUartPs_SetOperMode(&UartCtrl, XUARTPS_OPER_MODE_NORMAL);
	    // 配置波特率与格式
	    XUartPs_SetBaudRate(&UartCtrl, 115200);

	    // 设置FIFO阈值
	    XUartPs_SetFifoThreshold(&UartCtrl, RX_TRIGGER_LEVEL);
	    return XST_SUCCESS;
}

// 中断系统初始化
int uart_Interrupt_Init() {
    //为中断设置中断处理函数
    if (XScuGic_Connect(&xInterruptController, UART_INT_IRQ_ID,
                       (Xil_ExceptionHandler)UART_IRQ_Handler,
                       (void *)&UartCtrl) != XST_SUCCESS) {
        xil_printf("ERROR: IRQ connect failed\n");
        return XST_FAILURE;
    }

    //设置 UART 的中断触发方式
    XUartPs_SetInterruptMask(&UartCtrl, XUARTPS_IXR_RXOVR |  // 阈值中断
    		XUARTPS_IXR_TOUT  |  // 超时中断（关键！）
            XUARTPS_IXR_OVER);
//    XScuGic_SetPriorityTriggerType(&IntcCtrl, UART_INT_IRQ_ID, 0x08, 0x3);
    XScuGic_Enable(&xInterruptController, UART_INT_IRQ_ID);//使能 GIC 中的串口中断
    Xil_ExceptionEnable();//打开中断异常处理功能
    return XST_SUCCESS;
}

