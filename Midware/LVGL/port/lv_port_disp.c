#include "lv_port_disp.h"
#include <stdbool.h>
#include "disp.h"


#define MY_DISP_HOR_RES    320
#define MY_DISP_VER_RES    480

volatile bool disp_flush_enabled = true;
void disp_enable_update(void){disp_flush_enabled = true;}
void disp_disable_update(void){disp_flush_enabled = false;}


static void disp_flush(lv_disp_drv_t * disp_drv, const lv_area_t * area, lv_color_t * color_p)
{
    LCD_Color_Fill(area->x1,area->y1,area->x2,area->y2,(uint16_t*)color_p);
    lv_disp_flush_ready(disp_drv);
}

void lv_port_disp_init(void)
{

	LCD_Init();
    static lv_disp_draw_buf_t draw_buf_dsc_2;
    static lv_color_t buf_2_1[MY_DISP_HOR_RES * 10];                        /*A buffer for 10 rows*/
    static lv_color_t buf_2_2[MY_DISP_HOR_RES * 10];                        /*An other buffer for 10 rows*/
    lv_disp_draw_buf_init(&draw_buf_dsc_2, buf_2_1, buf_2_2, MY_DISP_HOR_RES * 10);   /*Initialize the display buffer*/


    static lv_disp_drv_t disp_drv;                  /*Descriptor of a display driver*/
    lv_disp_drv_init(&disp_drv);                    /*Basic initialization*/
    disp_drv.hor_res = MY_DISP_HOR_RES;
    disp_drv.ver_res = MY_DISP_VER_RES;
    disp_drv.flush_cb = disp_flush;
    disp_drv.draw_buf = &draw_buf_dsc_2;
    lv_disp_drv_register(&disp_drv);
}


