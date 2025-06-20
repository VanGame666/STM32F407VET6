/************************************************** START **************************************************/
#include "Soft_I2C.h"

void Soft_I2C1_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;

	I2C1_CLK_ENABLE;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Pin = I2C1_PIN_SCL|I2C1_PIN_SDA;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(I2C1_GPIO_PORT,&GPIO_InitStruct);
	I2C1_SCL_H;
	I2C1_SDA_H;

	CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
	DWT->CYCCNT = 0;
	DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
}

void Delay_us(uint32_t us)
{
    uint32_t cycles = us * (SystemCoreClock / 1000000);
	DWT->CYCCNT = 0;
    while (DWT->CYCCNT < cycles);
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

/************************************************** I2C2 **************************************************/
void Soft_I2C2_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;

	I2C2_CLK_ENABLE;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Pin = I2C2_PIN_SCL|I2C2_PIN_SDA;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(I2C2_GPIO_PORT,&GPIO_InitStruct);
}

void I2C2_Start(void)
{
	I2C2_SDA_H;
	I2C2_SCL_H;
	I2C2_SDA_L;
	I2C2_SCL_L;
}

void I2C2_Stop(void)
{
	I2C2_SCL_L;
	I2C2_SDA_L;
	I2C2_SCL_H;
	I2C2_SDA_H;
}

uint8_t I2C2_Wait_ACK(void)
{
	I2C2_SCL_L;
	I2C2_SDA_H;
	I2C2_SCL_H;

	if(I2C2_SDA_READ)
	{
		I2C2_Stop();
		return 1;
	}

	I2C2_SCL_L;
	return 0;
}

void I2C2_SEND_ACK(void)
{
	I2C2_SCL_L;
	I2C2_SDA_L;
	I2C2_SCL_H;
	I2C2_SCL_L;
}

void I2C2_SEND_NACK(void)
{
	I2C2_SCL_L;
	I2C2_SDA_H;
	I2C2_SCL_H;
	I2C2_SCL_L;
}

void I2C2_WriteByte(uint8_t byte)
{
	uint8_t temp;

	for(temp = 0x80; temp != 0; temp=temp>>1)
	{
		I2C2_SCL_L;
		if(byte & temp)
		{
			I2C2_SDA_H;
		}else{
			I2C2_SDA_L;
		}
		I2C2_SCL_H;
	}
	I2C2_SCL_L;
	I2C2_Wait_ACK();
}

uint8_t I2C2_ReadByte(uint8_t ack)
{
	uint8_t temp,receive = 0x00;

	for(temp = 0x80;temp != 0; temp=temp>>1)
	{
		I2C2_SCL_L;
		I2C2_SCL_H;
		if(I2C2_SDA_READ){receive = receive|temp;}
	}

	if (ack) I2C2_SEND_NACK();
	else I2C2_SEND_ACK();

	return receive;
}

void Soft_I2C2_Mem_Write(uint8_t DevAddress,uint8_t MemAddress,const uint8_t* pData,uint16_t Size)
{
	I2C2_Start();
	I2C2_WriteByte((DevAddress << 1) | 0x00);
	I2C2_WriteByte(MemAddress);

	for(uint16_t i = 0; i < Size; i++)
	{
		I2C2_WriteByte(pData[i]);
	}
	I2C2_Stop();
}

void Soft_I2C2_Mem_Read(uint8_t DevAddress,uint8_t MemAddress,uint8_t* pData,uint16_t Size)
{
	I2C2_Start();
	I2C2_WriteByte((DevAddress << 1) | 0x00);
	I2C2_WriteByte(MemAddress);
	I2C2_Stop();

	I2C2_Start();
	I2C2_WriteByte((DevAddress << 1) | 0x01);

	for(uint16_t i = 0; i < Size; i++)
	{
		if(i == Size - 1)
		{
			pData[i] = I2C2_ReadByte(1);
		}else{
			pData[i] = I2C2_ReadByte(0);
		}
	}
	I2C2_Stop();
}

void Soft_I2C2_Write(uint8_t DevAddress,const uint8_t* pData,uint16_t Size)
{
	I2C2_Start();
	I2C2_WriteByte((DevAddress << 1) | 0x00);

	for(uint16_t i = 0; i < Size; i++)
	{
		I2C2_WriteByte(pData[i]);
	}
	I2C2_Stop();
}

void Soft_I2C2_Read(uint8_t DevAddress,uint8_t* pData,uint16_t Size)
{
	I2C2_Start();
	I2C2_WriteByte((DevAddress << 1) | 0x00);
	I2C2_Stop();

	I2C2_Start();
	I2C2_WriteByte((DevAddress << 1) | 0x01);

	for(uint16_t i = 0; i < Size; i++)
	{
		if(i == Size - 1)
		{
			pData[i] = I2C2_ReadByte(1);
		}else{
			pData[i] = I2C2_ReadByte(0);
		}
	}
	I2C2_Stop();
}

/************************************************** END **************************************************/
