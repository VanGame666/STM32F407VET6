################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/TinyUSB/src/class/cdc/cdc_device.c \
../Midware/TinyUSB/src/class/cdc/cdc_host.c \
../Midware/TinyUSB/src/class/cdc/cdc_rndis_host.c 

OBJS += \
./Midware/TinyUSB/src/class/cdc/cdc_device.o \
./Midware/TinyUSB/src/class/cdc/cdc_host.o \
./Midware/TinyUSB/src/class/cdc/cdc_rndis_host.o 

C_DEPS += \
./Midware/TinyUSB/src/class/cdc/cdc_device.d \
./Midware/TinyUSB/src/class/cdc/cdc_host.d \
./Midware/TinyUSB/src/class/cdc/cdc_rndis_host.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/TinyUSB/src/class/cdc/%.o Midware/TinyUSB/src/class/cdc/%.su Midware/TinyUSB/src/class/cdc/%.cyclo: ../Midware/TinyUSB/src/class/cdc/%.c Midware/TinyUSB/src/class/cdc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VE/Hardware/DISP" -I"E:/My_Work/STM32F407VE/Hardware/TOUCH" -I"E:/My_Work/STM32F407VE/Midware/FatFS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VE/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VE/Midware/LVGL/port" -I"E:/My_Work/STM32F407VE/Midware/LVGL/src" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VE/Midware/LVGL" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VE/Hardware/AT24C02" -I"E:/My_Work/STM32F407VE/Protocol" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-TinyUSB-2f-src-2f-class-2f-cdc

clean-Midware-2f-TinyUSB-2f-src-2f-class-2f-cdc:
	-$(RM) ./Midware/TinyUSB/src/class/cdc/cdc_device.cyclo ./Midware/TinyUSB/src/class/cdc/cdc_device.d ./Midware/TinyUSB/src/class/cdc/cdc_device.o ./Midware/TinyUSB/src/class/cdc/cdc_device.su ./Midware/TinyUSB/src/class/cdc/cdc_host.cyclo ./Midware/TinyUSB/src/class/cdc/cdc_host.d ./Midware/TinyUSB/src/class/cdc/cdc_host.o ./Midware/TinyUSB/src/class/cdc/cdc_host.su ./Midware/TinyUSB/src/class/cdc/cdc_rndis_host.cyclo ./Midware/TinyUSB/src/class/cdc/cdc_rndis_host.d ./Midware/TinyUSB/src/class/cdc/cdc_rndis_host.o ./Midware/TinyUSB/src/class/cdc/cdc_rndis_host.su

.PHONY: clean-Midware-2f-TinyUSB-2f-src-2f-class-2f-cdc

