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
static lv_timer_t *timer = NULL;
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


    ui->screen = lv_obj_create(NULL);
    lv_obj_set_size(ui->screen, 320, 480);
    lv_obj_set_scrollbar_mode(ui->screen, LV_SCROLLBAR_MODE_OFF);

    // 屏幕样式
    lv_obj_set_style_bg_opa(ui->screen, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen, lv_color_hex(0x044333), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(ui->screen, LV_GRAD_DIR_NONE, LV_PART_MAIN|LV_STATE_DEFAULT);

    // 仪表盘容器
    ui->screen_1_cont_1 = lv_obj_create(ui->screen);
    lv_obj_set_pos(ui->screen_1_cont_1, 11, 10);
    lv_obj_set_size(ui->screen_1_cont_1, 300, 200);
    lv_obj_set_scrollbar_mode(ui->screen_1_cont_1, LV_SCROLLBAR_MODE_OFF);

    // 容器样式
    lv_obj_set_style_border_width(ui->screen_1_cont_1, 2, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_opa(ui->screen_1_cont_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_color(ui->screen_1_cont_1, lv_color_hex(0x2195f6), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_side(ui->screen_1_cont_1, LV_BORDER_SIDE_FULL, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_radius(ui->screen_1_cont_1, 10, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui->screen_1_cont_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_1_cont_1, lv_color_hex(0x2a2a2a), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(ui->screen_1_cont_1, LV_GRAD_DIR_NONE, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_pad_all(ui->screen_1_cont_1, 0, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(ui->screen_1_cont_1, 0, LV_PART_MAIN|LV_STATE_DEFAULT);
    // 创建仪表盘
    meter = lv_meter_create(ui->screen_1_cont_1);
    lv_obj_center(meter);
    lv_obj_set_size(meter, 180, 180);

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
    lv_obj_align(title, LV_ALIGN_TOP_MID, 0, 10);

    // 定时器 (初始50ms周期)
    timer = lv_timer_create(timer_cb, 1, NULL);

    // 按钮控件
    ui->screen_1_btn_1 = lv_btn_create(ui->screen);
    ui->screen_1_btn_1_label = lv_label_create(ui->screen_1_btn_1);
    lv_label_set_text(ui->screen_1_btn_1_label, "PAUSE");
    lv_obj_align(ui->screen_1_btn_1_label, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(ui->screen_1_btn_1, 200, 240);
    lv_obj_set_size(ui->screen_1_btn_1, 100, 50);
    lv_obj_add_event_cb(ui->screen_1_btn_1, btn_event_cb, LV_EVENT_CLICKED, NULL);

    // 按钮样式
    lv_obj_set_style_bg_opa(ui->screen_1_btn_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_1_btn_1, lv_color_hex(0x2195f6), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_radius(ui->screen_1_btn_1, 5, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(ui->screen_1_btn_1, lv_color_hex(0xffffff), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui->screen_1_btn_1, &lv_font_montserrat_14, LV_PART_MAIN|LV_STATE_DEFAULT);

    //Write codes screen_btn_2
    ui->screen_1_btn_2 = lv_btn_create(ui->screen);
    ui->screen_1_btn_2_label = lv_label_create(ui->screen_btn_2);
    lv_label_set_text(ui->screen_1_btn_2_label, "Button");
    lv_obj_align(ui->screen_1_btn_2_label, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(ui->screen_1_btn_2, 30, 350);
    lv_obj_set_size(ui->screen_1_btn_2, 100, 40);

    //Write style for screen_btn_2, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_bg_opa(ui->screen_1_btn_2, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_1_btn_2, lv_color_hex(0x2195f6), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_radius(ui->screen_1_btn_2, 5, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(ui->screen_1_btn_2, lv_color_hex(0xffffff), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui->screen_1_btn_2, &lv_font_montserrat_14, LV_PART_MAIN|LV_STATE_DEFAULT);



    // 滑动条控件
    ui->screen_1_slider_1 = lv_slider_create(ui->screen);
    lv_slider_set_range(ui->screen_1_slider_1, 1, 10);
    lv_slider_set_value(ui->screen_1_slider_1, 5, LV_ANIM_OFF);
    lv_obj_set_pos(ui->screen_1_slider_1, 32, 353);
    lv_obj_set_size(ui->screen_1_slider_1, 251, 6);
    lv_obj_add_event_cb(ui->screen_1_slider_1, slider_event_cb, LV_EVENT_VALUE_CHANGED, NULL);

    // 速度标签
    speed_label = lv_label_create(ui->screen);
    lv_label_set_text(speed_label, "RATE: 50 ms/gear");
    lv_obj_set_style_text_color(speed_label, lv_color_white(), 0);
    lv_obj_set_pos(speed_label, 32, 330);

    // 添加滑块标签 - 使用现有字体
    for(int i = 0; i < 10; i++) {
        char buf[5];
        snprintf(buf, sizeof(buf), "%d", (i + 1) * 10);
        lv_obj_t *label = lv_label_create(ui->screen);
        lv_label_set_text(label, buf);

        // 使用可用字体
        lv_obj_set_style_text_font(label, &lv_font_montserrat_12, 0);
        lv_obj_set_style_text_color(label, lv_color_hex(0xFFFFFF), 0);
        lv_obj_set_pos(label, 32 + i * 25, 370);

        // 主刻度点
        if((i+1) % 2 == 0) {
            lv_obj_t *dot = lv_obj_create(ui->screen);
            lv_obj_set_size(dot, 4, 4);
            lv_obj_set_style_bg_color(dot, lv_color_hex(0x2195f6), 0);
            lv_obj_set_style_bg_opa(dot, LV_OPA_COVER, 0);
            lv_obj_set_style_radius(dot, LV_RADIUS_CIRCLE, 0);
            lv_obj_set_pos(dot, 32 + i * 25, 350);
        }
    }
    // 更新布局
    lv_obj_update_layout(ui->screen);
}
