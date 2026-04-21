#include "led.h"

//main 函数
int led()
{
	int freq_flag; //定义频率状态，用于循环改变呼吸灯的呼吸频率
	int led_state; //定义 LED 灯的状态

	xil_printf("LED User IP Test!\n");
	while(1){
		//根据 freq_flag 的标志位,切换呼吸灯的频率
		if(freq_flag == 0){
			BREATH_LED_IP_mWriteReg(LED_IP_0_BASEADDR,LED_IP_0_REG1,0x800000ef);
			freq_flag = 1;
		}
		else{
			BREATH_LED_IP_mWriteReg(LED_IP_0_BASEADDR,LED_IP_0_REG1,0x8000002f);
			freq_flag = 0;
		}
		//获取 LED 当前开关状态 1:打开 0:关闭
		led_state = BREATH_LED_IP_mReadReg(LED_IP_0_BASEADDR,LED_IP_0_REG0);
		//如果开关关闭,打开呼吸灯
		if(led_state == 0){
			BREATH_LED_IP_mWriteReg (LED_IP_0_BASEADDR, LED_IP_0_REG0, 1);
			xil_printf("Breath LED ON\n");
		}
		sleep(5);
		//获取 LED 当前开关状态 1:打开 0:关闭
		led_state = BREATH_LED_IP_mReadReg(LED_IP_0_BASEADDR,LED_IP_0_REG0);
		//如果开关打开,关闭呼吸灯
		if(led_state == 1){
			BREATH_LED_IP_mWriteReg (LED_IP_0_BASEADDR, LED_IP_0_REG0, 0);
			xil_printf("Breath LED OFF\n");
		}
		sleep(1);
	}
}
