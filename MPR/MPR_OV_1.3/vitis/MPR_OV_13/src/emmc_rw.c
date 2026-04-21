#include "emmc_rw.h"

// 函数声明
int write_command_to_file(FIL *file, const char *command);
int write_default_config();
int read_config_commands();
void print_config();
int validate_config();
int update_parameter(const char* command_prefix, const char* new_value);
int save_config_to_emmc();
int recreate_config_with_defaults();
int find_command_index(const char *command_prefix);
void generate_default_command_string(char *buffer, size_t buffer_size, int index);
const CommandMapping *find_command_mapping(const char *cmd_code);
const uint8_t src_str[30] = {0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19}; //定义文本内容
static FATFS fatfs;                         //文件系统
char loaded_commands[MAX_COMMANDS][MAX_LINE_LENGTH];
int command_count = 0;

// 目标配置全局变量（初始化全0）
ConfigurationTarget emmc_targets[MAX_TARGETS] = {0};
int g_target_count = 0;  // 全局目标计数（初始为0）
/*
 * 内存中命令格式规范：
 * 1. 所有命令都不包含任何换行符（\r 或 \n）
 * 2. 命令格式为：":PREFIX VALUE"
 * 3. 最大长度不超过 MAX_LINE_LENGTH
 */
// 定义所有雷达命令（包含默认值和描述）
const RadarCommand default_commands[] = {
    {":FMCW:FREQuency:STARt", "9000000000", "起始频率"},
    {":FMCW:FREQuency:STOP", "9500000000", "终止频率"},
    {":FMCW:STEP:TIME", "200", "脉冲宽度"},
    {":FMCW:POWER", "33", "发射功率"},
    {":FMCW:LO:SCAN:TIME", "1000", "本振回扫时间"},
    {":FMCW:BW", "16000000", "中频带宽"},
    {":FMCW:IF", "10", "中频增益"},
    {":FMCW:TRIG:MODE", "SOFT", "触发模式"},
    {":FMCW:TRIG:COUNt", "64", "触发次数"},
    {":FMCW:RUN:MODE", "MODEA", "运行模式"},
    {":FMCW:POWER:MODE", "NORMAL", "电源模式"},
    {":FMCW:RFSTATe", "PULSE", "射频开关模式"},
    {":FMCW:PACKage:LENGth", "1024", "包长度"},
    {":FMCW:FMCOUNT", "1", "扫频帧数"},
    {":FMCW:MICRowave:MODE", "0", "微波网络模式"},
    {":FMCW:MICRowave:DATA", "0", "微网控制码"},
    {":FMCW:INIT", "", "调频初始化"}
};

//const char *default_commands[] = {
////    	":FMCW:FLAG?\r\n",
//		":FMCW:FREQuency:STARt 9000000000\r\n",		//0 起始频率(9--10GHz)
//		":FMCW:FREQuency:STOP 9500000000\r\n",		//1 终止频率(9--10GHz)
//		":FMCW:STEP:TIME 1000\r\n",					//2 脉冲宽度(0.2/0.5/1ms)
//		":FMCW:POWER 33\r\n",						//3 发射功率(3--33dBm)
//		":FMCW:LO:SCAN:TIME 1000\r\n",				//4 本振回扫时间(400--1000us)
//		":FMCW:BW 16000000\r\n",					//5 中频带宽
//		":FMCW:IF 10\r\n",							//6 中频增益(0/10/20/30)
//		":FMCW:TRIG:MODE SOFT\r\n",					//7 触发模式(EXTERN/S0FT/STOP)
//		":FMCW:TRIG:COUNt 64\r\n",					//8 触发次数(1--120)
//		":FMCW:RUN:MODE MODEA\r\n",					//9 运行模式(MODEA/MODEB)
// 		":FMCW:POWER:MODE WAIT\r\n",				//10 电源模式(NORMAL/WAIT)
//		":FMCW:RFSTATe PULSE\r\n",					//11 射频开关模式(OFF/NO/PULSE)
//		":FMCW:PACKage:LENGth 1024\r\n",			//12 包长度 1024-10240
//		":FMCW:FMCOUNT 1\r\n",						//13 扫频帧数(1--65535)
//		":FMCW:MICRowave:MODE 0\r\n",				//14 微波网络模式(0自动/1手动)
//		":FMCW:MICRowave:DATA 0\r\n",				//15 微网控制码
//		":FMCW:INIT\r\n"							//16 调频初始化
//};

// 自定义命令映射表
const CommandMapping command_map[] = {
    {"AA01", ":FMCW:FREQuency:STARt"},				//0 起始频率(9--10GHz)
    {"AA02", ":FMCW:FREQuency:STOP"},				//1 终止频率(9--10GHz)
    {"AA03", ":FMCW:STEP:TIME"},					//2 脉冲宽度(0.2/0.5/1ms)
    {"AA04", ":FMCW:POWER"},						//3 发射功率(3--33dBm)
    {"AA05", ":FMCW:LO:SCAN:TIME"},					//4 本振回扫时间(400--1000us)
    {"AA06", ":FMCW:IF"},							//6 中频增益(0/10/20/30)
    {"AA07", ":FMCW:TRIG:MODE"},					//7 触发模式(EXTERN/S0FT/STOP)
    {"AA08", ":FMCW:TRIG:COUNt"},					//8 触发次数(1--120)
    {"AA09", ":FMCW:RUN:MODE"},						//9 运行模式(MODEA/MODEB)
    {"AA0A", ":FMCW:POWER:MODE"},					//10 电源模式(NORMAL/WAIT)
    {"AA0B", ":FMCW:RFSTATe"},						//11 射频开关模式(OFF/NO/PULSE)
    {"AA0C", ":FMCW:FMCOUNT"},						//13 扫频帧数(1--65535)
    {"AA0D", ":FMCW:MICRowave:MODE"},				//14 微波网络模式(0自动/1手动)
    {"AA0E", ":FMCW:INIT"},							//16 调频初始化
};

const int num_default_commands = sizeof(default_commands) / sizeof(default_commands[0]);
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

void emmc_FMCW_Parameter(void)//PWCM参数掉电保存
{
	FRESULT res;
	FILINFO fno;
	int status;
	char *command=NULL;
	char *param_value = NULL; // 改为指针
	char *param__buf_1=(char *)malloc(sizeof(char));
	char *param__buf_2=(char *)malloc(2 * sizeof(char));
	char *param__buf_3=(char *)malloc(3 * sizeof(char));
	char *param__buf_4=(char *)malloc(4 * sizeof(char));
	char *param__buf_5=(char *)malloc(5 * sizeof(char));
	uint8_t command_recv_buf[50]={0};
	uint8_t tcp_send_buf[50]={0};
	uint8_t FLAG_change_parameter=0;//参数修改标志位
	uint16_t param_hex_16bit=0;//16位的16进制参数
    status = sd_mount();           //挂载文件系统
    if(status != XST_SUCCESS){
		xil_printf("Failed to open SD card!\n");
    }
    else
    {
        xil_printf("Success to open SD card!\n");
        // 新增：上电读取目标配置
        load_target_config();
    }
    res = f_stat(FILE_NAME_1, &fno);// 检查配置文件是否存在
    if (res == FR_OK)  // 文件存在
    {
	   // 读取内容
	   if (read_config_commands() != XST_SUCCESS)
	   {
		   xil_printf("Error: 无法读取\r\n");
	   }
	   // 验证配置 - 如果失败则重建
	   if (validate_config() != XST_SUCCESS) {
		   xil_printf("验证失败. 正在使用默认值重新创建...\r\n");
		   if (recreate_config_with_defaults() != XST_SUCCESS) {
			   xil_printf("Error: 无法重新创建配置\r\n");
		   }
	   }
	   // 打印配置
	   print_config();
	   xSemaphoreGive(xFMCW_parameter_changeSemaphore); // 释放参数更新信号量
	}
    else if (res == FR_NO_FILE) // 文件不存在
   {
	   //  创建并写入默认配置
	   if (write_default_config() != XST_SUCCESS)
	   {
		   xil_printf("Error: 无法创建\r\n");
	   }
	   // 将默认配置复制到内存
	  command_count = sizeof(default_commands) / sizeof(default_commands[0]);

	  for (int i = 0; i < command_count; i++)
	  {
		  char cmd_buffer[MAX_LINE_LENGTH];
		  generate_default_command_string(cmd_buffer, sizeof(cmd_buffer), i);

		  // 去除换行符后存储
		  int len = strlen(cmd_buffer);
		  if (len >= 2 && cmd_buffer[len-2] == '\r' && cmd_buffer[len-1] == '\n')
		  {
			  strncpy(loaded_commands[i], cmd_buffer, len-2);
			  loaded_commands[i][len-2] = '\0';
		  }
		  else
		  {
			  strncpy(loaded_commands[i], cmd_buffer, MAX_LINE_LENGTH);
		  }
	  }
	  xil_printf("Default configuration loaded with %d commands\r\n", command_count);
	  print_config();
	  xSemaphoreGive(xFMCW_parameter_changeSemaphore); // 释放参数更新信号量
	}
	while(1)
	{
		if(xQueueReceive(Lwip_Server_Recv_To_Emmc_Queue,command_recv_buf,portMAX_DELAY))
		{
			if(command_recv_buf[0]==0xAA&&command_recv_buf[6]==0xBB)//验证头和尾
			{
				tcp_send_buf[0]=command_recv_buf[0];//头
				tcp_send_buf[1]=command_recv_buf[1];
				tcp_send_buf[2]=command_recv_buf[2];
				tcp_send_buf[3]=command_recv_buf[3];//读、写
				tcp_send_buf[4]=0x00;
				tcp_send_buf[5]=0x00;
				tcp_send_buf[6]=command_recv_buf[6];//尾
				if(command_recv_buf[1]==0xAA)
				{
					param_hex_16bit=(command_recv_buf[4]<<8)|command_recv_buf[5];
					switch(command_recv_buf[2])
					{
						case 0x01:
							command=":FMCW:FREQuency:STARt";
							if(command_recv_buf[3]==0x01)//写
							{
								switch(param_hex_16bit)
								{
									case 0x0001:
										param_value="9000000000";
										FLAG_change_parameter=1;
										break;

									case 0x0002:
										param_value="9100000000";
										FLAG_change_parameter=1;
										break;

									case 0x0003:
										param_value="9200000000";
										FLAG_change_parameter=1;
										break;

									case 0x0004:
										param_value="9300000000";
										FLAG_change_parameter=1;
										break;

									case 0x0005:
										param_value="9400000000";
										FLAG_change_parameter=1;
										break;

									case 0x0006:
										param_value="9500000000";
										FLAG_change_parameter=1;
										break;

									case 0x0007:
										param_value="9600000000";
										FLAG_change_parameter=1;
										break;

									case 0x0008:
										param_value="9700000000";
										FLAG_change_parameter=1;
										break;

									case 0x0009:
										param_value="9800000000";
										FLAG_change_parameter=1;
										break;

									case 0x000A:
										param_value="9900000000";
										FLAG_change_parameter=1;
										break;

									case 0x000B:
										param_value="10000000000";
										FLAG_change_parameter=1;
										break;

									default:
										break;
								}
							}
							else//读
							{
								const char *value = get_parameter_value(command);
								if(strcmp(value,"9000000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x01;
								}
								else if(strcmp(value,"9100000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x02;
								}
								else if(strcmp(value,"9200000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x03;
								}
								else if(strcmp(value,"9300000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x04;
								}
								else if(strcmp(value,"9400000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x05;
								}
								else if(strcmp(value,"9500000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x06;
								}
								else if(strcmp(value,"9600000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x07;
								}
								else if(strcmp(value,"9700000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x08;
								}
								else if(strcmp(value,"9800000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x09;
								}
								else if(strcmp(value,"9900000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x0A;
								}
								else if(strcmp(value,"10000000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x0B;
								}
								FLAG_change_parameter=3;
							}
							break;

						case 0x02:
							command=":FMCW:FREQuency:STOP";
							if(command_recv_buf[3]==0x01)//写
							{
								switch(param_hex_16bit)
								{
									case 0x0001:
										param_value="9000000000";
										FLAG_change_parameter=1;
										break;

									case 0x0002:
										param_value="9100000000";
										FLAG_change_parameter=1;
										break;

									case 0x0003:
										param_value="9200000000";
										FLAG_change_parameter=1;
										break;

									case 0x0004:
										param_value="9300000000";
										FLAG_change_parameter=1;
										break;

									case 0x0005:
										param_value="9400000000";
										FLAG_change_parameter=1;
										break;

									case 0x0006:
										param_value="9500000000";
										FLAG_change_parameter=1;
										break;

									case 0x0007:
										param_value="9600000000";
										FLAG_change_parameter=1;
										break;

									case 0x0008:
										param_value="9700000000";
										FLAG_change_parameter=1;
										break;

									case 0x0009:
										param_value="9800000000";
										FLAG_change_parameter=1;
										break;

									case 0x000A:
										param_value="9900000000";
										FLAG_change_parameter=1;
										break;

									case 0x000B:
										param_value="10000000000";
										FLAG_change_parameter=1;
										break;

									default:
										break;
								}
							}
							else//读
							{
								const char *value = get_parameter_value(command);
								if(strcmp(value,"9000000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x01;
								}
								else if(strcmp(value,"9100000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x02;
								}
								else if(strcmp(value,"9200000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x03;
								}
								else if(strcmp(value,"9300000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x04;
								}
								else if(strcmp(value,"9400000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x05;
								}
								else if(strcmp(value,"9500000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x06;
								}
								else if(strcmp(value,"9600000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x07;
								}
								else if(strcmp(value,"9700000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x08;
								}
								else if(strcmp(value,"9800000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x09;
								}
								else if(strcmp(value,"9900000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x0A;
								}
								else if(strcmp(value,"10000000000")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x0B;
								}
								FLAG_change_parameter=3;
							}
							break;

//						case 0x03:
//							command=":FMCW:STEP:TIME";
//							switch(param_hex_16bit)
//							{
//								case 0x0001:
//									param_value="200";
//									FLAG_change_parameter=1;
//									break;
//
//								case 0x0002:
//									param_value="500";
//									FLAG_change_parameter=1;
//									break;
//
//								case 0x0003:
//									param_value="1000";
//									FLAG_change_parameter=1;
//									break;
//
//								default:
//									break;
//							}
//							break;

						case 0x04://发射功率(+3dBm~+33dBm)
							command=":FMCW:POWER";
							if(command_recv_buf[3]==0x01)//写
							{
								if(param_hex_16bit>0X0003&&param_hex_16bit<0x000A)//3~9
								{
									sprintf(param__buf_1, "%d", param_hex_16bit);
									param_value=param__buf_1;
									FLAG_change_parameter=1;
								}
								else if(param_hex_16bit>0X000A&&param_hex_16bit<=0x0021)//10~33
								{
									sprintf(param__buf_2, "%d", param_hex_16bit);
									param_value=param__buf_2;
									FLAG_change_parameter=1;
								}
							}
							else
							{
								 int tx_power;
							     if (get_int_parameter(command, &tx_power))
							     {
										tcp_send_buf[4]=(tx_power>>8)&0xff;
										tcp_send_buf[5]=tx_power&0xff;
							      }
							     FLAG_change_parameter=3;
							}
							break;

						case 0x05:// 本振回扫时间(400~50000us)
							command=":FMCW:LO:SCAN:TIME";
							if(command_recv_buf[3]==0x01)//写
							{
								if(param_hex_16bit>=0X0190&&param_hex_16bit<0x03E8)//400~999
								{
									sprintf(param__buf_3, "%d", param_hex_16bit);
									param_value=param__buf_3;
									FLAG_change_parameter=1;
								}
								else if(param_hex_16bit>=0X03E8&&param_hex_16bit<0x2710)//1000~9999
								{
									sprintf(param__buf_4, "%d",param_hex_16bit);
									param_value=param__buf_4;
									FLAG_change_parameter=1;
								}
								else if(param_hex_16bit>=0X2710&&param_hex_16bit<=0xC350)//10000~50000
								{
									sprintf(param__buf_5, "%d",param_hex_16bit);
									param_value=param__buf_5;
									FLAG_change_parameter=1;
								}
							}
							else
							{
								int int_scan_time;
							     if (get_int_parameter(command, &int_scan_time))
							     {
										tcp_send_buf[4]=(int_scan_time>>8)&0xff;
										tcp_send_buf[5]=int_scan_time&0xff;
							      }
							     FLAG_change_parameter=3;
							}
							break;

						case 0x06://中频增益(0,10,20,30dB)
							command=":FMCW:IF";
							if(command_recv_buf[3]==0x01)//写
							{
								switch(param_hex_16bit)
								{
									case 0x0001:
										param_value="0";
										FLAG_change_parameter=1;
										break;

									case 0x0002:
										param_value="10";
										FLAG_change_parameter=1;
										break;

									case 0x0003:
										param_value="20";
										FLAG_change_parameter=1;
										break;

									case 0x0004:
										param_value="30";
										FLAG_change_parameter=1;
										break;

									default:
										break;
								}
							}
							else
							{
								const char *IF_value = get_parameter_value(command);
								if(strcmp(IF_value,"0")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x01;
								}
								else if(strcmp(IF_value,"10")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x02;
								}
								else if(strcmp(IF_value,"20")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x03;
								}
								else if(strcmp(IF_value,"30")==0)
								{
									tcp_send_buf[4]=0x00;
									tcp_send_buf[5]=0x04;
								}
								FLAG_change_parameter=3;
							}
							break;

//						case 0x07://触发模式(EXTERN/S0FT/STOP)
//							command=":FMCW:TRIG:MODE";
//							switch(param_hex_16bit)
//							{
//								case 0x0001://硬触发
//									param_value="EXTERN";
//									FLAG_change_parameter=1;
//									break;
//
//								case 0x0002://软触发
//									param_value="S0FT";
//									FLAG_change_parameter=1;
//									break;
//
//								case 0x0003://停止
//									param_value="STOP";
//									FLAG_change_parameter=1;
//									break;
//
//								default:
//									break;
//							}
//							break;

//						case 0x08://触发次数(1--120)
//							command=":FMCW:TRIG:COUNt";
//							if(param_hex_16bit>=0X0000&&param_hex_16bit<0x000A)//0~9
//							{
//								sprintf(param__buf_1, "%d", param_hex_16bit);
//								param_value=param__buf_1;
//								FLAG_change_parameter=1;
//							}
//							else if(param_hex_16bit>=0X000A&&param_hex_16bit<0x0064)//10~99
//							{
//								sprintf(param__buf_2, "%d",param_hex_16bit);
//								param_value=param__buf_2;
//								FLAG_change_parameter=1;
//							}
//							else if(param_hex_16bit>=0X0064&&param_hex_16bit<=0x0078)//100~120
//							{
//								sprintf(param__buf_3, "%d",param_hex_16bit);
//								param_value=param__buf_3;
//								FLAG_change_parameter=1;
//							}
//							break;

//						case 0x09://运行模式(MODEA/MODEB)
//							command=":FMCW:RUN:MODE";
//							switch(param_hex_16bit)
//							{
//								case 0x0001://模式A
//									param_value="MODEA";
//									FLAG_change_parameter=1;
//									break;
//
//								case 0x0002://模式B
//									param_value="MODEB";
//									FLAG_change_parameter=1;
//									break;
//
//								default:
//									break;
//							}
//							break;

//						case 0x0A://电源模式(NORMa/WAIT)
//							command=":FMCW:POWER:MODE";
//							switch(param_hex_16bit)
//							{
//								case 0x0001://工作模式
//									param_value="NORMAL";
//									FLAG_change_parameter=1;
//									break;
//
//								case 0x0002://待机模式
//									param_value="WAIT";
//									FLAG_change_parameter=1;
//									break;
//
//								default:
//									break;
//							}
//							break;

//						case 0x0B:// 射频开关模式(OFF/NO/PULSE)
//							command=":FMCW:RFSTATe";
//							switch(param_hex_16bit)
//							{
//								case 0x0001://脉冲模式
//									param_value="PULSE";
//									FLAG_change_parameter=1;
//									break;
//
//								case 0x0002://常开模式
//									param_value="ON";
//									FLAG_change_parameter=1;
//									break;
//
//								case 0x0003://常闭模式
//									param_value="OFF";
//									FLAG_change_parameter=1;
//									break;
//
//								default:
//									break;
//							}
//							break;

//						case 0x0C: //扫频帧数(1--65535)
//							command=":FMCW:FMCOUNT";
//							if(param_hex_16bit>=0X0001&&param_hex_16bit<0x000A)//1~9
//							{
//								sprintf(param__buf_1, "%d", param_hex_16bit);
//								param_value=param__buf_1;
//								FLAG_change_parameter=1;
//							}
//							else if(param_hex_16bit>=0X000A&&param_hex_16bit<0x0064)//10~99
//							{
//								sprintf(param__buf_2, "%d", param_hex_16bit);
//								param_value=param__buf_2;
//								FLAG_change_parameter=1;
//							}
//							else if(param_hex_16bit>=0X0064&&param_hex_16bit<0x03E8)//100~999
//							{
//								sprintf(param__buf_3, "%d", param_hex_16bit);
//								param_value=param__buf_3;
//								FLAG_change_parameter=1;
//							}
//							else if(param_hex_16bit>=0X03E8&&param_hex_16bit<0x2710)//1000~9999
//							{
//								sprintf(param__buf_4, "%d",param_hex_16bit);
//								param_value=param__buf_4;
//								FLAG_change_parameter=1;
//							}
//							else if(param_hex_16bit>=0X2710&&param_hex_16bit<=0xFFFF)//10000~50000
//							{
//								sprintf(param__buf_5, "%d",param_hex_16bit);
//								param_value=param__buf_5;
//								FLAG_change_parameter=1;
//							}
//							break;

//						case 0x0D://微波网络模式(0自动/1手动)
//							command=":FMCW:MICRowave:MODE";
//							switch(param_hex_16bit)
//							{
//								case 0x0001://自动
//									param_value="0";
//									FLAG_change_parameter=1;
//									break;
//
//								case 0x0002://手动
//									param_value="1";
//									FLAG_change_parameter=1;
//									break;
//
//								default:
//									break;
//							}
//							break;

							case 0x0E://调频初始化
								command=":FMCW:INIT";
								param_value=" ";
								FLAG_change_parameter=1;
								xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,0);
								memset(tcp_send_buf, 0, 50);
								break;

							case 0xAA://查看配置参数
								FLAG_change_parameter=2;
								break;

						default:
							break;
					}
				}
			}
			memset(command_recv_buf, 0, 50);
			if(FLAG_change_parameter==1)
			{
				FLAG_change_parameter=0;
				 // 更新参数
				if (update_parameter(command, param_value) != XST_SUCCESS)
				{
					xil_printf("Error: Failed to update parameter\r\n");
					continue;
				}
				print_config();
				xSemaphoreGive(xFMCW_parameter_changeSemaphore); // 释放参数更新信号量
			}
			else if(FLAG_change_parameter==2)
			{
				FLAG_change_parameter=0;
				print_config();
			}
			else if(FLAG_change_parameter==3)
			{
				xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,0);
				memset(tcp_send_buf, 0, 50);
			}
			else
			{
				xil_printf("Error: 更改配置失败!\r\n");
			}
		}
		vTaskDelay(1);
	}
}

// 统一命令写入函数
int write_command_to_file(FIL *file, const char *command)
{
    char full_line[MAX_LINE_LENGTH + 3]; // 额外空间用于 \r\n 和终止符
    int len = snprintf(full_line, sizeof(full_line), "%s\r\n", command);

    // 检查命令长度
    if (len <= 0) {
        xil_printf("Error: snprintf failed for command: %s\r\n", command);
        return XST_FAILURE;
    }

    if (len >= sizeof(full_line)) {
        xil_printf("Error: Command too long (%d > %d): %s...\r\n",
                   len, (int)sizeof(full_line) - 1, command);
        return XST_FAILURE;
    }

    UINT bytes_written;
    FRESULT res = f_write(file, full_line, len, &bytes_written);

    if (res != FR_OK) {
        xil_printf("Error: File write failed (%d) for command: %s\r\n", res, command);
        return XST_FAILURE;
    }

    if (bytes_written != (UINT)len) {
        xil_printf("Error: Partial write (%d/%d bytes) for command: %s\r\n",
                   bytes_written, len, command);
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

// 写入默认配置到文件（仅当文件不存在时）
int write_default_config()
{
    FIL file;
    FRESULT res;

    // 使用FA_CREATE_NEW确保不会覆盖现有文件
    res = f_open(&file, FILE_NAME_1, FA_CREATE_NEW | FA_WRITE);
    if (res != FR_OK) {
        // 文件已存在，不需要创建
        if (res == FR_EXIST) {
            return XST_SUCCESS; // 不是错误，只是跳过
        }
        // 其他错误
        xil_printf("Error: Failed to create config file (%d)\r\n", res);
        return XST_FAILURE;
    }

    xil_printf("Creating new config file with default settings...\r\n");

    // 写入所有命令
    int num_commands = sizeof(default_commands) / sizeof(default_commands[0]);
    // 写入所有默认命令
       for (int i = 0; i < num_commands; i++) {
           char cmd_buffer[MAX_LINE_LENGTH];
           generate_default_command_string(cmd_buffer, sizeof(cmd_buffer), i);

           if (write_command_to_file(&file, cmd_buffer) != XST_SUCCESS) {
               f_close(&file);
               return XST_FAILURE;
           }
       }
	f_sync(&file); // 确保数据写入物理存储
	f_close(&file);
	xil_printf("Default configuration written successfully\r\n");
	return XST_SUCCESS;
}

// 生成完整命令字符串
void generate_default_command_string(char *buffer, size_t buffer_size, int index)
{
    const RadarCommand *cmd = &default_commands[index];

    if (cmd->default_value[0] != '\0') {
        snprintf(buffer, buffer_size, "%s %s", cmd->command, cmd->default_value);
    } else {
        snprintf(buffer, buffer_size, "%s", cmd->command);
    }
}

// 从文件读取配置命令
int read_config_commands()
{
    FIL file;
    FRESULT res;
    UINT bytes_read;
    char line_buffer[MAX_LINE_LENGTH];

    // 打开配置文件
    res = f_open(&file, FILE_NAME_1, FA_READ);
    if (res != FR_OK) {
        xil_printf("Error: 无法打开配置文件进行读取(%d)\r\n", res);
        return XST_FAILURE;
    }

    command_count = 0;
    xil_printf("正在读取配置文件...\r\n");

    // 逐行读取文件内容
    while (command_count < MAX_COMMANDS) {
        // 读取一行（直到遇到换行符或达到最大长度）
        int index = 0;
        int eol_found = 0;

        while (index < MAX_LINE_LENGTH - 1) {
            char c;
            res = f_read(&file, &c, 1, &bytes_read);

            // 检查文件结束或读取错误
            if (res != FR_OK || bytes_read != 1) {
                eol_found = 1;
                break;
            }

            // 检查换行符（CRLF或LF）
            if (c == '\n') {
                eol_found = 1;
                break;
            }

            // 跳过回车符
            if (c != '\r') {
                line_buffer[index++] = c;
            }
        }

        // 添加字符串终止符
        line_buffer[index] = '\0';

        // 如果有实际内容，则保存命令
        if (index > 0) {
            // 复制命令到数组
            strncpy(loaded_commands[command_count], line_buffer, MAX_LINE_LENGTH);
            command_count++;
        }

        // 如果到达文件末尾，退出循环
        if (f_eof(&file)) break;
    }

    f_close(&file);
    xil_printf("Successfully read %d commands from config file\r\n", command_count);
    return XST_SUCCESS;
}

// 打印所有配置参数
void print_config()
{
	xil_printf("\r\n===== Radar Configuration (Enhanced) =====\r\n");
	xil_printf("Idx | Command                          | Value       | Description\r\n");
	xil_printf("----|----------------------------------|-------------|------------\r\n");
    for (int i = 0; i < command_count; i++) {
    	// 提取命令和参数
    	char command_part[50] = {0};
		char value_part[50] = {0};
		const char *description = "Unknown";
        // 分割命令和参数
        char *space_pos = strchr(loaded_commands[i], ' ');
        if (space_pos)  // 提取命令部分
        {
            int cmd_len = space_pos - loaded_commands[i];
		   strncpy(command_part, loaded_commands[i], cmd_len);
		   command_part[cmd_len] = '\0';
           // 提取参数部分（跳过空格）
           strncpy(value_part, space_pos + 1, sizeof(value_part) - 1);
           value_part[sizeof(value_part) - 1] = '\0';
           // 查找描述
           for (int j = 0; j < sizeof(default_commands)/sizeof(default_commands[0]); j++) {
               if (strcmp(command_part, default_commands[j].command) == 0) {
                   description = default_commands[j].description;
                   break;
               }
           }
       }
        else// 没有参数的命令
        {
		   strncpy(command_part, loaded_commands[i], sizeof(command_part) - 1);
		   strcpy(value_part, "N/A");
		   // 查找描述
		   for (int j = 0; j < sizeof(default_commands)/sizeof(default_commands[0]); j++) {
			   if (strcmp(command_part, default_commands[j].command) == 0) {
				   description = default_commands[j].description;
				   break;
			   }
		   }
        }
        // 格式化打印
        xil_printf("%3d | %-32s | %-11s | %s\r\n",
                  i+1, command_part, value_part, description);
    }
    xil_printf("==============================================================\r\n");
}

// 验证配置完整性
int validate_config()
{
	int missing_commands = 0;
	int extra_commands = 0;
	int valid_commands = 0;
	int num_expected = sizeof(default_commands) / sizeof(default_commands[0]);
	// 检查所有默认命令是否存在
	xil_printf("\r\nValidating configuration...\r\n");

	for (int i = 0; i < num_expected; i++) {
		const char *expected_cmd = default_commands[i].command;
		int found = 0;

		for (int j = 0; j < command_count; j++) {
			if (strncmp(loaded_commands[j], expected_cmd, strlen(expected_cmd)) == 0) {
				found = 1;
				valid_commands++;
				xil_printf("  [OK] %s\r\n", expected_cmd);
				break;
			}
		}
		if (!found) {
			missing_commands++;
			xil_printf("  [MISSING] %s - %s\r\n", expected_cmd, default_commands[i].description);
		}
	}

	// 检查是否有额外命令
	for (int j = 0; j < command_count; j++) {
		int found = 0;

		for (int i = 0; i < num_expected; i++) {
			const char *expected_cmd = default_commands[i].command;

			if (strncmp(loaded_commands[j], expected_cmd, strlen(expected_cmd)) == 0) {
				found = 1;
				break;
			}
		}

		if (!found) {
			extra_commands++;
			xil_printf("  [EXTRA] %s\r\n", loaded_commands[j]);
		}
	}

	// 检查命令数量
	if (command_count != num_expected) {
		xil_printf("Error: Command count mismatch (%d/%d)\r\n",
				  command_count, num_expected);
	}

	if (missing_commands > 0) {
		xil_printf("Error: Missing %d required commands\r\n", missing_commands);
		return XST_FAILURE;
	}

	if (extra_commands > 0) {
		xil_printf("Warning: Found %d extra commands\r\n", extra_commands);
	}

	xil_printf("Validation complete: %d/%d commands present\r\n",
			  valid_commands, num_expected);

	return (valid_commands == num_expected) ? XST_SUCCESS : XST_FAILURE;
}


// 重建默认配置
int recreate_config_with_defaults()
{
    FRESULT res;
    xil_printf("重新创建默认配置...\r\n");

    // 删除现有配置文件
    res = f_unlink(FILE_NAME_1);
    if (res != FR_OK && res != FR_NO_FILE) {
        xil_printf("Error: 删除配置文件失败 (%d)\r\n", res);
        return XST_FAILURE;
    }

    // 写入默认配置
    if (write_default_config() != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // 将默认配置加载到内存
    command_count = sizeof(default_commands) / sizeof(default_commands[0]);

    for (int i = 0; i < command_count; i++) {
        char cmd_buffer[MAX_LINE_LENGTH];
        generate_default_command_string(cmd_buffer, sizeof(cmd_buffer), i);

        // 去除换行符后存储
        int len = strlen(cmd_buffer);
        if (len >= 2 && cmd_buffer[len-2] == '\r' && cmd_buffer[len-1] == '\n') {
            strncpy(loaded_commands[i], cmd_buffer, len-2);
            loaded_commands[i][len-2] = '\0';
        } else {
            strncpy(loaded_commands[i], cmd_buffer, MAX_LINE_LENGTH);
        }
    }

    xil_printf("Default configuration reloaded with %d commands\r\n", command_count);
    return XST_SUCCESS;
}

// 查找命令在加载配置中的索引
int find_command_index(const char *command_prefix)
{
    for (int i = 0; i < command_count; i++) {
        // 检查命令前缀是否匹配
        if (strncmp(loaded_commands[i], command_prefix, strlen(command_prefix)) == 0) {
            return i;
        }
    }
    return -1; // 未找到
}

/************************* 参数更新函数 *************************/
// 更新特定参数
int update_parameter(const char* command_prefix, const char* new_value)
{
    int index = find_command_index(command_prefix);
    if (index == -1) {
        xil_printf("Error: Parameter not found: %s\r\n", command_prefix);
        return XST_FAILURE;
    }

    // 构造新命令
    char new_command[MAX_LINE_LENGTH];
    if (new_value[0] != '\0') {
        snprintf(new_command, sizeof(new_command), "%s %s", command_prefix, new_value);
    } else {
        snprintf(new_command, sizeof(new_command), "%s", command_prefix);
    }

    // 更新内存中的命令
    strncpy(loaded_commands[index], new_command, MAX_LINE_LENGTH);
    xil_printf("Updated parameter: %s\r\n", new_command);

//    // 验证更新后的配置
//    if (validate_config() != XST_SUCCESS) {
//        xil_printf("Error: Updated config is invalid!\r\n");
//        return XST_FAILURE;
//    }

    // 保存更新后的配置
    if (save_config_to_emmc() != XST_SUCCESS) {
        xil_printf("Error: Failed to save updated config\r\n");
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

// 保存配置到eMMC
int save_config_to_emmc()
{
    FIL file;
    FRESULT res;

    res = f_open(&file, FILE_NAME_1, FA_CREATE_ALWAYS | FA_WRITE);
    if (res != FR_OK) {
        xil_printf("Error: Failed to open config for writing (%d)\r\n", res);
        return XST_FAILURE;
    }

    // 写入所有命令
   for (int i = 0; i < command_count; i++) {
	   if (write_command_to_file(&file, loaded_commands[i]) != XST_SUCCESS) {
		   f_close(&file);
		   return XST_FAILURE;
	   }
   }
    f_close(&file);
    f_sync(&file); // 确保数据写入物理存储
    xil_printf("Configuration saved successfully\r\n");
    return XST_SUCCESS;
}

// 1. 解析命令参数（增强版）
int parse_command(const char *full_command, char *prefix, char *value)
{
    // 跳过前导空格
    const char *start = full_command;
    while (*start && isspace((unsigned char)*start)) start++;
    if (!*start) return 0; // 空行

    // 查找第一个空格或制表符
    const char *space_pos = strpbrk(start, " \t");

    if (space_pos) {
        // 提取命令前缀
        size_t prefix_len = space_pos - start;
        strncpy(prefix, start, prefix_len);
        prefix[prefix_len] = '\0';

        // 提取参数值
        const char *value_start = space_pos + 1;
        while (*value_start && isspace((unsigned char)*value_start)) value_start++;

        // 复制值直到行尾或注释
        char *dest = value;
        while (*value_start && *value_start != ';' && *value_start != '#' &&
               *value_start != '\r' && *value_start != '\n') {
            *dest++ = *value_start++;
        }
        *dest = '\0';

        return 1; // 成功解析
    }

    // 没有参数的情况
    strncpy(prefix, start, MAX_LINE_LENGTH);
    value[0] = '\0';
    return 0;
}

// 2. 查找雷达命令配置
const RadarCommand *find_radar_command(const char *command_prefix)
{
    for (int i = 0; i < num_default_commands; i++) {
        if (strcasecmp(default_commands[i].command, command_prefix) == 0) {
            return &default_commands[i];
        }
    }
    return NULL;
}

// 4. 诊断函数：查找特定命令
void find_and_print_command(const char *command_prefix)
{
    printf("\nSearching for command: %s\n", command_prefix);

    int found = 0;
    for (int i = 0; i < command_count; i++) {
        char prefix[MAX_LINE_LENGTH], value[MAX_LINE_LENGTH];
        parse_command(loaded_commands[i], prefix, value);

        if (strcasecmp(prefix, command_prefix) == 0) {
            found = 1;
            printf("Found command: %s\n", loaded_commands[i]);
            printf("Parsed prefix: '%s'\n", prefix);
            printf("Parsed value: '%s'\n", value);
            break;
        }
    }

    if (!found) {
        printf("Command not found in loaded_commands\n");
    }
}

// 5. 增强版获取整数参数值
int get_int_parameter(const char *command_prefix, int *value)
{
    char prefix_buf[MAX_LINE_LENGTH], value_buf[MAX_LINE_LENGTH];

    for (int i = 0; i < command_count; i++) {
        if (parse_command(loaded_commands[i], prefix_buf, value_buf)) {
            if (strcasecmp(prefix_buf, command_prefix) == 0) {
                // 尝试转换为整数
                char *endptr;
                long result = strtol(value_buf, &endptr, 10);

                // 检查转换是否成功
                if (endptr != value_buf && *endptr == '\0') {
                    *value = (int)result;
                    return 1; // 成功
                } else {
                    printf("Conversion error for command '%s': '%s' is not a valid integer\n",
                           command_prefix, value_buf);
                    return 0; // 转换失败
                }
            }
        }
    }

    printf("Command '%s' not found in loaded_commands\n", command_prefix);
    return 0; // 命令未找到
}


// 8. 检查参数是否存在
int parameter_exists(const char *command_prefix)
{
    for (int i = 0; i < command_count; i++) {
        char prefix[MAX_LINE_LENGTH], value[MAX_LINE_LENGTH];
        parse_command(loaded_commands[i], prefix, value);

        if (strcasecmp(prefix, command_prefix) == 0) {
            return 1;
        }
    }
    return 0;
}

// 3. 获取参数值（字符串）
const char *get_parameter_value(const char *command_prefix)
{
    static char value_buf[MAX_LINE_LENGTH]; // 静态缓冲区用于返回值
    char prefix_buf[MAX_LINE_LENGTH];

    for (int i = 0; i < command_count; i++) {
        char prefix[MAX_LINE_LENGTH], value[MAX_LINE_LENGTH];
        if (parse_command(loaded_commands[i], prefix, value)) {
            // 不区分大小写比较命令前缀
            if (strcasecmp(prefix, command_prefix) == 0) {
                strncpy(value_buf, value, MAX_LINE_LENGTH);
                return value_buf;
            }
        }
    }
    return NULL;
}

// 4. 获取整数参数值
int get_int_parameter_2(const char *command_prefix, int *value)
{
    const char *str_value = get_parameter_value(command_prefix);
    if (str_value && *str_value) {
        char *endptr;
        long result = strtol(str_value, &endptr, 10);

        // 检查是否成功转换整个字符串
        if (endptr != str_value && *endptr == '\0') {
            *value = (int)result;
            return 1;
        }
    }
    return 0;
}

// 5. 获取长整数参数值（用于大数值）
int get_long_parameter(const char *command_prefix, long *value)
{
    const char *str_value = get_parameter_value(command_prefix);
    if (str_value && *str_value) {
        char *endptr;
        long result = strtol(str_value, &endptr, 10);

        if (endptr != str_value && *endptr == '\0') {
            *value = result;
            return 1;
        }
    }
    return 0;
}

// 6. 获取浮点数参数值
int get_float_parameter(const char *command_prefix, float *value)
{
    const char *str_value = get_parameter_value(command_prefix);
    if (str_value && *str_value) {
        char *endptr;
        float result = strtof(str_value, &endptr);

        if (endptr != str_value && *endptr == '\0') {
            *value = result;
            return 1;
        }
    }
    return 0;
}

// 7. 获取布尔参数值
int get_bool_parameter(const char *command_prefix, int *value)
{
    const char *str_value = get_parameter_value(command_prefix);
    if (str_value) {
        if (strcasecmp(str_value, "ON") == 0 ||
            strcasecmp(str_value, "1") == 0 ||
            strcasecmp(str_value, "TRUE") == 0) {
            *value = 1;
            return 1;
        }
        else if (strcasecmp(str_value, "OFF") == 0 ||
                 strcasecmp(str_value, "0") == 0 ||
                 strcasecmp(str_value, "FALSE") == 0) {
            *value = 0;
            return 1;
        }
    }
    return 0;
}

// 8. 安全参数获取（带默认值）
int get_parameter_safe(const char *command_prefix, char *value_buf, size_t buf_size)
{
    const char *value = get_parameter_value(command_prefix);
    if (value) {
        strncpy(value_buf, value, buf_size);
        return 1;
    }

    // 查找默认值
    for (int i = 0; i < num_default_commands; i++) {
        if (strcasecmp(default_commands[i].command, command_prefix) == 0) {
            strncpy(value_buf, default_commands[i].default_value, buf_size);
            return 2; // 使用默认值
        }
    }

    value_buf[0] = '\0';
    return 0; // 未找到
}

// 9. 安全获取整数参数（带默认值）
int get_int_parameter_safe(const char *command_prefix, int *value, int default_val)
{
    if (get_int_parameter(command_prefix, value)) {
        return 1;
    }

    // 查找默认值
    for (int i = 0; i < num_default_commands; i++) {
        if (strcasecmp(default_commands[i].command, command_prefix) == 0) {
            char *endptr;
            long result = strtol(default_commands[i].default_value, &endptr, 10);
            if (endptr != default_commands[i].default_value && *endptr == '\0') {
                *value = (int)result;
                return 2; // 使用默认值
            }
        }
    }

    *value = default_val;
    return 0; // 使用回退值
}





// 保存目标配置到EMMC（二进制存储）
int save_target_config(void)
{
    FIL file;
    FRESULT res;
    UINT bytes_written;

    // 检查目标数量是否超出上限
    if (g_target_count > EMMC_MAX_TARGETS) {
        xil_printf("Error: Target count exceeds MAX_TARGETS(%d)\r\n", EMMC_MAX_TARGETS);
        return XST_FAILURE;
    }

    // 检查SD卡是否已挂载（复用现有挂载逻辑）
    if (fatfs.fs_type == 0) {  // 文件系统未挂载
        xil_printf("Warning: SD card not mounted, try mounting...\r\n");
        if (sd_mount() != XST_SUCCESS) {
            xil_printf("Error: Failed to mount SD card for target save\r\n");
            return XST_FAILURE;
        }
    }

    // 打开目标文件（创建并写入，覆盖原有文件）
    res = f_open(&file, TARGET_FILE_NAME, FA_CREATE_ALWAYS | FA_WRITE | FA_OPEN_ALWAYS);
    if (res != FR_OK) {
        xil_printf("Error: Failed to open target file (%d)\r\n", res);
        return XST_FAILURE;
    }

    // 第一步：写入目标计数（g_target_count）
    res = f_write(&file, &g_target_count, sizeof(int), &bytes_written);
    if (res != FR_OK || bytes_written != sizeof(int)) {
        xil_printf("Error: Write target count failed (%d, %d/%d bytes)\r\n",
                   res, bytes_written, sizeof(int));
        f_close(&file);
        return XST_FAILURE;
    }

    // 第二步：写入目标数据（前g_target_count个元素）
    if (g_target_count > 0) {
        res = f_write(&file, emmc_targets, sizeof(ConfigurationTarget) * g_target_count, &bytes_written);
        if (res != FR_OK || bytes_written != sizeof(ConfigurationTarget) * g_target_count) {
            xil_printf("Error: Write target data failed (%d, %d/%d bytes)\r\n",
                       res, bytes_written, sizeof(ConfigurationTarget) * g_target_count);
            f_close(&file);
            return XST_FAILURE;
        }
    }

    // 同步数据到物理存储，关闭文件
    f_sync(&file);
    f_close(&file);

    xil_printf("Success: Saved %d targets to EMMC\r\n", g_target_count);
    return XST_SUCCESS;
}


// 上电读取目标配置从EMMC
int load_target_config(void)
{
	// 申请信号量
    if (xTargetConfigSemaphore != NULL) {
        if (xSemaphoreTake(xTargetConfigSemaphore, pdMS_TO_TICKS(100)) != pdPASS) {
            xil_printf("Error: 信号量获取失败（load_target_config）\r\n");
            return XST_FAILURE;
        }
    }

    FIL file;
    FRESULT res;
    UINT bytes_read;
    int temp_count = 0;

    // 重置标志位为默认值（无配置文件）
    FLAG_Equipment_operation_mode = 0;

    // 检查SD卡是否已挂载
    if (fatfs.fs_type == 0) {
        xil_printf("Warning: SD card not mounted, try mounting...\r\n");
        if (sd_mount() != XST_SUCCESS) {
            xil_printf("Error: Failed to mount SD card for target load\r\n");
            return XST_FAILURE;
            if (xTargetConfigSemaphore != NULL) {
                xSemaphoreGive(xTargetConfigSemaphore);
            }
        }
    }

    // 打开目标文件（只读）
    res = f_open(&file, TARGET_FILE_NAME, FA_READ);
    if (res == FR_NO_FILE)
    {
        // 文件不存在，初始化目标配置为默认值
        g_target_count = 0;
        memset(emmc_targets, 0, sizeof(emmc_targets));
        xil_printf("Info: Target config file not found, FLAG_Equipment_operation_mode=%d\r\n",
                   FLAG_Equipment_operation_mode);
        f_close(&file);
        if (xTargetConfigSemaphore != NULL) {
            xSemaphoreGive(xTargetConfigSemaphore);
        }
        return XST_SUCCESS;
    }
    else if (res != FR_OK)
    {
    	// 文件存在但打开失败：标志位仍为0（文件无效视为无配置）
        xil_printf("Error: Failed to open target file (%d), FLAG_Equipment_operation_mode=%d\r\n",
                   res, FLAG_Equipment_operation_mode);
        if (xTargetConfigSemaphore != NULL) {
            xSemaphoreGive(xTargetConfigSemaphore);
        }
        return XST_FAILURE;
    }

    // 第一步：读取目标计数
    res = f_read(&file, &temp_count, sizeof(int), &bytes_read);
    if (res != FR_OK || bytes_read != sizeof(int)) {
        xil_printf("Error: Read target count failed (%d, %d/%d bytes)\r\n",
                   res, bytes_read, sizeof(int));
        f_close(&file);
        if (xTargetConfigSemaphore != NULL) {
            xSemaphoreGive(xTargetConfigSemaphore);
        }
        return XST_FAILURE;
    }

    // 检查目标计数是否合法（避免超出数组上限）
    if (temp_count < 0 || temp_count > EMMC_MAX_TARGETS) {
        xil_printf("Warning: Invalid target count (%d), reset to 0\r\n", temp_count);
        g_target_count = 0;
        memset(emmc_targets, 0, sizeof(emmc_targets));
        f_close(&file);
        if (xTargetConfigSemaphore != NULL) {
            xSemaphoreGive(xTargetConfigSemaphore);
        }
        return XST_SUCCESS;
    }

    // 第二步：读取目标数据
    g_target_count = temp_count;
    if (g_target_count > 0)
    {
        res = f_read(&file, emmc_targets, sizeof(ConfigurationTarget) * g_target_count, &bytes_read);
        if (res != FR_OK || bytes_read != sizeof(ConfigurationTarget) * g_target_count)
        {
            xil_printf("Error: Read target data failed (%d, %d/%d bytes)\r\n",
                       res, bytes_read, sizeof(ConfigurationTarget) * g_target_count);
            g_target_count = 0;
            memset(emmc_targets, 0, sizeof(emmc_targets));
            f_close(&file);
            if (xTargetConfigSemaphore != NULL) {
                xSemaphoreGive(xTargetConfigSemaphore);
            }
            return XST_FAILURE;
        }
        for (int i = 0; i < g_target_count; i++)
        {
        	targets[i].idx = emmc_targets[i].idx;
        	targets[i].distance = emmc_targets[i].distance;
        }
    }
    else
    {
        memset(emmc_targets, 0, sizeof(emmc_targets));
    }

    // 关闭文件
    f_close(&file);

    // 文件存在且读取成功：设置标志位为1
    FLAG_Equipment_operation_mode = 1;

    // 释放信号量
    if (xTargetConfigSemaphore != NULL) {
        xSemaphoreGive(xTargetConfigSemaphore);
    }

    xil_printf("Success: Loaded %d targets from EMMC, FLAG_Equipment_operation_mode=%d\r\n",
               g_target_count, FLAG_Equipment_operation_mode);
    // 可选：打印读取的目标数据
    for (int i = 0; i < g_target_count; i++)
    {
    	printf("EMMC_Target %d: idx=%d, distance=%.2f m\r\n",
                   i, emmc_targets[i].idx, emmc_targets[i].distance);
    }
    return XST_SUCCESS;
}

// 新增目标（自动保存到EMMC）
int emmc_add_target(ConfigurationTarget new_target)
{
	uint8_t tcp_send_buf[50]={0};
	// 申请信号量
    if (xTargetConfigSemaphore != NULL) {
        if (xSemaphoreTake(xTargetConfigSemaphore, pdMS_TO_TICKS(100)) != pdPASS) {
            xil_printf("Error: 信号量获取失败（emmc_add_target）\r\n");
            return XST_FAILURE;
        }
    }

    // 检查是否超出最大目标数量
    if (g_target_count >= EMMC_MAX_TARGETS) {
        xil_printf("Error: Target count reaches MAX_TARGETS(%d)\r\n", EMMC_MAX_TARGETS);
        // 失败：释放信号量后返回
        if (xTargetConfigSemaphore != NULL) {
            xSemaphoreGive(xTargetConfigSemaphore);
        }
        return XST_FAILURE;
    }

    // 赋值新目标（结构体拷贝）
    emmc_targets[g_target_count] = new_target;
    // 目标计数自增
    g_target_count++;

    // 自动保存到EMMC
    if (save_target_config() != XST_SUCCESS) {
        xil_printf("Error: Failed to save new target\r\n");
        g_target_count--;  // 保存失败，回滚计数
        // 失败：释放信号量后返回
        if (xTargetConfigSemaphore != NULL) {
            xSemaphoreGive(xTargetConfigSemaphore);
        }
        return XST_FAILURE;
    }

    // 释放信号量
    if (xTargetConfigSemaphore != NULL) {
        xSemaphoreGive(xTargetConfigSemaphore);
    }

    xil_printf("Success: Added new target (total: %d)\r\n", g_target_count);

    // 示例：遍历所有目标
    for (int i = 0; i < g_target_count; i++) {

        uint16_t distance_10x = (uint16_t)( emmc_targets[i].distance * 10.0f);
        tcp_send_buf[0]= 0xAA;
        tcp_send_buf[1]= 0xAA;
        tcp_send_buf[2]= 0x55;
        tcp_send_buf[3]= i & 0xFF;  // 低位字节
        tcp_send_buf[4]= (distance_10x >> 8) & 0xFF;  // 高位字节
        tcp_send_buf[5]= distance_10x & 0xFF;         // 低位字节
        tcp_send_buf[6]= 0x00;
        tcp_send_buf[7]= 0x00;
        tcp_send_buf[8]=  0x00;
        tcp_send_buf[9]=  0x00;
        tcp_send_buf[10]= 0x00;
        tcp_send_buf[11]= 0x00;
        tcp_send_buf[12]=  0x00;
        tcp_send_buf[13]=  0x00;
        xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,0);//发送到服务端

    	printf("number %d：index = %d，distance = %.2f m\r\n",
                   i, emmc_targets[i].idx, emmc_targets[i].distance);
    }

    return XST_SUCCESS;
}

// 删除所有目标并清除配置文件（可选）
int delete_all_targets(void)
{
    FRESULT res;

    if (xTargetConfigSemaphore != NULL) {
        if (xSemaphoreTake(xTargetConfigSemaphore, pdMS_TO_TICKS(100)) != pdPASS) {
            xil_printf("Error: 信号量获取失败（delete_all_targets）\r\n");
            return XST_FAILURE;
        }
    }
    // 1. 清空内存中的目标数据
    g_target_count = 0;
    memset(emmc_targets, 0, sizeof(emmc_targets));

    // 2. 删除EMMC中的配置文件
    if (fatfs.fs_type == 0) {
        xil_printf("Warning: SD card not mounted, try mounting...\r\n");
        if (sd_mount() != XST_SUCCESS) {
            xil_printf("Error: Failed to mount SD card for target delete\r\n");
            // 失败：释放信号量后返回
            if (xTargetConfigSemaphore != NULL) {
                xSemaphoreGive(xTargetConfigSemaphore);
            }
            return XST_FAILURE;
        }
    }

    res = f_unlink(TARGET_FILE_NAME);
    if (res != FR_OK && res != FR_NO_FILE) {
        xil_printf("Error: Failed to delete target file (%d)\r\n", res);
        // 失败：释放信号量后返回
        if (xTargetConfigSemaphore != NULL) {
            xSemaphoreGive(xTargetConfigSemaphore);
        }
        return XST_FAILURE;
    }

    // 3. 文件已删除，标志位设为0
    FLAG_Equipment_operation_mode = 0;

    // 释放信号量
    if (xTargetConfigSemaphore != NULL) {
        xSemaphoreGive(xTargetConfigSemaphore);
    }
    xil_printf("Success: All targets deleted, FLAG_Equipment_operation_mode=%d\r\n",
               FLAG_Equipment_operation_mode);

    return XST_SUCCESS;
}

// 删除上一组数据（最后添加的目标）
int delete_last_target(void)
{
    // 检查是否有可删除的目标（无目标直接返回成功，避免报错）
    if (g_target_count <= 0) {
        xil_printf("Info: No targets to delete (current count: %d)\r\n", g_target_count);
        return XST_SUCCESS;
    }

    if (xTargetConfigSemaphore != NULL) {
        if (xSemaphoreTake(xTargetConfigSemaphore, pdMS_TO_TICKS(100)) != pdPASS) {
            xil_printf("Error: 信号量获取失败（delete_last_target）\r\n");
            return XST_FAILURE;
        }
    }

    // 内存中删除最后一个目标（计数减1 + 清空对应数据）
    g_target_count--;  // 计数指向最后一个有效目标的前一位
    memset(&emmc_targets[g_target_count], 0, sizeof(ConfigurationTarget));  // 清空该位置数据

    // 4. 同步更新EMMC文件（覆盖原有文件，写入新计数和目标数据）
    int ret = save_target_config();
    if (ret != XST_SUCCESS) {
        xil_printf("Error: Failed to save after delete last target\r\n");
        // 保存失败，回滚内存操作（避免内存与文件不一致）
        g_target_count++;
        memset(&emmc_targets[g_target_count-1], 0, sizeof(ConfigurationTarget));
        if (xTargetConfigSemaphore != NULL) {
            xSemaphoreGive(xTargetConfigSemaphore);
        }
        return XST_FAILURE;
    }

    // 5. 更新标志位：无目标时设为0，有目标时保持1
    if (g_target_count == 0) {
        FLAG_Equipment_operation_mode = 0;
        // 可选：删除空文件（仅存计数0的文件，也可保留）
        if (fatfs.fs_type != 0) {
            FRESULT res = f_unlink(TARGET_FILE_NAME);
            if (res != FR_OK && res != FR_NO_FILE) {
                xil_printf("Warning: Failed to delete empty target file (%d)\r\n", res);
            }
        }
        xil_printf("Success: Deleted last target, no targets left. FLAG=0\r\n");
    } else {
        FLAG_Equipment_operation_mode = 1;
        xil_printf("Success: Deleted last target, remaining count: %d. FLAG=1\r\n", g_target_count);

    }

    if (xTargetConfigSemaphore != NULL) {
        xSemaphoreGive(xTargetConfigSemaphore);
    }
    return XST_SUCCESS;
}

// 按序号删除目标（Number：0~g_target_count-1）
int delete_target_by_index(int Number)
{
	uint8_t tcp_send_buf[50]={0};
    // 1. 边界检查：无目标或索引无效（超出范围）
    if (g_target_count <= 0) {
    	printf("Info: No targets to delete (current count: %d)\r\n", g_target_count);
        return XST_SUCCESS;
    }
    if (Number < 0 || Number >= g_target_count) {
    	printf("Error: Invalid target index (%d), max valid index: %d\r\n",
        		Number, g_target_count - 1);
        return XST_FAILURE;
    }

    // 2. 并发保护：申请信号量（与其他目标操作互斥）
    if (xTargetConfigSemaphore != NULL) {
        if (xSemaphoreTake(xTargetConfigSemaphore, pdMS_TO_TICKS(100)) != pdPASS) {
        	printf("Error: Failed to take target semaphore (delete by index)\r\n");
            return XST_FAILURE;
        }
    }

    // 3. 内存中删除：数组元素向前移位（覆盖要删除的目标）
    printf("Info: Deleting target at index %d (index=%d, distance=%.2fm)\r\n",
    		Number, emmc_targets[Number].idx, emmc_targets[Number].distance);

    // 从index+1开始，所有元素向前移1位（覆盖index位置的目标）
//    for (int i = index; i < g_target_count - 1; i++) {
//        targets[i] = targets[i + 1];
//    }
    //与上面for循环功能相同
    memmove(&emmc_targets[Number], &emmc_targets[Number + 1], sizeof(ConfigurationTarget) * (g_target_count - Number - 1));

    // 4. 更新计数，清空最后一个位置的残留数据
    g_target_count--;
    memset(&emmc_targets[g_target_count], 0, sizeof(ConfigurationTarget));

    // 5. 同步更新EMMC文件（覆盖原有文件，写入新数据）
    int ret = save_target_config();
    if (ret != XST_SUCCESS) {
        xil_printf("Error: Failed to save after delete target by index\r\n");
        // 保存失败，回滚内存操作（恢复目标数据和计数）
        g_target_count++;
        // 从index开始，所有元素向后移1位
//        for (int i = g_target_count - 1; i > index; i--) {
//        	emmc_targets[i] = emmc_targets[i - 1];
//        }
        //与上面for循环功能相同
        memmove(&emmc_targets[Number + 1],
                &emmc_targets[Number],
                sizeof(ConfigurationTarget) * (g_target_count - Number - 1));
        memset(&emmc_targets[Number], 0, sizeof(ConfigurationTarget)); // 恢复被删除的目标（此处需重新赋值，若有原数据可缓存）
        if (xTargetConfigSemaphore != NULL) {
            xSemaphoreGive(xTargetConfigSemaphore);
        }
        return XST_FAILURE;
    }

    // 6. 更新标志位：无目标时设为0，删除空文件
    if (g_target_count == 0) {
        FLAG_Equipment_operation_mode = 0;
        if (fatfs.fs_type != 0) {
            FRESULT res = f_unlink(TARGET_FILE_NAME);
            if (res != FR_OK && res != FR_NO_FILE) {
                xil_printf("Warning: Failed to delete empty target file (%d)\r\n", res);
            }
        }
        printf("Success: Deleted target by index %d, no targets left. FLAG=0\r\n", Number);
    } else {
//        FLAG_Equipment_operation_mode = 1;
    	printf("Success: Deleted target by index %d, remaining count: %d. FLAG=1\r\n",
        		Number, g_target_count);
    }

    // 7. 释放信号量
    if (xTargetConfigSemaphore != NULL) {
        xSemaphoreGive(xTargetConfigSemaphore);
    }

    printf("Success: Deleted target by distance (total remaining: %d)\r\n", g_target_count);

    // 示例：遍历所有目标
    for (int i = 0; i < g_target_count; i++) {

        uint16_t distance_10x = (uint16_t)( emmc_targets[i].distance * 10.0f);
        tcp_send_buf[0]= 0xAA;
        tcp_send_buf[1]= 0xAA;
        tcp_send_buf[2]= 0x55;
        tcp_send_buf[3]= i & 0xFF;  // 低位字节
        tcp_send_buf[4]= (distance_10x >> 8) & 0xFF;  // 高位字节
        tcp_send_buf[5]= distance_10x & 0xFF;         // 低位字节
        tcp_send_buf[6]= 0x00;
        tcp_send_buf[7]= 0x00;
        tcp_send_buf[8]=  0x00;
        tcp_send_buf[9]=  0x00;
        tcp_send_buf[10]= 0x00;
        tcp_send_buf[11]= 0x00;
        tcp_send_buf[12]=  0x00;
        tcp_send_buf[13]=  0x00;
        xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,0);//发送到服务端

    	printf("number %d：index = %d，distance = %.2f m\r\n",
                   i, emmc_targets[i].idx, emmc_targets[i].distance);//"目标%d：索引=%d，距离=%.2f m\r\n",
    }

    return XST_SUCCESS;
}

// 按距离值删除目标（distance：要删除的目标距离，允许±0.01m的浮点误差）
int delete_target_by_distance(float distance)
{
	uint8_t tcp_send_buf[50]={0};
    // 定义浮点匹配精度（±0.01m，可根据需求调整）
    const float DISTANCE_EPS = 0.02f;
    // 记录找到的目标序号（-1表示未找到）
    int target_number = -1;

    // 1. 边界检查：无目标
    if (g_target_count <= 0) {
    	printf("Info: No targets to delete (current count: %d)\r\n", g_target_count);
        return XST_SUCCESS;
    }

    // 2. 先遍历数组，找到匹配distance的目标（第一个匹配项）
    for (int i = 0; i < g_target_count; i++) {
        // 浮点值匹配：|目标距离 - 要删除的距离| ≤ 精度阈值
        if (fabsf(emmc_targets[i].distance - distance) <= DISTANCE_EPS) {
        	target_number = i;
            break; // 只删除第一个匹配的目标，若要删除所有匹配项可去掉break
        }
    }

    // 未找到匹配的目标
    if (target_number == -1) {
    	printf("Error: No target found with distance = %.2fm (±%.2fm)\r\n",
                   distance, DISTANCE_EPS);
        // 打印所有现有目标，方便调试
    	printf("Current targets (distance): \r\n");
        for (int i = 0; i < g_target_count; i++) {

            uint16_t distance_10x = (uint16_t)( emmc_targets[i].distance * 10.0f);
            tcp_send_buf[0]= 0xAA;
            tcp_send_buf[1]= 0xAA;
            tcp_send_buf[2]= 0x55;
            tcp_send_buf[3]= i & 0xFF;  // 低位字节
            tcp_send_buf[4]= (distance_10x >> 8) & 0xFF;  // 高位字节
            tcp_send_buf[5]= distance_10x & 0xFF;         // 低位字节
            tcp_send_buf[6]= 0x00;
            tcp_send_buf[7]= 0x00;
            tcp_send_buf[8]=  0x00;
            tcp_send_buf[9]=  0x00;
            tcp_send_buf[10]= 0x00;
            tcp_send_buf[11]= 0x00;
            tcp_send_buf[12]=  0x00;
            tcp_send_buf[13]=  0x00;
            xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,0);//发送到服务端

        	printf("number %d: index = %d, distance = %.2f m\r\n",
                           i, emmc_targets[i].idx, emmc_targets[i].distance);//"目标%d：索引=%d，距离=%.2f m\r\n",
        }
        xil_printf("\r\n");
        return XST_FAILURE;
    }

    // 3. 并发保护：申请信号量（与其他目标操作互斥）
    if (xTargetConfigSemaphore != NULL) {
        if (xSemaphoreTake(xTargetConfigSemaphore, pdMS_TO_TICKS(100)) != pdPASS) {
            xil_printf("Error: Failed to take target semaphore (delete by distance)\r\n");
            return XST_FAILURE;
        }
    }

    // 4. 内存中删除：数组元素向前移位（覆盖要删除的目标）
    printf("Info: Deleting target with distance %.2fm (number=%d, index=%d)\r\n",
               distance, target_number, emmc_targets[target_number].idx);

    // 从target_index+1开始，所有元素向前移1位（覆盖目标位置）
    memmove(&emmc_targets[target_number],
            &emmc_targets[target_number + 1],
            sizeof(ConfigurationTarget) * (g_target_count - target_number - 1));

    // 5. 更新计数，清空最后一个位置的残留数据
    g_target_count--;
    memset(&emmc_targets[g_target_count], 0, sizeof(ConfigurationTarget));

    // 6. 同步更新EMMC文件（覆盖原有文件，写入新数据）
    int ret = save_target_config();
    if (ret != XST_SUCCESS) {
        xil_printf("Error: Failed to save after delete target by distance\r\n");
        // 保存失败，回滚内存操作（恢复目标数据和计数）
        g_target_count++;
        memmove(&emmc_targets[target_number + 1],
                &emmc_targets[target_number],
                sizeof(ConfigurationTarget) * (g_target_count - target_number - 1));
        memset(&emmc_targets[target_number], 0, sizeof(ConfigurationTarget));
        if (xTargetConfigSemaphore != NULL) {
            xSemaphoreGive(xTargetConfigSemaphore);
        }
        return XST_FAILURE;
    }

    // 7. 更新标志位：无目标时设为0，删除空文件
    if (g_target_count == 0) {
        FLAG_Equipment_operation_mode = 0;
        if (fatfs.fs_type != 0) {
            FRESULT res = f_unlink(TARGET_FILE_NAME);
            if (res != FR_OK && res != FR_NO_FILE) {
                xil_printf("Warning: Failed to delete empty target file (%d)\r\n", res);
            }
        }
        printf("Success: Deleted target with distance %.2fm, no targets left. FLAG=0\r\n", distance);
    } else {
    	printf("Success: Deleted target with distance %.2fm, remaining count: %d. FLAG=1\r\n",
                   distance, g_target_count);
    }

    // 8. 释放信号量
    if (xTargetConfigSemaphore != NULL) {
        xSemaphoreGive(xTargetConfigSemaphore);
    }

    // "Deleted target"（删除）
    xil_printf("Success: Deleted target by distance (total remaining: %d)\r\n", g_target_count);

    // 遍历剩余目标（调试用）
    for (int i = 0; i < g_target_count; i++) {

        uint16_t distance_10x = (uint16_t)( emmc_targets[i].distance * 10.0f);
        tcp_send_buf[0]= 0xAA;
        tcp_send_buf[1]= 0xAA;
        tcp_send_buf[2]= 0x55;
        tcp_send_buf[3]= i & 0xFF;  // 低位字节
        tcp_send_buf[4]= (distance_10x >> 8) & 0xFF;  // 高位字节
        tcp_send_buf[5]= distance_10x & 0xFF;         // 低位字节
        tcp_send_buf[6]= 0x00;
        tcp_send_buf[7]= 0x00;
        tcp_send_buf[8]=  0x00;
        tcp_send_buf[9]=  0x00;
        tcp_send_buf[10]= 0x00;
        tcp_send_buf[11]= 0x00;
        tcp_send_buf[12]=  0x00;
        tcp_send_buf[13]=  0x00;
        xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,0);//发送到服务端

    	printf("number %d : index = %d，distance = %.2f m\r\n",
                   i, emmc_targets[i].idx, emmc_targets[i].distance);//"目标%d：索引=%d，距离=%.2f m\r\n",
    }

    return XST_SUCCESS;
}

// 按目标idx（距离单元索引）删除目标（找到第一个匹配的目标并删除）
int delete_target_by_idx(int target_idx)
{
    // 1. 边界检查：无目标
    if (g_target_count <= 0) {
        xil_printf("Info: No targets to delete (current count: %d)\r\n", g_target_count);
        return XST_SUCCESS;
    }

    // 2. 查找匹配idx的目标索引
    int target_index = -1;
    for (int i = 0; i < g_target_count; i++) {
        if (emmc_targets[i].idx == target_idx) {
            target_index = i;
            break; // 找到第一个匹配的目标（若需删除所有匹配idx，去掉break）
        }
    }

    // 3. 无匹配目标
    if (target_index == -1) {
        xil_printf("Error: Target with idx=%d not found\r\n", target_idx);
        return XST_FAILURE;
    }

    // 4. 复用“按索引删除”的逻辑（避免代码冗余）
    return delete_target_by_index(target_index);
}

// 按idx（距离单元索引）删除所有匹配的目标
int delete_all_targets_by_idx(int target_idx)
{
    if (g_target_count <= 0) return XST_SUCCESS;

    int deleted_count = 0;
    // 反向遍历（避免移位后漏删）
    for (int i = g_target_count - 1; i >= 0; i--) {
        if (emmc_targets[i].idx == target_idx) {
            delete_target_by_index(i);
            deleted_count++;
        }
    }

    if (deleted_count == 0) {
        xil_printf("Error: No targets with idx=%d found\r\n", target_idx);
        return XST_FAILURE;
    } else {
        xil_printf("Success: Deleted %d targets with idx=%d\r\n", deleted_count, target_idx);
        return XST_SUCCESS;
    }
}

// 目标数据EMMC保存函数
int save_temp_storage_to_emmc(void) {

    // 1. 申请文件操作锁（超时200ms，避免死锁）
    if (xEmmcFileSemaphore != NULL) {
        if (xSemaphoreTake(xEmmcFileSemaphore, pdMS_TO_TICKS(200)) != pdPASS) {
            xil_printf("Error: 获取 EMMC 写入锁失败！\r\n");
            return -1;
        }
    }

    FIL file;
    FRESULT res;
    UINT bytes_written;

    // 定义每组的头标志（AA AA 66 18 XX XX 00 XX XX XX XX XX XX XX）
    uint8_t group_header[FILE_HEADER_LEN] = {0};
    const int group_header_len = FILE_HEADER_LEN;  // 头标志长度：14字节
    uint16_t data_byte;

    // 1. 检查SD卡挂载
    if (fatfs.fs_type == 0) {  // 文件系统未挂载
        xil_printf("Warning: SD card not mounted, try mounting...\r\n");
        if (sd_mount() != XST_SUCCESS) {
            xil_printf("Error: Failed to mount SD card for target save\r\n");
            // 释放文件操作锁
            if (xEmmcFileSemaphore != NULL) {
                xSemaphoreGive(xEmmcFileSemaphore);
            }
            return -2;
        }
    }

    // 2. 打开文件
    res = f_open(&file, EMMC_STORAGE_FILE_NAME, FA_CREATE_ALWAYS | FA_WRITE);
    if (res != FR_OK) {
        xil_printf("Error: 打开文件失败（错误码：%d）！\r\n", res);
        // 释放文件操作锁
        if (xEmmcFileSemaphore != NULL) {
            xSemaphoreGive(xEmmcFileSemaphore);
        }
        return -3;
    }

    // 3. 写入文件头（10字节，大端）
    data_byte=5+(1+g_target_count*TARGET_DATA_LEN)*TEMP_STORAGE_MAX_GROUPS;
    group_header[0]=0XAA;
    group_header[1]=0XAA;
    group_header[2]=0X66;
    group_header[3] = g_Device_Information.Model;//设备型号
    group_header[4] = (g_Device_Information.number>>8)&0xff;//设备编号高8位
    group_header[5] = g_Device_Information.number&0xff;//设备编号高8位
    group_header[6]=0X00;
    group_header[7]=(data_byte>>8)&0xff;
    group_header[8]=data_byte&0xff;
    group_header[9] = g_time_tar_info.year;
    group_header[10] = g_time_tar_info.month;
    group_header[11] = g_time_tar_info.day;
    group_header[12] = g_time_tar_info.hour;
    group_header[13] = g_time_tar_info.min;

    res = f_write(&file, group_header, group_header_len, &bytes_written);
    if (res != FR_OK || bytes_written != group_header_len) {
        xil_printf("Error: 写入文件头失败！\r\n");
        f_close(&file);
        // 释放文件操作锁
        if (xEmmcFileSemaphore != NULL) {
            xSemaphoreGive(xEmmcFileSemaphore);
        }
        return -4;
    }

    // 4. 逐组写入数据
    for (int i = 0; i < TEMP_STORAGE_MAX_GROUPS; i++) {
        // 写入组序号（1字节）
        res = f_write(&file, &i, sizeof(uint8_t), &bytes_written);
        if (res != FR_OK || bytes_written != sizeof(uint8_t)) {
            xil_printf("Error: 写入第%d组序号失败！\r\n", i);
            f_close(&file);
            // 释放文件操作锁
            if (xEmmcFileSemaphore != NULL) {
                xSemaphoreGive(xEmmcFileSemaphore);
            }
            return -5;
        }
        uint8_t group_target_count = temp_group_target_count[i];
        // 写入目标数据
        if (group_target_count > 0) {
            int group_data_len = group_target_count * TARGET_DATA_LEN;
            res = f_write(&file, &temp_target_storage[i][0], group_data_len, &bytes_written);
            if (res != FR_OK || bytes_written != group_data_len) {
                xil_printf("Error: 写入第%d组数据失败！实际：%d字节，预期：%d字节\r\n",
                           i, bytes_written, group_data_len);
                f_close(&file);
                //  释放文件操作锁
                if (xEmmcFileSemaphore != NULL) {
                    xSemaphoreGive(xEmmcFileSemaphore);
                }
                return -6;
            }
        }
    }

    // 5. 同步并关闭文件
    f_sync(&file);
    f_close(&file);

    // 释放文件操作锁
    if (xEmmcFileSemaphore != NULL) {
        xSemaphoreGive(xEmmcFileSemaphore);
    }

    xil_printf("EMMC保存成功！文件：%s，总字节数：%d\r\n",
               EMMC_STORAGE_FILE_NAME,
              5 + data_byte);
    return XST_SUCCESS;
}

//读取储存的目标数据
int send_emmc_file_by_single_target_via_uart(void) {
    int retry_cnt = 0;

    // ========== 第一步：文件存在性前置判断（核心新增） ==========
    FILINFO file_info;
    FRESULT stat_res;

    // 1. 申请文件操作锁（超时200ms）
    if (xEmmcFileSemaphore != NULL) {
        if (xSemaphoreTake(xEmmcFileSemaphore, pdMS_TO_TICKS(200)) != pdPASS) {
            xil_printf("Error: 获取 EMMC 读取锁失败！\r\n");
            return -2;
        }
    }

    // 检查文件是否存在（支持有限重试，应对EMMC偶发卡顿）
    do {
        stat_res = f_stat(EMMC_STORAGE_FILE_NAME, &file_info);
        if (stat_res == FR_NO_FILE) {
            xil_printf("Warning: 未找到文件%s，无需发送！\r\n", EMMC_STORAGE_FILE_NAME);
            // 释放锁并直接返回
            if (xEmmcFileSemaphore != NULL) {
                xSemaphoreGive(xEmmcFileSemaphore);
            }
            return -1; // 返回0表示无文件，非错误
        } else if (stat_res == FR_OK) {
            // 文件存在，检查大小是否合理（至少大于文件头10字节）
            if (file_info.fsize < FILE_HEADER_LEN) {
                xil_printf("Error: 文件%s存在但大小异常（%lu字节），小于最小长度！\r\n",
                           EMMC_STORAGE_FILE_NAME, file_info.fsize);
                if (xEmmcFileSemaphore != NULL) {
                    xSemaphoreGive(xEmmcFileSemaphore);
                }
                return -3;
            }
            xil_printf("找到文件%s，大小：%lu字节，准备发送...\r\n",
                       EMMC_STORAGE_FILE_NAME, file_info.fsize);
            break;
        } else {
            // 其他错误（如FR_DISK_ERR），重试
            retry_cnt++;
            xil_printf("Warning: 检查文件状态失败（错误码：%d），重试第%d次...\r\n", stat_res, retry_cnt);
            vTaskDelay(pdMS_TO_TICKS(EMMC_FILE_CHECK_DELAY));
        }
    } while (retry_cnt < MAX_RETRY_CNT);

    // 检查重试耗尽仍失败
    if (retry_cnt >= MAX_RETRY_CNT) {
        xil_printf("Error: 检查文件状态失败（已重试%d次）！\r\n", MAX_RETRY_CNT);
        if (xEmmcFileSemaphore != NULL) {
            xSemaphoreGive(xEmmcFileSemaphore);
        }
        return -4;
    }

    FIL file;
    FRESULT res;
    UINT bytes_read;
    uint32_t file_offset = 0;     // 文件读取偏移量（精准控制读取位置）

    // 1. 检查SD卡挂载
    if (fatfs.fs_type == 0) {  // 文件系统未挂载
        xil_printf("Warning: SD card not mounted, try mounting...\r\n");
        if (sd_mount() != XST_SUCCESS) {
            xil_printf("Error: Failed to mount SD card for target save\r\n");
            //  释放文件操作锁
            if (xEmmcFileSemaphore != NULL) {
                xSemaphoreGive(xEmmcFileSemaphore);
            }
            return -5;
        }
    }

    // 2. 打开EMMC文件（只读模式）
    res = f_open(&file, EMMC_STORAGE_FILE_NAME, FA_READ);
    if (res != FR_OK) {
        xil_printf("Error: 打开文件%s失败（错误码：%d）！\r\n", EMMC_STORAGE_FILE_NAME, res);
        //  释放文件操作锁
        if (xEmmcFileSemaphore != NULL) {
            xSemaphoreGive(xEmmcFileSemaphore);
        }
        return -6;
    }
    xil_printf("成功打开文件%s，文件总大小：%lu字节\r\n", EMMC_STORAGE_FILE_NAME, f_size(&file));

    // ===================== 第一步：读取全局文件头（总组数） =====================
    uint8_t file_header_buf[FILE_HEADER_LEN] = {0};
    res = f_read(&file, file_header_buf, FILE_HEADER_LEN, &bytes_read);
    file_offset += bytes_read;  // 更新读取偏移
    if (res != FR_OK || bytes_read != FILE_HEADER_LEN) {
        xil_printf("Error: 读取全局文件头失败！实际读取：%d字节，预期：%d字节\r\n",
                   bytes_read, FILE_HEADER_LEN);
        f_close(&file);
        //  释放文件操作锁
        if (xEmmcFileSemaphore != NULL) {
            xSemaphoreGive(xEmmcFileSemaphore);
        }
        return -7;
    }

    // 串口发送当前组序号
     int send_ret = XUartPs_Send(&UartCtrl, file_header_buf, FILE_HEADER_LEN);
     if (send_ret != FILE_HEADER_LEN) {
         xil_printf("Error: 全局文件头发送失败(错误码：%d)\r\n",send_ret);
         f_close(&file);
         //  释放文件操作锁
         if (xEmmcFileSemaphore != NULL) {
             xSemaphoreGive(xEmmcFileSemaphore);
         }
         return -8;
     }

    // ===================== 第二步：逐组读取（组序号→逐个目标点） =====================
    for (int group_idx = 0; group_idx < TEMP_STORAGE_MAX_GROUPS; group_idx++) {
        uint8_t group_serial_number = 0;

        // 2.2 读取当前组序号（1字节）
        res = f_read(&file, &group_serial_number, 1, &bytes_read);
        file_offset += bytes_read;
        if (res != FR_OK || bytes_read != 1) {
            xil_printf("Error: 读取第%d组目标数失败！偏移：%lu\r\n",
                       group_idx, file_offset - bytes_read);
            f_close(&file);
            //  释放文件操作锁
            if (xEmmcFileSemaphore != NULL) {
                xSemaphoreGive(xEmmcFileSemaphore);
            }
            return -9;
        }
        xil_printf("第%d组：偏移：%lu字节\r\n", group_serial_number, file_offset);

        // 串口发送当前组序号
         int send_ret = XUartPs_Send(&UartCtrl, &group_serial_number, sizeof(uint8_t));
         if (send_ret != sizeof(uint8_t)) {
             xil_printf("Error: 发送第%d组序号失败（错误码：%d）\r\n",
                        group_idx, send_ret);
             f_close(&file);
             //  释放文件操作锁
             if (xEmmcFileSemaphore != NULL) {
                 xSemaphoreGive(xEmmcFileSemaphore);
             }
             return -10;
         }


        // 2.3 逐个读取当前组的每个目标点数据并发送
        for (int target_idx = 0; target_idx < g_target_count; target_idx++) {
            uint8_t target_data[TARGET_POINT_LEN] = {0};

            // 读取单个目标点数据（11字节）
            res = f_read(&file, target_data, TARGET_POINT_LEN, &bytes_read);
            file_offset += bytes_read;
            if (res != FR_OK || bytes_read != TARGET_POINT_LEN) {
                xil_printf("Error: 读取第%d组第%d个目标点失败！偏移：%lu，实际读取：%d字节\r\n",
                           group_idx, target_idx, file_offset - bytes_read, bytes_read);
                f_close(&file);
                //  释放文件操作锁
                if (xEmmcFileSemaphore != NULL) {
                    xSemaphoreGive(xEmmcFileSemaphore);
                }
                return -11;
            }

            // 串口发送当前目标点数据
             int send_ret = XUartPs_Send(&UartCtrl, target_data, TARGET_POINT_LEN);
             if (send_ret != TARGET_POINT_LEN) {
                 xil_printf("Error: 发送第%d组第%d个目标点失败（错误码：%d）\r\n",
                            group_idx, target_idx, send_ret);
                 f_close(&file);
                 //  释放文件操作锁
                 if (xEmmcFileSemaphore != NULL) {
                     xSemaphoreGive(xEmmcFileSemaphore);
                 }
                 return -12;
             }

             // 等待串口发送完成（避免数据丢失）
             while (XUartPs_IsSending(&UartCtrl)) {
                 vTaskDelay(pdMS_TO_TICKS(1));
             }

            // 打印当前目标点发送日志（可选：打印十六进制数据，便于调试）
            xil_printf("【第%d组第%d个目标点】发送完成（偏移：%lu字节），数据：", group_idx, target_idx, file_offset);
            for (int i = 0; i < TARGET_POINT_LEN; i++) {
                xil_printf("%02X ", target_data[i]);
            }
            xil_printf("\r\n");
        }

        xil_printf("【第%d组】所有%d个目标点发送完成！\r\n", group_idx, g_target_count);
    }

    // ===================== 第三步：收尾 =====================
    f_close(&file);
    //  释放文件操作锁
    if (xEmmcFileSemaphore != NULL) {
        xSemaphoreGive(xEmmcFileSemaphore);
    }
    xil_printf("\n========== 全部数据发送完成 ==========\r\n");
    xil_printf("总读取/发送字节数：%lu\r\n", file_offset);
    return XST_SUCCESS;
}



