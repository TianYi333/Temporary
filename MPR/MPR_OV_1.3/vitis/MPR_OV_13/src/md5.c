#include "md5.h"

// MD5初始化
void md5_init(MD5_CTX *context) {
    context->count[0] = context->count[1] = 0;
    // 初始化状态
    context->state[0] = 0x67452301;
    context->state[1] = 0xefcdab89;
    context->state[2] = 0x98badcfe;
    context->state[3] = 0x10325476;
}

// MD5区块处理
static void md5_transform(u32 state[4], u8 block[64]) {
    u32 a = state[0], b = state[1], c = state[2], d = state[3];
    u32 x[16];

    // 将字节块转换为32位整数数组（小端字节序）
    for (int i = 0, j = 0; j < 64; i++, j += 4) {
        x[i] = ((u32)block[j]) | (((u32)block[j+1]) << 8) |
               (((u32)block[j+2]) << 16) | (((u32)block[j+3]) << 24);
    }

    /* 第1轮 */
    FF(a, b, c, d, x[0],  7,  T1);
    FF(d, a, b, c, x[1], 12,  T2);
    FF(c, d, a, b, x[2], 17,  T3);
    FF(b, c, d, a, x[3], 22,  T4);
    FF(a, b, c, d, x[4],  7,  T5);
    FF(d, a, b, c, x[5], 12,  T6);
    FF(c, d, a, b, x[6], 17,  T7);
    FF(b, c, d, a, x[7], 22,  T8);
    FF(a, b, c, d, x[8],  7,  T9);
    FF(d, a, b, c, x[9], 12, T10);
    FF(c, d, a, b, x[10],17, T11);
    FF(b, c, d, a, x[11],22, T12);
    FF(a, b, c, d, x[12], 7, T13);
    FF(d, a, b, c, x[13],12, T14);
    FF(c, d, a, b, x[14],17, T15);
    FF(b, c, d, a, x[15],22, T16);

    /* 第2轮 */
    GG(a, b, c, d, x[1],  5, T17);
    GG(d, a, b, c, x[6],  9, T18);
    GG(c, d, a, b, x[11],14, T19);
    GG(b, c, d, a, x[0], 20, T20);
    GG(a, b, c, d, x[5],  5, T21);
    GG(d, a, b, c, x[10], 9, T22);
    GG(c, d, a, b, x[15],14, T23);
    GG(b, c, d, a, x[4], 20, T24);
    GG(a, b, c, d, x[9],  5, T25);
    GG(d, a, b, c, x[14], 9, T26);
    GG(c, d, a, b, x[3], 14, T27);
    GG(b, c, d, a, x[8], 20, T28);
    GG(a, b, c, d, x[13], 5, T29);
    GG(d, a, b, c, x[2],  9, T30);
    GG(c, d, a, b, x[7], 14, T31);
    GG(b, c, d, a, x[12],20, T32);

    /* 第3轮 */
    HH(a, b, c, d, x[5],  4, T33);
    HH(d, a, b, c, x[8], 11, T34);
    HH(c, d, a, b, x[11],16, T35);
    HH(b, c, d, a, x[14],23, T36);
    HH(a, b, c, d, x[1],  4, T37);
    HH(d, a, b, c, x[4], 11, T38);
    HH(c, d, a, b, x[7], 16, T39);
    HH(b, c, d, a, x[10],23, T40);
    HH(a, b, c, d, x[13], 4, T41);
    HH(d, a, b, c, x[0], 11, T42);
    HH(c, d, a, b, x[3], 16, T43);
    HH(b, c, d, a, x[6], 23, T44);
    HH(a, b, c, d, x[9],  4, T45);
    HH(d, a, b, c, x[12],11, T46);
    HH(c, d, a, b, x[15],16, T47);
    HH(b, c, d, a, x[2], 23, T48);

    /* 第4轮 */
    II(a, b, c, d, x[0],  6, T49);
    II(d, a, b, c, x[7], 10, T50);
    II(c, d, a, b, x[14],15, T51);
    II(b, c, d, a, x[5], 21, T52);
    II(a, b, c, d, x[12], 6, T53);
    II(d, a, b, c, x[3], 10, T54);
    II(c, d, a, b, x[10],15, T55);
    II(b, c, d, a, x[1], 21, T56);
    II(a, b, c, d, x[8],  6, T57);
    II(d, a, b, c, x[15],10, T58);
    II(c, d, a, b, x[6], 15, T59);
    II(b, c, d, a, x[13],21, T60);
    II(a, b, c, d, x[4],  6, T61);
    II(d, a, b, c, x[11],10, T62);
    II(c, d, a, b, x[2], 15, T63);
    II(b, c, d, a, x[9], 21, T64);

    // 更新状态
    state[0] += a;
    state[1] += b;
    state[2] += c;
    state[3] += d;
}

// 输入数据更新
void md5_update(MD5_CTX *context, u8 *input, u32 input_len) {
    u32 i, index, part_len;

    // 计算当前缓冲区中的字节数
    index = (context->count[0] >> 3) & 0x3F;

    // 更新位计数
    if ((context->count[0] += (input_len << 3)) < (input_len << 3))
        context->count[1]++;
    context->count[1] += (input_len >> 29);

    part_len = 64 - index;

    // 如果输入数据能填满缓冲区
    if (input_len >= part_len) {
        memcpy(&context->buffer[index], input, part_len);
        md5_transform(context->state, context->buffer);

        for (i = part_len; i + 63 < input_len; i += 64)
            md5_transform(context->state, &input[i]);

        index = 0;
    } else {
        i = 0;
    }

    // 缓存剩余数据
    memcpy(&context->buffer[index], &input[i], input_len - i);
}

// 获取最终结果
void md5_final(MD5_CTX *context, u8 digest[16]) {
    u8 bits[8];
    u32 index, pad_len;

    // 保存位计数（小端序）
    for (int i = 0; i < 8; i++)
        bits[i] = (u8)((context->count[i>>2] >> ((i & 3) << 3)) & 0xFF);

    // 填充：0x80后接0x00直到满足长度
    index = (context->count[0] >> 3) & 0x3f;
    pad_len = (index < 56) ? (56 - index) : (120 - index);
    md5_update(context, (u8*)"\x80", 1); // 标准填充起始字节
    for (int i = 1; i < pad_len; i++)
        md5_update(context, (u8*)"\0", 1);

    // 附加长度
    md5_update(context, bits, 8);

    // 将状态转换为小端字节序
    for (int i = 0; i < 4; i++) {
        digest[i*4]   = (u8)(context->state[i] & 0xFF);
        digest[i*4+1] = (u8)((context->state[i] >> 8) & 0xFF);
        digest[i*4+2] = (u8)((context->state[i] >> 16) & 0xFF);
        digest[i*4+3] = (u8)((context->state[i] >> 24) & 0xFF);
    }

    // 清零敏感信息
    memset(context, 0, sizeof(MD5_CTX));
}

// 简单封装函数：直接计算数据的MD5
void md5_compute(u8 *data, u32 len, u8 digest[16]) {
    MD5_CTX ctx;
    md5_init(&ctx);
    md5_update(&ctx, data, len);
    md5_final(&ctx, digest);
}


//个人MD5计算函数
char* md5_APP(const char* data)
{
	u8 digest[16];
	int64_t Hash_value_int64;
	char Hash_value_char[22]; // 有符号64位最长20字符 + 负号 + 终止符 = 22字节
	char* send_buf = (char*)malloc(50); // 动态分配内存
	if (!send_buf) return NULL;
	md5_compute((u8*)data, strlen(data), digest);
//	xil_printf("data: %s\n", data);
//	// 应输出：D74E5EEE4FFBECB7127C60277C75EE92
//	for(int i=0; i<16; i++)
//		xil_printf("%02x", digest[i]);
//	xil_printf("\n");
	Hash_value_int64=digest[0]<<16|digest[1]<<8|digest[2];
	snprintf(Hash_value_char, sizeof(Hash_value_char),"%" PRId64, Hash_value_int64);
	sprintf(send_buf, ":FMCW:MD5? %s\r\n", Hash_value_char);
//	xil_printf("send_buf: %s\n", send_buf);
	return send_buf;
}
