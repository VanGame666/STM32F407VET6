/************************************************** START **************************************************/
#include "Soft_SPI.h"

void Soft_SPI_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;

	SPI_CLK_ENABLE;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Pin = SPI_PIN_SCK|SPI_PIN_MOSI;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(SPI_GPIO_PORT,&GPIO_InitStruct);
	
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Pin = SPI_PIN_MISO;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(SPI_GPIO_PORT,&GPIO_InitStruct);
}

void SPI_WriteByte(uint8_t byte)
{
    uint8_t temp;

    for(temp = 0x80; temp != 0; temp=temp>>1)
    {
        SPI_SCK_L;
        if(byte & temp)
		{        
            SPI_MOSI_H;
        }else{
            SPI_MOSI_L;
        }
        SPI_SCK_H;
        SPI_SCK_L;
    }
}

uint8_t SPI_ReadByte(void)
{
	uint8_t temp,receive = 0x00;
	
	for(temp = 0x80;temp != 0; temp=temp>>1)
	{
		SPI_SCK_L;
		SPI_SCK_H;
		if(SPI_MISO_READ){receive = receive|temp;}
		SPI_SCK_L;
	}
	return receive;
}

uint8_t SPI_WriteRead_Byte(uint8_t byte)
{
    uint8_t temp,receive = 0x00;

    for(temp = 0x80; temp != 0; temp=temp>>1)
    {
        SPI_SCK_L;
        if(byte & temp)
		{
            SPI_MOSI_H;
        }else{
            SPI_MOSI_L;
        }
        SPI_SCK_H;
        if(SPI_MISO_READ){receive = receive|temp;}
        SPI_SCK_L;
    }
	return receive;
}

void Soft_SPI_Transmit(const uint8_t* pData,uint16_t Size)
{
	for(int i = 0; i < Size; i++)
	{
		SPI_WriteByte(pData[i]);
	}
}

void Soft_SPI_Receive(uint8_t* pData,uint16_t Size)
{
	for(int i = 0; i < Size; i++)
	{
		pData[i] = SPI_ReadByte();
	}
}

void Soft_SPI_TransmitReceive(const uint8_t *pTxData,uint8_t *pRxData,uint16_t Size)
{
	for(int i = 0; i < Size; i++)
	{
		pRxData[i] = SPI_WriteRead_Byte(pTxData[i]);
	}
}

/************************************************** END **************************************************/




//uint8_t SPI_WriteRead_Byte(uint8_t byte)
//{
//    uint8_t temp,receive = 0x00;
//
//    for(temp = 0x80; temp != 0; temp=temp>>1)
//    {
//    	IDLE_CLK;
//    	SECONDHG;
//      BUSY_CLK;
//      FIRSTCHG;
//      IDLE_CLK;
//    }
//	return receive;
//}
