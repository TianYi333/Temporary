#ifndef SSD1309_SPI_H
#define SSD1309_SPI_H
#include "main.h"


// 引脚定义（根据Vivado中的EMIO编号修改）
#define PIN_DIN  X_SDA  // MOSI (模拟SPI数据线)
#define PIN_CLK  X_SCL  // SCLK (模拟SPI时钟线)
#define PIN_CS   X_CS  // 片选
#define PIN_DC   X_DC  // 数据/命令选择
#define PIN_RES  X_RES  // 复位

// 屏幕参数
#define SSD1309_WIDTH   128
#define SSD1309_HEIGHT  64
#define SSD1309_PAGES   8

// 函数声明
void SPI_Init(void);
void SSD1309_Init(void);
void SSD1309_Clear(void);
void SSD1309_Update(void);
void SSD1309_DrawPixel(int x, int y, int color);
void SSD1309_DrawString(int x, int y, const char* str, int invert);
void SSD1309_DrawString8x16(int x, int y, const char* str, int invert);
void SSD1309_DrawString8x16_2(int x, int y, const char* str, int invert);//将数据添加到缓存区，然后统一调用刷屏
void SSD1309_ClearArea(uint8_t x_start, uint8_t y_start, uint8_t x_end, uint8_t y_end);
void SSD1309_DrawHZ16x16(int x, int y, const uint8_t *hz_data, int invert);
void SSD1309_DrawHZ16x16_2(int x, int y, const uint8_t *hz_data, int invert);
void SSD1309_DrawHZString(int x, int y, const uint8_t *hz_array,
                        int count, int invert);

#endif

