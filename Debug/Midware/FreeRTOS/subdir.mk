################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/FreeRTOS/event_groups.c \
../Midware/FreeRTOS/list.c \
../Midware/FreeRTOS/queue.c \
../Midware/FreeRTOS/stream_buffer.c \
../Midware/FreeRTOS/tasks.c \
../Midware/FreeRTOS/timers.c 

OBJS += \
./Midware/FreeRTOS/event_groups.o \
./Midware/FreeRTOS/list.o \
./Midware/FreeRTOS/queue.o \
./Midware/FreeRTOS/stream_buffer.o \
./Midware/FreeRTOS/tasks.o \
./Midware/FreeRTOS/timers.o 

C_DEPS += \
./Midware/FreeRTOS/event_groups.d \
./Midware/FreeRTOS/list.d \
./Midware/FreeRTOS/queue.d \
./Midware/FreeRTOS/stream_buffer.d \
./Midware/FreeRTOS/tasks.d \
./Midware/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/FreeRTOS/%.o Midware/FreeRTOS/%.su Midware/FreeRTOS/%.cyclo: ../Midware/FreeRTOS/%.c Midware/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -I"E:/My_Work/STM32F407VET6/Core" -I"E:/My_Work/STM32F407VET6/Midware/LwIP" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/system" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src/include" -I"E:/My_Work/STM32F407VET6/Hardware/W25Q128" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-FreeRTOS

clean-Midware-2f-FreeRTOS:
	-$(RM) ./Midware/FreeRTOS/event_groups.cyclo ./Midware/FreeRTOS/event_groups.d ./Midware/FreeRTOS/event_groups.o ./Midware/FreeRTOS/event_groups.su ./Midware/FreeRTOS/list.cyclo ./Midware/FreeRTOS/list.d ./Midware/FreeRTOS/list.o ./Midware/FreeRTOS/list.su ./Midware/FreeRTOS/queue.cyclo ./Midware/FreeRTOS/queue.d ./Midware/FreeRTOS/queue.o ./Midware/FreeRTOS/queue.su ./Midware/FreeRTOS/stream_buffer.cyclo ./Midware/FreeRTOS/stream_buffer.d ./Midware/FreeRTOS/stream_buffer.o ./Midware/FreeRTOS/stream_buffer.su ./Midware/FreeRTOS/tasks.cyclo ./Midware/FreeRTOS/tasks.d ./Midware/FreeRTOS/tasks.o ./Midware/FreeRTOS/tasks.su ./Midware/FreeRTOS/timers.cyclo ./Midware/FreeRTOS/timers.d ./Midware/FreeRTOS/timers.o ./Midware/FreeRTOS/timers.su

.PHONY: clean-Midware-2f-FreeRTOS

