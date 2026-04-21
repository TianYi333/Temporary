#include "freertos_tcp_perf_client.h"

int Clientr1_state=1;
int Clientr2_state=1;
uint8_t count_client1=0,count_client2=0;
uint8_t const_Data_reception_completed =1;//数据接收完成标志位
size_t received_bytes = 0; // 已接收字节数计数器
size_t received_bytes_total=0;//接收字节总数

static sys_thread_t tcp_clientr1_recv_thread_handle;
static sys_thread_t tcp_clientr1_send_thread_handle;
static sys_thread_t tcp_clientr2_recv_thread_handle;
void start_application_client1();
void start_application_client2();
void start_application_server();

/// TCP Socket保活配置（兼容版）
static int tcp_socket_set_keepalive(int sock) {
    int keepalive = 1;          // 开启保活

    // 只开启基础保活（所有LwIP版本都支持）
    if(setsockopt(sock, SOL_SOCKET, SO_KEEPALIVE, &keepalive, sizeof(keepalive)) < 0) {
        xil_printf("Socket set SO_KEEPALIVE failed, errno=%d\r\n", errno);
        return -1;
    }
    return 0; // 即使精细参数设置失败，也返回成功（基础保活已开启）
}

void query_command_list(int sock) //查询命令
{
	uint8_t count=0;
    const char *commands[] = {
        "*idn?\r\n",
        ":FMCW:FREQuency:STARt?\r\n",
        ":FMCW:FREQuency:STOP?\r\n",
        ":FMCW:STEP:TIME?\r\n",
		":FMCW:POWER?\r\n",
		":FMCW:LO:SCAN:TIME?\r\n",
		":FMCW:BW?\r\n",
		":FMCW:IF?\r\n",
        ":FMCW:TRIG:MODE?\r\n",
        ":FMCW:TRIG:COUNt?\r\n",
        ":FMCW:RUN:MODE?\r\n",
        ":FMCW:FRAME:TIME?\r\n",
		":FMCW:POWER:MODE?\r\n",
		":FMCW:RFSTATe?\r\n",
		":FMCW:FMCOUNT?\r\n",
		":FMCW:MICRowave:MODE?\r\n",
		":FMCW:MICRowave:DATA?\r\n",
		":FMCW:SD:ACTive?\r\n",
		":FMCW:FLAG?\r\n"
    };
    int num_commands = sizeof(commands) / sizeof(commands[0]);
    xil_printf("Sending query command list...\r\n");
    for (int i = 0; i < num_commands; i++) {
//    	xil_printf("-> %s", commands[i]);//打印查询命令
        send(sock, commands[i], strlen(commands[i]), 0);
        vTaskDelay(20); // 10ms delay between commands
        count++;
    }
    xil_printf("Sending query command %d/%d successfully!\r\n",count,num_commands);
}

//void set_up_command_list(int sock) //设置命令
//{
//    const char *commands[] = {
////    	":FMCW:FLAG?\r\n",
//        ":FMCW:FREQuency:STARt 9000000000\r\n",	//起始频率(9--10GHz)
//        ":FMCW:FREQuency:STOP 9500000000\r\n",		//终止频率(9--10GHz)
//        ":FMCW:STEP:TIME 1000\r\n",								//脉冲宽度(0.2/0.5/1ms)
//        ":FMCW:POWER 33\r\n",										//发射功率(3--33dBm)
//		":FMCW:LO:SCAN:TIME 1000\r\n",						//本振回扫时间(400--1000us)
//		":FMCW:BW 16000000\r\n",									//中频带宽
//		":FMCW:IF 10\r\n",													//中频增益(0/10/20/30)
//		":FMCW:TRIG:MODE SOFT\r\n",							//触发模式(EXTern/S0FT/STOP)
//		":FMCW:TRIG:COUNt 64\r\n",								//触发次数(1--2000)
//        ":FMCW:RUN:MODE MODEA\r\n",						//运行模式(MODEA/MODEB)
//        ":FMCW:POWER:MODE WAIT\r\n",						//电源模式(NORMa/WAIT)
//        ":FMCW:RFSTATe PULSE\r\n",								//射频开关模式(OFF/NO/PULSE)
//        ":FMCW:PACKage:LENGth 1024\r\n",					//包长度 1024-10240
//		":FMCW:FMCOUNT 1\r\n",										//扫频帧数(1--31000)
//		":FMCW:MICRowave:MODE 0\r\n",						//微波网络模式
//		":FMCW:MICRowave:DATA 0\r\n",						//微网控制码
//		":FMCW:INIT\r\n"														//调频初始化
//    };
//    int num_commands = sizeof(commands) / sizeof(commands[0]);
//    xil_printf("Sending set up command list...\n");
//    for (int i = 0; i < num_commands; i++) {
//    	xil_printf("-> %s", commands[i]);
//        send(sock, commands[i], strlen(commands[i]), 0);
//        vTaskDelay(10); // 10ms delay between commands
//    }
//}

int set_up_command_list(int sock) //设置命令
{
	uint8_t count=0;
    xil_printf("Sending set up command list...\r\n");
    for (int i = 0; i < command_count; i++)
    {
	  // 添加\r\n结束符
		char full_command[MAX_LINE_LENGTH + 3];
		snprintf(full_command, sizeof(full_command), "%s\r\n", loaded_commands[i]);
//    	xil_printf("-> %s", full_command);//打印发送的设置命令
        size_t total_sent = 0;
        size_t total_length = strlen(full_command);

        while (total_sent < total_length) {
            int sent = send(sock, full_command + total_sent, total_length - total_sent, 0);
            if (sent < 0) {
                xil_printf("Error: Failed to send command to radar\r\n");
                return XST_FAILURE;
            }
            total_sent += sent;
        }
        vTaskDelay(10); // 10ms delay between commands
        count++;
    }
    xil_printf("Sending set up command %d/%d successfully!\r\n",count,command_count);
    return XST_SUCCESS;
}

void tcp_clientr2_recv_thread(void *sock_param)
{
	int sock = (int)sock_param;
	int recv_len=0;
	BaseType_t xMutexTaken = pdFALSE; // 标记锁是否成功获取
	received_bytes=0;
	received_bytes_total=0;
	xil_printf("Client2与服务器重连成功\r\n");
//	xQueueSend(Lwip_Server_Send_count_Queue, "Client2 Reconnection to the server successful!\r\n", 0);
	while (1) {
        // 先判断连接状态（加锁保护）
	  // 关键修改1：使用有限超时拿锁，避免死锁
		if (xSemaphoreTake(xClient2Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
			xMutexTaken = pdTRUE;
			if (Clientr2_state != 0) {
				xSemaphoreGive(xClient2Mutex); // 立即释放锁
				xMutexTaken = pdFALSE;
				break;
			}
			xSemaphoreGive(xClient2Mutex);
			xMutexTaken = pdFALSE;
		} else {
			xil_printf("[Client2 Recv] Take mutex timeout, check lock status!\r\n");
			continue; // 不退出，重试拿锁
		}
		if(received_bytes_total< RECV_BUFFER_SIZE)
		{
			// 非阻塞读：核心检测连接状态
			 recv_len = recv(sock, Int16_Data_Address+received_bytes_total, RECV_BUFFER_SIZE-received_bytes_total, 0);
			 if (recv_len > 0)
			 {
				 received_bytes=received_bytes+recv_len;
				 received_bytes_total=received_bytes_total+recv_len;
				 count_client2=0;
//				 xil_printf("recv_len %d\r\n", recv_len);
				 if(received_bytes<=(FRAME_DATA_NUMBER*2)&&received_bytes>=FRAME_DATA_NUMBER)
				 {
					 received_frame_count++;
//					 xil_printf("received_bytes %d\r\n", received_bytes);
					 received_bytes=received_bytes-FRAME_DATA_NUMBER;
				 }
				 if(received_bytes_total==(FRAME_DATA_NUMBER*FRAME_NUMBER))
				 {
					 xQueueSendFromISR(Lwip_Clientr2_Recv_count_Queue,&received_frame_count,0);
					 xil_printf("received_bytes %d\r\n", received_bytes_total);
					 received_frame_count=0;
					 received_bytes_total=0;
					 xSemaphoreGive(xReceive_endSemaphore); // 释放信号量
				 }
			 }
			 else
			 {
				xil_printf("[Socket %d] Recv2 failed, closing connection\r\n", sock);
                // 关键修改2：拿锁时增加超时，确保锁能释放
                if (xSemaphoreTake(xClient2Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
                    Clientr2_state = 1;
                    xSemaphoreGive(xClient2Mutex);
                }
				break;
			}
		}
		else
		{
			received_bytes=0;
			received_bytes_total=0;
		}
		vTaskDelay(1); // 降低CPU占用
	}
    // 关键修改3：退出前检查并释放锁，避免死锁
    if (xMutexTaken) {
        xSemaphoreGive(xClient2Mutex);
    }
	xil_printf("Client2与服务器断连，关闭接收任务\r\n");
	vTaskDelete(NULL);
}

void start_application_client2(void)
{

	char ping_msg[] = "PING2";
	int sockClient2 = -1; // 显式初始化 Socket 句柄;
	struct sockaddr_in address;
	memset(&address, 0, sizeof(address));
	address.sin_family = AF_INET;
	address.sin_port = htons(TCP_Client_CONN_PORT2);
	address.sin_addr.s_addr = inet_addr(TCP_SERVER_IP_ADDRESS);

    // 关键修改4：任务启动时初始化锁（防止锁未创建）
    // 初始化Client1互斥锁（防止锁未创建）
    if (xClient2Mutex == NULL) {
    	xClient2Mutex = xSemaphoreCreateMutex();
        if (xClient2Mutex == NULL) {
            xil_printf("Client2: Create mutex failed!\r\n");
            vTaskDelete(NULL); // 初始化失败，退出任务
        }
    }
	while(1)
	{
		FLAG_MD5_check=0;

        if (xSemaphoreTake(xClient2Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
            Clientr2_state = 1;
            xSemaphoreGive(xClient2Mutex);
        }
        else {
        	xil_printf("Client2: Force set state=1 (mutex timeout)\r\n");
        	Clientr2_state = 1;
        }

		if (tcp_clientr2_recv_thread_handle != NULL) {
			vTaskDelete(tcp_clientr2_recv_thread_handle);
			tcp_clientr2_recv_thread_handle = NULL;
		}

        // 关键修改5：创建socket前先检查并释放旧socket资源
        if (sockClient2 >= 0) {
            close(sockClient2);
            sockClient2 = -1;
        }

		if ((sockClient2 = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
			xil_printf("TCP Client_2: Error in creating Socket, errno=%d\r\n", errno);
			vTaskDelay(pdMS_TO_TICKS(1000));
			continue;
		}

		vTaskDelay(pdMS_TO_TICKS(1000));//延时等待1s
		// 连接服务器
		if (connect(sockClient2, (struct sockaddr*)&address, sizeof(address)) < 0) {
			xil_printf("TCP Client_2: Error on tcp_connect, errno=%d\r\n", errno);
			close(sockClient2);
			sockClient2 = -1;
			vTaskDelay(pdMS_TO_TICKS(1000));
			continue;
		}

		tcp_socket_set_keepalive(sockClient2);// 新增：调用TCP保活配置
        // 重置连接状态
        // 关键修改6：重置连接状态时增加超时，避免死锁
        if (xSemaphoreTake(xClient2Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
            Clientr2_state = 0;
            xSemaphoreGive(xClient2Mutex);
        } else {
            xil_printf("Client2: Reset state failed (mutex timeout), close socket\r\n");
            close(sockClient2);
            sockClient2 = -1;
            continue;
        }
		count_client2=0;
	    /* 连接成功后创建网络数据通信任务 */
		tcp_clientr2_recv_thread_handle = sys_thread_new("tcp_clientr2_recv_thread", tcp_clientr2_recv_thread,
				(void *)sockClient2,
				TCP_CLIENT_THREAD_STACKSIZE*2,
				DEFAULT_THREAD_PRIO);
        if (tcp_clientr2_recv_thread_handle == NULL) {
            xil_printf("Client2: Create recv thread failed!\r\n");
            close(sockClient2);
            sockClient2 = -1;
            continue;
        }

		while (1) {
	        if(FLAG_Link_down==1)// 检查链路断开标志
	        {
                if (xSemaphoreTake(xClient2Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
                    Clientr2_state = 1;
                    xSemaphoreGive(xClient2Mutex);
                }
	        	break;
	        }

            if (xSemaphoreTake(xClient2Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
                if (Clientr2_state != 0) {
                    xSemaphoreGive(xClient2Mutex);
                    break;
                }
                xSemaphoreGive(xClient2Mutex);
            }
            else {
            	xil_printf("Client2: Reset state failed......\r\n");
            	Clientr2_state = 1;
            	break;
            }

			if(count_client2>=10)
			{
				count_client2=0;
				xil_printf("Client2_10s心跳检测\r\n");
				if (send(sockClient2, ping_msg, strlen(ping_msg), 0) < 0) {
					if (errno == ECONNRESET || errno == ENOTCONN || errno == EPIPE)// 处理连接断开类错误
					{
                        xil_printf("TCP Client_2: Error on tcp_Disconnect, errno=%d\r\n", errno);
                        if (xSemaphoreTake(xClient2Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
                            Clientr2_state = 1;
                            xSemaphoreGive(xClient2Mutex);
                        }
                        else
                        {
                        	Clientr2_state = 1;
                        }
						break;
					}
				}
			}
	        count_client2++;
	        vTaskDelay(pdMS_TO_TICKS(1000));
	    }
        // 等待线程自我删除（确保线程完全退出）
        vTaskDelay(pdMS_TO_TICKS(500));
        // 关闭Socket（增加容错）
        if (sockClient2 >= 0) {
            close(sockClient2);
            sockClient2 = -1;
        }
        xil_printf("Client2: Closed Socket\r\n");
        // 重置线程句柄（线程已自我删除）
        if (tcp_clientr2_recv_thread_handle != NULL) {
            vTaskDelete(tcp_clientr2_recv_thread_handle);
            tcp_clientr2_recv_thread_handle = NULL;
        }
        xil_printf("Client2: Reconnecting...\r\n");
        // 关键修改8：重连前增加短延时，降低CPU占用，提升调度优先级
        vTaskDelay(pdMS_TO_TICKS(500));
	}
}

void tcp_clientr1_send_thread(void *sock_param)
{
	int sock = (int)sock_param;
	char send_buf[100]={0};
	const char* start_commands=":FMCW:LAN:GATHer:BEGin\r\n";
	BaseType_t xMutexTaken = pdFALSE; // 标记锁是否成功获取
	vTaskDelay(100);//延时等待1s
	query_command_list(sock);//发送查询命令
	vTaskDelay(100);//延时等待1s
	set_up_command_list(sock);//发送设置命令
	while (1) {
        // 检查连接状态（加锁保护）- 补充退出逻辑
	   // 关键修改1：锁操作增加500ms超时，避免死锁
		if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
			xMutexTaken = pdTRUE;
			if (Clientr1_state != 0) {
				xSemaphoreGive(xClient1Mutex);
				xMutexTaken = pdFALSE;
				break; // 触发退出
			}
			xSemaphoreGive(xClient1Mutex);
			xMutexTaken = pdFALSE;
		} else {
			xil_printf("[Client1 Send] Take mutex timeout, retry...\r\n");
			vTaskDelay(1);
			continue;
		}

		if(xQueueReceive(Lwip_Clientr1_Send_Queue,send_buf,10))
		{
			count_client1=0;
			 if(send(sock, send_buf, strlen(send_buf), 0)<0)
			 {
				xil_printf("[Socket %d]Send1 failed, closing connection\r\n", sock);
				// 标记连接断开（加锁带超时）
				if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
					Clientr1_state = 1;
					xSemaphoreGive(xClient1Mutex);
				}
				break;
			 }
			 xil_printf("-> %s", send_buf);
		}
		if(xSemaphoreTake(xFMCW_parameter_changeSemaphore,10))
		{
				query_command_list(sock);//发送查询命令
				vTaskDelay(50);//延时等待1s
				set_up_command_list(sock);//发送设置命令
	            count_client1 = 0;
				//			FLAG_command_send_OK=1;
		}
		if(xSemaphoreTake(xKey_flagSemaphore,10))
		{
			if(FLAG_MD5_check==1)
			{
				count_client1=0;
				received_bytes = 0; // 已接收字节数计数器
				received_bytes_total=0;//接收字节总数
				received_frame_count=0; // 已接收数据帧数
				if(send(sock, MD5_Hash_Result_buf, strlen(MD5_Hash_Result_buf), 0)<0)
				{
					xil_printf("[Socket %d] Send1 failed, closing connection\r\n", sock);
					if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
						Clientr1_state = 1;
						xSemaphoreGive(xClient1Mutex);
					}
					break;
				}
				 xil_printf("-> %s", MD5_Hash_Result_buf);
				 vTaskDelay(50);//延时等待1s
				 if(send(sock, start_commands, strlen(start_commands), 0)<0)
				 {
					xil_printf("[Socket %d] Send1 failed, closing connection\r\n", sock);
					if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
						Clientr1_state = 1;
						xSemaphoreGive(xClient1Mutex);
					}
					break;
				 }
				 xil_printf("-> %s", start_commands);
			}
			else
			{
				 xil_printf("未完成MD5校验");
				 query_command_list(sock);//发送查询命令
				 count_client1=0;
			}
		}
		vTaskDelay(1);
	}
    // 关键修改2：退出前检查并释放锁，避免死锁
    if (xMutexTaken) {
        xSemaphoreGive(xClient1Mutex);
    }
	xil_printf("Client1与服务器断连，删除发送任务\r\n");
	vTaskDelete(NULL);

}

void tcp_clientr1_recv_thread(void *sock_param)
{
	int sock = (int)sock_param;
	char clientr1_recv_buf[100];
	char clientr1_recv_data[100];
	int recv_len;
	BaseType_t xMutexTaken = pdFALSE; // 标记锁是否成功获取

	xil_printf("Client1与服务器重连成功\r\n");
//	xQueueSend(Lwip_Server_Send_count_Queue, "Client1 Reconnection to the server successful!\r\n", 0);
	while (1) {
        // 检查连接状态（加锁保护）
        // 关键修改1：锁操作增加500ms超时，避免死锁
        if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
            xMutexTaken = pdTRUE;
            if (Clientr1_state != 0) {
                xSemaphoreGive(xClient1Mutex); // 立即释放锁
                xMutexTaken = pdFALSE;
                break; // 触发退出
            }
            xSemaphoreGive(xClient1Mutex);
            xMutexTaken = pdFALSE;
        } else {
            xil_printf("[Client1 Recv] Take mutex timeout, retry...\r\n");
            vTaskDelay(1);
            continue; // 不退出，重试拿锁
        }

		recv_len = recv(sock, clientr1_recv_buf, 100, 0);
		if (recv_len > 0)// 正常收到数据
		{
            count_client1 = 0;
			memcpy(clientr1_recv_data, clientr1_recv_buf,  recv_len > 99 ? 99 : recv_len);
			xQueueSend(Lwip_Clientr1_Recv_Queue,clientr1_recv_data,0);
			memset(clientr1_recv_data, 0, sizeof(clientr1_recv_buf));
		}
		else
		{
			xil_printf("[Socket %d] Recv1 failed, closing connection\r\n", sock);
            // 标记连接断开（加锁带超时）
            if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
                Clientr1_state = 1;
                xSemaphoreGive(xClient1Mutex);
            }
			break;
		}
		vTaskDelay(1);// 降低CPU占用
	}
	// 关键修改2：退出前检查并释放锁，避免死锁
    if (xMutexTaken) {
        xSemaphoreGive(xClient1Mutex);
    }
	xil_printf("Client1与服务器断连，删除接收任务\r\n");
	vTaskDelete(NULL);
}

void start_application_client1(void)
{
	char ping_msg[] = ":FMCW:FREQuency:STARt?";
	int sockClient1= -1; // 显式初始化 Socket 句柄
	struct sockaddr_in address;
	memset(&address, 0, sizeof(address));
	address.sin_family = AF_INET;
	address.sin_port = htons(TCP_Client_CONN_PORT1);
	address.sin_addr.s_addr = inet_addr(TCP_SERVER_IP_ADDRESS);

    // 初始化Client1互斥锁（防止锁未创建）
    if (xClient1Mutex == NULL) {
        xClient1Mutex = xSemaphoreCreateMutex();
        if (xClient1Mutex == NULL) {
            xil_printf("Client1: Create mutex failed!\r\n");
            vTaskDelete(NULL); // 初始化失败，退出任务
        }
    }

	while(1)
	{
		FLAG_MD5_check=0;
		FLAG_command_send_OK=0;

        if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
            Clientr1_state = 1; // 触发线程退出
            xSemaphoreGive(xClient1Mutex);
        }
        else
        {
        	xil_printf("Client1: Force set state=1 (mutex timeout)\r\n");
        	Clientr1_state = 1; // 锁超时强制置位
        }

        //强制删除残留线程（关键：避免线程资源泄漏）
        if (tcp_clientr1_recv_thread_handle != NULL) {
            vTaskDelete(tcp_clientr1_recv_thread_handle);
            tcp_clientr1_recv_thread_handle = NULL;
            xil_printf("Client1: Deleted recv thread\r\n");
        }
        if (tcp_clientr1_send_thread_handle != NULL) {
            vTaskDelete(tcp_clientr1_send_thread_handle);
            tcp_clientr1_send_thread_handle = NULL;
            xil_printf("Client1: Deleted send thread\r\n");
        }

        // 安全释放旧 Socket（无论是否大于0，先关闭再置为-1）
        if (sockClient1 >= 0) {
            close(sockClient1);
            sockClient1 = -1;
        }
        //创建新Socket
		if ((sockClient1 = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
			xil_printf("TCP Client_1: Error in creating Socket, errno=%d\r\n", errno);
			vTaskDelay(pdMS_TO_TICKS(1000));
			continue;
		}

		vTaskDelay(pdMS_TO_TICKS(1000));//延时等待1s
		if (connect(sockClient1, (struct sockaddr*)&address, sizeof(address)) < 0) {
			xil_printf("TCP Client_1: Error on tcp_connect, errno=%d\r\n", errno);
			close(sockClient1);
			sockClient1 = -1; // 显式置为-1
			vTaskDelay(pdMS_TO_TICKS(1000));
			continue;
		}
		tcp_socket_set_keepalive(sockClient1);// 新增：调用TCP保活配置
        // 重置连接状态
        // 关键修改2：重置连接状态（加锁带超时）
        if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
            Clientr1_state = 0;
            xSemaphoreGive(xClient1Mutex);
        } else {
            xil_printf("Client1: Reset state failed (mutex timeout), close socket\r\n");
            close(sockClient1);
            sockClient1 = -1;
            continue;
        }
        count_client1 = 0;

		/* 连接成功后创建网络数据通信任务 */
		tcp_clientr1_recv_thread_handle = sys_thread_new("tcp_clientr1_recv_thread", tcp_clientr1_recv_thread,
			(void *)sockClient1,
			TCP_CLIENT_THREAD_STACKSIZE,
			DEFAULT_THREAD_PRIO);
		if (tcp_clientr1_recv_thread_handle == NULL) {
			xil_printf("Client1: Create recv thread failed!\r\n");
			close(sockClient1);
			sockClient1 = -1;
			continue;
		}

		tcp_clientr1_send_thread_handle = sys_thread_new("tcp_clientr1_send_thread", tcp_clientr1_send_thread,
			(void *)sockClient1,
			TCP_CLIENT_THREAD_STACKSIZE,
			DEFAULT_THREAD_PRIO);

        if (tcp_clientr1_send_thread_handle == NULL) {
            xil_printf("Client1: Create send thread failed!\r\n");
            // 清理已创建的接收线程
            if (tcp_clientr1_recv_thread_handle != NULL) {
                vTaskDelete(tcp_clientr1_recv_thread_handle);
                tcp_clientr1_recv_thread_handle = NULL;
            }
            close(sockClient1);
            sockClient1 = -1;
            continue;
        }

		while (1) {
	        if(FLAG_Link_down==1)// 检查链路断开标志
	        {
                if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
                    Clientr1_state = 1; // 触发线程退出
                    xSemaphoreGive(xClient1Mutex);
                }
                else
                {
                	Clientr1_state = 1; // 锁超时强制置位
                }
                xil_printf("Client1: FLAG_Link_down=1, exit inner loop\r\n");
                break;
	        }

            // 连接状态检测（加锁带超时）（锁超时强制置位断连）
            if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
                if (Clientr1_state != 0) {
                    xSemaphoreGive(xClient1Mutex);
                    xil_printf("Client1: Clientr1_state=%d, exit inner loop\r\n", Clientr1_state);
                    break;
                }
                xSemaphoreGive(xClient1Mutex);
            }
            else
            {
            	xil_printf("Client1: Take mutex timeout, force state=1\r\n");
            	Clientr1_state = 1; // 锁超时强制置位
            	break; // 退出内层循环，触发重连
            }

			if(count_client1>=10)
			{
				count_client1=0;
				xil_printf("Client1_10s心跳检测\r\n");
				if (send(sockClient1, ping_msg, strlen(ping_msg), 0) < 0) {
					if (errno == ECONNRESET || errno == ENOTCONN || errno == EPIPE)// 处理连接断开类错误
					{
	                      xil_printf("TCP Client_1: Error on tcp_Disconnect, errno=%d\r\n", errno);
	                        if (xSemaphoreTake(xClient1Mutex, pdMS_TO_TICKS(500)) == pdPASS) {
	                            Clientr1_state = 1; // 触发线程退出
	                            xSemaphoreGive(xClient1Mutex);
	                        }
	                        else
	                        {
	                        	Clientr1_state = 1;
	                        }
						break;
					}
				}
			}
			count_client1++;
			vTaskDelay(pdMS_TO_TICKS(1000));
	    }
        // 等待线程自我删除（确保线程完全退出）
        vTaskDelay(pdMS_TO_TICKS(500));
        // 关键修改5：统一清理资源
        if (sockClient1 >= 0) {
            close(sockClient1);
            sockClient1 = -1;
            xil_printf("Client1: Closed Socket (fd=%d)\r\n", sockClient1);
        }
        xil_printf("Client1: Closed Socket\r\n");
        // 重置线程句柄（线程已自我删除）
        // 内层循环退出后 → 重连前 → 必须执行
        if (tcp_clientr1_recv_thread_handle != NULL) {
            vTaskDelete(tcp_clientr1_recv_thread_handle);
            tcp_clientr1_recv_thread_handle = NULL;
        }
        if (tcp_clientr1_send_thread_handle != NULL) {
            vTaskDelete(tcp_clientr1_send_thread_handle);
            tcp_clientr1_send_thread_handle = NULL;
        }
        xil_printf("Client1: Reconnecting...\r\n");
        // 关键修改6：重连前短延时，降低CPU占用，提升调度优先级
        vTaskDelay(500);
	}
}

void TCP_server_send_perf_thread(void *p)
{
	int sock = *((int *)p);
//	char server_send_char_buf[RESULT_BUF_SIZE]= "\0";
	uint8_t server_send_buf[50]={0};
	while (1)
	{
		vTaskDelay(pdMS_TO_TICKS(1));// 明确延迟1ms
		if(xQueueReceive(Lwip_Server_Send_host_computer_Queue,server_send_buf,portMAX_DELAY))
		{
			if(server_send_buf[0]==0xAA && server_send_buf[1]==0xAA&&server_send_buf[2]==0x55)//数据上传
			{
				if(send(sock, server_send_buf, 14, 0)<0)
				{
					xil_printf("[Socket %d]Send1 failed, closing connection\r\n", sock);
					break;
				}
			}
			else if(server_send_buf[0]==0xAA && server_send_buf[1]==0xCC)//照片上传
			{
//				if(send(sock, server_send_buf, 5, 0)<0)
//				{
//					xil_printf("[Socket %d]Send1 failed, closing connection\r\n", sock);
//					break;
//				}
				if(send(sock, bmp_head, 54, 0)<0)//发送BPM头
				{
					xil_printf("[Socket %d]Send1 failed, closing connection\r\n", sock);
					break;
				}
				if(send(sock, (u8 *)bmp_addr, CAM_HEIGHT*CAM_WIDTH*3, 0)<0)//发送BPM头
				{
					xil_printf("[Socket %d]Send1 failed, closing connection\r\n", sock);
					break;
				}
			}
			else//协议部分
			{
				if(send(sock, server_send_buf, 7, 0)<0)
				{
					xil_printf("[Socket %d]Send1 failed, closing connection\r\n", sock);
					break;
				}
			}
		}
	}
	xil_printf("[Socket %d]Send thread exit\r\n", sock);
	close(sock);
	vTaskDelete(NULL);
}


void Tcp_server_recv_thread(void *p)
{
// char server_recv_buf[50]= "\0";
	uint8_t server_recv_buf[50]= {0};
	int read_bytes;
	int sock = *((int *)p);
	while (1) {
		vTaskDelay(pdMS_TO_TICKS(1));
		/* read a max of RECV_BUF_SIZE bytes from socket */
		if ((read_bytes = lwip_recvfrom(sock, server_recv_buf, 50,0, NULL, NULL)) < 0)
		{
            xil_printf("%s: error reading from socket %d, closing socket\r\n", __FUNCTION__, sock);
            break;
		}
		/* break if client closed connection */
		else if (read_bytes == 0)
		{
			xil_printf("TCP server %d closed connection\n\r", sock);
			break;
		}
		else
		{
			printf("网口接收成功，长度：%d字节\n", read_bytes);
			if(server_recv_buf[0]==0xAA&&server_recv_buf[6]==0xBB)//验证头和尾
			{
				if(server_recv_buf[1]==0xAA)
				{
					xQueueSend(Lwip_Server_Recv_To_Emmc_Queue,server_recv_buf,0);//发送到雷达参数配置
				}
				else if(server_recv_buf[1]==0xBB)
				{
					xQueueSend(Lwip_Server_Recv_To_Algorithm_Queue,server_recv_buf,0);//发送到算法
				}
				else if(server_recv_buf[1]==0xCC)
				{
					xQueueSend(Lwip_Server_Recv_To_OV5640_Queue,server_recv_buf,0);//发送到拍照
				}
			}
			memset(server_recv_buf, 0, sizeof(server_recv_buf));
		}
	}
	/* close connection */
	xil_printf("[Socket %d]Recv thread exit\r\n", sock);
	close(sock);
	vTaskDelete(NULL);
}

void start_application_server(void)
{
	int sockSrc, new_sd;
#if LWIP_IPV6==1
	struct sockaddr_in6 address, remote;
#else
	struct sockaddr_in address, remote;
#endif /* LWIP_IPV6 */
	socklen_t size; // 修正：用socklen_t类型，避免类型不匹配

	/* set up address to connect to */
	memset(&address, 0, sizeof(address));
#if LWIP_IPV6==1
	if ((sock = lwip_socket(AF_INET6, SOCK_STREAM, 0)) < 0) {
		xil_printf("TCP server: Error creating Socket\r\n");
		return;
	}
	address.sin6_family = AF_INET6;
	address.sin6_port = htons(TCP_CONN_PORT);
	address.sin6_len = sizeof(address);
#else
	if ((sockSrc = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0) {
		xil_printf("TCP server: Error creating Socket\r\n");
		return;
	}
	address.sin_family = AF_INET;
	address.sin_port = htons(TCP_Server_CONN_PORT1);
	address.sin_addr.s_addr = INADDR_ANY;
#endif /* LWIP_IPV6 */

	// 2. 设置端口复用（避免重启服务器时端口占用）
	int opt = 1;
	setsockopt(sockSrc, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));

	if (bind(sockSrc, (struct sockaddr *)&address, sizeof (address)) < 0) {
		xil_printf("TCP server: Unable to bind to port %d\r\n",
				TCP_Server_CONN_PORT1);
		close(sockSrc);
		return;
	}

	if (listen(sockSrc, 5) < 0) // 4. 监听连接（队列长度5）
	{
		xil_printf("TCP server: tcp_listen failed\r\n");
		close(sockSrc);
		return;
	}

	size = sizeof(remote);
	// 启动 HTTP 服务器

	while (1) {
		if ((new_sd = accept(sockSrc, (struct sockaddr *)&remote,
						(socklen_t *)&size)) > 0)
		{
			sys_thread_new("Tcp_server_recv_thread",Tcp_server_recv_thread, (void*)&new_sd,
					TCP_CLIENT_THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO);
			sys_thread_new("TCP_server_send_perf thread",TCP_server_send_perf_thread, (void*)&new_sd,
					TCP_CLIENT_THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO);
		}
		vTaskDelay(pdMS_TO_TICKS(1));
	}
}
