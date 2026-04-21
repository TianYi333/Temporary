#include "radar_algorithm.h"//雷达数据算法

int16_t *signed_integer=(int16_t*)Int16_Data_Address;           // 原始数据（外部填充，格式：[帧0数据, 帧1数据, ...]）
float *amp_dest = (float*)Amplitude_Value_Address;  			//空场景幅度地址（大小Nr * sizeof(float)）
// 数据缓冲区地址映射
// 固定地址：用于缓存当前和上一个文件的float数据（仅需2个文件的空间）
float *prev_file_frames[FRAME_NUMBER];  // 上一个文件的64帧地址(现在保存空场景数据)
float *curr_file_frames[FRAME_NUMBER];  // 当前文件的64帧地址

uint8_t FLAG_Equipment_operation_mode=0;//设备运行模式（0:调试模式，1:正常采集）
CurrFileTarget targets[MAX_TARGETS] = {0};      // 目标数组
int target_count = 0;                       // 目标数量
float dynamic_distance_threshold = 3.0f;     // 默认距离阈值
int empty_scene_stored = 0;                 // 空场景缓存标志

// 全局计数与状态
int file_count = 0; 						// 已接收的文件数
float dynamic_range = 82.0f;		// 全局变量：动态目标距离参考值（默认初始化为82.0，可通过网口修改）

// KISSFFT相关
kiss_fftr_cfg fft_cfg;                  // FFT配置
kiss_fftr_cfg ifft_cfg;                 // IFFT配置（逆变换）
size_t fft_worksize=0;               	 // IFFT工作区大小
void *fft_workspace;               // IFFT工作区
//kiss_fft_cpx *fft_input;            // IFFT输入（复数）
float *fft_input;            // IFFT输入（复数）
kiss_fft_cpx *fft_output;         // IFFT输出（复数）
float hanning_window[Nr];    // Hanning窗
char tcp_server_send_buf[RESULT_BUF_SIZE];  // 网口发送缓冲区

// 静态数组：存储每个目标的上一次相位（跨函数调用保存值）
static float last_angles[MAX_TARGETS] = {0.0f};
// 静态数组：标记每个目标是否是首次处理（首次仅存相位，不计算差）
static bool is_first_frame[MAX_TARGETS] = {true};
// memset执行标记
static bool is_memset_done = false;

// 临时存储相关全局变量
uint8_t temp_target_storage[TEMP_STORAGE_MAX_GROUPS][MAX_TARGETS_PER_GROUP * TARGET_DATA_LEN];
uint8_t temp_group_target_count[TEMP_STORAGE_MAX_GROUPS];
static int temp_storage_curr_group = 0;         // 当前组索引（0~99）
static int temp_storage_curr_target = 0;        // 当前组内目标计数
static bool is_collecting_group = false;        // 采集组标记

// 信号处理核心函数
void radar_algorithm_upgrade(void);//雷达数据算法函数
void init_hanning_window(void);// 初始化Hanning窗（对应MATLAB的hanning(Nr)）(首尾都不为零)
void init_file_buffers(void);// 初始化地址映射
void KISSFFT_Init(void);// 初始化FFT（正向）配置
void process_first_file(int16_t *new_file_data);//处理第一个文件（基准计算）
void process_subsequent_file(int16_t *new_file_data); //处理后续文件（相位差计算）
void convert_file(int16_t *int16_data, float **float_frames);//转换单个文件的int16数据到float
void int16_to_float(int16_t *src, float *dst, int len); // int16_t转float（归一化到[-1,1)）
void choose_stablephi(int *idx, int idx_len, float **echo_frames, int Na, int *idx1, int *idx1_len); // 选择稳定相位的索引（对应MATLAB的choose_stablephi）
float mean(float *data, int len);// 计算均值
float std_dev(float *data, int len, float mean_val);// 计算标准差
float wrapToPi(float angle);// 相位包裹到[-π, π]（对应MATLAB的wrapToPi）
void add_target(int16_t *new_file_data,float range);


// -------------------------- 工具函数 --------------------------
// 峰值检测（返回峰值数量）
int findpeaks(const float *data, int len, float threshold, int *peaks)
{
    int peak_count = 0;
    for (int i = 1; i < len - 1; i++) {
        if (data[i] > threshold && data[i] > data[i-1] && data[i] > data[i+1]) {
//        	peaks[peak_count++] = i;
            peaks[peak_count++] = i+1;//索引基差异导致的距离计算偏差，固索引+1，匹配MATLAB的1基计算*****************************************************
        }
    }
    return peak_count;
}

// 计算数组交集
int* intersect(const int *arr1, int len1, const int *arr2, int len2, int *inter_len) {
    *inter_len = 0;
    static int inter[MAX_TARGETS * 2];  // 静态缓冲区，避免动态分配
    for (int i = 0; i < len1; i++) {
        for (int j = 0; j < len2; j++) {
            if (arr1[i] == arr2[j]) {
                inter[*inter_len] = arr1[i];
                (*inter_len)++;
                break;
            }
        }
    }
    return inter;
}

float mean(float *data, int len)// 计算均值
{
    float sum = 0.0f;
    for (int i = 0; i < len; i++) sum += data[i];
    return sum / len;
}

float std_dev(float *data, int len, float mean_val)// 计算标准差
{
    float sum_sq = 0.0f;
    for (int i = 0; i < len; i++) {
        float diff = data[i] - mean_val;
        sum_sq += diff * diff;
    }
    return sqrtf(sum_sq / len);
}

float wrapToPi(float angle) // 相位包裹到[-π, π]（对应MATLAB的wrapToPi）
{
    while (angle > M_PI) angle -= 2 * M_PI;
    while (angle < -M_PI) angle += 2 * M_PI;
    return angle;
}

void int16_to_float(int16_t *src, float *dst, int len) // int16_t转float（归一化到[-1,1)）
{
    for (int i = 0; i < len; i++) {
        dst[i] = (float)src[i] / 32767.0f;  // 归一化
//        dst[i] = (float)src[i] ; // 归一化
    }
}

void convert_file(int16_t *int16_data, float **float_frames)//转换单个文件的int16数据到float
{
    for (int frame = 0; frame < FRAME_NUMBER; frame++)
    {
        int16_t *frame_data = &int16_data[frame * Nr];
        int16_to_float(frame_data, float_frames[frame], Nr);  // 转换并写入固定地址
    }
}

/**
 * @brief  float转4字节大端序（无兼容问题）
 * @param  f: 输入浮点数
 * @param  bytes: 输出4字节数组（必须指向至少4字节的内存）
 */
static void float_to_bytes_be(float f, uint8_t *bytes) {
    // 命名union，成员名清晰，老编译器完全支持
    union FloatToBytes {
        float float_val;
        uint8_t byte_arr[4];
    } ftb;
    ftb.float_val = f;
    // 大端序：高位在前
    bytes[0] = ftb.byte_arr[3];
    bytes[1] = ftb.byte_arr[2];
    bytes[2] = ftb.byte_arr[1];
    bytes[3] = ftb.byte_arr[0];
}

/**
 * @brief  uint16_t转2字节大端序
 * @param  u_val: 输入16位无符号整数
 * @param  bytes: 输出2字节数组（必须指向至少2字节的内存）
 */
static void uint16_to_bytes_be(uint16_t u_val, uint8_t *bytes) {
    bytes[0] = (u_val >> 8) & 0xFF;  // 高位字节
    bytes[1] = u_val & 0xFF;         // 低位字节
}

/**
 * @brief  按格式打包单个目标数据并通过串口发送
 * @param  target_idx: 目标索引（0~target_count-1，串口发送时序号+1）
 * @param  target: 目标数据结构体指针
 * @return 0=成功，-1=失败（串口发送失败/参数无效）
 */
int send_target_data_via_uart(int target_idx, const CurrFileTarget *target) {
    if (target == NULL || target_idx < 0) {
        return -1;
    }

    // 1. 初始化发送缓冲区（11字节）
    uint8_t uart1_send_buf[TARGET_DATA_LEN] = {0};
    uint8_t tcp_send_buf[50] = {0};
    int buf_pos = 0;


    // 2. 打包：序号（1字节，从1开始）
//    send_buf[buf_pos++] = (uint8_t)(target_idx + 1);  // 序号=索引+1
    uart1_send_buf[buf_pos++] = (uint8_t)target_idx;  // 序号=索引

    // 3. 打包：distance×10 转 uint16_t（2字节，大端）
    uint16_t dist_10x = (uint16_t)(target->distance * 10.0f);
    // 溢出校验：uint16_t最大65535 → 对应实际距离6553.5m，超出则置为最大值
    if (target->distance * 10.0f > 65535.0f) {
        dist_10x = 65535;
    }
    uint16_to_bytes_be(dist_10x, &uart1_send_buf[buf_pos]);
    buf_pos += 2;

    // 4. 打包：curr_angle（4字节，大端）
    float_to_bytes_be(target->curr_angle, &uart1_send_buf[buf_pos]);
    buf_pos += 4;

    // 5. 打包：curr_amplitude（4字节，大端）
    float_to_bytes_be(target->curr_amplitude, &uart1_send_buf[buf_pos]);
    buf_pos += 4;

    // 6. 临时存储：复用打包好的11字节数据
     if (is_collecting_group) {
         if (xTempStorageSemaphore != NULL) {
             if (xSemaphoreTake(xTempStorageSemaphore, pdMS_TO_TICKS(50)) == pdPASS) {
                 if (temp_storage_curr_target < MAX_TARGETS_PER_GROUP) {
                     // 计算存储偏移量
                     int target_offset = temp_storage_curr_target * TARGET_DATA_LEN;
                     // 复制数据到临时存储
                     memcpy(&temp_target_storage[temp_storage_curr_group][target_offset],
                            uart1_send_buf, TARGET_DATA_LEN);
                     temp_storage_curr_target++;
                     xil_printf("存储：组%d-目标%d, 11字节\r\n",
                                temp_storage_curr_group, temp_storage_curr_target);
                 } else {
                     xil_printf("Warning: 组%d目标数超出上限（%d）！\r\n",
                                temp_storage_curr_group, MAX_TARGETS_PER_GROUP);
                 }
                 xSemaphoreGive(xTempStorageSemaphore);
             } else {
                 xil_printf("Warning: 存储信号量获取失败，目标%d未存储！\r\n", target_idx);
             }
         }
     }

     tcp_send_buf[0]=0xAA;
     tcp_send_buf[1]=0xAA;
     tcp_send_buf[2]=0x55;
     memcpy(&tcp_send_buf[3],uart1_send_buf, TARGET_DATA_LEN);

    // 7. 串口发送（HAL库示例，替换为你的串口发送API）
    xQueueSend(UART_Send_Queue,uart1_send_buf,pdMS_TO_TICKS(500));//发送到雷达参数配置
    BaseType_t write_ret = xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,pdMS_TO_TICKS(500));//发送到服务端

    // 打印每条数据的入队结果（target_idx对应0~10）
    if (write_ret == pdPASS) {
        xil_printf("[TCP队列] target_idx=%d 入队成功\r\n", target_idx);
    } else {
        xil_printf("[TCP队列] target_idx=%d 入队失败（丢数据）\r\n", target_idx);
    }
//    XUartPs_Send(&UartCtrl, (u8*)send_buf, 11);

    return 0;
}



// 正确实现：输出与idx_len长度相同的数组（每个元素对应一个idx的平均相位）
//void Calculate_angle(float **echo_frames, int na, int nr, int *idx, int idx_len, float *echo_angle) {
//    // 遍历每个idx，单独计算其所有帧的平均相位
//    for (int i = 0; i < idx_len; i++)
//    {
//        int idx_pos = idx[i];  // 当前索引位置（0基）
//        float sum_angle = 0.0f;  // 累加当前idx的所有帧相位
//
//        // 遍历所有帧，计算该idx索引在每帧的相位
//        for (int frame = 0; frame < na; frame++)
//        {
//            float *echo = echo_frames[frame];  // 当前帧的频域信号
//
//            // 1. 加窗+ifftshift+IFFT（与MATLAB的ifft(ifftshift(echo))对应）
//            for (int k = 0; k < nr; k++) {
//            	fft_input[k] = echo[k] * (HANNING_WINDOW ? hanning_window[k] : 1.0f);
//            }
////            ifftshift(fft_input, nr);
//            // 3. 执行IFFT，转换为时域复数信号
//            kiss_fftr(fft_cfg, fft_input, fft_output);
//            // IFFT结果归一化（除以点数Nr，与MATLAB的ifft一致）
//            for (int k = 0; k < nr; k++) // 归一化
//            {
//    			fft_output[k].r = (fft_output[k].r* 32767.0f)/nr;
//            	fft_output[k].i = (fft_output[k].i* 32767.0f)/(-nr);
////                fft_output[k].r /= nr;
////                fft_output[k].i /= nr;
//            }
//            // 2. 计算当前帧、当前idx的相位角（弧度）
//            float angle_rad = atan2f(fft_output[idx_pos].i, fft_output[idx_pos].r);
//            sum_angle += angle_rad;  // 累加该帧的相位
//        }
//        // 3. 对当前idx的所有帧相位求平均（除以帧数Na），存入结果数组
//        echo_angle[i] = sum_angle / na;
//    }
//}

//void Calculate_angle(float **echo_frames, int na, int nr, int *idx, int idx_len, float *echo_angle) // 优化速度：输出与idx_len长度相同的数组（每个元素对应一个idx的平均相位）
//{
//
//    // 1. 初始化所有索引的相位和为0
//    memset(echo_angle, 0, idx_len * sizeof(float));  // 快速初始化
//
//    // 2. 临时缓冲区：存储当前帧经过加窗+IFFT+归一化后的复数结果（复用，避免重复分配）
//    kiss_fft_cpx *frame_fft_results = (kiss_fft_cpx*)pvPortMalloc(nr * sizeof(kiss_fft_cpx));
//    if (!frame_fft_results) {
//        printf("frame_fft_results内存分配失败\n");
//        return;
//    }
//
//    // 3. 按帧处理（每帧只执行一次IFFT，供所有索引共享）
//    for (int frame = 0; frame < na; frame++) {
//        float *echo = echo_frames[frame];  // 当前帧的频域信号
//
//        // 3.1 对当前帧执行一次加窗（仅一次）
//        for (int k = 0; k < nr; k++) {
//            fft_input[k] = echo[k] * (HANNING_WINDOW ? hanning_window[k] : 1.0f);
//        }
//
//        // 3.2 执行一次IFFT（当前帧仅一次）
//        // （如果需要ifftshift，此处应补充：ifftshift(fft_input, nr);）
//        kiss_fftr(fft_cfg, fft_input, fft_output);
//
//        // 3.3 归一化（当前帧仅一次），结果存入临时缓冲区
//        for (int k = 0; k < nr; k++) {
//            frame_fft_results[k].r = (fft_output[k].r * 32767.0f) / nr;
//            frame_fft_results[k].i = (fft_output[k].i * 32767.0f) / (-nr);
//        }
//
//        // 3.4 遍历所有索引，复用当前帧的计算结果，累加相位
//        for (int i = 0; i < idx_len; i++) {
//            int idx_pos = idx[i];  // 当前索引位置
//            // 从临时缓冲区取数据，计算相位（atan2f只调用一次/索引/帧）
//            float angle_rad= atan2f(frame_fft_results[idx_pos].i, frame_fft_results[idx_pos].r);
//            echo_angle[i] += angle_rad;  // 累加该帧的相位到对应索引
//        }
//    }
//
//    // 4. 对所有索引的相位求平均（除以帧数na）
//    for (int i = 0; i < idx_len; i++) {
//        echo_angle[i] /= na;
//    }
//
//    // 释放临时缓冲区
//    vPortFree(frame_fft_results);
//}
//
//
//void Calculate_amplitude(float **echo_frames, int na, int nr, int *idx, int idx_len, float *echo_amplitude) // 计算幅值（多目标适配）
//{
//    memset(echo_amplitude, 0, idx_len * sizeof(float));
//    kiss_fft_cpx *frame_fft_results = (kiss_fft_cpx*)pvPortMalloc(nr * sizeof(kiss_fft_cpx));
//    if (!frame_fft_results) return;
//
//    for (int frame = 0; frame < na; frame++)
//    {
//        float *echo = echo_frames[frame];
//        for (int k = 0; k < nr; k++)
//        {
//            fft_input[k] = echo[k] * (HANNING_WINDOW ? hanning_window[k] : 1.0f);
//        }
//        kiss_fftr(fft_cfg, fft_input, fft_output);
//        for (int k = 0; k < nr; k++)
//        {
//            frame_fft_results[k].r = (fft_output[k].r * 32767.0f) / nr;
//            frame_fft_results[k].i = (fft_output[k].i * 32767.0f) / (-nr);
//        }
//        for (int i = 0; i < idx_len; i++)
//        {
//            int pos = idx[i];
//            float amp = sqrtf(frame_fft_results[pos].r*frame_fft_results[pos].r +
//                             frame_fft_results[pos].i*frame_fft_results[pos].i);
//            echo_amplitude[i] += amp;
//        }
//    }
//
//    for (int i = 0; i < idx_len; i++) echo_amplitude[i] /= na;
//    vPortFree(frame_fft_results);
//}

/**
 * @brief  清空 last_angles 所有数据，同步重置关联状态（所有目标视为首次处理）
 * @return 0=成功，无失败场景（静态数组重置无内存风险）
 */
int clear_all_last_angles(void) {
    // 1. 重置 last_angles：所有元素归零（初始值）
    memset(last_angles, 0, sizeof(last_angles));

    // 2. 重置 is_first_frame：所有元素设为 true（所有目标重新视为“首次处理”）
    memset(is_first_frame, true, sizeof(is_first_frame));

    // 3. 重置 is_memset_done：标记为 false（下次调用 process_subsequent_file 时，会重新确认初始化，避免逻辑冲突）
    is_memset_done = false;

    return 0;
}

/**
 * @brief  删除指定索引的目标（同步清理last_angles等关联数据）
 * @param  del_idx: 要删除的目标索引（0 ~ target_count-1）
 * @return 0=成功，-1=失败（索引无效/无目标可删）
 */
int delete_last_angles(int del_idx) {
    // 1. 校验输入有效性
    if (target_count == 0) {
        return -1;
    }
    if (del_idx < 0 || del_idx >= target_count) {
        return -1;
    }
    // 3. 清理关联静态数组的对应数据（关键！）
    last_angles[del_idx] = 0.0f;          // 重置为初始值
    is_first_frame[del_idx] = true;       // 重置为首次处理标记（供新目标复用该索引）

    // 4. 移动目标数组，填补删除后的空白（索引对齐）
    // 从删除索引开始，后续目标依次前移1位
    for (int i = del_idx; i < target_count - 1; i++) {
        // 同步移动 last_angles、is_first_frame（关键！保持索引对应）
        last_angles[i] = last_angles[i + 1];
        is_first_frame[i] = is_first_frame[i + 1];
    }

    // 5. 重置最后一个目标的关联数据（原最后一位前移后，末尾数据冗余，需清理）
    int last_idx = target_count - 1;
    last_angles[last_idx] = 0.0f;
    is_first_frame[last_idx] = true;
    return 0;
}

// 同时计算相位（角度）和幅值（多目标适配）
void Calculate_angle_and_amplitude(float **echo_frames, int na, int nr,
                                  int *idx, int idx_len,
                                  float *echo_angle, float *echo_amplitude)
{
    // 初始化输出数组
    memset(echo_angle, 0, idx_len * sizeof(float));
    memset(echo_amplitude, 0, idx_len * sizeof(float));

    // 分配FFT结果缓存（仅需一次分配，复用减少开销）
    kiss_fft_cpx *frame_fft_results = (kiss_fft_cpx*)pvPortMalloc(nr * sizeof(kiss_fft_cpx));
    if (!frame_fft_results) return;  // 内存分配失败则退出

    // 遍历每帧数据，计算FFT并提取目标的相位和幅值
    for (int frame = 0; frame < na; frame++) {
        float *echo = echo_frames[frame];

        // 1. 对当前帧数据加窗（根据配置选择Hanning窗或无窗）
        for (int k = 0; k < nr; k++) {
//            fft_input[k] = echo[k] * (HANNING_WINDOW ? hanning_window[k] : 1.0f);//MATLAB程序未加窗
            fft_input[k] = echo[k];
        }

        // 2. 执行FFT变换
        kiss_fftr(fft_cfg, fft_input, fft_output);

        // 3. FFT结果归一化（与原逻辑保持一致：缩放至合理范围）
        for (int k = 0; k < nr; k++) {
            frame_fft_results[k].r = (fft_output[k].r * 32767.0f) / nr;  // 实部缩放
            frame_fft_results[k].i = (fft_output[k].i * 32767.0f) / (-nr);  // 虚部缩放（符号调整）
        }

        // 4. 针对每个目标索引，同时累加相位和幅值
        for (int i = 0; i < idx_len; i++) {
//            int pos = idx[i];  // 当前目标的距离单元索引
            int pos = idx[i]-1;  // 当前目标的距离单元索引***************索引基差异导致的距离计算偏差，匹配MATLAB的1基计算****************

            // 计算相位（角度）：atan2(虚部, 实部)，累加多帧结果

            float angle_rad= atan2f(frame_fft_results[pos].i, frame_fft_results[pos].r);
            echo_angle[i] += angle_rad;  // 累加该帧的相位到对应索引

            // 计算幅值：复数的模（sqrt(实部^2 + 虚部^2)），累加多帧结果
            float amp = sqrtf(frame_fft_results[pos].r * frame_fft_results[pos].r +
                             frame_fft_results[pos].i * frame_fft_results[pos].i);
            echo_amplitude[i] += amp;
        }
    }

    // 5. 对多帧累加结果取平均（得到每目标的平均相位和平均幅值）
    for (int i = 0; i < idx_len; i++) {
        echo_angle[i] /= na;
        echo_amplitude[i] /= na;
    }

    // 释放临时内存
    vPortFree(frame_fft_results);
}

void choose_stablephi(int *idx, int idx_len, float **echo_frames, int Na, int *idx1, int *idx1_len) // 选择稳定相位的索引（对应MATLAB的choose_stablephi）
{
    if (idx_len == 0)
    {
        *idx1_len = 0;
        return;
    }

//// 1，跳过idx=0（对应MATLAB逻辑），对应MATLAB的if idx(1)==1, idx(1)=[]; end
//    int start = (idx[0] == 0) ? 1 : 0;
    int start =0;
    int valid_idx_len = idx_len - start;
    if (valid_idx_len <= 0)
    {
        *idx1_len = 0;
        return;
    }

    // 2，存储帧间相位差（Na-1个帧差），对应MATLAB的store_deformation_value = zeros(size(idx,2), length(echo(:,1))-1);
    int frames = Na - 1;
    if (frames <= 0)
    {
		*idx1_len = 0;
		return;
	}
    //动态分配二维数组，存储每对帧的相位差：
    float **store_deformation = (float**)pvPortMalloc(valid_idx_len * sizeof(float*));

    for (int i = 0; i < valid_idx_len; i++)
    {
        store_deformation[i] = (float*)pvPortMalloc(frames * sizeof(float));
    }

    // 3，计算每两帧之间的相位差，对应MATLAB的for ii = 1: size(echo,1) -1
    for (int ii = 0; ii < frames; ii++)
    {
        float *echo1 = echo_frames[ii];
        float *echo2 = echo_frames[ii + 1];

        // 处理echo1：加窗→ifftshift + IFFT
        for (int i = 0; i < Nr; i++)
        {
            fft_input[i]= echo1[i] * (HANNING_WINDOW ? hanning_window[i] : 1.0f);
        }
//        ifftshift(fft_input, Nr);
        kiss_fftr(fft_cfg, fft_input, fft_output);
        for (int i = 0; i < Nr; i++)
        {
			fft_output[i].r = (fft_output[i].r* 32767.0f)/Nr;
        	fft_output[i].i = (fft_output[i].i* 32767.0f)/(-Nr);
//            fft_output[i].r /= Nr;
//            fft_output[i].i /= Nr;
        }
        kiss_fft_cpx *echo1_ifft = fft_output;

        // 处理echo2：加窗→ifftshift + IFFT
        for (int i = 0; i < Nr; i++)
        {
            fft_input[i]= echo2[i] * (HANNING_WINDOW ? hanning_window[i] : 1.0f);
        }
//        ifftshift(fft_input, Nr);
        kiss_fftr(fft_cfg, fft_input,fft_output);
        for (int i = 0; i < Nr; i++)
        {
			fft_output[i].r = (fft_output[i].r* 32767.0f)/Nr;
        	fft_output[i].i = (fft_output[i].i* 32767.0f)/(-Nr);
        }
        kiss_fft_cpx *echo2_ifft = fft_output;

        // 4，计算相位差：对应MATLAB的angle(echo1_ifft .* conj(echo2_ifft))
        for (int j = 0; j < valid_idx_len; j++)
        {
            int idx_j = idx[start + j];
            // 共轭复数：实部不变，虚部取反
            float conj_r = echo2_ifft[idx_j].r;
            float conj_i = -echo2_ifft[idx_j].i;
            // 复数乘法(z1=a+bj,z2=c+dj,则z1*z2=(ac-bd)(ad+bc)),
            float mul_r = echo1_ifft[idx_j].r * conj_r - echo1_ifft[idx_j].i * conj_i;
            float mul_i = echo1_ifft[idx_j].r * conj_i + echo1_ifft[idx_j].i * conj_r;
            // 相位角
            store_deformation[j][ii] = atan2f(mul_i, mul_r);
        }
    }

    // 5，筛选稳定相位的索引（累积差 <= 0.1rad），对应MATLAB的store_deformation_value1 = cumsum(store_deformation_value, 2);
    *idx1_len = 0;
    for (int j = 0; j < valid_idx_len; j++)
    {
        // 累积相位差
        float *cumsum = (float*)pvPortMalloc(frames * sizeof(float));
        cumsum[0] = store_deformation[j][0];
        for (int k = 1; k < frames; k++) {
            cumsum[k] = cumsum[k - 1] + store_deformation[j][k];
        }

        //6， 计算最大-最小差值，对应MATLAB的rowsToRemove = diffValues > 10;
        float max_val = cumsum[0], min_val = cumsum[0];
        for (int k = 1; k < frames; k++)
        {
            if (cumsum[k] > max_val) max_val = cumsum[k];
            if (cumsum[k] < min_val) min_val = cumsum[k];
        }
        float diff = max_val - min_val;

        // 7，保留稳定的索引，对应 MATLAB的filteredData = store_deformation_value1(~rowsToRemove, :);   idx1=idx(~rowsToRemove);
        if (diff <= 0.1f)//保留小于0.1弧度的数据
        {
            idx1[*idx1_len] = idx[start + j];
            (*idx1_len)++;
        }
        vPortFree(cumsum);
    }

    // 释放内存
    for (int i = 0; i < valid_idx_len; i++)
    {
    	vPortFree(store_deformation[i]);
    }
    vPortFree(store_deformation);
}

void process_subsequent_file(int16_t *new_file_data) //处理后续文件（相位差计算）
{
    // 1. 转换新文件数据到curr_file_frames
    convert_file(new_file_data, curr_file_frames);
    float **echo_frames = curr_file_frames;  // 当前文件
    int Na = FILE_FRAMES;  // 帧数（如64帧，与process_first_file一致）

    int *target_indices = (int*)pvPortMalloc(target_count * sizeof(int));
    for (int i = 0; i < target_count; i++)
    {
    	targets[i].idx = emmc_targets[i].idx;//以防断电重启后targets[i].idx参数丢失
    	target_indices[i] = targets[i].idx;
    }

    // 批量计算所有目标的相位和幅值
	float *angles = (float*)pvPortMalloc(target_count * sizeof(float));  // 上一个文件的平均相位（每个索引）
	float *amplitudes = (float*)pvPortMalloc(target_count * sizeof(float));
	// 3. 计算上一个文件和当前文件的平均相位（每个索引单独计算）
	Calculate_angle_and_amplitude(echo_frames, Na, Nr, target_indices, target_count, angles, amplitudes);

    // 仅首次调用函数时，执行一次memset（把is_first_frame设为全true）
    if (!is_memset_done) {
        memset(is_first_frame, true, sizeof(is_first_frame));
        is_memset_done = true;  // 标记为已执行，后续不再执行
    }

    if (xTempStorageSemaphore != NULL) {
        if (xSemaphoreTake(xTempStorageSemaphore, pdMS_TO_TICKS(100)) != pdPASS) {
            xil_printf("Error: 组开始-信号量获取失败！\r\n");
        }
    }
    // 重置当前组目标计数
    temp_storage_curr_target = 0;
    is_collecting_group = true;

    if (xTempStorageSemaphore != NULL) {
        xSemaphoreGive(xTempStorageSemaphore);
    }

    // 保存结果
    for (int i = 0; i < target_count; i++) {
    	targets[i].distance=emmc_targets[i].distance;//以防断电重启后targets[i].distance参数丢失
        targets[i].data_count++;
		// 直接存储当前文件的角度和幅度（覆盖旧值，仅保留当前文件数据）
		targets[i].curr_angle = angles[i];
		targets[i].curr_amplitude = amplitudes[i];

        send_target_data_via_uart(i, &targets[i]);//数据上传
    }

    if (xTempStorageSemaphore != NULL) {
        if (xSemaphoreTake(xTempStorageSemaphore, pdMS_TO_TICKS(100)) != pdPASS) {
            xil_printf("Error: 组结束-信号量获取失败！\r\n");
        }
    }
    temp_group_target_count[temp_storage_curr_group] = (uint8_t)temp_storage_curr_target;
    is_collecting_group = false;
    temp_storage_curr_group++;
    if (temp_storage_curr_group >= TEMP_STORAGE_MAX_GROUPS) {
         xil_printf("临时存储存满%d组，触发EMMC保存...\r\n",TEMP_STORAGE_MAX_GROUPS);
         if (save_temp_storage_to_emmc() == XST_SUCCESS) {
             // 保存成功，重置存储
             memset(temp_target_storage, 0, sizeof(temp_target_storage));
             memset(temp_group_target_count, 0, sizeof(temp_group_target_count));
             temp_storage_curr_group = 0;
             xil_printf("EMMC保存成功，临时存储已重置！\r\n");
         } else {
             xil_printf("Error: EMMC保存失败，索引暂停在：%d\r\n", temp_storage_curr_group);
             temp_storage_curr_group--;  // 回滚索引
         }
     }

    if (xTempStorageSemaphore != NULL) {
        xSemaphoreGive(xTempStorageSemaphore);
    }

    // 7. 释放临时内存
    vPortFree(target_indices);
    vPortFree(angles);
    vPortFree(amplitudes);
}

void add_target(int16_t *new_file_data,float range)
{
	uint8_t tcp_send_buf[50]={0};
	ConfigurationTarget new_target;
	convert_file(new_file_data, curr_file_frames);
	int Na = FILE_FRAMES;
	float *echo_signal_target = (float*)pvPortMalloc(Nr * sizeof(float));
	memset(echo_signal_target, 0, Nr * sizeof(float));
	// 嵌套循环为每帧的每个点加窗：
	for (int frame = 0; frame < Na; frame++)
	{
		float *echo = curr_file_frames[frame];
		for (int i = 0; i < Nr; i++)
		{
		 fft_input[i] = echo[i] * (HANNING_WINDOW ? hanning_window[i] : 1.0f);
		}
		kiss_fftr(fft_cfg, fft_input, fft_output);
		for (int i = 0; i < Nr; i++)
		{
		fft_output[i].r = (fft_output[i].r* 32767.0f)/Nr;
		fft_output[i].i = (fft_output[i].i* 32767.0f)/(-Nr);
		// 累加幅度（除以Na实现平均）
		echo_signal_target[i] += sqrtf(fft_output[i].r*fft_output[i].r + fft_output[i].i*fft_output[i].i) / Na;
		}
	}
	// 计算目标范围索引
	int range_bin = round(range / RBIN);//同MATLAB的range/rbin
	int threshold_bin = round(dynamic_distance_threshold / RBIN);//3m / 0.3m = 10个单元，同Distance_threshold/rbin
	int start_idx = range_bin - threshold_bin;//range_bin的前10个单元
	int end_idx = range_bin + threshold_bin;//range_bin的后10个单元
	start_idx = (start_idx < 0) ? 0 : start_idx;
	end_idx = (end_idx >= Nr) ? Nr - 1 : end_idx;
	int window_len = end_idx - start_idx + 1;
	int *window_idx = (int*)pvPortMalloc(window_len * sizeof(int));
	for (int i = 0; i < window_len; i++) window_idx[i] = start_idx + i;

	// 筛选稳定点
	int *stable_idx = (int*)pvPortMalloc(window_len * sizeof(int));
	int stable_len;
	choose_stablephi(window_idx, window_len, curr_file_frames, Na, stable_idx, &stable_len);

	// 峰值检测
	int *target_peaks = (int*)pvPortMalloc(Nr * sizeof(int));
	int target_peak_len = findpeaks(echo_signal_target, Nr, 0.5f, target_peaks);

	// 交集计算
	int inter_len;
	int *common_idx = intersect(stable_idx, stable_len, target_peaks, target_peak_len, &inter_len);

	// 确定目标索引
	float *echo_signal_empty = (float*)Amplitude_Value_Address;  // 直接读取预存的空场景幅度
	int target_idx = -1;
	float target_distance = 0.0f;
	if (inter_len > 0)
	{
		// 计算目标场景与空场景的幅度差值（目标存在时，该值应更大）
		float *diff_echo = (float*)pvPortMalloc(Nr * sizeof(float));
		for (int i = 0; i < Nr; i++) diff_echo[i] = echo_signal_target[i] - echo_signal_empty[i];

		 // 在交集中找“幅度差值最大”的点（最可能是目标）
		int max_diff_idx = 0;
		float max_diff_val = diff_echo[common_idx[0]];
		for (int i = 1; i < inter_len; i++)
		{
			if (diff_echo[common_idx[i]] > max_diff_val)
			{
				max_diff_val = diff_echo[common_idx[i]];
				max_diff_idx = i;
			}
		}
		target_idx = common_idx[max_diff_idx];
		target_distance = (float)target_idx * RBIN;
		// 验证是否为差值峰值
		int *diff_peaks = (int*)pvPortMalloc(Nr * sizeof(int));
		int diff_peak_len = findpeaks(diff_echo, Nr, 0.5f, diff_peaks);
		int is_peak = 0;
		for (int i = 0; i < diff_peak_len; i++)
		{
			if (diff_peaks[i] == target_idx)
			{
				is_peak = 1;
				break;
			}
		}
		if (!is_peak) target_idx = -1;
		vPortFree(diff_echo);
		vPortFree(diff_peaks);
	}
    // 保存目标信息
    if (target_idx != -1) {
        targets[target_count].idx = target_idx;						// 目标索引
        targets[target_count].distance = target_distance;		// 目标距离
        targets[target_count].data_count = 0;                 		// 初始数据计数（未处理文件）
        targets[target_count].curr_angle = 0.0f;              		// 初始角度（无数据）
        targets[target_count].curr_amplitude = 0.0f;          	// 初始幅度（无数据）
        target_count++;
        new_target.idx = target_idx;
        new_target.distance = target_distance;
        if (emmc_add_target(new_target) == XST_SUCCESS)//目标点写入emmc
        {
            xil_printf("目标新增成功！\r\n");
        } else {
            xil_printf("目标新增失败！\r\n");
        }
//已在emmc_add_target(new_target)发送所有目标点
//        uint16_t dist_10x = (uint16_t)(target_distance * 10.0f);
//        tcp_send_buf[0]= 0xAA;
//        tcp_send_buf[1]= 0xAA;
//        tcp_send_buf[2]= 0x55;
//        tcp_send_buf[3]= target_count & 0xFF;  // 低位字节
//        tcp_send_buf[4]= (dist_10x >> 8) & 0xFF;  // 高位字节
//        tcp_send_buf[5]= dist_10x & 0xFF;         // 低位字节
//        tcp_send_buf[6]= 0x00;
//        tcp_send_buf[7]= 0x00;
//        tcp_send_buf[8]=  0x00;
//        tcp_send_buf[9]=  0x00;
//        tcp_send_buf[10]= 0x00;
//        tcp_send_buf[11]= 0x00;
//        tcp_send_buf[12]=  0x00;
//        tcp_send_buf[13]=  0x00;
//        xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,0);//发送到服务端

    } else {//未能找到有效目标
        printf("Failed to find valid target\r\n");
        tcp_send_buf[0]= 0xAA;
        tcp_send_buf[1]= 0xAA;
        tcp_send_buf[2]= 0x55;
        tcp_send_buf[3]= (target_count+1) & 0xFF;  // 高位字节
        tcp_send_buf[4]=  0xFF;  // 高位字节
        tcp_send_buf[5]= 0xFF;         // 低位字节
        tcp_send_buf[6]= 0x00;
        tcp_send_buf[7]= 0x00;
        tcp_send_buf[8]=  0x00;
        tcp_send_buf[9]=  0x00;
        tcp_send_buf[10]= 0x00;
        tcp_send_buf[11]= 0x00;
        tcp_send_buf[12]=  0x00;
        tcp_send_buf[13]=  0x00;
        xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,0);//发送到服务端
    }
    // 释放内存
    vPortFree(echo_signal_target);
    vPortFree(window_idx);
    vPortFree(stable_idx);
    vPortFree(target_peaks);
}

void process_first_file(int16_t *new_file_data)// 处理第一个文件（接收空场景，并计算平均幅度）
{
    // 第一个文件为空场景，暂存到curr_file_frames
    convert_file(new_file_data, prev_file_frames);
    int Na = FILE_FRAMES;
    // 计算空场景的平均幅度
    float *echo_signal_empty = (float*)pvPortMalloc(Nr * sizeof(float));
    memset(echo_signal_empty, 0, Nr * sizeof(float));
    // 嵌套循环为每帧的每个点加窗：
     for (int frame = 0; frame < Na; frame++)
     {
    	 float *echo = prev_file_frames[frame];
         for (int i = 0; i < Nr; i++)
         {
        	 fft_input[i] = echo[i] * (HANNING_WINDOW ? hanning_window[i] : 1.0f);
         }
         kiss_fftr(fft_cfg, fft_input, fft_output);
         for (int i = 0; i < Nr; i++)
         {
 			fft_output[i].r = (fft_output[i].r* 32767.0f)/Nr;
         	fft_output[i].i = (fft_output[i].i* 32767.0f)/(-Nr);
         	// 累加幅度（除以Na实现平均）
         	echo_signal_empty[i] += sqrtf(fft_output[i].r*fft_output[i].r + fft_output[i].i*fft_output[i].i) / Na;
         }
     }
     // 将计算完成的空场景幅度值写入Amplitude_Value_Address
     memcpy(amp_dest, echo_signal_empty, Nr * sizeof(float));  // 写入指定内存
     // 释放临时内存并标记空场景有效
     vPortFree(echo_signal_empty);
	 empty_scene_stored = 1;// 空场景数据已缓存标志
	 file_count = 1;  // 标记空场景已处理
	 printf("已处理空场景文件，等待有角反场景文件...\r\n");
}

void KISSFFT_Init(void)// 初始化FFT（正向）配置
{
	fft_cfg = kiss_fftr_alloc(Nr, 0, NULL, &fft_worksize);
	if (!fft_cfg) {
		// 第一次调用获取所需内存大小，分配后再次初始化
		fft_workspace = pvPortMalloc(fft_worksize);
		if (!fft_workspace) {
			printf("内存分配失败（FFT工作区）\n");
		}
		fft_cfg = kiss_fftr_alloc(Nr, 0, fft_workspace, &fft_worksize);
		if (!fft_cfg) {
			printf("FFT初始化失败\n");
			vPortFree(fft_workspace);
			fft_workspace= NULL;
		}
	}
    // 分配FFT输入输出缓冲区
    fft_input = (float *)FFTR_Input_Address;
    fft_output = (kiss_fft_cpx*)FFTR_Output_Address;
}

void init_file_buffers() // 初始化地址映射
{
    // 上一个文件地址：BASE_ADDR
    for (int f = 0; f < FRAME_NUMBER; f++) {
        prev_file_frames[f] = (float*)(Float_Data_Address + f * FLOAT_FRAME_SIZE);//开始地址Float_Data_Address
    }
    // 当前文件地址：BASE_ADDR + FILE_FLOAT_SIZE（与上一个文件不重叠）
    for (int f = 0; f < FRAME_NUMBER; f++) {
        curr_file_frames[f] = (float*)(Float_Data_Address + FILE_FLOAT_SIZE + f * FLOAT_FRAME_SIZE);//开始地址Float_Data_Address+64*8000* sizeof(float)
    }
}

//void init_hanning_window(void) // 初始化Hanning窗（对应MATLAB的hanning(Nr)）（首尾为零）
//{
//    for (int i = 0; i < Nr; i++) {
//        hanning_window[i] = 0.5f - 0.5f * cos(2 * M_PI * i / (Nr - 1));
//    }
//}

void init_hanning_window(void) // 初始化Hanning窗（对应MATLAB的hanning(Nr)）(首尾都不为零)
{
    for (int i = 0; i < Nr; i++) {
    	hanning_window[i] = 0.5f - 0.5f * cos(2 * M_PI * (i + 1) / (Nr + 1));
     }
 }

void radar_algorithm_upgrade(void)//雷达数据算法函数
{
	uint8_t tcp_send_buf[50]={0};
	uint8_t count=0;//接收总帧数
	uint16_t target_serial_number=0;//目标序号
	uint16_t target_distance_uint16=0;//目标距离
	float target_distance_float=0.0f;//目标距离
	uint8_t parameter_recv_buf[50];
	uint16_t parameter_hex_16bit=0;//16位的16进制参数
	uint8_t Radar_Power_buf=0;//雷达上电状态
	// 初始化信号处理资源
	init_hanning_window();
	init_file_buffers();
	KISSFFT_Init();
	// 接收缓冲区（指向DDR中的接收地址）

    //初始化临时存储
    memset(temp_target_storage, 0, sizeof(temp_target_storage));
    memset(temp_group_target_count, 0, sizeof(temp_group_target_count));
    temp_storage_curr_group = 0;
    temp_storage_curr_target = 0;
    is_collecting_group = false;

	while (1)
	{
		if(xQueueReceive(Lwip_Server_Recv_To_Algorithm_Queue,parameter_recv_buf,5))
		{
			if(parameter_recv_buf[0]==0xAA&&parameter_recv_buf[6]==0xBB)//验证头和尾
			{
				tcp_send_buf[0]=parameter_recv_buf[0];//头
				tcp_send_buf[1]=parameter_recv_buf[1];
				tcp_send_buf[2]=parameter_recv_buf[2];
				tcp_send_buf[3]=parameter_recv_buf[3];//读、写
				tcp_send_buf[4]=0x00;
				tcp_send_buf[5]=0x00;
				tcp_send_buf[6]=parameter_recv_buf[6];//尾
				if(parameter_recv_buf[1]==0xBB)
				{
					parameter_hex_16bit=(parameter_recv_buf[4]<<8)|parameter_recv_buf[5];
					switch(parameter_recv_buf[2])
					{
						case 0x01://模式切换
							if(parameter_recv_buf[3]==0x00)
							{
								if(parameter_hex_16bit==0x0000)//查询运行模式
								{
									xil_printf("FLAG_Equipment_operation_mode: %d\r\n",  FLAG_Equipment_operation_mode);
									if(FLAG_Equipment_operation_mode==0)//安装调试模式
									{
										tcp_send_buf[4]=0x00;
										tcp_send_buf[5]=0x01;
									}
									else//正常采集模式
									{
										tcp_send_buf[4]=0x00;
										tcp_send_buf[5]=0x02;
									}
								}
							}
							else
							{
								if(parameter_hex_16bit==0x0001)//安装调试模式
								{
									FLAG_Equipment_operation_mode=0;
									FLAG_Collection_Start=0;//停止连续采集
									xil_printf("FLAG_Equipment_operation_mode: %d\r\n",  FLAG_Equipment_operation_mode);
								}
								else if(parameter_hex_16bit==0x0002)//正常采集模式
								{
									FLAG_Equipment_operation_mode=1;
									FLAG_Collection_Start=1;//开始连续采集
									xil_printf("FLAG_Equipment_operation_mode: %d\r\n",  FLAG_Equipment_operation_mode);
								}
							}
							break;

						case 0x02://配置目标点
							dynamic_range=(float)parameter_hex_16bit;//放大十倍
							dynamic_range=dynamic_range/10;
							printf( "dynamic_range: %0.4f\r\n",  dynamic_range);
							break;

						case 0x03://删除上一个目标点
//							delete_last_angles(target_count-1);//删除所选目标点的上一条相位
							delete_last_target();
							target_count=g_target_count;
							break;

						case 0x04://删除所选目标
							target_serial_number=parameter_hex_16bit;
//							delete_last_angles(target_serial_number);//删除所选目标点的上一条相位
							int ret = delete_target_by_index(target_serial_number); // 删除所选的目标
							if (ret != XST_SUCCESS) {
								xil_printf("Delete by index failed!\r\n");
							}
							target_count=g_target_count;
							break;

						case 0x44://删除所选目标(按距离索引)
							target_distance_uint16=parameter_hex_16bit;
							target_distance_float = (float)target_distance_uint16 / 10.0f;
							int ret2 = delete_target_by_distance(target_distance_float); // 删除所选的目标
							if (ret2 != XST_SUCCESS) {
								xil_printf("Delete by index failed!\r\n");
							}
							target_count=g_target_count;
							break;

						case 0x05://开始采集
							if(FLAG_Equipment_operation_mode==0)//调试模式下-单次采集
							{
								xSemaphoreGive(xKey_flagSemaphore); // 释放按键信号量
							}
							else//正常采集模式下-连续采集
							{
								FLAG_Collection_Start=1;//开始采集
							}
							break;

						case 0x06://停止采集
							FLAG_Collection_Start=0;//停止采集
							break;

						case 0x07://雷达上电
							if(parameter_recv_buf[3]==0x00)//读
							{
								tcp_send_buf[4]=0x00;
								tcp_send_buf[5]=(~XGpioPs_ReadPin(&Gpio, RELAY))&0xFF;//01:上电；00:断电
							}
							else//写
							{
								if(parameter_hex_16bit==0x0001)//雷达上电
								{
									Radar_Power_buf=0x01;
									xQueueSend(Radar_Power_Queue,&Radar_Power_buf, 0);
								}
								else
								{
									Radar_Power_buf=0x00;
									xQueueSend(Radar_Power_Queue,&Radar_Power_buf, 0);
								}
							}
							break;

						case 0x08://采集间隔
							if(parameter_recv_buf[3]==0x00)//读
							{
								tcp_send_buf[4]=(sampling_interval>>8)&0xff;
								tcp_send_buf[5]=sampling_interval&0xff;
							}
							else//写
							{
								sampling_interval=parameter_hex_16bit;
							}
							break;

						case 0x09://查看当前设备电量信息

							break;

						case 0x0A://查询目标点数量
							tcp_send_buf[4]=(g_target_count>>8)&0xff;
							tcp_send_buf[5]=g_target_count&0xff;
							break;

						case 0xEE://删除所有目标点
//							clear_all_last_angles();//删除所有目标点的上一条相位
							delete_all_targets();//删除EMMC中所有保存的目标点
							target_count=g_target_count;
							break;

						default:
							break;
					}
				}
			}
			xQueueSend(Lwip_Server_Send_host_computer_Queue,tcp_send_buf,0);
			memset(tcp_send_buf, 0, 50);
			memset(parameter_recv_buf, 0, 50);
		}
		if(xQueueReceive(Lwip_Clientr2_Recv_count_Queue,&count,5))
		{
			if(count==FILE_FRAMES)
			{
				if(FLAG_Equipment_operation_mode==0)//安装调试模式
				{
					if (file_count == 0)
					{
						// 处理第一个文件（基准计算）
						printf("处理第一组数据，计算基准参数...\r\n");
						process_first_file(signed_integer);
					}
					else
					{
						add_target(signed_integer,dynamic_range) ; // 配置/采集阶段处理
					}
				}
				else if(FLAG_Equipment_operation_mode==1)//正常采集模式
				{
					if(g_target_count>0)
					{
						target_count=g_target_count;
						// 处理后续文件（相位差计算）
						printf("处理后面数据，计算相位差...\r\n");
						process_subsequent_file(signed_integer);
					}
					else
					{
						printf("未配置目标距离...\r\n");
					}

				}
				count=0;
			}
		}
	}
}
