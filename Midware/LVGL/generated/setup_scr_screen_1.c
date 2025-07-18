#include "lvgl.h"
#include <stdio.h>
#include "gui_guider.h"
#include "events_init.h"
#include "widgets_init.h"
#include "custom.h"


// 全局静态变量
static lv_obj_t *meter = NULL;
static lv_meter_indicator_t *indic = NULL;
static uint8_t current_gear = 0;
lv_timer_t *timer = NULL;
static lv_obj_t *label_ref = NULL;
static lv_obj_t *speed_label = NULL;
static lv_ui *g_ui = NULL;

// 定时器回调函数
static void timer_cb(lv_timer_t *t) {
    current_gear = (current_gear + 1) % 100; // 0-99循环
    if(meter && indic) {
        lv_meter_set_indicator_value(meter, indic, current_gear);
    }
    if(label_ref) {
        lv_label_set_text_fmt(label_ref, "%d", current_gear);
    }
}

// 按钮事件回调
static void btn_event_cb(lv_event_t *e) {
    lv_event_code_t code = lv_event_get_code(e);
    if(code == LV_EVENT_CLICKED && timer) {
        static uint8_t is_running = 1;

        if(is_running) {
            lv_timer_pause(timer);
            lv_label_set_text(g_ui->screen_1_btn_1_label, "RESUME");
            is_running = 0;
        } else {
            lv_timer_resume(timer);
            lv_label_set_text(g_ui->screen_1_btn_1_label, "PAUSE");
            is_running = 1;
        }
    }
}

// 滑动条事件回调
static void slider_event_cb(lv_event_t *e) {
    lv_event_code_t code = lv_event_get_code(e);
    if(code == LV_EVENT_VALUE_CHANGED) {
        if(timer && g_ui && g_ui->screen_1_slider_1) {
            int32_t v = lv_slider_get_value(g_ui->screen_1_slider_1);
            uint32_t period = 10 * v; // 10-100ms
            lv_timer_set_period(timer, period);
            if(speed_label) {
                lv_label_set_text_fmt(speed_label, "RATE: %d ms/gear", (int)period);
            }
        }
    }
}

void setup_scr_screen_1(lv_ui *ui) {
    g_ui = ui;


    ui->screen_1 = lv_obj_create(NULL);
    lv_obj_set_size(ui->screen_1, 320, 480);
    lv_obj_set_scrollbar_mode(ui->screen, LV_SCROLLBAR_MODE_OFF);

    // 屏幕样式
    lv_obj_set_style_bg_opa(ui->screen_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_1, lv_color_hex(0x0f444a), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(ui->screen_1, LV_GRAD_DIR_NONE, LV_PART_MAIN|LV_STATE_DEFAULT);

    // 波形图表容器
    ui->screen_1_cont_1 = lv_obj_create(ui->screen_1);
    lv_obj_set_pos(ui->screen_1_cont_1, 10, 10);
    lv_obj_set_size(ui->screen_1_cont_1, 300, 300);
    lv_obj_set_scrollbar_mode(ui->screen_1_cont_1, LV_SCROLLBAR_MODE_OFF);

    // 容器样式
    lv_obj_set_style_border_width(ui->screen_1_cont_1, 2, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_opa(ui->screen_1_cont_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_color(ui->screen_1_cont_1, lv_color_hex(0x2195f6), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_side(ui->screen_1_cont_1, LV_BORDER_SIDE_FULL, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_radius(ui->screen_1_cont_1, 10, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui->screen_1_cont_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_1_cont_1, lv_color_hex(0x1a1a2e), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_pad_all(ui->screen_1_cont_1, 5, LV_PART_MAIN|LV_STATE_DEFAULT);


    // 创建仪表盘
    meter = lv_meter_create(ui->screen_1_cont_1);
    lv_obj_center(meter);
    lv_obj_set_size(meter, 250, 250);

    // 添加刻度
    lv_meter_scale_t *scale = lv_meter_add_scale(meter);
    lv_meter_set_scale_range(meter, scale, 0, 100, 270, 135);
    lv_meter_set_scale_major_ticks(meter, scale, 10, 4, 15, lv_color_hex(0x2195f6), 10);
    lv_meter_set_scale_ticks(meter, scale, 101, 2, 10, lv_color_hex(0x888888));

    // 添加指针
    indic = lv_meter_add_needle_line(meter, scale, 4, lv_palette_main(LV_PALETTE_BLUE), -10);

    // 中心显示
    lv_obj_t *gear_label = lv_label_create(meter);
    lv_label_set_text_fmt(gear_label, "%d", current_gear);
    lv_obj_set_style_text_font(gear_label, &lv_font_montserrat_14, 0);
    lv_obj_set_style_text_color(gear_label, lv_color_black(), 0);
    lv_obj_align(gear_label, LV_ALIGN_BOTTOM_MID, 0, 0);
    label_ref = gear_label;

    // 标题
    lv_obj_t *title = lv_label_create(ui->screen_1_cont_1);
    lv_label_set_text(title, "FAST GEAR CONTROL");
    lv_obj_set_style_text_font(title, &lv_font_montserrat_14, 0);
    lv_obj_set_style_text_color(title, lv_color_white(), 0);
    lv_obj_align(title, LV_ALIGN_TOP_MID, 0, 0);

    // 定时器 (初始50ms周期)
    timer = lv_timer_create(timer_cb, 1, NULL);

    // 按钮控件
    ui->screen_1_btn_1 = lv_btn_create(ui->screen_1);
    ui->screen_1_btn_1_label = lv_label_create(ui->screen_1_btn_1);
    lv_label_set_text(ui->screen_1_btn_1_label, "PAUSE");
    lv_obj_align(ui->screen_1_btn_1_label, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(ui->screen_1_btn_1, 30, 350);
    lv_obj_set_size(ui->screen_1_btn_1, 100, 40);
    // 按钮样式
    lv_obj_set_style_bg_opa(ui->screen_1_btn_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_1_btn_1, lv_color_hex(0x2195f6), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_radius(ui->screen_1_btn_1, 5, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(ui->screen_1_btn_1, lv_color_hex(0xffffff), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui->screen_1_btn_1, &lv_font_montserrat_14, LV_PART_MAIN|LV_STATE_DEFAULT);

    lv_obj_add_event_cb(ui->screen_1_btn_1, btn_event_cb, LV_EVENT_CLICKED, NULL);






    //Write codes screen_btn_2
    ui->screen_1_btn_2 = lv_btn_create(ui->screen_1);
    ui->screen_1_btn_2_label = lv_label_create(ui->screen_1_btn_2);
    lv_label_set_text(ui->screen_1_btn_2_label, "Button");
    lv_obj_align(ui->screen_1_btn_2_label, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(ui->screen_1_btn_2, 200, 350);
    lv_obj_set_size(ui->screen_1_btn_2, 100, 40);

    //Write style for screen_btn_2, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_bg_opa(ui->screen_1_btn_2, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_1_btn_2, lv_color_hex(0x2195f6), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_radius(ui->screen_1_btn_2, 5, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(ui->screen_1_btn_2, lv_color_hex(0xffffff), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui->screen_1_btn_2, &lv_font_montserrat_14, LV_PART_MAIN|LV_STATE_DEFAULT);



    // 滑动条控件
    ui->screen_1_slider_1 = lv_slider_create(ui->screen_1);
    lv_slider_set_range(ui->screen_1_slider_1, 1, 10);
    lv_slider_set_value(ui->screen_1_slider_1, 5, LV_ANIM_OFF);
    lv_obj_set_pos(ui->screen_1_slider_1, 30, 420);
    lv_obj_set_size(ui->screen_1_slider_1, 270, 10);
    lv_obj_add_event_cb(ui->screen_1_slider_1, slider_event_cb, LV_EVENT_VALUE_CHANGED, NULL);


    // 更新布局
    lv_obj_update_layout(ui->screen_1);
    events_init_screen_1(ui);
}
