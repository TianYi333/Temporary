#include "Lwip_Receive.h"


uint8_t Lwip_Receive_buf[33]={0};

void Lwip_Receive_function()
{
	int n=0;//n为接收数据数
	uint8_t Tx_Axi_buf[32]={0};
	n=Lwip_Receive_buf[0];//n为接收数据数
	printf("Lwip_Receive_buf_byte %d\n",n);
	if(Lwip_Receive_buf[1]==0xAB)
	{
		Tx_Axi_buf[0]=Lwip_Receive_buf[1];
		Tx_Axi_buf[1]=Lwip_Receive_buf[2];
		switch(Lwip_Receive_buf[2])
		{
			case 0x01://舵机
				  memcpy(Tx_Axi_buf, &Lwip_Receive_buf[1], 32);
				break;

			case 0x02://状态灯
				Tx_Axi_buf[2]=Lwip_Receive_buf[3];
				Tx_Axi_buf[3]=Lwip_Receive_buf[5];
				break;

			case 0x03://温湿度传感器
				break;

			case 0x04://角度传感器

				break;

			case 0x05://显示屏
				Tx_Axi_buf[2]=0X01;
				Tx_Axi_buf[3]=Lwip_Receive_buf[5];
				Tx_Axi_buf[4]=Lwip_Receive_buf[6];
				Tx_Axi_buf[5]=Lwip_Receive_buf[7];
				break;

			case 0x06://继电器
				Tx_Axi_buf[2]=Lwip_Receive_buf[3];
				Tx_Axi_buf[3]=Lwip_Receive_buf[5];
				break;

			case 0x07://相机控制

				break;

			case 0x08://转台
				break;

			default:
				break;
		}
	}
	else if(Lwip_Receive_buf[1]==0xCC)
	{
		Tx_Axi_buf[0]=Lwip_Receive_buf[1];
		Tx_Axi_buf[1]=Lwip_Receive_buf[2];
	}
    xQueueSend(PS_AXI_TO_PL_Queue,Tx_Axi_buf,0);
	memset(Lwip_Receive_buf,0,33);
	memset(Tx_Axi_buf,0,32);
}

