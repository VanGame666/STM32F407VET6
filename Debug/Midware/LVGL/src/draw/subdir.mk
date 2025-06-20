################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LVGL/src/draw/lv_draw.c \
../Midware/LVGL/src/draw/lv_draw_arc.c \
../Midware/LVGL/src/draw/lv_draw_img.c \
../Midware/LVGL/src/draw/lv_draw_label.c \
../Midware/LVGL/src/draw/lv_draw_layer.c \
../Midware/LVGL/src/draw/lv_draw_line.c \
../Midware/LVGL/src/draw/lv_draw_mask.c \
../Midware/LVGL/src/draw/lv_draw_rect.c \
../Midware/LVGL/src/draw/lv_draw_transform.c \
../Midware/LVGL/src/draw/lv_draw_triangle.c \
../Midware/LVGL/src/draw/lv_img_buf.c \
../Midware/LVGL/src/draw/lv_img_cache.c \
../Midware/LVGL/src/draw/lv_img_decoder.c 

OBJS += \
./Midware/LVGL/src/draw/lv_draw.o \
./Midware/LVGL/src/draw/lv_draw_arc.o \
./Midware/LVGL/src/draw/lv_draw_img.o \
./Midware/LVGL/src/draw/lv_draw_label.o \
./Midware/LVGL/src/draw/lv_draw_layer.o \
./Midware/LVGL/src/draw/lv_draw_line.o \
./Midware/LVGL/src/draw/lv_draw_mask.o \
./Midware/LVGL/src/draw/lv_draw_rect.o \
./Midware/LVGL/src/draw/lv_draw_transform.o \
./Midware/LVGL/src/draw/lv_draw_triangle.o \
./Midware/LVGL/src/draw/lv_img_buf.o \
./Midware/LVGL/src/draw/lv_img_cache.o \
./Midware/LVGL/src/draw/lv_img_decoder.o 

C_DEPS += \
./Midware/LVGL/src/draw/lv_draw.d \
./Midware/LVGL/src/draw/lv_draw_arc.d \
./Midware/LVGL/src/draw/lv_draw_img.d \
./Midware/LVGL/src/draw/lv_draw_label.d \
./Midware/LVGL/src/draw/lv_draw_layer.d \
./Midware/LVGL/src/draw/lv_draw_line.d \
./Midware/LVGL/src/draw/lv_draw_mask.d \
./Midware/LVGL/src/draw/lv_draw_rect.d \
./Midware/LVGL/src/draw/lv_draw_transform.d \
./Midware/LVGL/src/draw/lv_draw_triangle.d \
./Midware/LVGL/src/draw/lv_img_buf.d \
./Midware/LVGL/src/draw/lv_img_cache.d \
./Midware/LVGL/src/draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LVGL/src/draw/%.o Midware/LVGL/src/draw/%.su Midware/LVGL/src/draw/%.cyclo: ../Midware/LVGL/src/draw/%.c Midware/LVGL/src/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Learn/STM32F407VET6/Hardware/DISP" -I"E:/My_Learn/STM32F407VET6/Hardware/TOUCH" -I"E:/My_Learn/STM32F407VET6/Midware/FatFS" -I"E:/My_Learn/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Learn/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Learn/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Learn/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Learn/STM32F407VET6/Protocol" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LVGL-2f-src-2f-draw

clean-Midware-2f-LVGL-2f-src-2f-draw:
	-$(RM) ./Midware/LVGL/src/draw/lv_draw.cyclo ./Midware/LVGL/src/draw/lv_draw.d ./Midware/LVGL/src/draw/lv_draw.o ./Midware/LVGL/src/draw/lv_draw.su ./Midware/LVGL/src/draw/lv_draw_arc.cyclo ./Midware/LVGL/src/draw/lv_draw_arc.d ./Midware/LVGL/src/draw/lv_draw_arc.o ./Midware/LVGL/src/draw/lv_draw_arc.su ./Midware/LVGL/src/draw/lv_draw_img.cyclo ./Midware/LVGL/src/draw/lv_draw_img.d ./Midware/LVGL/src/draw/lv_draw_img.o ./Midware/LVGL/src/draw/lv_draw_img.su ./Midware/LVGL/src/draw/lv_draw_label.cyclo ./Midware/LVGL/src/draw/lv_draw_label.d ./Midware/LVGL/src/draw/lv_draw_label.o ./Midware/LVGL/src/draw/lv_draw_label.su ./Midware/LVGL/src/draw/lv_draw_layer.cyclo ./Midware/LVGL/src/draw/lv_draw_layer.d ./Midware/LVGL/src/draw/lv_draw_layer.o ./Midware/LVGL/src/draw/lv_draw_layer.su ./Midware/LVGL/src/draw/lv_draw_line.cyclo ./Midware/LVGL/src/draw/lv_draw_line.d ./Midware/LVGL/src/draw/lv_draw_line.o ./Midware/LVGL/src/draw/lv_draw_line.su ./Midware/LVGL/src/draw/lv_draw_mask.cyclo ./Midware/LVGL/src/draw/lv_draw_mask.d ./Midware/LVGL/src/draw/lv_draw_mask.o ./Midware/LVGL/src/draw/lv_draw_mask.su ./Midware/LVGL/src/draw/lv_draw_rect.cyclo ./Midware/LVGL/src/draw/lv_draw_rect.d ./Midware/LVGL/src/draw/lv_draw_rect.o ./Midware/LVGL/src/draw/lv_draw_rect.su ./Midware/LVGL/src/draw/lv_draw_transform.cyclo ./Midware/LVGL/src/draw/lv_draw_transform.d ./Midware/LVGL/src/draw/lv_draw_transform.o ./Midware/LVGL/src/draw/lv_draw_transform.su ./Midware/LVGL/src/draw/lv_draw_triangle.cyclo ./Midware/LVGL/src/draw/lv_draw_triangle.d ./Midware/LVGL/src/draw/lv_draw_triangle.o ./Midware/LVGL/src/draw/lv_draw_triangle.su ./Midware/LVGL/src/draw/lv_img_buf.cyclo ./Midware/LVGL/src/draw/lv_img_buf.d ./Midware/LVGL/src/draw/lv_img_buf.o ./Midware/LVGL/src/draw/lv_img_buf.su ./Midware/LVGL/src/draw/lv_img_cache.cyclo ./Midware/LVGL/src/draw/lv_img_cache.d ./Midware/LVGL/src/draw/lv_img_cache.o ./Midware/LVGL/src/draw/lv_img_cache.su ./Midware/LVGL/src/draw/lv_img_decoder.cyclo ./Midware/LVGL/src/draw/lv_img_decoder.d ./Midware/LVGL/src/draw/lv_img_decoder.o ./Midware/LVGL/src/draw/lv_img_decoder.su

.PHONY: clean-Midware-2f-LVGL-2f-src-2f-draw

