################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/FatFS/diskio.c \
../Midware/FatFS/ff.c \
../Midware/FatFS/ffsystem.c \
../Midware/FatFS/ffunicode.c 

OBJS += \
./Midware/FatFS/diskio.o \
./Midware/FatFS/ff.o \
./Midware/FatFS/ffsystem.o \
./Midware/FatFS/ffunicode.o 

C_DEPS += \
./Midware/FatFS/diskio.d \
./Midware/FatFS/ff.d \
./Midware/FatFS/ffsystem.d \
./Midware/FatFS/ffunicode.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/FatFS/%.o Midware/FatFS/%.su Midware/FatFS/%.cyclo: ../Midware/FatFS/%.c Midware/FatFS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VE/Hardware/DISP" -I"E:/My_Work/STM32F407VE/Hardware/TOUCH" -I"E:/My_Work/STM32F407VE/Midware/FatFS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VE/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VE/Midware/LVGL/port" -I"E:/My_Work/STM32F407VE/Midware/LVGL/src" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VE/Midware/LVGL" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VE/Hardware/AT24C02" -I"E:/My_Work/STM32F407VE/Protocol" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-FatFS

clean-Midware-2f-FatFS:
	-$(RM) ./Midware/FatFS/diskio.cyclo ./Midware/FatFS/diskio.d ./Midware/FatFS/diskio.o ./Midware/FatFS/diskio.su ./Midware/FatFS/ff.cyclo ./Midware/FatFS/ff.d ./Midware/FatFS/ff.o ./Midware/FatFS/ff.su ./Midware/FatFS/ffsystem.cyclo ./Midware/FatFS/ffsystem.d ./Midware/FatFS/ffsystem.o ./Midware/FatFS/ffsystem.su ./Midware/FatFS/ffunicode.cyclo ./Midware/FatFS/ffunicode.d ./Midware/FatFS/ffunicode.o ./Midware/FatFS/ffunicode.su

.PHONY: clean-Midware-2f-FatFS

