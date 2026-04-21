#ifndef __EMMC_RW_H_
#define __EMMC_RW_H_

#include "main.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "ff.h"
#include "xdevcfg.h"


/*************************************************结构体声明*************************************************************************/
// 命令映射结构
typedef struct {
    const char *cmd_code;     	// 自定义命令码，如 "AA01"
    const char *radar_prefix; 	// 对应的雷达命令前缀，如 ":FMCW:FREQuency:STARt"
} CommandMapping;

// 默认雷达配置命令结构
typedef struct {
    const char *command;     	// 命令前缀
    const char *default_value; 	// 默认值
    const char *description; 	// 命令描述
} RadarCommand;

// 目标配置结构体（用户定义）
typedef struct {
    int idx;                  	// 目标距离单元索引
    float distance;           	// 目标距离(m)
} ConfigurationTarget;


/*************************************************宏定义*************************************************************************/
#define FILE_NAME 				"ZDYZ.txt"              //定义文件名
#define FILE_NAME_1 			"FMCW Parameter.txt"
#define EMMC_STORAGE_FILE_NAME  "target_data.bin"  		// EMMC保存文件名
#define MAX_LINE_LENGTH 		128
#define MAX_COMMANDS 			20
#define EXPECTED_COMMAND_COUNT 	17 						// 默认参数数量

// 新增目标配置相关定义
#define TARGET_FILE_NAME 		"Target_Config.bin"  	// 目标配置文件名（二进制文件）
#define EMMC_MAX_TARGETS 		100                      // 最大支持目标数量（可根据需求调整）
#define FILE_HEADER_LEN       	14  					// 全局文件头（长度10字节
#define TARGET_POINT_LEN      	11  					// 单个目标点数据长度（与存储一致）
#define MAX_RETRY_CNT         	3   					// 读取最大重试次数
#define EMMC_FILE_CHECK_DELAY 	100 					// 文件检查重试延迟(ms)


/*************************************************全局变量声明*************************************************************************/
extern char loaded_commands[MAX_COMMANDS][MAX_LINE_LENGTH];
extern int command_count;
extern ConfigurationTarget emmc_targets[EMMC_MAX_TARGETS];
extern int g_target_count;    //全局目标计数（替代结构体中的target_count，更合理）

/*************************************************函数声明*************************************************************************/
int platform_init_fs();
int sd_mount();
int sd_write_data(char *file_name,u32 src_addr,u32 byte_len);
int sd_write_data_appoint(char *file_name,u32 src_addr,u32 byte_len,u32 ofs_byte);
int sd_read_data(char *file_name,u32 src_addr,u32 byte_len);
void emmc_FMCW_Parameter(void);
int write_command_to_file(FIL *file, const char *command);
int write_default_config();
void generate_default_command_string(char *buffer, size_t buffer_size, int index);
int read_config_commands();
int validate_config();
int recreate_config_with_defaults();
int find_command_index(const char *command_prefix);
int update_parameter(const char* command_prefix, const char* new_value);
int save_config_to_emmc();
int parse_command(const char *full_command, char *prefix, char *value);
const RadarCommand *find_radar_command(const char *command_prefix);
const char *get_parameter_value(const char *command_prefix);
int get_int_parameter(const char *command_prefix, int *value);
int get_float_parameter(const char *command_prefix, float *value);
int get_long_parameter(const char *command_prefix, long *value);
int get_bool_parameter(const char *command_prefix, int *value);
int parameter_exists(const char *command_prefix);

//目标配置读写
int save_target_config(void);   						// 保存目标配置到EMMC
int load_target_config(void);   						// 上电读取目标配置
int emmc_add_target(ConfigurationTarget new_target);  	// 新增目标（自动保存）
int delete_all_targets(void);   						// 删除所有目标（可选，用于清除配置）
int delete_last_target(void);							// 删除上一组数据（最后添加的目标）
int delete_target_by_index(int Number);					// 按数组索引删除目标（index：目标在targets数组中的索引，从0开始）
int delete_target_by_distance(float distance);			// 按距离值删除目标（distance：要删除的目标距离，允许±0.01m的浮点误差）
int delete_target_by_idx(int target_idx);				// 按目标idx（距离单元索引）删除目标（找到第一个匹配idx的目标并删除）
int delete_all_targets_by_idx(int target_idx);			// 按idx删除所有匹配的目标
int save_temp_storage_to_emmc(void);					// 目标数据EMMC保存函数
int send_emmc_file_by_single_target_via_uart(void);		//读取储存的目标数据


#endif /* __EMMC_RW_H_ */

