################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hardware/DISP/disp.c 

OBJS += \
./Hardware/DISP/disp.o 

C_DEPS += \
./Hardware/DISP/disp.d 


# Each subdirectory must supply rules for building sources it contributes
Hardware/DISP/%.o Hardware/DISP/%.su Hardware/DISP/%.cyclo: ../Hardware/DISP/%.c Hardware/DISP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Learn/STM32F407VET6/Hardware/DISP" -I"E:/My_Learn/STM32F407VET6/Hardware/TOUCH" -I"E:/My_Learn/STM32F407VET6/Midware/FatFS" -I"E:/My_Learn/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Learn/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Learn/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Learn/STM32F407VET6/Midware/LVGL" -I"E:/My_Learn/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Learn/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Learn/STM32F407VET6/Protocol" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hardware-2f-DISP

clean-Hardware-2f-DISP:
	-$(RM) ./Hardware/DISP/disp.cyclo ./Hardware/DISP/disp.d ./Hardware/DISP/disp.o ./Hardware/DISP/disp.su

.PHONY: clean-Hardware-2f-DISP

