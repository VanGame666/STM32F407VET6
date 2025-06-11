#ifndef __MYCT_IIC_H
#define __MYCT_IIC_H
#include "main.h"
#include "touch.h"

//////////////////////////////////////////////////////////////////////////////////	 
//WKS STM32F407VET6���İ�
//���ݴ�����-IIC ��������
//�汾��V1.0
////////////////////////////////////////////////////////////////////////////////// 	

//IO��������
#define CT_SDA_IN()  {GPIOB->MODER&=~(3<<(2*12));GPIOB->MODER|=0<<2*12;}	//PB12����ģʽ
#define CT_SDA_OUT() {GPIOB->MODER&=~(3<<(2*12));GPIOB->MODER|=1<<2*12;} 	//PB12���ģʽ
//IO��������	 
#define CT_IIC_SCL    PBout(15) 	//SCL
#define CT_IIC_SDA    PBout(12)   //SDA	 
#define CT_READ_SDA   PBin(12)    //����SDA 
 

//IIC���в�������
void CT_IIC_Init(void);                	//��ʼ��IIC��IO��				 
void CT_IIC_Start(void);				//����IIC��ʼ�ź�
void CT_IIC_Stop(void);	  				//����IICֹͣ�ź�
void CT_IIC_Send_Byte(u8 txd);			//IIC����һ���ֽ�
u8 CT_IIC_Read_Byte(unsigned char ack);	//IIC��ȡһ���ֽ�
u8 CT_IIC_Wait_Ack(void); 				//IIC�ȴ�ACK�ź�
void CT_IIC_Ack(void);					//IIC����ACK�ź�
void CT_IIC_NAck(void);					//IIC������ACK�ź�
u8 GT1151_WR_Reg(u16 reg,u8 *buf,u8 len);
void GT1151_RD_Reg(u16 reg,u8 *buf,u8 len); 
#endif







