#ifndef __SOFTSPI_H_
#define __SOFTSPI_H_

/************************************************** REFERENCE **************************************************/
#include "main.h"

/************************************************** INTERFACE **************************************************/
/* SPI mode configuration */
#define CPOL 0
#define CPHA 0

/* Hardware GPIO initialization selection configuration */
#define 	SPI_CLK_ENABLE 		__HAL_RCC_GPIOD_CLK_ENABLE()
#define 	SPI_GPIO_PORT 		GPIOD
#define 	SPI_PIN_SCK 		GPIO_PIN_14
#define 	SPI_PIN_MOSI 		GPIO_PIN_15
#define 	SPI_PIN_MISO 		GPIO_PIN_13

/* Clock and data line control */
#define		SPI_Delay       	for(int i = 1000;i != 0;i--)
#define		SPI_MISO_READ   	HAL_GPIO_ReadPin(SPI_GPIO_PORT,SPI_PIN_MISO)

#define		SPI_SCK_H			HAL_GPIO_WritePin(SPI_GPIO_PORT,SPI_PIN_SCK,GPIO_PIN_SET);SPI_Delay
#define		SPI_SCK_L			HAL_GPIO_WritePin(SPI_GPIO_PORT,SPI_PIN_SCK,GPIO_PIN_RESET);SPI_Delay
#define		SPI_MOSI_H			HAL_GPIO_WritePin(SPI_GPIO_PORT,SPI_PIN_MOSI,GPIO_PIN_SET);SPI_Delay
#define		SPI_MOSI_L			HAL_GPIO_WritePin(SPI_GPIO_PORT,SPI_PIN_MOSI,GPIO_PIN_RESET);SPI_Delay

/************************************************** API **************************************************/
void Soft_SPI_Init(void);
void Soft_SPI_Transmit(const uint8_t* pData,uint16_t Size);
void Soft_SPI_Receive(uint8_t* pData,uint16_t Size);
void Soft_SPI_TransmitReceive(const uint8_t *pTxData,uint8_t *pRxData,uint16_t Size);

/************************************************** IDLE_CLK **************************************************/
#if (CPOL == 0)
    #define IDLE_CLK  SPI_SCK_L
#elif(CPOL == 1)
    #define IDLE_CLK  SPI_SCK_H
#endif
/************************************************** BUSY_CLK **************************************************/
#if (CPOL == 0)
    #define BUSY_CLK  SPI_SCK_H
#elif(CPOL == 1)
    #define BUSY_CLK  SPI_SCK_L
#endif

/************************************************** FCHG_EDG **************************************************/
#if (CPHA == 0)
    #define FIRSTCHG  	if(SPI_MISO_READ){receive = receive|temp;}
#elif(CPHA == 1)
	#define FIRSTCHG	if(byte & temp)\
						{\
							SPI_MOSI_H;\
						}else{\
							SPI_MOSI_L;\
						}
#endif
/************************************************** SCHG_EDG **************************************************/
#if (CPHA == 0)
    #define SECONDHG	if(byte & temp)\
						{\
    						SPI_MOSI_H;\
						}else{\
							SPI_MOSI_L;\
						}
#elif(CPHA == 1)
    #define SECONDHG  	if(SPI_MISO_READ){receive = receive|temp;}
#endif
/************************************************** END **************************************************/
#endif
