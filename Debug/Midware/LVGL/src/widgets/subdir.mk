################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LVGL/src/widgets/lv_arc.c \
../Midware/LVGL/src/widgets/lv_bar.c \
../Midware/LVGL/src/widgets/lv_btn.c \
../Midware/LVGL/src/widgets/lv_btnmatrix.c \
../Midware/LVGL/src/widgets/lv_canvas.c \
../Midware/LVGL/src/widgets/lv_checkbox.c \
../Midware/LVGL/src/widgets/lv_dropdown.c \
../Midware/LVGL/src/widgets/lv_img.c \
../Midware/LVGL/src/widgets/lv_label.c \
../Midware/LVGL/src/widgets/lv_line.c \
../Midware/LVGL/src/widgets/lv_objx_templ.c \
../Midware/LVGL/src/widgets/lv_roller.c \
../Midware/LVGL/src/widgets/lv_slider.c \
../Midware/LVGL/src/widgets/lv_switch.c \
../Midware/LVGL/src/widgets/lv_table.c \
../Midware/LVGL/src/widgets/lv_textarea.c 

OBJS += \
./Midware/LVGL/src/widgets/lv_arc.o \
./Midware/LVGL/src/widgets/lv_bar.o \
./Midware/LVGL/src/widgets/lv_btn.o \
./Midware/LVGL/src/widgets/lv_btnmatrix.o \
./Midware/LVGL/src/widgets/lv_canvas.o \
./Midware/LVGL/src/widgets/lv_checkbox.o \
./Midware/LVGL/src/widgets/lv_dropdown.o \
./Midware/LVGL/src/widgets/lv_img.o \
./Midware/LVGL/src/widgets/lv_label.o \
./Midware/LVGL/src/widgets/lv_line.o \
./Midware/LVGL/src/widgets/lv_objx_templ.o \
./Midware/LVGL/src/widgets/lv_roller.o \
./Midware/LVGL/src/widgets/lv_slider.o \
./Midware/LVGL/src/widgets/lv_switch.o \
./Midware/LVGL/src/widgets/lv_table.o \
./Midware/LVGL/src/widgets/lv_textarea.o 

C_DEPS += \
./Midware/LVGL/src/widgets/lv_arc.d \
./Midware/LVGL/src/widgets/lv_bar.d \
./Midware/LVGL/src/widgets/lv_btn.d \
./Midware/LVGL/src/widgets/lv_btnmatrix.d \
./Midware/LVGL/src/widgets/lv_canvas.d \
./Midware/LVGL/src/widgets/lv_checkbox.d \
./Midware/LVGL/src/widgets/lv_dropdown.d \
./Midware/LVGL/src/widgets/lv_img.d \
./Midware/LVGL/src/widgets/lv_label.d \
./Midware/LVGL/src/widgets/lv_line.d \
./Midware/LVGL/src/widgets/lv_objx_templ.d \
./Midware/LVGL/src/widgets/lv_roller.d \
./Midware/LVGL/src/widgets/lv_slider.d \
./Midware/LVGL/src/widgets/lv_switch.d \
./Midware/LVGL/src/widgets/lv_table.d \
./Midware/LVGL/src/widgets/lv_textarea.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LVGL/src/widgets/%.o Midware/LVGL/src/widgets/%.su Midware/LVGL/src/widgets/%.cyclo: ../Midware/LVGL/src/widgets/%.c Midware/LVGL/src/widgets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VE/Hardware/DISP" -I"E:/My_Work/STM32F407VE/Hardware/TOUCH" -I"E:/My_Work/STM32F407VE/Midware/FatFS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VE/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VE/Midware/LVGL/port" -I"E:/My_Work/STM32F407VE/Midware/LVGL/src" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VE/Midware/LVGL" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VE/Hardware/AT24C02" -I"E:/My_Work/STM32F407VE/Protocol" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LVGL-2f-src-2f-widgets

clean-Midware-2f-LVGL-2f-src-2f-widgets:
	-$(RM) ./Midware/LVGL/src/widgets/lv_arc.cyclo ./Midware/LVGL/src/widgets/lv_arc.d ./Midware/LVGL/src/widgets/lv_arc.o ./Midware/LVGL/src/widgets/lv_arc.su ./Midware/LVGL/src/widgets/lv_bar.cyclo ./Midware/LVGL/src/widgets/lv_bar.d ./Midware/LVGL/src/widgets/lv_bar.o ./Midware/LVGL/src/widgets/lv_bar.su ./Midware/LVGL/src/widgets/lv_btn.cyclo ./Midware/LVGL/src/widgets/lv_btn.d ./Midware/LVGL/src/widgets/lv_btn.o ./Midware/LVGL/src/widgets/lv_btn.su ./Midware/LVGL/src/widgets/lv_btnmatrix.cyclo ./Midware/LVGL/src/widgets/lv_btnmatrix.d ./Midware/LVGL/src/widgets/lv_btnmatrix.o ./Midware/LVGL/src/widgets/lv_btnmatrix.su ./Midware/LVGL/src/widgets/lv_canvas.cyclo ./Midware/LVGL/src/widgets/lv_canvas.d ./Midware/LVGL/src/widgets/lv_canvas.o ./Midware/LVGL/src/widgets/lv_canvas.su ./Midware/LVGL/src/widgets/lv_checkbox.cyclo ./Midware/LVGL/src/widgets/lv_checkbox.d ./Midware/LVGL/src/widgets/lv_checkbox.o ./Midware/LVGL/src/widgets/lv_checkbox.su ./Midware/LVGL/src/widgets/lv_dropdown.cyclo ./Midware/LVGL/src/widgets/lv_dropdown.d ./Midware/LVGL/src/widgets/lv_dropdown.o ./Midware/LVGL/src/widgets/lv_dropdown.su ./Midware/LVGL/src/widgets/lv_img.cyclo ./Midware/LVGL/src/widgets/lv_img.d ./Midware/LVGL/src/widgets/lv_img.o ./Midware/LVGL/src/widgets/lv_img.su ./Midware/LVGL/src/widgets/lv_label.cyclo ./Midware/LVGL/src/widgets/lv_label.d ./Midware/LVGL/src/widgets/lv_label.o ./Midware/LVGL/src/widgets/lv_label.su ./Midware/LVGL/src/widgets/lv_line.cyclo ./Midware/LVGL/src/widgets/lv_line.d ./Midware/LVGL/src/widgets/lv_line.o ./Midware/LVGL/src/widgets/lv_line.su ./Midware/LVGL/src/widgets/lv_objx_templ.cyclo ./Midware/LVGL/src/widgets/lv_objx_templ.d ./Midware/LVGL/src/widgets/lv_objx_templ.o ./Midware/LVGL/src/widgets/lv_objx_templ.su ./Midware/LVGL/src/widgets/lv_roller.cyclo ./Midware/LVGL/src/widgets/lv_roller.d ./Midware/LVGL/src/widgets/lv_roller.o ./Midware/LVGL/src/widgets/lv_roller.su ./Midware/LVGL/src/widgets/lv_slider.cyclo ./Midware/LVGL/src/widgets/lv_slider.d ./Midware/LVGL/src/widgets/lv_slider.o ./Midware/LVGL/src/widgets/lv_slider.su ./Midware/LVGL/src/widgets/lv_switch.cyclo ./Midware/LVGL/src/widgets/lv_switch.d ./Midware/LVGL/src/widgets/lv_switch.o ./Midware/LVGL/src/widgets/lv_switch.su ./Midware/LVGL/src/widgets/lv_table.cyclo ./Midware/LVGL/src/widgets/lv_table.d ./Midware/LVGL/src/widgets/lv_table.o ./Midware/LVGL/src/widgets/lv_table.su ./Midware/LVGL/src/widgets/lv_textarea.cyclo ./Midware/LVGL/src/widgets/lv_textarea.d ./Midware/LVGL/src/widgets/lv_textarea.o ./Midware/LVGL/src/widgets/lv_textarea.su

.PHONY: clean-Midware-2f-LVGL-2f-src-2f-widgets

