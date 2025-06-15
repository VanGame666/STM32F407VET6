#include "lvgl.h"
#include "gui_guider.h"
#include "events_init.h"
#include "widgets_init.h"
#include "custom.h"
#include <stdio.h>
#include <math.h>


// 全局变量
lv_timer_t *chart_timer;
lv_chart_series_t *ser;
static float frequency = 1.0f; // 默认频率为1Hz
static lv_obj_t *freq_label;   // 频率显示标签

// 回调函数声明
static void btn_event_cb(lv_event_t *e);
static void slider_event_cb(lv_event_t *e);


// 替换原有的update_chart函数
void update_chart(lv_timer_t *timer) {
    lv_obj_t *chart = (lv_obj_t *)timer->user_data;

    // 获取时间差值更高效的方式
    static uint32_t last_time = 0;
    uint32_t current_time = lv_tick_get();
    uint32_t elapsed = current_time - last_time;
    last_time = current_time;

    // 优化：直接使用时间差计算相位偏移
    float phase_inc = elapsed * frequency * 0.003f;  // 相位增量

    // 优化：使用静态变量保存相位避免浮点累计误差
    static float global_phase = 0.0f;
    global_phase += phase_inc;

    // 优化：预处理sin计算参数
    float phase_step = frequency * 0.0628318f; // 2π/100
    float current_phase = global_phase;

    // 优化：点对点计算正弦值
    for(int i = 0; i < 50; i++) {
        // 直接计算正弦值，避免冗余计算
		ser->y_points[i] = (int16_t)((sinf(current_phase) + 1) * 50);
        current_phase += phase_step;
    }

    // 优化：部分刷新而不是完整刷新
    lv_chart_refresh(chart);
}

void setup_scr_screen(lv_ui *ui) {
    ui->screen = lv_obj_create(NULL);
    lv_obj_set_size(ui->screen, 320, 480);
    lv_obj_set_scrollbar_mode(ui->screen, LV_SCROLLBAR_MODE_OFF);

    // 屏幕样式
    lv_obj_set_style_bg_opa(ui->screen, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen, lv_color_hex(0x044333), LV_PART_MAIN|LV_STATE_DEFAULT);

    // 波形图表容器
    ui->screen_cont_1 = lv_obj_create(ui->screen);
    lv_obj_set_pos(ui->screen_cont_1, 10, 10);
    lv_obj_set_size(ui->screen_cont_1, 300, 300);
    lv_obj_set_scrollbar_mode(ui->screen_cont_1, LV_SCROLLBAR_MODE_OFF);

    // 容器样式
    lv_obj_set_style_border_width(ui->screen_cont_1, 2, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_opa(ui->screen_cont_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_color(ui->screen_cont_1, lv_color_hex(0x2195f6), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_border_side(ui->screen_cont_1, LV_BORDER_SIDE_FULL, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_radius(ui->screen_cont_1, 10, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui->screen_cont_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_cont_1, lv_color_hex(0x1a1a2e), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_pad_all(ui->screen_cont_1, 5, LV_PART_MAIN|LV_STATE_DEFAULT);

    // 图表标题
    lv_obj_t *title = lv_label_create(ui->screen_cont_1);
    lv_label_set_text(title, "SINE WAVE FREQUENCY");
    lv_obj_set_style_text_font(title, &lv_font_montserrat_14, 0);
    lv_obj_set_style_text_color(title, lv_color_white(), 0);
    lv_obj_align(title, LV_ALIGN_TOP_MID, 0, 0);

    // 创建Chart对象
    lv_obj_t *chart = lv_chart_create(ui->screen_cont_1);
    lv_obj_set_size(chart, 250, 250);
    lv_obj_align(chart, LV_ALIGN_BOTTOM_MID, 10, -20);
    lv_chart_set_type(chart, LV_CHART_TYPE_LINE);
    lv_chart_set_point_count(chart, 50);
    lv_chart_set_div_line_count(chart, 5, 5);

    // 坐标轴样式
    lv_obj_set_style_size(chart, 0, LV_PART_INDICATOR);

    // X轴设置
    lv_chart_set_axis_tick(chart, LV_CHART_AXIS_PRIMARY_X, 5, 0, 5, 2, true, 30);
    lv_chart_set_axis_tick(chart, LV_CHART_AXIS_PRIMARY_Y, 5, 0, 5, 2, true, 30);

    // 坐标轴范围
    lv_chart_set_range(chart, LV_CHART_AXIS_PRIMARY_Y, 0, 100);

    // 数据系列
    ser = lv_chart_add_series(chart, lv_palette_main(LV_PALETTE_BLUE), LV_CHART_AXIS_PRIMARY_Y);
    lv_obj_set_style_line_width(chart, 3, LV_PART_ITEMS);

//    // 添加坐标轴标签
//    lv_obj_t *x_label = lv_label_create(chart);
//    lv_label_set_text(x_label, "Time");
//    lv_obj_align(x_label, LV_ALIGN_BOTTOM_MID, 0, 20);
//    lv_obj_set_style_text_color(x_label, lv_color_hex(0xcccccc), 0);
//
//    lv_obj_t *y_label = lv_label_create(chart);
//    lv_label_set_text(y_label, "Amplitude");
//    lv_obj_align(y_label, LV_ALIGN_LEFT_MID, -25, 0);
//    lv_obj_set_style_text_color(y_label, lv_color_hex(0xcccccc), 0);
//    lv_obj_set_style_transform_angle(y_label, 900, 0);

    // 创建定时器更新波形 - 固定50ms刷新率
    chart_timer = lv_timer_create(update_chart, 50, chart);

    // 控制按钮
    ui->screen_btn_1 = lv_btn_create(ui->screen);
    ui->screen_btn_1_label = lv_label_create(ui->screen_btn_1);
    lv_label_set_text(ui->screen_btn_1_label, "PAUSE");
    lv_obj_align(ui->screen_btn_1_label, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(ui->screen_btn_1, 200, 350);
    lv_obj_set_size(ui->screen_btn_1, 100, 40);

    // 添加事件回调
    lv_obj_add_event_cb(ui->screen_btn_1, btn_event_cb, LV_EVENT_CLICKED, chart_timer);


    // 按钮样式
    lv_obj_set_style_bg_opa(ui->screen_btn_1, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_btn_1, lv_color_hex(0x2195f6), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_radius(ui->screen_btn_1, 5, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(ui->screen_btn_1, lv_color_hex(0xffffff), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui->screen_btn_1, &lv_font_montserrat_14, LV_PART_MAIN|LV_STATE_DEFAULT);


    //Write codes screen_btn_2
    ui->screen_btn_2 = lv_btn_create(ui->screen);
    ui->screen_btn_2_label = lv_label_create(ui->screen_btn_2);
    lv_label_set_text(ui->screen_btn_2_label, "Button");
    lv_obj_align(ui->screen_btn_2_label, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(ui->screen_btn_2, 30, 350);
    lv_obj_set_size(ui->screen_btn_2, 100, 40);

    //Write style for screen_btn_2, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_bg_opa(ui->screen_btn_2, 255, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui->screen_btn_2, lv_color_hex(0x2195f6), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_radius(ui->screen_btn_2, 5, LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(ui->screen_btn_2, lv_color_hex(0xffffff), LV_PART_MAIN|LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui->screen_btn_2, &lv_font_montserrat_14, LV_PART_MAIN|LV_STATE_DEFAULT);


    // 频率控制滑块 (0.1Hz 到 5.0Hz)
    ui->screen_slider_1 = lv_slider_create(ui->screen);
    lv_slider_set_range(ui->screen_slider_1, 1, 50); // 1-50对应0.1-5.0Hz
    lv_slider_set_value(ui->screen_slider_1, 10, LV_ANIM_OFF); // 默认1.0Hz
    lv_obj_set_pos(ui->screen_slider_1, 30, 420);
    lv_obj_set_size(ui->screen_slider_1, 270, 10);

    // 滑块事件
    lv_obj_add_event_cb(ui->screen_slider_1, slider_event_cb, LV_EVENT_VALUE_CHANGED, NULL);


    // 更新布局
    lv_obj_update_layout(ui->screen);
    events_init_screen(ui);

}

// 按钮事件回调
static void btn_event_cb(lv_event_t *e) {
    lv_obj_t *btn = lv_event_get_target(e);
    lv_timer_t *timer = lv_event_get_user_data(e);

    if(timer->paused) {
        lv_timer_resume(timer);
        lv_label_set_text(lv_obj_get_child(btn, 0), "PAUSE");
    } else {
        lv_timer_pause(timer);
        lv_label_set_text(lv_obj_get_child(btn, 0), "RESUME");
    }
}

// 滑块事件回调 (控制频率)
static void slider_event_cb(lv_event_t *e) {
    lv_obj_t *slider = lv_event_get_target(e);
    int16_t value = lv_slider_get_value(slider);

    // 映射滑块值到频率 (1-50 对应 0.1-5.0Hz)
    frequency = value * 0.1f;

    // 更新频率标签
    static char buf[32];
    printf("FREQUENCY: %d Hz\r\n", value ) ;
    lv_label_set_text(freq_label, buf);
}
