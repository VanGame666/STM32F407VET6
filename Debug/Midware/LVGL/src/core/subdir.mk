################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LVGL/src/core/lv_disp.c \
../Midware/LVGL/src/core/lv_event.c \
../Midware/LVGL/src/core/lv_group.c \
../Midware/LVGL/src/core/lv_indev.c \
../Midware/LVGL/src/core/lv_indev_scroll.c \
../Midware/LVGL/src/core/lv_obj.c \
../Midware/LVGL/src/core/lv_obj_class.c \
../Midware/LVGL/src/core/lv_obj_draw.c \
../Midware/LVGL/src/core/lv_obj_pos.c \
../Midware/LVGL/src/core/lv_obj_scroll.c \
../Midware/LVGL/src/core/lv_obj_style.c \
../Midware/LVGL/src/core/lv_obj_style_gen.c \
../Midware/LVGL/src/core/lv_obj_tree.c \
../Midware/LVGL/src/core/lv_refr.c \
../Midware/LVGL/src/core/lv_theme.c 

OBJS += \
./Midware/LVGL/src/core/lv_disp.o \
./Midware/LVGL/src/core/lv_event.o \
./Midware/LVGL/src/core/lv_group.o \
./Midware/LVGL/src/core/lv_indev.o \
./Midware/LVGL/src/core/lv_indev_scroll.o \
./Midware/LVGL/src/core/lv_obj.o \
./Midware/LVGL/src/core/lv_obj_class.o \
./Midware/LVGL/src/core/lv_obj_draw.o \
./Midware/LVGL/src/core/lv_obj_pos.o \
./Midware/LVGL/src/core/lv_obj_scroll.o \
./Midware/LVGL/src/core/lv_obj_style.o \
./Midware/LVGL/src/core/lv_obj_style_gen.o \
./Midware/LVGL/src/core/lv_obj_tree.o \
./Midware/LVGL/src/core/lv_refr.o \
./Midware/LVGL/src/core/lv_theme.o 

C_DEPS += \
./Midware/LVGL/src/core/lv_disp.d \
./Midware/LVGL/src/core/lv_event.d \
./Midware/LVGL/src/core/lv_group.d \
./Midware/LVGL/src/core/lv_indev.d \
./Midware/LVGL/src/core/lv_indev_scroll.d \
./Midware/LVGL/src/core/lv_obj.d \
./Midware/LVGL/src/core/lv_obj_class.d \
./Midware/LVGL/src/core/lv_obj_draw.d \
./Midware/LVGL/src/core/lv_obj_pos.d \
./Midware/LVGL/src/core/lv_obj_scroll.d \
./Midware/LVGL/src/core/lv_obj_style.d \
./Midware/LVGL/src/core/lv_obj_style_gen.d \
./Midware/LVGL/src/core/lv_obj_tree.d \
./Midware/LVGL/src/core/lv_refr.d \
./Midware/LVGL/src/core/lv_theme.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LVGL/src/core/%.o Midware/LVGL/src/core/%.su Midware/LVGL/src/core/%.cyclo: ../Midware/LVGL/src/core/%.c Midware/LVGL/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Hardware/DISP" -I"E:/My_Work/STM32F407VET6/Hardware/TOUCH" -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LVGL-2f-src-2f-core

clean-Midware-2f-LVGL-2f-src-2f-core:
	-$(RM) ./Midware/LVGL/src/core/lv_disp.cyclo ./Midware/LVGL/src/core/lv_disp.d ./Midware/LVGL/src/core/lv_disp.o ./Midware/LVGL/src/core/lv_disp.su ./Midware/LVGL/src/core/lv_event.cyclo ./Midware/LVGL/src/core/lv_event.d ./Midware/LVGL/src/core/lv_event.o ./Midware/LVGL/src/core/lv_event.su ./Midware/LVGL/src/core/lv_group.cyclo ./Midware/LVGL/src/core/lv_group.d ./Midware/LVGL/src/core/lv_group.o ./Midware/LVGL/src/core/lv_group.su ./Midware/LVGL/src/core/lv_indev.cyclo ./Midware/LVGL/src/core/lv_indev.d ./Midware/LVGL/src/core/lv_indev.o ./Midware/LVGL/src/core/lv_indev.su ./Midware/LVGL/src/core/lv_indev_scroll.cyclo ./Midware/LVGL/src/core/lv_indev_scroll.d ./Midware/LVGL/src/core/lv_indev_scroll.o ./Midware/LVGL/src/core/lv_indev_scroll.su ./Midware/LVGL/src/core/lv_obj.cyclo ./Midware/LVGL/src/core/lv_obj.d ./Midware/LVGL/src/core/lv_obj.o ./Midware/LVGL/src/core/lv_obj.su ./Midware/LVGL/src/core/lv_obj_class.cyclo ./Midware/LVGL/src/core/lv_obj_class.d ./Midware/LVGL/src/core/lv_obj_class.o ./Midware/LVGL/src/core/lv_obj_class.su ./Midware/LVGL/src/core/lv_obj_draw.cyclo ./Midware/LVGL/src/core/lv_obj_draw.d ./Midware/LVGL/src/core/lv_obj_draw.o ./Midware/LVGL/src/core/lv_obj_draw.su ./Midware/LVGL/src/core/lv_obj_pos.cyclo ./Midware/LVGL/src/core/lv_obj_pos.d ./Midware/LVGL/src/core/lv_obj_pos.o ./Midware/LVGL/src/core/lv_obj_pos.su ./Midware/LVGL/src/core/lv_obj_scroll.cyclo ./Midware/LVGL/src/core/lv_obj_scroll.d ./Midware/LVGL/src/core/lv_obj_scroll.o ./Midware/LVGL/src/core/lv_obj_scroll.su ./Midware/LVGL/src/core/lv_obj_style.cyclo ./Midware/LVGL/src/core/lv_obj_style.d ./Midware/LVGL/src/core/lv_obj_style.o ./Midware/LVGL/src/core/lv_obj_style.su ./Midware/LVGL/src/core/lv_obj_style_gen.cyclo ./Midware/LVGL/src/core/lv_obj_style_gen.d ./Midware/LVGL/src/core/lv_obj_style_gen.o ./Midware/LVGL/src/core/lv_obj_style_gen.su ./Midware/LVGL/src/core/lv_obj_tree.cyclo ./Midware/LVGL/src/core/lv_obj_tree.d ./Midware/LVGL/src/core/lv_obj_tree.o ./Midware/LVGL/src/core/lv_obj_tree.su ./Midware/LVGL/src/core/lv_refr.cyclo ./Midware/LVGL/src/core/lv_refr.d ./Midware/LVGL/src/core/lv_refr.o ./Midware/LVGL/src/core/lv_refr.su ./Midware/LVGL/src/core/lv_theme.cyclo ./Midware/LVGL/src/core/lv_theme.d ./Midware/LVGL/src/core/lv_theme.o ./Midware/LVGL/src/core/lv_theme.su

.PHONY: clean-Midware-2f-LVGL-2f-src-2f-core

