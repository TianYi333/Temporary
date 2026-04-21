#include "am2302.h"

//XGpioPs_Config *gpiops_cfg_ptr;
//XGpioPs gpiops_inst;

static void Bus_DelayUs(uint32_t us)
{
    volatile uint32_t count = us * 105;
    while(count--);
}

void test()
{
	for(int e=0;e<100;e++)
	{
		Bus_DelayUs(30);
		if(XGpioPs_ReadPin(&gpiops_inst, EMIO1_PIN)==0)
		{
			XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN, 1);
		}
		else if(XGpioPs_ReadPin(&gpiops_inst, EMIO1_PIN)==1)
		{
			XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN, 0);
		}
	}

}


// 初始化EMIO GPIO
int am2302_Gpio_Init() {
	//gpiops_cfg_ptr = XGpioPs_LookupConfig(GPIOPS_ID);//main函数中已执行
    //int Status = XGpioPs_CfgInitialize(&gpiops_inst, gpiops_cfg_ptr, gpiops_cfg_ptr->BaseAddr);//main函数中已执行

    // 初始化为输出模式，总线空闲高电平
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO1_PIN, 1);
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO1_PIN_DIR, 1);
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO2_PIN, 1);
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO2_PIN_DIR, 1);
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO3_PIN, 1);
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO2_PIN_DIR, 1);

    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO1_PIN, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO1_PIN_DIR, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO2_PIN, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO2_PIN_DIR, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO3_PIN, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO2_PIN_DIR, 1);
    XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN, 1);
    return XST_SUCCESS;
}

// 读取单总线数据位
int ReadBit() {
    int timeout = 10000; // 超时计数器
    // 等待50us低电平结束
    while (!XGpioPs_ReadPin(&gpiops_inst, EMIO1_PIN)) {
        if (--timeout == 0) return DHT_TIMEOUT_ERROR;
    }

    Bus_DelayUs(45); // 延时30us后采样高低电平
    return XGpioPs_ReadPin(&gpiops_inst, EMIO1_PIN) > 0 ? 1 : 0;
}

// 读取40位数据包
int ReadData(uint8_t *data)
{
	XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN_DIR, 1);//DIR低电平，B->A;DIR高电平，A->B
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO1_PIN, 1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, EMIO1_PIN, 1);
    XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN, 0);
    Bus_DelayUs(1500); // 拉低总线1.5ms

    // 释放总线，切换为输入模式
    XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN, 1);
    XGpioPs_WritePin(&gpiops_inst, EMIO1_PIN_DIR, 0);//DIR低电平，B->A;DIR高电平，A->B
    XGpioPs_SetDirectionPin(&gpiops_inst, EMIO1_PIN, 0);
    Bus_DelayUs(40); // 等待传感器响应

    // 检测DHT响应信号
    int timeout = 20000;
    while (XGpioPs_ReadPin(&gpiops_inst, EMIO1_PIN)) {
    	if (--timeout == 0) return DHT_TIMEOUT_ERROR;
    }

    timeout = 20000;
    while (!XGpioPs_ReadPin(&gpiops_inst, EMIO1_PIN)) {
    	 if (--timeout == 0) return DHT_TIMEOUT_ERROR;
    }

    // 读取40位数据
    for (int i = 0; i < 40; i++) {
        data[i/8] <<= 1;
        int bit = ReadBit();
        if (bit < 0) return bit;
        data[i/8] |= bit;
    }

    xil_printf("Raw Data: %02X %02X %02X %02X %02X\n",
    		data[0], data[1], data[2], data[3], data[4]);
    //校验和验证
	uint8_t checksum = (data[0] + data[1] + data[2] + data[3]);
	if (checksum != data[4]) return DHT_CHECKSUM_ERROR;

	return 0;
}

