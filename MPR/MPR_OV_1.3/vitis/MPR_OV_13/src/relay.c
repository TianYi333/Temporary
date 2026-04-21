#include "relay.h"



void Radar_Power()
{
	uint8_t FLAG_Radar_Power=0;//雷达上电标志位
	XGpioPs_Config *ConfigPtr; //PS 端 GPIO 配置信息
	//根据器件 ID 查找配置信息
	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	if (ConfigPtr == NULL)
	{
	   xil_printf("GPIO器件 ID 查找配置错误");
	}
	//初始化 Gpio driver
	XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);

	XGpioPs_SetDirectionPin(&Gpio, RELAY, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, RELAY, 1);

	XGpioPs_WritePin(&Gpio, RELAY, 0x0);//默认上电

	while (1)
	{
	   if(xQueueReceive(Radar_Power_Queue,&FLAG_Radar_Power,1))
	   {
		  if(FLAG_Radar_Power==0x01)
		  {
			   XGpioPs_WritePin(&Gpio, RELAY, 0x0);//打开
		   }
		   else
		   {
			   XGpioPs_WritePin(&Gpio, RELAY, 0x1);//关闭
		   }
	   }
	   vTaskDelay(1);
	}
}







