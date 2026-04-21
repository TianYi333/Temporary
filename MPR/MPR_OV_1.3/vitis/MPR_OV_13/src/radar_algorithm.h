#ifndef __RADAR_ALGORITHM_H_
#define __RADAR_ALGORITHM_H_

#include "main.h"

/*************************************************宏定义*************************************************************************/
#define INT16_MAX_VAL 				32767.0f  							// int16_t最大值，用于归一化
#define FRAME_NUMBER    			64									//数据帧数
#define FRAME_DATA_NUMBER    		16000								//一帧数据数量
#define FLOAT_FRAME_SIZE  			(Nr * sizeof(float))  				// 单帧float数据大小
#define FILE_FLOAT_SIZE   			(FRAME_NUMBER * FLOAT_FRAME_SIZE)   // 单个文件的float数据大小

// -------------------------- 参数配置（对应MATLAB参数） --------------------------
#define FILE_FRAMES           		FRAME_NUMBER        // 每个文件包含64帧
#define FS              			200.0f       		// 采样频率(Hz)
#define Nr              			8000      			// 采样点数（8e3，取2的幂方便FFT）
#define LAMBDA          			(3e8f / 17.25e9f)  	// 波长(m)
#define BR              			500e6f       		// 带宽(Hz)
#define RBIN            			(3e8f / (2 * BR))   // 距离向分辨率(m)
#define T              				0.15f        		// 采集间隔(s)
#define THRESHOLD       			12.0f        		// 信噪比阈值(dB)
#define HANNING_WINDOW  			1            		// 是否启用Hanning窗（1=启用）
#define RANGE_WINDOW          		9                   // 目标距离附近的索引窗口（±9）
#define PEAK_THRESHOLD        		0.5f                // 峰值检测阈值（可调整）
#define MAX_TARGETS              	100      			// 最大目标数量
#define M_PI_F						3.14159265358979323846f  // 浮点型π

#define RESULT_BUF_SIZE 			2048
#define TARGET_DATA_LEN         	11          // 每个目标的字节数（1+2+4+4）
#define TEMP_STORAGE_MAX_GROUPS 	100         // 临时存储最大组数（100组）
#define MAX_TARGETS_PER_GROUP   	MAX_TARGETS


/*************************************************结构体声明*************************************************************************/
// 目标信息结构体
typedef struct {
    int idx;                  // 目标距离单元索引
    float distance;           // 目标距离(m)
    float *angles;            // 相位序列
    float *amplitudes;        // 幅值序列
    int data_count;           // 已存储数据量
} TargetInfo;

// 临时结构体：存储当前文件的目标参数
typedef struct {
    int idx;                  // 目标距离单元索引
    float distance;           // 目标距离(m)
    int data_count;           // 当前数据计数（截至本文件）
    float curr_angle;         // 当前文件的角度值
    float curr_amplitude;     // 当前文件的幅度值
} CurrFileTarget;


/*************************************************全局变量声明*************************************************************************/
extern CurrFileTarget targets[MAX_TARGETS]; 	// 目标数组
extern int target_count;                 		// 已配置目标数量
extern float dynamic_range;              		// 当前配置目标距离(m)
extern float dynamic_distance_threshold; 		// 距离阈值(m)
extern int empty_scene_stored;           		// 空场景数据已缓存标志
extern uint8_t FLAG_Equipment_operation_mode;   // 设备运行模式标志位（0=配置阶段，1=采集阶段）
// 临时存储相关全局变量
extern uint8_t temp_target_storage[TEMP_STORAGE_MAX_GROUPS][MAX_TARGETS_PER_GROUP * TARGET_DATA_LEN];
extern uint8_t temp_group_target_count[TEMP_STORAGE_MAX_GROUPS];


/*************************************************函数声明*************************************************************************/
void radar_algorithm_test(void);
void radar_algorithm_upgrade(void);


#endif /* __RADAR_ALGORITHM_H_ */
