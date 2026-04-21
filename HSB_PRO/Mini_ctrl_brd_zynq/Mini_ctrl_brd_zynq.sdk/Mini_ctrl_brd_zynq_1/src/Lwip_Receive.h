#ifndef SRC_LWIP_RECEIVE_H_
#define SRC_LWIP_RECEIVE_H_

#include "main.h"

extern uint8_t Lwip_Receive_buf[20];
extern uint8_t Lwip_Send_buf[20];

void Lwip_Receive_function();

#endif /* SRC_LWIP_RECEIVE_H_ */
