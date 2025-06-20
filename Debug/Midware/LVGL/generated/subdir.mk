################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LVGL/generated/events_init.c \
../Midware/LVGL/generated/gui_guider.c \
../Midware/LVGL/generated/setup_scr_screen.c \
../Midware/LVGL/generated/setup_scr_screen_1.c \
../Midware/LVGL/generated/widgets_init.c 

OBJS += \
./Midware/LVGL/generated/events_init.o \
./Midware/LVGL/generated/gui_guider.o \
./Midware/LVGL/generated/setup_scr_screen.o \
./Midware/LVGL/generated/setup_scr_screen_1.o \
./Midware/LVGL/generated/widgets_init.o 

C_DEPS += \
./Midware/LVGL/generated/events_init.d \
./Midware/LVGL/generated/gui_guider.d \
./Midware/LVGL/generated/setup_scr_screen.d \
./Midware/LVGL/generated/setup_scr_screen_1.d \
./Midware/LVGL/generated/widgets_init.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LVGL/generated/%.o Midware/LVGL/generated/%.su Midware/LVGL/generated/%.cyclo: ../Midware/LVGL/generated/%.c Midware/LVGL/generated/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Learn/STM32F407VET6/Hardware/DISP" -I"E:/My_Learn/STM32F407VET6/Hardware/TOUCH" -I"E:/My_Learn/STM32F407VET6/Midware/FatFS" -I"E:/My_Learn/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Learn/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Learn/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Learn/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Learn/STM32F407VET6/Protocol" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LVGL-2f-generated

clean-Midware-2f-LVGL-2f-generated:
	-$(RM) ./Midware/LVGL/generated/events_init.cyclo ./Midware/LVGL/generated/events_init.d ./Midware/LVGL/generated/events_init.o ./Midware/LVGL/generated/events_init.su ./Midware/LVGL/generated/gui_guider.cyclo ./Midware/LVGL/generated/gui_guider.d ./Midware/LVGL/generated/gui_guider.o ./Midware/LVGL/generated/gui_guider.su ./Midware/LVGL/generated/setup_scr_screen.cyclo ./Midware/LVGL/generated/setup_scr_screen.d ./Midware/LVGL/generated/setup_scr_screen.o ./Midware/LVGL/generated/setup_scr_screen.su ./Midware/LVGL/generated/setup_scr_screen_1.cyclo ./Midware/LVGL/generated/setup_scr_screen_1.d ./Midware/LVGL/generated/setup_scr_screen_1.o ./Midware/LVGL/generated/setup_scr_screen_1.su ./Midware/LVGL/generated/widgets_init.cyclo ./Midware/LVGL/generated/widgets_init.d ./Midware/LVGL/generated/widgets_init.o ./Midware/LVGL/generated/widgets_init.su

.PHONY: clean-Midware-2f-LVGL-2f-generated

