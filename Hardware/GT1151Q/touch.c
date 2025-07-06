#include "../GT1151Q/touch.h"

//////////////////////////////////////////////////////////////////////////////////	 
//WKS STM32F407VET6���İ�
//���ݴ�����-GT1151 ��������	   
//�汾��V1.0								  
////////////////////////////////////////////////////////////////////////////////// 

_m_tp_dev tp_dev=
{
	GT1151_Init,
	0,
	0,
	0,
	0, 
	0,
	0,
	0,
	0,
	0,	  	 		
	0,
	0,	  	 		
};			
  



//��ʼ��GT1151������
//����ֵ:0,��ʼ���ɹ�;1,��ʼ��ʧ�� 
u8 GT1151_Init(void)
{	
	  u8 temp[5]; 
		GPIO_InitTypeDef GPIO_Initure;
	tp_dev.touchtype=0X00;
	tp_dev.scan=0;	//ɨ�躯��ָ��GT1151������ɨ��
	tp_dev.touchtype|=0X80;			//������ 
	tp_dev.touchtype|=lcddev.dir&0X01;//������������ 
	  __HAL_RCC_GPIOB_CLK_ENABLE();			//����GPIOBʱ��
	
	

	
	
    //PB13
    GPIO_Initure.Pin=GPIO_PIN_13;           	//PB13����Ϊ��������
    GPIO_Initure.Mode=GPIO_MODE_INPUT;      //����
    GPIO_Initure.Pull=GPIO_PULLUP;          //����
    GPIO_Initure.Speed=GPIO_SPEED_HIGH;     //����
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);     //��ʼ��
            
    //PB14
    GPIO_Initure.Pin=GPIO_PIN_14;          	//PC14����Ϊ�������
    GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;  //�������
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);     //��ʼ��
		CT_IIC_Init();      	//��ʼ����������I2C����  
		GT_RST=0;				//��λ
		HAL_Delay(10);
		GT_RST=1;				//�ͷŸ�λ		    
		HAL_Delay(10);
	
	  GPIO_Initure.Pin=GPIO_PIN_1;           	//PB1����Ϊ��������
    GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;  //���ģʽ
    GPIO_Initure.Pull=GPIO_NOPULL;          //��������
    GPIO_Initure.Speed=GPIO_SPEED_HIGH;     //����
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);     //��ʼ��
		
    HAL_Delay(100);
	GT1151_RD_Reg(GT_PID_REG,temp,4);//��ȡ��ƷID
	temp[4]=0;
	printf("CTP ID:%s\r\n",temp);	//��ӡID
		if(strcmp((char*)temp,"1158")==0)//ID==1151
	{
		temp[0]=0X02;			
		GT1151_WR_Reg(GT_CTRL_REG,temp,1);//��λGT1151
		GT1151_RD_Reg(GT_CFGS_REG,temp,1);//��ȡGT_CFGS_REG�Ĵ���

		HAL_Delay(10);
		temp[0]=0X00;	 
		GT1151_WR_Reg(GT_CTRL_REG,temp,1);//������λ   
		return 0;
	} 
	return 1;
}

const u16 GT1151_TPX_TBL[5]={GT_TP1_REG,GT_TP2_REG,GT_TP3_REG,GT_TP4_REG,GT_TP5_REG};


u8 GT1151_IsPress()
{
	u8  regValue;

	GT1151_RD_Reg(GT_GSTID_REG,&regValue, 1);
	regValue = regValue & 0x0F;
	tp_dev.num = regValue;
	regValue = 0;
	GT1151_WR_Reg(GT_GSTID_REG,&regValue,1);
	if(tp_dev.num != 0){return 1;}
	else{return 0;}
}


void GT1151_GetPoint()
{
	u8  buf[4],i;
	
	for(i=0;i<1;i++)
	{
		if(tp_dev.num != 0)	//������Ч?
		{
			GT1151_RD_Reg(GT1151_TPX_TBL[0],buf,4);	//��ȡXY����ֵ
			tp_dev.x[0]=((u16)buf[1]<<8)+buf[0];
			tp_dev.y[0]=((u16)buf[3]<<8)+buf[2];
		}else{
			tp_dev.x[0]=0xffff;
		    tp_dev.y[0]=0xffff;
		}
	}
}




















