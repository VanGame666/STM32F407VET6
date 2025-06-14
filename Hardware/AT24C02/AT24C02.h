#ifndef __AT24C02_H_
#define __AT24C02_H_

/************************************************** REFERENCE **************************************************/
#include "Soft_Check.h"
#include "Soft_I2C.h"

/************************************************** CONFIG **************************************************/
#define AT24CXX_BUFF_SIZE  (128)

#define AT24CXX_ADDR 0x50//101 0000
#define AT24CXX_Write_ADDR 0xA0
#define AT24CXX_Read_ADDR  0xA1

#define FaultHeader_START 0
#define FaultRecord_START 16
#define FaultRecord_END 128

/************************************************** PARAMETER **************************************************/
 typedef struct{		//12bytes
  	uint8_t hour;
  	uint8_t min;
  	uint8_t year;
  	uint8_t month;
  	uint8_t day;
  }Time_TypeDef;

 typedef struct{		//12bytes
 	uint16_t err_time;
 	uint16_t err_data;
 	uint16_t fault_count;
 	uint16_t read_addr;
 	uint16_t write_addr;
 	uint16_t CRCheck;
 }FaultHeader_TypeDef;

 typedef struct __attribute__((packed)){  //32bytes
 	uint16_t freq;
 	uint16_t adc0_val;
 	uint16_t adc1_val;
 	uint16_t adc2_val;
 	uint16_t adc3_val;
 	uint16_t adc4_val;
 	uint16_t adc5_val;
 	uint16_t adc0_threshold_val;
 	uint16_t adc1_threshold_val;
 	uint16_t adc2_threshold_val;
 	uint16_t adc3_threshold_val;
 	uint16_t adc4_threshold_val;
 	uint16_t adc5_threshold_val;
 	uint8_t adc0_err_code;
 	uint8_t adc1_err_code;
 	uint8_t adc2_err_code;
 	uint8_t adc3_err_code;
 	uint8_t adc4_err_code;
 	uint8_t adc5_err_code;
 }FaultRecord_TypeDef;

/************************************************** API **************************************************/
extern uint8_t AT24CXX_ReadBuff[];
extern uint8_t AT24CXX_WriteBuff[];
extern FaultHeader_TypeDef FaultHeader;
extern FaultRecord_TypeDef FaultRecord;

uint16_t time_code(uint8_t hour,uint8_t min);
uint16_t data_code(uint8_t year,uint8_t month,uint8_t day);
void time_decode(void);
void data_decode(void);
void write_fault_header(FaultHeader_TypeDef* header);

/************************************************** END **************************************************/
#endif
