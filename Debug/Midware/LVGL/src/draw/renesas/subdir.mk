################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LVGL/src/draw/renesas/lv_gpu_d2_draw_label.c \
../Midware/LVGL/src/draw/renesas/lv_gpu_d2_ra6m3.c 

OBJS += \
./Midware/LVGL/src/draw/renesas/lv_gpu_d2_draw_label.o \
./Midware/LVGL/src/draw/renesas/lv_gpu_d2_ra6m3.o 

C_DEPS += \
./Midware/LVGL/src/draw/renesas/lv_gpu_d2_draw_label.d \
./Midware/LVGL/src/draw/renesas/lv_gpu_d2_ra6m3.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LVGL/src/draw/renesas/%.o Midware/LVGL/src/draw/renesas/%.su Midware/LVGL/src/draw/renesas/%.cyclo: ../Midware/LVGL/src/draw/renesas/%.c Midware/LVGL/src/draw/renesas/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VE/Hardware/DISP" -I"E:/My_Work/STM32F407VE/Hardware/TOUCH" -I"E:/My_Work/STM32F407VE/Midware/FatFS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VE/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VE/Midware/LVGL/port" -I"E:/My_Work/STM32F407VE/Midware/LVGL/src" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VE/Midware/LVGL" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LVGL-2f-src-2f-draw-2f-renesas

clean-Midware-2f-LVGL-2f-src-2f-draw-2f-renesas:
	-$(RM) ./Midware/LVGL/src/draw/renesas/lv_gpu_d2_draw_label.cyclo ./Midware/LVGL/src/draw/renesas/lv_gpu_d2_draw_label.d ./Midware/LVGL/src/draw/renesas/lv_gpu_d2_draw_label.o ./Midware/LVGL/src/draw/renesas/lv_gpu_d2_draw_label.su ./Midware/LVGL/src/draw/renesas/lv_gpu_d2_ra6m3.cyclo ./Midware/LVGL/src/draw/renesas/lv_gpu_d2_ra6m3.d ./Midware/LVGL/src/draw/renesas/lv_gpu_d2_ra6m3.o ./Midware/LVGL/src/draw/renesas/lv_gpu_d2_ra6m3.su

.PHONY: clean-Midware-2f-LVGL-2f-src-2f-draw-2f-renesas

