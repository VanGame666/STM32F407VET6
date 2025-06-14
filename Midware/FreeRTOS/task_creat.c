#include <task_creat.h>

/**************************************************  **************************************************/
void AppTask1(void* parameter);		TaskHandle_t AppTask1_Handle = NULL;
void AppTask2(void* parameter);		TaskHandle_t AppTask2_Handle = NULL;
void AppTask3(void* parameter);		TaskHandle_t AppTask3_Handle = NULL;

TaskStruct TaskTable[]={
{AppTask1,"AppTask1",512,NULL,1,&AppTask1_Handle},
{AppTask2,"AppTask2",128,NULL,1,&AppTask2_Handle},
{AppTask3,"AppTask3",128,NULL,1,&AppTask3_Handle},};

/**************************************************  **************************************************/
void task_creat(void)
{
	BaseType_t result;
	for(int task_index =0;task_index < sizeof(TaskTable)/sizeof(TaskStruct);task_index++)
	{
		result=xTaskCreate( TaskTable[task_index].pxTaskCode,
							TaskTable[task_index].pcName,
							TaskTable[task_index].uxStackDepth,
							TaskTable[task_index].pvParameters,
							TaskTable[task_index].uxPriority,
							TaskTable[task_index].pxCreatedTask);
		if(result == pdPASS)
		{
			printf("[Task]Creat %s is OK\r\n",TaskTable[task_index].pcName);
			printf("[Task]Remaining heap space: %d\r\n",xPortGetFreeHeapSize());
		}else{
			printf("[Task]Creat %s is ERROR\r\n",TaskTable[task_index].pcName);
		}
	}
	vTaskStartScheduler();
}

/**************************************************  **************************************************/
void AppTask1(void* parameter)
{
	lv_ui guider_ui;
	lv_init();
	lv_port_disp_init();
	lv_port_indev_init();
	setup_ui(&guider_ui);
	events_init(&guider_ui);

    for(;;vTaskDelay(1))
    {
    	lv_task_handler();
    }
}

/**************************************************  **************************************************/
void AppTask2(void* parameter)
{
	tusb_rhport_init_t dev_init =
	{
		.role = TUSB_ROLE_DEVICE,
		.speed = TUSB_SPEED_AUTO
	};

	tusb_init(BOARD_TUD_RHPORT, &dev_init);

    for(;;vTaskDelay(10))
    {
    	tud_task();
    	cdc_task();
    }
}

/**************************************************  **************************************************/
extern uint32_t system_ticks;
extern uint8_t key_flag;

void AppTask3(void* parameter)
{
	char tx_buff[] = "at24c02 test";
	char rx_buff[20] = {0};
	Soft_I2C1_Init();
	Soft_I2C1_Mem_Write(AT24CXX_ADDR,0,tx_buff,sizeof(tx_buff));
    for(;;vTaskDelay(10))
    {
    	if(key_flag == 1)
    	{
    		Soft_I2C1_Mem_Read(AT24CXX_ADDR,0,rx_buff,sizeof(tx_buff));
    		printf("%s\r\n",rx_buff);
    		key_flag = 0;
    	}
    	if(system_ticks >= 500){system_ticks = 0;HAL_GPIO_TogglePin(GPIOA,GPIO_PIN_2);}
    }
}

/**************************************************  **************************************************/
