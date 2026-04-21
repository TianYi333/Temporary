#include "ssd1309_spi.h"

//XGpioPs gpiops_inst; //PS 端 GPIO 驱动实例

// 显存缓冲区（128x64像素，按页组织）
static uint8_t screenBuffer[SSD1309_WIDTH][SSD1309_PAGES];

// 设置GPIO引脚电平
static void GPIO_Set(uint8_t pin, uint8_t level) {
	XGpioPs_WritePin(&gpiops_inst, pin, level);
}

// 模拟SPI发送单字节（高位在前）
static void SPI_SendByte(uint8_t byte) {
    for (int i = 7; i >= 0; i--) {
        GPIO_Set(PIN_CLK, 0);          // CLK拉低
        GPIO_Set(PIN_DIN, (byte >> i) & 0x01);  // 设置数据位
        usleep(1);                     // 保持时序（根据时钟速度调整）
        GPIO_Set(PIN_CLK, 1);          // CLK上升沿锁存数据
        usleep(1);
    }
}

// 发送命令或数据
static void SSD1309_Write(uint8_t isData, uint8_t byte) {
    GPIO_Set(PIN_DC, isData);   // DC引脚：0=命令, 1=数据
    GPIO_Set(PIN_CS, 0);        // CS拉低
    SPI_SendByte(byte);
    GPIO_Set(PIN_CS, 1);        // CS拉高
}

// 初始化GPIO和SPI
void SPI_Init(void) {
	//gpiops_cfg_ptr = XGpioPs_LookupConfig(GPIOPS_ID);//main函数中已执行
	//EMIO配置为输出
    XGpioPs_SetDirectionPin(&gpiops_inst, PIN_DIN,1);
    XGpioPs_SetDirectionPin(&gpiops_inst, PIN_CLK,1);
    XGpioPs_SetDirectionPin(&gpiops_inst, PIN_CS,1);
    XGpioPs_SetDirectionPin(&gpiops_inst, PIN_DC,1);
    XGpioPs_SetDirectionPin(&gpiops_inst, PIN_RES,1);
    //使能EMIO输出
    XGpioPs_SetOutputEnablePin(&gpiops_inst, PIN_DIN,1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, PIN_CLK,1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, PIN_CS,1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, PIN_DC,1);
    XGpioPs_SetOutputEnablePin(&gpiops_inst, PIN_RES,1);
    // 复位引脚初始化为高
    GPIO_Set(PIN_RES, 1);        // 复位引脚初始化为高
}

// SSD1309初始化序列
void SSD1309_Init(void) {
    // 硬件复位
    GPIO_Set(PIN_RES, 0);
    usleep(10000);      // 保持低电平10ms
    GPIO_Set(PIN_RES, 1);
    usleep(10000);

    // 发送初始化命令
    SSD1309_Write(0, 0xAE);     // 关闭显示
    SSD1309_Write(0, 0xD5);     // 设置时钟分频
    SSD1309_Write(0, 0x80);     // 建议值0x80
    SSD1309_Write(0, 0xA8);     // 设置复用率
    SSD1309_Write(0, 0x3F);     // 高度-1=63
    SSD1309_Write(0, 0xD3);     // 设置显示偏移
    SSD1309_Write(0, 0x00);     // 偏移量0
    SSD1309_Write(0, 0x40);     // 设置显示起始行
    SSD1309_Write(0, 0x8D);     // 电荷泵设置
    SSD1309_Write(0, 0x14);     // 启用电荷泵
    SSD1309_Write(0, 0x20);     // 内存地址模式
    SSD1309_Write(0, 0x00);     // 水平模式(0X00/0X01/0X02)
    SSD1309_Write(0, 0xA0);     // 段重映射列127->SEG0(0XA0/0XA1)
    SSD1309_Write(0, 0xC0);     // 行重映射COM63->COM0(0XC0/0XC8)
    SSD1309_Write(0, 0xDA);     // COM引脚配置
    SSD1309_Write(0, 0x12);     // 备用COM引脚设置
    SSD1309_Write(0, 0x81);     // 设置对比度
    SSD1309_Write(0, 0xCF);     // 对比度值
    SSD1309_Write(0, 0xD9);     // 预充电周期
    SSD1309_Write(0, 0xF1);     // Phase1=1, Phase2=15
    SSD1309_Write(0, 0xDB);     // VCOMH电压
    SSD1309_Write(0, 0x40);     // VCOMH=0.83*VCC
    SSD1309_Write(0, 0xA4);     // 显示内容不跟随RAM
    SSD1309_Write(0, 0xA6);     // 正常显示（非反色）
    SSD1309_Write(0, 0xAF);     // 开启显示
}

// 清空显存
void SSD1309_Clear(void) {
    for (int x = 0; x < SSD1309_WIDTH; x++) {
        for (int page = 0; page < SSD1309_PAGES; page++) {
            screenBuffer[x][page] = 0x00;
        }
    }
}

// 刷新屏幕（将显存内容发送到SSD1309）
void SSD1309_Update(void) {
    for (int page = 0; page < SSD1309_PAGES; page++) {
        SSD1309_Write(0, 0xB0 + page);  // 设置页地址
        SSD1309_Write(0, 0x00);         // 列地址低位
        SSD1309_Write(0, 0x10);         // 列地址高位

        for (int x = 0; x < SSD1309_WIDTH; x++) {
            SSD1309_Write(1, screenBuffer[x][page]);  // 发送显存数据
        }
    }
}

// 刷新屏幕（将显存内容发送到SSD1309）-选取位置刷新
void SSD1309_Update_2(int start_page, int end_page, int start_col, int end_col) {
  for (int page = start_page; page <= end_page; page++) {
    SSD1309_Write(0, 0xB0 + page); // 设置页地址
    SSD1309_Write(0, start_col & 0x0F); // 列地址低位
    SSD1309_Write(0, (start_col >> 4) | 0x10); // 列地址高位

    for (int x = start_col; x <= end_col; x++) {
      SSD1309_Write(1, screenBuffer[x][page]);
    }
  }
}


// 绘制像素点（坐标从0开始）
void SSD1309_DrawPixel(int x, int y, int color) {
    if (x >= SSD1309_WIDTH || y >= SSD1309_HEIGHT) return;
    int page = y / 8;
    uint8_t bit = y % 8;
    if (color) {
        screenBuffer[x][page] |= (1 << bit);
    } else {
        screenBuffer[x][page] &= ~(1 << bit);
    }
}


/**
 * @brief 清除指定矩形区域的显示内容
 * @param x_start 起始列坐标(0-127)
 * @param y_start 起始行坐标(0-63)
 * @param width   清除区域宽度(像素)
 * @param height  清除区域高度(像素)
 */
void SSD1309_ClearArea(uint8_t x_start, uint8_t y_start, uint8_t width, uint8_t height) {
    // 边界保护处理
    if(x_start >= SSD1309_WIDTH || y_start >= SSD1309_HEIGHT) return;

    // 计算实际清除范围
    uint8_t x_end = (x_start + width) > SSD1309_WIDTH ? SSD1309_WIDTH : (x_start + width);
    uint8_t y_end = (y_start + height) > SSD1309_HEIGHT ? SSD1309_HEIGHT : (y_start + height);

    // 逐像素清除显存
    for(int x = x_start; x < x_end; x++) {
        for(int y = y_start; y < y_end; y++) {
            SSD1309_DrawPixel(x, y, 0);  // 写入0清除像素
        }
    }

    SSD1309_Update();  // 刷新物理屏幕
}


/**
 * @brief 在指定位置显示ASCII字符串
 * @param x 起始列坐标(0-127)
 * @param y 起始页坐标(0-7)
 * @param str 要显示的字符串
 * @param invert 是否反色显示(0:正常,1:反色)
 */
void SSD1309_DrawString(int x, int y, const char* str, int invert) {
    while (*str) {
        // 字符超出屏幕范围处理
        if (x >= SSD1309_WIDTH) break;
        if (y >= SSD1309_PAGES) break;

        // 获取ASCII字符索引（仅支持0x20-0x7E）
        uint8_t char_index = (uint8_t)(*str) - 0x20;
        if (char_index > 0x5E) char_index = 0; // 非法字符显示空格

        // 绘制单个字符（8x8点阵）
        for (int col = 0; col < 8; col++) {
            uint8_t font_data = FONT_8x8_ROT90[char_index * 8 + col];
            if (invert) font_data = ~font_data;

            for (int row = 0; row < 8; row++) {
                if (font_data & (1 << row)) {
                    SSD1309_DrawPixel(x + col, y * 8 + row, 1);
                }
            }
        }
        x += 8; // 字符间距
        str++;
    }
    //SSD1309_Update(); // 刷新显存到屏幕
}


/**
 * @brief 显示8x16点阵ASCII字符
 * @param x 起始列坐标(0-127)
 * @param y 起始页坐标(0-7)
 * @param str 要显示的字符串
 * @param invert 是否反色显示(0:正常,1:反色)
 */
void SSD1309_DrawString8x16(int x, int y, const char* str, int invert) {
    int start_x = x; // 保存起始列坐标用于换行计算

    while (*str) {
        // 处理换行符（ASCII 10）
        if (*str == '\n') {
            y += 2;      // 换到下两页（每个字符占两页）
            x = start_x;
            str++;
            continue;
        }

        // 边界检查（每个字符占8列、两页高度）
        if (x + 8 > SSD1309_WIDTH) {
            y += 2;      // 换到下两页
            x = start_x;
        }
        if (y + 1 >= SSD1309_PAGES) break; // 需至少留出两页空间

        // 获取ASCII字符索引（支持0x20-0x7E）
        uint8_t char_index = (uint8_t)(*str) - 0x20;
        if (char_index > 0x5E) char_index = 0; // 非法字符显示空格

        // 绘制8x16字符（每字符16字节，分两页存储）
        for (int page = 0; page < 2; page++) { // 每个字符占用两页
            SSD1309_Write(0, 0xB0 + y + page); // 设置当前页地址
            SSD1309_Write(0, 0x00 | (x & 0x0F)); // 列地址低位
            SSD1309_Write(0, 0x10 | ((x >> 4) & 0x0F)); // 列地址高位

            for (int col = 0; col < 8; col++) { // 每列8位数据
                uint8_t font_data = FONT_8x16[char_index * 16 + page * 8 + col];
                if (invert) font_data = ~font_data;
                SSD1309_Write(1, font_data); // 发送单列数据
            }
        }
        x += 8; // 字符间距
        str++;
    }
}


/**
 * @brief 在显存中写入8x16点阵ASCII字符（需手动调用SSD1309_Update刷新）-将数据添加到缓存区，然后统一调用刷屏
 * @param x 起始列坐标(0-127)
 * @param y 起始页坐标(0-7)
 * @param str 要显示的字符串
 * @param invert 是否反色显示(0:正常,1:反色)
 */
void SSD1309_DrawString8x16_2(int x, int y, const char* str, int invert) {
    int start_x = x; // 保存起始列坐标用于换行计算

    while (*str) {
        // 处理换行符（ASCII 10）
        if (*str == '\n') {
            y += 2;      // 8x16字符占2页高度
            x = start_x; // 复位到起始列
            str++;
            continue;
        }

        // 边界检查（每字符占8列）
        if (x + 8 > SSD1309_WIDTH) {
            y += 2;      // 换到下一组页
            x = start_x;
        }
        if (y >= SSD1309_PAGES - 1) break; // 需保留至少两页空间

        // 获取ASCII字符索引（支持0x20-0x7E）
        uint8_t char_index = (uint8_t)(*str) - 0x20;
        if (char_index > 0x5E) char_index = 0; // 非法字符显示空格

        // 写入显存缓冲区（分上下两页处理）
        for (int col = 0; col < 8; col++) {
            // 获取字模数据（示例字体结构）
            uint8_t upper_data = FONT_8x16[char_index * 16 + col];
            uint8_t lower_data = FONT_8x16[char_index * 16 + col + 8];

            if (invert) {
                upper_data = ~upper_data;
                lower_data = ~lower_data;
            }

            // 写入上半页（y页）
            for (int row = 0; row < 8; row++) {
                if (upper_data & (1 << row)) {
                    SSD1309_DrawPixel(x + col, y * 8 + row, 1);
                }
            }

            // 写入下半页（y+1页）
            for (int row = 0; row < 8; row++) {
                if (lower_data & (1 << row)) {
                    SSD1309_DrawPixel(x + col, (y + 1) * 8 + row, 1);
                }
            }
        }
        x += 8; // 字符间距
        str++;
    }
}



/**
 * @brief 显示16x16自定义汉字
 * @param x 起始列(0-127)
 * @param y 起始页(0-7)
 * @param hz_data 汉字字模数据指针
 * @param invert 反色显示(0:正常,1:反色)
 */
void SSD1309_DrawHZ16x16(int x, int y, const uint8_t *hz_data, int invert) {
    if(x >= SSD1309_WIDTH - 16 || y >= SSD1309_PAGES - 2)
        return;

    // 分两页写入(每页8行)
    for(int page = 0; page < 2; page++) {
        SSD1309_Write(0, 0xB0 + y + page); // 设置页地址
        SSD1309_Write(0, x & 0x0F);        // 列地址低位
        SSD1309_Write(0, 0x10 | (x >> 4));// 列地址高位

        // 发送16列数据（每列8位）
        for(int col = 0; col < 16; col++) {
            uint8_t data = hz_data[page * 16 + col];
            SSD1309_Write(1, invert ? ~data : data);
        }
    }
}


/**
 * @brief 显示16x16自定义汉字（需手动调用SSD1309_Update刷新）-将数据添加到缓存区，然后统一调用刷屏
 * @param x 起始列(0-127)
 * @param y 起始行(0-64)
 * @param hz_data 汉字字模数据指针
 * @param invert 反色显示(0:正常,1:反色)
 */
void SSD1309_DrawHZ16x16_2(int x, int y, const uint8_t *hz_data, int invert) {
    int i, j;
    for (i = 0; i < 16; i++) {
        for (j = 0; j < 8; j++) {
            // 处理前 8 位
            int bitValue = (hz_data[i * 2] & (1 << (7 - j))) ? 1 : 0;
            if (invert) {
                bitValue =!bitValue;
            }
            SSD1309_DrawPixel(x + j, y + i, bitValue);

            // 处理后 8 位
            bitValue = (hz_data[i * 2 + 1] & (1 << (7 - j))) ? 1 : 0;
            if (invert) {
                bitValue =!bitValue;
            }
            SSD1309_DrawPixel(x + j + 8, y + i, bitValue);
        }
    }
    // 调用屏幕刷新命令
}


/**
 * @brief 显示自定义汉字字符串
 * @param x 起始列(0-127)
 * @param y 起始页(0-7)
 * @param hz_array 汉字字模数组
 * @param count 汉字数量
 * @param invert 反色显示
 */
void SSD1309_DrawHZString(int x, int y, const uint8_t *hz_array,
                        int count, int invert) {
    int cursor_x = x;

    for(int i = 0; i < count; i++) {
        // 自动换行处理
        if(cursor_x + 16 > SSD1309_WIDTH) {
            cursor_x = x;
            y += 2;
            if(y >= SSD1309_PAGES - 1) break;
        }

        // 绘制单个汉字（每个汉字占32字节）
        SSD1309_DrawHZ16x16(cursor_x, y, &hz_array[i * 32], invert);
        cursor_x += 16;
    }
}


