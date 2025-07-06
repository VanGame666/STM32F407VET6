#ifndef __FREERTOS_H_
#define __FREERTOS_H_

#include "main.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"

#include "lvgl.h"
#include "lv_port_disp.h"
#include "lv_port_indev.h"
#include "events_init.h"
#include "gui_guider.h"

#include "bsp/board_api.h"
#include "tusb.h"

#include "ff.h"

#include "AT24C02.h"

typedef struct{TaskFunction_t pxTaskCode;
               const char * const pcName;
               const configSTACK_DEPTH_TYPE uxStackDepth;
               void * const pvParameters;
               UBaseType_t uxPriority;
               TaskHandle_t * const pxCreatedTask;
}TaskStruct;


void task_creat(void);


#endif
