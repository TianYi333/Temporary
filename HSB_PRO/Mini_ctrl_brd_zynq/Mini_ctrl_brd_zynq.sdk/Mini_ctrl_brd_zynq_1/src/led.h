#ifndef SRC_LED_H_
#define SRC_LED_H_


#include "main.h"
#include "breath_led_ip.h"


#define LED_IP_0_BASEADDR 	XPAR_BREATH_LED_IP_0_S0_AXI_BASEADDR //LED IP 價華硊
#define LED_IP_0_REG0 		BREATH_LED_IP_S0_AXI_SLV_REG0_OFFSET //LED IP 敵湔ん華硊 0
#define LED_IP_0_REG1 		BREATH_LED_IP_S0_AXI_SLV_REG1_OFFSET //LED IP 敵湔ん華硊 1

#define LED_IP_1_BASEADDR 	XPAR_BREATH_LED_IP_1_S0_AXI_BASEADDR //LED IP 價華硊
#define LED_IP_1_REG0 		BREATH_LED_IP_S0_AXI_SLV_REG0_OFFSET //LED IP 敵湔ん華硊 0
#define LED_IP_1_REG1 		BREATH_LED_IP_S0_AXI_SLV_REG1_OFFSET //LED IP 敵湔ん華硊 1

int led();
#endif /* SRC_LED_H_ */
