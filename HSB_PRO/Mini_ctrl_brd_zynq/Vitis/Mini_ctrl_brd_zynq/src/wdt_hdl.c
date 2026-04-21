#include "wdt_hdl.h"


/* 全局看门狗实例 */
XScuWdt wdtInstance;
/**
 * @brief 初始化私有看门狗
 * @param InstancePtr 看门狗实例指针
 * @return XST_SUCCESS成功，否则失败
 */
int Wdt_Init(XScuWdt *InstancePtr) {
    XScuWdt_Config *Config;

    /* 1. 获取硬件配置 */
    Config = XScuWdt_LookupConfig(WDT_DEVICE_ID);
    if (!Config) return XST_FAILURE;

    /* 2. 初始化看门狗 */
    if (XScuWdt_CfgInitialize(InstancePtr, Config, Config->BaseAddr) != XST_SUCCESS) {
        return XST_FAILURE;
    }

    /* 3. 配置为看门狗模式（非定时器）*/
    XScuWdt_SetWdMode(InstancePtr);

    /* 4. 加载超时值并启动 */
    XScuWdt_LoadWdt(InstancePtr, WDT_LOAD_VALUE);
    XScuWdt_Start(InstancePtr);

    /* 5. 首次喂狗 */
    XScuWdt_RestartWdt(InstancePtr);

    return XST_SUCCESS;
}

/**
 * @brief 喂狗操作
 */
void Wdt_Feed(XScuWdt *InstancePtr) {
    XScuWdt_RestartWdt(InstancePtr);
}
