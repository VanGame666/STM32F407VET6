#ifndef __SOFTCHECK_H_
#define __SOFTCHECK_H_

/************************************************** REFERENCE **************************************************/
#include <stdint.h>

/************************************************** API **************************************************/
uint32_t 	BitReverse32(uint32_t data);
uint16_t 	BitReverse16(uint16_t data);
uint32_t 	CharReverse32 (uint32_t data);
uint16_t 	CharReverse16 (uint16_t data);
uint32_t 	EthCRC32(uint8_t* data, uint16_t len);
uint16_t 	ModBusCRC16(uint8_t *data, uint16_t len);
uint8_t		CheckSum8(uint8_t *data, uint16_t len);
uint16_t    XmodeCRC16(uint8_t *data,uint16_t len);
/************************************************** END **************************************************/
#endif
