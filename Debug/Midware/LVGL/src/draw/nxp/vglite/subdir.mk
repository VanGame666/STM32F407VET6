################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite.c \
../Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.c \
../Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.c \
../Midware/LVGL/src/draw/nxp/vglite/lv_vglite_buf.c \
../Midware/LVGL/src/draw/nxp/vglite/lv_vglite_utils.c 

OBJS += \
./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite.o \
./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.o \
./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.o \
./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_buf.o \
./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_utils.o 

C_DEPS += \
./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite.d \
./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.d \
./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.d \
./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_buf.d \
./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LVGL/src/draw/nxp/vglite/%.o Midware/LVGL/src/draw/nxp/vglite/%.su Midware/LVGL/src/draw/nxp/vglite/%.cyclo: ../Midware/LVGL/src/draw/nxp/vglite/%.c Midware/LVGL/src/draw/nxp/vglite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VE/Hardware/DISP" -I"E:/My_Work/STM32F407VE/Hardware/TOUCH" -I"E:/My_Work/STM32F407VE/Midware/FatFS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VE/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VE/Midware/LVGL/port" -I"E:/My_Work/STM32F407VE/Midware/LVGL/src" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VE/Midware/LVGL" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VE/Hardware/AT24C02" -I"E:/My_Work/STM32F407VE/Protocol" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LVGL-2f-src-2f-draw-2f-nxp-2f-vglite

clean-Midware-2f-LVGL-2f-src-2f-draw-2f-nxp-2f-vglite:
	-$(RM) ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite.cyclo ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite.d ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite.o ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite.su ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.cyclo ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.d ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.o ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_arc.su ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.cyclo ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.d ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.o ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_blend.su ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.cyclo ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.d ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.o ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_line.su ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.cyclo ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.d ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.o ./Midware/LVGL/src/draw/nxp/vglite/lv_draw_vglite_rect.su ./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_buf.cyclo ./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_buf.d ./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_buf.o ./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_buf.su ./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_utils.cyclo ./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_utils.d ./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_utils.o ./Midware/LVGL/src/draw/nxp/vglite/lv_vglite_utils.su

.PHONY: clean-Midware-2f-LVGL-2f-src-2f-draw-2f-nxp-2f-vglite

