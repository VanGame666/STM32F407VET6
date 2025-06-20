#ifndef __SOFTI2C_H_
#define __SOFTI2C_H_

/************************************************** REFERENCE **************************************************/
#include "main.h"

/************************************************** PORT **************************************************/
/* Hardware GPIO initialization selection configuration */
#define 	I2C1_CLK_ENABLE 	__HAL_RCC_GPIOB_CLK_ENABLE()
#define 	I2C1_GPIO_PORT 		GPIOB
#define 	I2C1_PIN_SCL 		GPIO_PIN_8
#define 	I2C1_PIN_SDA		GPIO_PIN_9

/* Clock and data line control */
#define		I2C1_Delay       	Delay_us(10)
#define		I2C1_SDA_READ   	PBin(9)

#define		I2C1_SCL_H			PBout(8) = 1;I2C1_Delay
#define		I2C1_SCL_L			PBout(8) = 0;I2C1_Delay
#define		I2C1_SDA_H			PBout(9) = 1;I2C1_Delay
#define		I2C1_SDA_L			PBout(9) = 0;I2C1_Delay

/************************************************** API **************************************************/
void Soft_I2C1_Init(void);
void Soft_I2C1_Mem_Write(uint8_t DevAddress,uint8_t MemAddress,const uint8_t* pData,uint16_t Size);
void Soft_I2C1_Mem_Read(uint8_t DevAddress,uint8_t MemAddress,uint8_t* pData,uint16_t Size);
void Soft_I2C1_Write(uint8_t DevAddress,const uint8_t* pData,uint16_t Size);
void Soft_I2C1_Read(uint8_t DevAddress,uint8_t* pData,uint16_t Size);

/************************************************** END **************************************************/
#endif
