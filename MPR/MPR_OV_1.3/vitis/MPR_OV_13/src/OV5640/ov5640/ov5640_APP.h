#ifndef OV5640_APP_H_
#define OV5640_APP_H_


#include "main.h"

//宏定义
#define FRAME_BUFFER_NUM  3                         //帧缓存个数3
#define CLK_WIZ_ID        XPAR_CLK_WIZ_0_DEVICE_ID  //时钟IP核器件ID

#define VDMA_ID           XPAR_AXIVDMA_0_DEVICE_ID  //VDMA器件ID

//// 摄像头输出分辨率（可根据实际需求修改）
////4.3寸屏,480*272分辨率
//#define CAM_WIDTH     480    // 水平像素
//#define CAM_HEIGHT    272    // 垂直像素
//#define CAM_TOTAL_H   1800   // 水平总像素
//#define CAM_TOTAL_V   1000   // 垂直总像素
//
////4.3寸屏,800*480分辨率
//#define CAM_WIDTH     800    // 水平像素
//#define CAM_HEIGHT   480    // 垂直像素
//#define CAM_TOTAL_H   1800   // 水平总像素
//#define CAM_TOTAL_V   1000   // 垂直总像素
//
////7寸屏,1024*600分辨率
//#define CAM_WIDTH     1024    // 水平像素
//#define CAM_HEIGHT    600    // 垂直像素
//#define CAM_TOTAL_H   2200   // 水平总像素
//#define CAM_TOTAL_V   1000   // 垂直总像素

//10.1寸屏,1280*800分辨率
#define CAM_WIDTH     1280    // 水平像素
#define CAM_HEIGHT    800    // 垂直像素
#define CAM_TOTAL_H   2570   // 水平总像素
#define CAM_TOTAL_V   980  // 垂直总像素



extern u8 bmp_head[54];
extern unsigned int const bmp_addr;

int ov5640_main(void);






#endif /* OV5640_APP_H_ */
