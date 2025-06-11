################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/TinyUSB/src/class/midi/midi_device.c \
../Midware/TinyUSB/src/class/midi/midi_host.c 

OBJS += \
./Midware/TinyUSB/src/class/midi/midi_device.o \
./Midware/TinyUSB/src/class/midi/midi_host.o 

C_DEPS += \
./Midware/TinyUSB/src/class/midi/midi_device.d \
./Midware/TinyUSB/src/class/midi/midi_host.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/TinyUSB/src/class/midi/%.o Midware/TinyUSB/src/class/midi/%.su Midware/TinyUSB/src/class/midi/%.cyclo: ../Midware/TinyUSB/src/class/midi/%.c Midware/TinyUSB/src/class/midi/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VE/Hardware/DISP" -I"E:/My_Work/STM32F407VE/Hardware/TOUCH" -I"E:/My_Work/STM32F407VE/Midware/FatFS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VE/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VE/Midware/LVGL/port" -I"E:/My_Work/STM32F407VE/Midware/LVGL/src" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VE/Midware/LVGL" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-TinyUSB-2f-src-2f-class-2f-midi

clean-Midware-2f-TinyUSB-2f-src-2f-class-2f-midi:
	-$(RM) ./Midware/TinyUSB/src/class/midi/midi_device.cyclo ./Midware/TinyUSB/src/class/midi/midi_device.d ./Midware/TinyUSB/src/class/midi/midi_device.o ./Midware/TinyUSB/src/class/midi/midi_device.su ./Midware/TinyUSB/src/class/midi/midi_host.cyclo ./Midware/TinyUSB/src/class/midi/midi_host.d ./Midware/TinyUSB/src/class/midi/midi_host.o ./Midware/TinyUSB/src/class/midi/midi_host.su

.PHONY: clean-Midware-2f-TinyUSB-2f-src-2f-class-2f-midi

