#include <task_creat.h>

/**************************************************  **************************************************/
void AppTask1(void* parameter);		TaskHandle_t AppTask1_Handle = NULL;
void AppTask2(void* parameter);		TaskHandle_t AppTask2_Handle = NULL;
void AppTask3(void* parameter);		TaskHandle_t AppTask3_Handle = NULL;

/**************************************************  **************************************************/
TaskStruct TaskTable[]={
{AppTask1,"AppTask1",512, NULL,1,&AppTask1_Handle},
{AppTask2,"AppTask2",512, NULL,1,&AppTask2_Handle},
{AppTask3,"AppTask3",512, NULL,1,&AppTask3_Handle},
{NULL, "NULL", NULL, NULL, NULL, NULL, NULL}};

/**************************************************  **************************************************/
void task_creat(void)
{
	for(int task_index =0;strcmp(TaskTable[task_index].pcName,"NULL") != 0;task_index++)
	{
		xTaskCreate(TaskTable[task_index].pxTaskCode,
					TaskTable[task_index].pcName,
					TaskTable[task_index].uxStackDepth,
					TaskTable[task_index].pvParameters,
					TaskTable[task_index].uxPriority,
					TaskTable[task_index].pxCreatedTask);
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
    	printf("lvgl\r\n");
    }
}

/**************************************************  **************************************************/
void AppTask2(void* parameter)
{
	tusb_rhport_init_t dev_init = {
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
void AppTask3(void* parameter)
{
    for(;;vTaskDelay(10))
    {
//    	if(key_flag == 1){printf("ok\r\n");key_flag = 0;}
    	if(system_ticks >= 500){system_ticks = 0;HAL_GPIO_TogglePin(GPIOA,GPIO_PIN_2);}
    }
}

/**************************************************  **************************************************/
