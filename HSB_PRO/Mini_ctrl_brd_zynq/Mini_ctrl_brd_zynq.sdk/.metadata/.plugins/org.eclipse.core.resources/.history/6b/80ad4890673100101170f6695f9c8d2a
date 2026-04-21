#ifndef SRC_AM2302_H_
#define SRC_AM2302_H_

#include "main.h"
#include "xgpiops.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xtime_l.h"


#define EMIO1_PIN  		AM2302_1_SDA
#define EMIO1_PIN_DIR 	DIR_AM2302_1	//DIR低电平，B->A;DIR高电平，A->B
#define EMIO2_PIN  		AM2302_2_SDA
#define EMIO2_PIN_DIR  	DIR_AM2302_2	//DIR低电平，B->A;DIR高电平，A->B
#define EMIO3_PIN  		AM2302_3_SDA
#define EMIO3_PIN_DIR  	DIR_AM2302_3	//DIR低电平，B->A;DIR高电平，A->B

#define DHT_CHECKSUM_ERROR  -2
#define DHT_TIMEOUT_ERROR   -1

#define DHT_RETRIES       3     // 最大重试次数
#define DHT_TIMEOUT_MS    100   // 超时时间（毫秒）
int am2302_Gpio_Init();
int ReadData(uint8_t *data);

/* 数据结构 */
typedef struct {
    float humidity;    // 湿度（百分比）
    float temp;        // 温度（摄氏度）
    int status;        // 状态码（0=成功）
} SensorData_t;
void test();

#endif /* SRC_AM2302_H_ */
