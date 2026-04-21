#include "bram.h"

char ch_data[1024]; //写入 BRAM 的字符数组
int ch_data_len; //写入 BRAM 的字符个数
int ch_data_len_1; //写入 BRAM 的字符个数

void str_wr_bram();
void str_rd_bram();

//将字符串写入 BRAM
void str_wr_bram()
{
	int i=0,wr_cnt = 0;
	//每次循环向 BRAM 中写入 1 个字符
	for(i = BRAM_DATA_BYTE*START_ADDR ; i < BRAM_DATA_BYTE*(START_ADDR + ch_data_len) ;
			i += BRAM_DATA_BYTE){
		XBram_WriteReg(XPAR_BRAM_0_BASEADDR,i,ch_data[wr_cnt]) ;
		wr_cnt++;
	}
	//设置 BRAM 写入的字符串长度
	PL_BRAM_RD_mWriteReg(PL_BRAM_BASE, PL_BRAM_LEN , BRAM_DATA_BYTE*ch_data_len) ;
	//设置 BRAM 的起始地址
	PL_BRAM_RD_mWriteReg(PL_BRAM_BASE, PL_BRAM_START_ADDR, BRAM_DATA_BYTE*START_ADDR) ;
	//拉高 BRAM 开始信号
	PL_BRAM_RD_mWriteReg(PL_BRAM_BASE, PL_BRAM_START , 1) ;
	//拉低 BRAM 开始信号
	PL_BRAM_RD_mWriteReg(PL_BRAM_BASE, PL_BRAM_START , 0) ;
}

//从 BRAM 中读出数据
void str_rd_bram()
{
	int read_data=0,i=0;
	//RAM 的深度
	ch_data_len_1=PL_BRAM_RD_mReadReg(PL_BRAM_BASE, PL_BRAM_LEN);
	xil_printf("ch_data_len_1 %d\n",ch_data_len_1/BRAM_DATA_BYTE);
	//循环从 BRAM 中读出数据

	for(i = BRAM_DATA_BYTE*START_ADDR ; i < BRAM_DATA_BYTE*(START_ADDR + ch_data_len) ;
			i += BRAM_DATA_BYTE){
		read_data = XBram_ReadReg(XPAR_BRAM_0_BASEADDR,i) ;
		xil_printf("BRAM address is %d\t,Read data is %c\n",i/BRAM_DATA_BYTE ,read_data) ;
	}
}

// 中断服务函数-从BRAM读数据
void psReadBram()
{
	int read_data=0,i=0;
	// 清除中断标志
	XScuGic_Disable(&xInterruptController, INTR_ID);
	//RAM 的深度
	ch_data_len_1=PL_BRAM_RD_mReadReg(PL_BRAM_BASE, PL_BRAM_LEN);
	xil_printf("ch_data_len_1 %d\n",ch_data_len_1/BRAM_DATA_BYTE);
	//循环从 BRAM 中读出数据
	for(i = BRAM_DATA_BYTE*START_ADDR ; i < BRAM_DATA_BYTE*(START_ADDR + ch_data_len) ;
			i += BRAM_DATA_BYTE){
		read_data = XBram_ReadReg(XPAR_BRAM_0_BASEADDR,i) ;
		xil_printf("BRAM address is %d\t,Read data is %c\n",i/BRAM_DATA_BYTE ,read_data) ;
	}
	// 启用中断
	XScuGic_Enable(&xInterruptController, INTR_ID);
}

int IntrInitFuntion()//接收PL端的intr中断
{
	int Status ;

//    XScuGic_Config *IntcConfig;
//    // 初始化中断控制器
//    IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
//    XScuGic_CfgInitialize(&xInterruptController, IntcConfig, IntcConfig->CpuBaseAddress);

	//设置F2P中断源优先级和触发类型
	XScuGic_SetPriorityTriggerType(&xInterruptController, INTR_ID,
			0xA0, 0x3);
	// 连接中断处理程序
	Status = XScuGic_Connect(&xInterruptController, INTR_ID,
			(Xil_ExceptionHandler)psReadBram,
			(void *)NULL) ;
	if (Status != XST_SUCCESS)
		return XST_FAILURE ;
	// 启用中断
	XScuGic_Enable(&xInterruptController, INTR_ID) ;
	//异常处理使能
	Xil_ExceptionEnable();
	return XST_SUCCESS ;

}


