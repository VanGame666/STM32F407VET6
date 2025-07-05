/************************************************** START **************************************************/
#include "Soft_I2C.h"

void Soft_I2C1_Init(void)
{
	CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
	DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;

	GPIO_InitTypeDef GPIO_InitStruct;
	I2C1_CLK_ENABLE;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Pin = I2C1_PIN_SCL|I2C1_PIN_SDA;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(I2C1_GPIO_PORT,&GPIO_InitStruct);
	I2C1_SCL_H;
	I2C1_SDA_H;
}

void Delay_us(uint32_t us)
{
    uint32_t wait = us * (SystemCoreClock / 1000000);
//    printf("wait = %d\r\n",wait);
    uint32_t start = DWT->CYCCNT;
//    printf("start = %d\r\n",start);
    uint32_t target = start + wait;
//    printf("target = %d\r\n",target);
    if(target > start)
    {
    	while (DWT->CYCCNT < target);
    }else{
    	while ((DWT->CYCCNT > start) || (DWT->CYCCNT < target));
    }
}


void I2C1_Start(void)
{
	I2C1_SDA_H;
	I2C1_SCL_H;
	I2C1_SDA_L;
	I2C1_SDA_H;
}

void I2C1_Stop(void)
{
	I2C1_SCL_L;
	I2C1_SDA_L;
	I2C1_SCL_H;
	I2C1_SDA_H;
}

uint8_t I2C1_Wait_ACK(void)
{
	I2C1_SCL_L;
	I2C1_SDA_H;
	I2C1_SCL_H;

	for(int i = 0;I2C1_SDA_READ;i++)
	{
		if(i > 65536){I2C1_Stop();return 0;}
	}
	I2C1_SCL_L;
	return 1;
}

void I2C1_SEND_ACK(void)
{
	I2C1_SCL_L;
	I2C1_SDA_L;
	I2C1_SCL_H;
}

void I2C1_SEND_NACK(void)
{
	I2C1_SCL_L;
	I2C1_SDA_H;
	I2C1_SCL_H;
}

void I2C1_WriteByte(uint8_t byte)
{
	uint8_t temp;

	for(temp = 0x80; temp != 0; temp=temp>>1)
	{
		I2C1_SCL_L;
		if(byte & temp)
		{
			I2C1_SDA_H;
		}else{
			I2C1_SDA_L;
		}
		I2C1_SCL_H;
	}
	I2C1_Wait_ACK();
}

uint8_t I2C1_ReadByte(uint8_t ack)
{
	uint8_t temp,receive = 0x00;

	for(temp = 0x80;temp != 0; temp=temp>>1)
	{
		I2C1_SCL_L;
		I2C1_SDA_H;
		I2C1_SCL_H;
		if(I2C1_SDA_READ){receive = receive|temp;}
	}

	if (ack) I2C1_SEND_ACK();
	else I2C1_SEND_NACK();

	return receive;
}

void Soft_I2C1_Mem_Write(uint8_t DevAddress,uint8_t MemAddress,const uint8_t* pData,uint16_t Size)
{
	I2C1_Start();
	I2C1_WriteByte((DevAddress << 1) | 0x00);
	I2C1_WriteByte(MemAddress);

	for(uint16_t i = 0; i < Size; i++)
	{
		I2C1_WriteByte(pData[i]);
	}
	I2C1_Stop();
}

void Soft_I2C1_Mem_Read(uint8_t DevAddress,uint8_t MemAddress,uint8_t* pData,uint16_t Size)
{
	I2C1_Start();
	I2C1_WriteByte((DevAddress << 1) | 0x00);
	I2C1_WriteByte(MemAddress);
	I2C1_Stop();
	I2C1_Start();
	I2C1_WriteByte((DevAddress << 1) | 0x01);

	for(uint16_t i = 0; i < Size; i++)
	{
		if(i == Size - 1)
		{
			pData[i] = I2C1_ReadByte(0);
		}else{
			pData[i] = I2C1_ReadByte(1);
		}
	}
	I2C1_Stop();
}

void Soft_I2C1_Write(uint8_t DevAddress,const uint8_t* pData,uint16_t Size)
{
	I2C1_Start();
	I2C1_WriteByte((DevAddress << 1) | 0x00);

	for(uint16_t i = 0; i < Size; i++)
	{
		I2C1_WriteByte(pData[i]);
	}
	I2C1_Stop();
}

void Soft_I2C1_Read(uint8_t DevAddress,uint8_t* pData,uint16_t Size)
{
	I2C1_Start();
	I2C1_WriteByte((DevAddress << 1) | 0x00);

	I2C1_Start();
	I2C1_WriteByte((DevAddress << 1) | 0x01);

	for(uint16_t i = 0; i < Size; i++)
	{
		if(i == Size - 1)
		{
			pData[i] = I2C1_ReadByte(0);
		}else{
			pData[i] = I2C1_ReadByte(1);
		}
	}
	I2C1_Stop();
}

/************************************************** END **************************************************/
