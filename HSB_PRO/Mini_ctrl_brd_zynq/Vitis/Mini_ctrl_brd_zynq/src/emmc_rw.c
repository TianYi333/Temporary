

#include "emmc_rw.h"


const uint8_t src_str[30] = {0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19}; //定义文本内容
static FATFS fatfs;                         //文件系统

//初始化文件系统
int platform_init_fs()
{
	FRESULT status;
	TCHAR *Path = "0:/";
	BYTE work[FF_MAX_SS];

    //注册一个工作区(挂载分区文件系统)
    //在使用任何其它文件函数之前，必须使用f_mount函数为每个使用卷注册一个工作区
	status = f_mount(&fatfs, Path, 1);  //挂载SD卡
	if (status != FR_OK) {
		xil_printf("Volume is not FAT formated; formating FAT\r\n");
		//格式化SD卡
		status = f_mkfs(Path, FM_FAT32, 0, work, sizeof work);
		if (status != FR_OK) {
			xil_printf("Unable to format FATfs\r\n");
			return -1;
		}
		//格式化之后，重新挂载SD卡
		status = f_mount(&fatfs, Path, 1);
		if (status != FR_OK) {
			xil_printf("Unable to mount FATfs\r\n");
			return -1;
		}
	}
	return 0;
}

//挂载SD(TF)卡
int sd_mount()
{
    FRESULT status;
    //初始化文件系统（挂载SD卡，如果挂载不成功，则格式化SD卡）
    status = platform_init_fs();
    if(status){
        xil_printf("ERROR: f_mount returned %d!\n",status);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

//SD卡写数据
int sd_write_data(char *file_name,u32 src_addr,u32 byte_len)
{
    FIL fil;         //文件对象
    UINT bw;         //f_write函数返回已写入的字节数

    //打开一个文件,如果不存在，则创建一个文件
    f_open(&fil,file_name,FA_CREATE_ALWAYS | FA_WRITE);
    //移动打开的文件对象的文件读/写指针     0:指向文件开头
    f_lseek(&fil, 0);
    //向文件中写入数据
    f_write(&fil,(void*) src_addr,byte_len,&bw);
    //关闭文件
    f_close(&fil);
    return 0;
}

//SD卡写数据-指定位置
int sd_write_data_appoint(char *file_name,u32 src_addr,u32 byte_len,u32 ofs_byte)
{
    FIL fil;         //文件对象
    UINT bw;         //f_write函数返回已写入的字节数

    //打开一个文件,如果不存在，则创建一个文件
    f_open(&fil,file_name,FA_CREATE_ALWAYS | FA_WRITE);
    //移动打开的文件对象的文件读/写指针     0:指向文件开头
    f_lseek(&fil, ofs_byte);
    //向文件中写入数据
    f_write(&fil,(void*) src_addr,byte_len,&bw);
    //关闭文件
    f_close(&fil);
    return 0;
}

//SD卡读数据
int sd_read_data(char *file_name,u32 src_addr,u32 byte_len)
{
	FIL fil;         //文件对象
    UINT br;         //f_read函数返回已读出的字节数

    //打开一个只读的文件
    f_open(&fil,file_name,FA_READ);
    //移动打开的文件对象的文件读/写指针     0:指向文件开头
    f_lseek(&fil,0);
    //从SD卡中读出数据
    f_read(&fil,(void*)src_addr,byte_len,&br);
    //关闭文件
    f_close(&fil);
    return 0;
}

//main函数
int emmc_rw()
{
    int status,len;
    uint8_t dest_str[30] = {0};
    uint32_t dest_str_32 = 0;

    status = sd_mount();           //挂载SD卡
    if(status != XST_SUCCESS){
		xil_printf("Failed to open SD card!\n");
		return 0;
    }
    else
        xil_printf("Success to open SD card!\n");

    len = strlen(src_str);         //计算字符串长度
    xil_printf("src_str %08x\r\n",src_str[5]);
    //SD卡写数据
    sd_write_data(FILE_NAME,(u32)src_str,len);
    //SD卡读数据
    sd_read_data(FILE_NAME,(u32)dest_str,len);

    //比较写入的字符串和读出的字符串是否相等
    if (strcmp(src_str, dest_str) == 0)
    {
    	dest_str_32=dest_str[0]<<24|dest_str[1]<<16|dest_str[2]<<8|dest_str[3];
    	xil_printf("dest_str_32 %08x\r\n",dest_str_32);
    	xil_printf("src_str is equal to dest_str,SD card test success!\n");
    }
    else
    	xil_printf("src_str is not equal to dest_str,SD card test failed!\n");

    return 0;
  }
