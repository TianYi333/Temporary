#include "Lwip_Receive.h"


uint8_t Lwip_Receive_buf[20];
uint8_t Lwip_Send_buf[20];

void Lwip_Receive_function()
{
	int n=0;//n为接收数据数
	uint16_t number_Data_bytes=0;//数据字节
	uint32_t XXX_value;//数据
	n=Lwip_Receive_buf[0];//n为接收数据数
	printf("%s\n","Received data");
	printf("%s\n",&Lwip_Receive_buf[1]);
	printf("%d\n",n);

	if (n == 6 && !(memcmp("update",&Lwip_Receive_buf[1], 6)))
	{
		printf("%s\n","update received data");
	}
	else
	{
		for(int i=1;i<(n+1);i++)
		{
			printf("%x\n",Lwip_Receive_buf[i]);
		}
	}
	strcpy(Lwip_Send_buf, "Received data");
	xQueueSend(Lwip_Send_Queue,Lwip_Send_buf,0);

//	Lwip_Send_buf[0]=Lwip_Receive_buf[0];//0X19;事务处理标识
//	Lwip_Send_buf[1]=Lwip_Receive_buf[1];//0XB2;事务处理标识
//	Lwip_Send_buf[2]=0X00;//协议标识符，00 00为modbus协议
//	Lwip_Send_buf[3]=0X00;//协议标识符，00 00为modbus协议
//	Lwip_Send_buf[4]=0X00;//后续字节总数-高8位
//	Lwip_Send_buf[5]=0X00;//后续字节总数-低8位
//	Lwip_Send_buf[6]=Lwip_Receive_buf[6];//设备编号
//	Lwip_Send_buf[7]=Lwip_Receive_buf[7];//功能码
//	Lwip_Send_buf[8]=0X00;//接下来数据的字节长度
//	Lwip_Send_buf[9]=0X00;//数据-8-16位
//	Lwip_Send_buf[10]=0X00;//数据-0-8位
//	Lwip_Send_buf[11]=0X00;//数据-24-32位
//	Lwip_Send_buf[12]=0X00;//数据-16-24位
//	switch(Lwip_Receive_buf[7])//判断功能码
//	{
//		case 0x01://读线圈
//			Lwip_Send_buf[4]=0X00;//数据长度
//			Lwip_Send_buf[5]=0X05;//数据长度
//			Lwip_Send_buf[8]=0X01;//接下来数据的字节长度
//			Lwip_Send_buf[9]=0X00;//数据
//			break;
//
//		case 0x02://读离散量输入
//			Lwip_Send_buf[4]=0X00;//数据长度
//			Lwip_Send_buf[5]=0X04;//数据长度
//			Lwip_Send_buf[8]=0X01;//接下来数据的字节长度
//			Lwip_Send_buf[9]=0X00;//数据
//			break;
//
//		case 0x03://读保持寄存器
//			number_Data_bytes=(Lwip_Receive_buf[10]<<8|Lwip_Receive_buf[11])*2;//大端传输数据处理——读取数据字节
//			Lwip_Send_buf[4]=0X00;//数据长度
//			Lwip_Send_buf[5]=0x03+number_Data_bytes;//数据长度
//			if(number_Data_bytes==0x02)
//			{
//				Lwip_Send_buf[8]=number_Data_bytes;//接下来数据的字节长度
//				Lwip_Send_buf[9]=0X00;//数据-8-16位
//				Lwip_Send_buf[10]=0X00;//数据-0-8位
//			}
//			else if(number_Data_bytes==0x04)
//			{
//				Lwip_Send_buf[8]=number_Data_bytes;//接下来数据的字节长度
//				Lwip_Send_buf[9]=0X00;//数据-8-16位
//				Lwip_Send_buf[10]=0X00;//数据-0-8位
//				Lwip_Send_buf[11]=0X00;//数据-24-32位
//				Lwip_Send_buf[12]=0X00;//数据-16-24位
//			}
//
//
//			break;
//
//		case 0x04://读输入寄存器
//
//			break;
//
//		case 0x05://写单个线圈
//			Lwip_Send_buf[4]=0X00;//数据长度
//			Lwip_Send_buf[5]=0X06;//数据长度
//			Lwip_Send_buf[8]=Lwip_Receive_buf[8];//寄存器地址H
//			Lwip_Send_buf[9]=Lwip_Receive_buf[9];//寄存器地址H
//			Lwip_Send_buf[10]=Lwip_Receive_buf[10];//寄存器要改变的状态FF/00
//			Lwip_Send_buf[11]=0X00;//数据
//			break;
//
//		case 0x06://写单个保持寄存器
//			Lwip_Send_buf[4]=0X00;//数据长度
//			Lwip_Send_buf[5]=0X06;//数据长度
//			Lwip_Send_buf[8]=Lwip_Receive_buf[8];//寄存器地址
//			Lwip_Send_buf[9]=Lwip_Receive_buf[9];//寄存器地址
//			Lwip_Send_buf[10]=Lwip_Receive_buf[10];//寄存器值H
//			Lwip_Send_buf[11]=Lwip_Receive_buf[11];//寄存器值L
//			break;
//
//		case 0x0F://写多个线圈
//
//			break;
//
//		case 0x10://写多个保持寄存器
//			Lwip_Send_buf[4]=0X00;//数据长度
//			Lwip_Send_buf[5]=0X06;//数据长度
//			Lwip_Send_buf[8]=Lwip_Receive_buf[8];//寄存器起始地址H
//			Lwip_Send_buf[9]=Lwip_Receive_buf[9];//寄存器起始地址L
//			Lwip_Send_buf[10]=Lwip_Receive_buf[10];//寄存器数量H
//			Lwip_Send_buf[11]=Lwip_Receive_buf[11];//寄存器数量L
//			XXX_value=(Lwip_Receive_buf[13]<<8|Lwip_Receive_buf[14]|Lwip_Receive_buf[15]<<24|Lwip_Receive_buf[16]<<16);//大端传输数据处理—
//			break;
//
//		default:
//			break;
//	}
	memset(Lwip_Receive_buf,0,20);
	memset(Lwip_Send_buf,0,20);
}

