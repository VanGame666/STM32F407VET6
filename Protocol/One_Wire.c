/************************************************** START **************************************************/
#include "One_Wire.h"

void Delay(uint32_t us)
{
    uint32_t ticks = us * (SystemCoreClock / 1000000) / 5;
    while(ticks--);
}

void OneWire_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;

	ONE_WIRE_CLK_ENABLE;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Pin = ONE_WIRE_PIN;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(ONE_WIRE_PORT,&GPIO_InitStruct);
}

// 单总线复位脉冲（480-960μs低电平）
uint8_t OneWire_Reset()
{
    ONE_WIRE_LOW;
    Delay(480);       // 保持低电平480μs
    ONE_WIRE_HIGH;      // 释放总线
    Delay(70);        // 等待15-60μs后检测存在脉冲
    if (!ONE_WIRE_READ)
    {   // 检测到低电平（存在脉冲）
        Delay(410);   // 总复位时间至少480+70+410=960μs
        return 1;        // 复位成功，有设备响应
    }
    return 0;            // 无设备响应
}



void OneWire_WriteBit(uint8_t bit)
{
	ONE_WIRE_LOW;
    Delay(bit ? 1 : 60);   // 写1时保持1μs，写0时保持60μs
    ONE_WIRE_HIGH;           // 释放总线
    Delay(bit ? 59 : 1);   // 补足60μs时隙
}

// 从总线读取1位
uint8_t OneWire_ReadBit()
{
    uint8_t bit = 0;
    ONE_WIRE_LOW;
    Delay(1);              // 拉低1μs启动读时隙
    ONE_WIRE_HIGH;           // 释放总线
    Delay(14);             // 等待14μs后采样
    bit = ONE_WIRE_READ;         // 读取电平（0或1）
    Delay(45);             // 补足60μs时隙
    return bit;
}


void OneWire_WriteByte(uint8_t byte)
{
    for (uint8_t i = 0; i < 8; i++)
    {
        OneWire_WriteBit(byte & 0x01);
        byte >>= 1;
    }
}

uint8_t OneWire_ReadByte()
{
    uint8_t byte = 0;
    for (uint8_t i = 0; i < 8; i++)
    {
        byte |= (OneWire_ReadBit() << i);
    }
    return byte;
}

void OneWire_Transmit(const uint8_t* pData,uint16_t Size)
{
	for(int i = 0; i < Size; i++)
	{
		OneWire_WriteByte(pData[i]);
	}
}

void OneWire_Receive(uint8_t* pData,uint16_t Size)
{
	for(int i = 0; i < Size; i++)
	{
		pData[i] = OneWire_ReadByte();
	}
}
/************************************************** END **************************************************/
