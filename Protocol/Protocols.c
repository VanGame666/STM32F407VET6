/************************************************** START **************************************************/
#include "Protocols.h"

/* General communication protocol transmission*/
void frame_send(FrameConfig_s frame_config,
				uint8_t* const frame_head,
				uint8_t* const frame_tail,
				uint8_t head_size,
				uint8_t tail_size)
{
	uint32_t 	frame_check;
	uint8_t 	frame_size = head_size + frame_config.DataSize + frame_config.CheckSlect + tail_size;
	uint8_t 	frame[frame_size];
	uint8_t 	i,j = 0;

	if(frame_config.DataSize == 0){return;}
	/* Add a frame header */
	for(i = 0;i < head_size;i++,j++){frame[j] = frame_head[i];}
	/* Fill in send data */
	for(i = 0;i < frame_config.DataSize;i++,j++){frame[j] = frame_config.DataBuffer[i];}
	/* Add verification code */
	switch (frame_config.CheckSlect)
	{
		case ETHCRC32:
			if(frame_config.HeadVerify == YES){frame_check = EthCRC32(frame,head_size + frame_config.DataSize);}
			else{frame_check = EthCRC32(frame_config.DataBuffer,frame_config.DataSize);}
			if(frame_config.Endian = BIG){frame_check = CharReverse32((uint16_t)frame_check);}
			memcpy(&frame[j],(uint8_t*)&frame_check,frame_config.CheckSlect);
			j = j + frame_config.CheckSlect;
			break;

		case XMODEMCRC16:
			if(frame_config.HeadVerify == YES){frame_check = CRC16XMODEM(frame,head_size + frame_config.DataSize);}
			else {frame_check = CRC16XMODEM(frame_config.DataBuffer,frame_config.DataSize);}
			if(frame_config.Endian = BIG){frame_check = CharReverse16((uint16_t)frame_check);}
			memcpy(&frame[j],(uint8_t*)&frame_check,frame_config.CheckSlect);
			j = j + frame_config.CheckSlect;
			break;

		case CHECKSUM8:
			if(frame_config.HeadVerify == YES){frame_check = CheckSum8(frame,head_size + frame_config.DataSize);}
			else{frame_check = CheckSum8(frame_config.DataBuffer,frame_config.DataSize);}
			memcpy(&frame[j],(uint8_t*)&frame_check,frame_config.CheckSlect);
			j = j + frame_config.CheckSlect;
			break;

		default:break;
	}

	/* Add end of frame */
	for(i = 0;i < tail_size;i++,j++){frame[j] = frame_tail[i];}

	/* Select the send link layer channel */
	switch (frame_config.SendSlect)
	{
		case UART1:		HAL_UART_Transmit(&huart1,&frame,frame_size,0xFF);break;

		case CDC:		break;
//		case SOFTSPI: 	Soft_SPI_Transmit(&frame,frame_size);break;
//		case SOFTIIC: 	Soft_I2C1_Mem_Write(frame_config.DevAddress,frame_config.MemAddress,&frame,frame_size);break;
		default:break;
	}
}

/* Check whether the frame head and end of the received data match */
int frame_check(FrameConfig_s frame_config,
				uint8_t* const frame_head,
				uint8_t* const frame_tail,
				uint8_t head_size,
				uint8_t tail_size)
{
	uint32_t frame_verify;
	for(int i = 0;i < head_size;i++)
	{
		if(frame_config.RxBuffer[i] != frame_head[i]){return 0;}
	}

	for(int i = 0;i < tail_size;i++)
	{
		if(frame_config.RxBuffer[frame_config.RxSize-tail_size+i] != frame_tail[i]){return 0;}
	}

	switch (frame_config.CheckSlect)
	{
		case XMODEMCRC16:
			if(frame_config.HeadVerify == YES){frame_verify = CRC16XMODEM(frame_config.RxBuffer,frame_config.RxSize-tail_size-frame_config.CheckSlect);}
			else {frame_verify = CRC16XMODEM(&frame_config.RxBuffer[head_size],frame_config.RxSize-tail_size-head_size-frame_config.CheckSlect);}
			if(frame_config.Endian = BIG){frame_verify = CharReverse16((uint16_t)frame_verify);}
			if(frame_verify != *(uint16_t*)&frame_config.RxBuffer[frame_config.RxSize-frame_config.CheckSlect-tail_size]){return 0;}
			break;

		case CHECKSUM8:
			if(frame_config.HeadVerify == YES){frame_verify = CheckSum8(frame_config.RxBuffer,frame_config.RxSize-tail_size-frame_config.CheckSlect);}
			else{frame_verify = CheckSum8(frame_config.RxBuffer[head_size],frame_config.RxSize-tail_size-head_size-frame_config.CheckSlect);}
			if(frame_verify != *(uint8_t*)&frame_config.RxBuffer[frame_config.RxSize-frame_config.CheckSlect-tail_size]){return 0;}
			break;
		default:break;
	}
	return 1;
}

/************************************************** END **************************************************/
