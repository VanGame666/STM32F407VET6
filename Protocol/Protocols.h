#ifndef __PROTOCOLS_H_
#define __PROTOCOLS_H_

/************************************************** Import **************************************************/
#include "Soft_Check.h"
#include "Soft_I2C.h"
#include "Soft_SPI.h"
#include "main.h"
#include "usart.h"


/************************************************** Frame sending configuration **************************************************/
/* Byte sending order */
typedef enum{
	LITTLE,
	BIG
}Endian_e;

/* Send link selection */
typedef enum{
	UART1,
	UART2,
	SOFTSPI,
	SOFTIIC,
	CDC
}SendSlect_e;

/* Check method selection */
typedef enum{
	NOCHECK = 0,
	CHECKSUM8 = 1,
	MODBUSCRC16 = 2,
	XMODEMCRC16 = 2,
	ETHCRC32 = 4,
}CheckSlect_e;

/* Whether to add a header to verify */
typedef enum{
	NO,
	YES
}HeadVerify_e;

/************************************************** API **************************************************/
#define FRAME_CHECK(frame_config,frame_head,frame_tail)\
		frame_check(frame_config,frame_head,frame_tail,sizeof(frame_head),sizeof(frame_tail))

#define FRAME_SEND(frame_config,frame_head,frame_tail)\
		frame_send(frame_config,frame_head,frame_tail,sizeof(frame_head),sizeof(frame_tail))

/* Frame sending configuration */
typedef struct{
	uint8_t* DataBuffer;
	uint8_t DataSize;
	uint8_t* RxBuffer;
	uint8_t RxSize;
	Endian_e Endian;
	HeadVerify_e HeadVerify;
	CheckSlect_e CheckSlect;
	SendSlect_e SendSlect;
}FrameConfig_s;
/************************************************** END **************************************************/
#endif
