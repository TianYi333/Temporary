#ifndef __EMMC_RW_H_
#define __EMMC_RW_H_


#include "main.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "ff.h"
#include "xdevcfg.h"

int platform_init_fs();
int sd_mount();
int sd_write_data(char *file_name,u32 src_addr,u32 byte_len);
int sd_write_data_appoint(char *file_name,u32 src_addr,u32 byte_len,u32 ofs_byte);
int sd_read_data(char *file_name,u32 src_addr,u32 byte_len);
int emmc_rw();

#define FILE_NAME "ZDYZ.txt"                //定义文件名

#endif /* __EMMC_RW_H_ */
