################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_arc.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_bg.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_composite.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_img.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_label.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_layer.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_line.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_mask.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_polygon.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_rect.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_stack_blur.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_texture_cache.c \
../Midware/LVGL/src/draw/sdl/lv_draw_sdl_utils.c 

OBJS += \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_arc.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_bg.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_composite.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_img.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_label.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_layer.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_line.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_mask.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_polygon.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_rect.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_stack_blur.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_texture_cache.o \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_utils.o 

C_DEPS += \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_arc.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_bg.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_composite.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_img.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_label.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_layer.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_line.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_mask.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_polygon.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_rect.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_stack_blur.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_texture_cache.d \
./Midware/LVGL/src/draw/sdl/lv_draw_sdl_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LVGL/src/draw/sdl/%.o Midware/LVGL/src/draw/sdl/%.su Midware/LVGL/src/draw/sdl/%.cyclo: ../Midware/LVGL/src/draw/sdl/%.c Midware/LVGL/src/draw/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -I"E:/My_Work/STM32F407VET6/Core" -I"E:/My_Work/STM32F407VET6/Midware/LwIP" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/system" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src/include" -I"E:/My_Work/STM32F407VET6/Hardware/W25Q128" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LVGL-2f-src-2f-draw-2f-sdl

clean-Midware-2f-LVGL-2f-src-2f-draw-2f-sdl:
	-$(RM) ./Midware/LVGL/src/draw/sdl/lv_draw_sdl.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_arc.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_arc.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_arc.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_arc.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_bg.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_bg.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_bg.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_bg.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_composite.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_composite.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_composite.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_composite.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_img.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_img.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_img.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_img.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_label.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_label.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_label.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_label.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_layer.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_layer.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_layer.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_layer.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_line.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_line.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_line.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_line.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_mask.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_mask.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_mask.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_mask.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_polygon.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_polygon.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_polygon.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_polygon.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_rect.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_rect.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_rect.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_rect.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_stack_blur.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_stack_blur.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_stack_blur.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_stack_blur.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_texture_cache.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_texture_cache.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_texture_cache.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_texture_cache.su ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_utils.cyclo ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_utils.d ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_utils.o ./Midware/LVGL/src/draw/sdl/lv_draw_sdl_utils.su

.PHONY: clean-Midware-2f-LVGL-2f-src-2f-draw-2f-sdl

