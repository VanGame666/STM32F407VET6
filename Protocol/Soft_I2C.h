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
#define		I2C1_Delay       	Delay_us(1)
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




















/************************************************** INTERFACE **************************************************/
/* Hardware GPIO initialization selection configuration */
#define 	I2C2_CLK_ENABLE 	__HAL_RCC_GPIOA_CLK_ENABLE()

#define 	I2C2_GPIO_PORT 		GPIOA
#define 	I2C2_PIN_SCL 		GPIO_PIN_6
#define 	I2C2_PIN_SDA		GPIO_PIN_7

/* Clock and data line control */
#define		I2C2_Delay       	for(volatile int i = 1000; i != 0; i--)
#define		I2C2_SDA_READ   	HAL_GPIO_ReadPin(I2C2_GPIO_PORT,I2C2_PIN_SDA)

#define		I2C2_SCL_H			HAL_GPIO_WritePin(I2C2_GPIO_PORT,I2C2_PIN_SCL,GPIO_PIN_SET);I2C2_Delay
#define		I2C2_SCL_L			HAL_GPIO_WritePin(I2C2_GPIO_PORT,I2C2_PIN_SCL,GPIO_PIN_RESET);I2C2_Delay
#define		I2C2_SDA_H			HAL_GPIO_WritePin(I2C2_GPIO_PORT,I2C2_PIN_SDA,GPIO_PIN_SET);I2C2_Delay
#define		I2C2_SDA_L			HAL_GPIO_WritePin(I2C2_GPIO_PORT,I2C2_PIN_SDA,GPIO_PIN_RESET);I2C2_Delay

/************************************************** API **************************************************/
void Soft_I2C2_Init(void);
void Soft_I2C2_Mem_Write(uint8_t DevAddress,uint8_t MemAddress,const uint8_t* pData,uint16_t Size);
void Soft_I2C2_Mem_Read(uint8_t DevAddress,uint8_t MemAddress,uint8_t* pData,uint16_t Size);
void Soft_I2C2_Write(uint8_t DevAddress,const uint8_t* pData,uint16_t Size);
void Soft_I2C2_Read(uint8_t DevAddress,uint8_t* pData,uint16_t Size);

/************************************************** END **************************************************/
#endif
