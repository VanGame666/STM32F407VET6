#ifndef __ONEWIRE_H_
#define __ONEWIRE_H_

/************************************************** REFERENCE **************************************************/
#include "main.h"

/************************************************** INTERFACE **************************************************/
#define ONE_WIRE_CLK_ENABLE __HAL_RCC_GPIOA_CLK_ENABLE()
#define ONE_WIRE_PIN     	GPIO_PIN_0
#define ONE_WIRE_PORT    	GPIOA

#define ONE_WIRE_LOW     	HAL_GPIO_WritePin(ONE_WIRE_PORT, ONE_WIRE_PIN, GPIO_PIN_RESET)
#define ONE_WIRE_HIGH   	HAL_GPIO_WritePin(ONE_WIRE_PORT, ONE_WIRE_PIN, GPIO_PIN_SET)
#define ONE_WIRE_READ  		HAL_GPIO_ReadPin(ONE_WIRE_PORT, ONE_WIRE_PIN)

/************************************************** API **************************************************/
void OneWire_Init(void);
uint8_t OneWire_Reset();
void OneWire_WriteByte(uint8_t byte);
uint8_t OneWire_ReadByte();
void OneWire_Transmit(const uint8_t* pData,uint16_t Size);
void OneWire_Receive(uint8_t* pData,uint16_t Size);

/************************************************** END **************************************************/
#endif
