#include "ov5640_APP.h"

//全局变量
XAxiVdma     vdma;

//文件系统
static FATFS fatfs;

//BMP图片文件头
u8 bmp_head[54] = {
     0x42,0x4d,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x36,0x0,0x0,0x0,0x28,0x0,
     0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x18,0x0,0x0,0x0,
     0x0,0x0,0x0,0x0,0x0,0x0,0xc4,0xe,0x0,0x0,0xc4,0x0e,0x0,0x0,0x0,0x0,
     0x0,0x0,0x0,0x0,0x0,0x0 };
//BMP图片各参数偏移地址
UINT *bf_size    = (UINT *)(bmp_head + 0x2);
UINT *bmp_width  = (UINT *)(bmp_head + 0x12);
UINT *bmp_height = (UINT *)(bmp_head + 0x16);
UINT *bmp_size   = (UINT *)(bmp_head + 0x22);

//BMP图片编号
int  pic_cnt = 0;

//抓拍的图片显存地址
unsigned int const bmp_addr = BMP_Photo_Address;

//帧缓存的起始地址
unsigned int const frame_buffer_addr =Photo_Frame_Buffer_Address;

//将显存图像以BMP格式写入SD卡
void write_sd_bmp(u8 *frame);

int ov5640_main(void)
{
    u32 status;
    int  rd_index;              //VDMA读通道操作的帧缓存编号
    unsigned int rd_fram_addr;  //VDMA读通道操作的帧缓存地址
	uint8_t ov5640_recv_buf[50]={0};
	uint8_t tcp_send_buf[50]={0};
	uint8_t uart1_send_buf[50]={0};
	uint32_t count_send_bytes=0;

    emio_init();                         //初始化EMIO
    status = ov5640_init( CAM_WIDTH, CAM_HEIGHT, CAM_TOTAL_H, CAM_TOTAL_V);
    if(status == 0)
        xil_printf("OV5640 detected successful!\r\n");
    else
        xil_printf("OV5640 detected failed!\r\n");

    //配置VDMA
    run_vdma_frame_buffer(&vdma, VDMA_ID, CAM_WIDTH, CAM_HEIGHT,
                            frame_buffer_addr,0,0,ONLY_WRITE);

    //根据VDMA显存大小给BMP文件头赋值
    *bmp_width  = CAM_WIDTH;
    *bmp_height = CAM_HEIGHT;
    *bmp_size   = CAM_WIDTH *CAM_HEIGHT * 3;
    *bf_size    = *bmp_size + 54;
    //挂载文件系统
//    f_mount(&fatfs,"",1);

    //根据串口输入的指令控制拍照过程
    while(1){
		if(xQueueReceive(Lwip_Server_Recv_To_OV5640_Queue,ov5640_recv_buf,portMAX_DELAY))
		{
            printf("capture picture\n");
            //获取当前读通道操作的帧缓存编号
            rd_index = XAxiVdma_CurrFrameStore(&vdma, XAXIVDMA_WRITE);
            printf("current read frame is %d\n",rd_index);
            //读通道驻停在当前帧

            XAxiVdma_StartParking(&vdma, rd_index, XAXIVDMA_WRITE);
            //并获取当前帧的起始地址
            rd_fram_addr = frame_buffer_addr + CAM_HEIGHT*CAM_WIDTH*3*rd_index;
            //将当前帧的图像拷贝到抓拍图片缓存区域
            memcpy((void *)bmp_addr,(void *)rd_fram_addr,CAM_HEIGHT*CAM_WIDTH*3);//照片大小=宽度*高度*位深度/8，位深度：24位真彩色；32位带透明
            //结束读通道驻停过程，继续在多帧之间进行切换
            XAxiVdma_StopParking(&vdma, XAXIVDMA_WRITE);
//            //将抓拍图片缓存区域中的图像以BMP格式写入SD卡
//            write_sd_bmp((u8 *)bmp_addr);
            xil_printf("width = %d, height = %d, size = %d, file size = %d bytes \n\r",
                    *bmp_width,*bmp_height,*bmp_size,*bf_size);
            if(ov5640_recv_buf[0]==0xAA && ov5640_recv_buf[1]==0xCC )//网口指令
            {
				tcp_send_buf[0]=ov5640_recv_buf[0];//头
				tcp_send_buf[1]=0xCC;
				tcp_send_buf[2]=0x00;
				tcp_send_buf[3]=(pic_cnt>>8)&0xff;//照片编号
				tcp_send_buf[4]=pic_cnt&0xff;//照片编号
				xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,0);//网口发送
				memset(tcp_send_buf, 0, 6);
            }
			else if(ov5640_recv_buf[0]==0xAA && ov5640_recv_buf[1]==0xAA )//串口指令
			{
				memcpy(&tcp_send_buf[0], &ov5640_recv_buf[0], 7);
				tcp_send_buf[7]=((CAM_HEIGHT*CAM_WIDTH*3+54)>>24)&0xff;//数据大小
				tcp_send_buf[8]=((CAM_HEIGHT*CAM_WIDTH*3+54)>>16)&0xff;//数据大小
				tcp_send_buf[9]=((CAM_HEIGHT*CAM_WIDTH*3+54)>>8)&0xff;//数据大小
				tcp_send_buf[10]=(CAM_HEIGHT*CAM_WIDTH*3+54)&0xff;//数据大小
				XUartPs_Send(&UartCtrl, (u8*)tcp_send_buf, 11);//发送协议回复
				memset(tcp_send_buf, 0, 11);

	             // 等待串口发送完成（避免数据丢失）
	             while (XUartPs_IsSending(&UartCtrl)) {
	                 vTaskDelay(pdMS_TO_TICKS(1));
	             }

				XUartPs_Send(&UartCtrl, (u8*)bmp_head, 54);//发送头

	             // 等待串口发送完成（避免数据丢失）
	             while (XUartPs_IsSending(&UartCtrl)) {
	                 vTaskDelay(pdMS_TO_TICKS(1));
	             }

				count_send_bytes = 0;//发送数据字节计数
				while(count_send_bytes<CAM_HEIGHT*CAM_WIDTH*3)
				{
					if(CAM_HEIGHT*CAM_WIDTH*3-count_send_bytes<54)
					{
						XUartPs_Send(&UartCtrl, (u8*)bmp_addr+count_send_bytes, CAM_HEIGHT*CAM_WIDTH*3-count_send_bytes);
						count_send_bytes=CAM_HEIGHT*CAM_WIDTH*3;
					}
					else
					{
						XUartPs_Send(&UartCtrl, (u8*)bmp_addr+count_send_bytes, 54);
						count_send_bytes=count_send_bytes+54;
					}
		             // 等待串口发送完成（避免数据丢失）
		             while (XUartPs_IsSending(&UartCtrl)) {
		                 vTaskDelay(pdMS_TO_TICKS(1));
		             }
				}
			}
            //BMP图片编号累加
            pic_cnt++;
		}
    }
}

//向SD卡中写BMP图片
void write_sd_bmp(u8 *frame)
{
    FIL     fil;            //文件对象
    UINT    bw;             //写文件函数返回已写入的字节数
    char    pic_name[20];   //字符串，用于存储BMP文件名

    //打印BMP图片信息(宽/高/图片大小),以及BMP文件大小
    xil_printf("width = %d, height = %d, size = %d, file size = %d bytes \n\r",
            *bmp_width,*bmp_height,*bmp_size,*bf_size);

    //给BMP图片的文件名编号
    sprintf(pic_name,"picture %04u.bmp",pic_cnt);
    //打开BMP文件,如果不存在则创建该文件
    f_open(&fil,pic_name,FA_CREATE_ALWAYS | FA_WRITE);

    //移动文件读写指针到文件开头
    f_lseek(&fil,0);
    //写入BMP文件头
    f_write(&fil,bmp_head,54,&bw);
    //写入抓拍的图片
    f_write(&fil,frame,*bmp_size,&bw);
    //关闭文件
    f_close(&fil);
    xil_printf("write %s done! \n\r",pic_name);
}


