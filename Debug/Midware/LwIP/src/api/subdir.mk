################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LwIP/src/api/api_lib.c \
../Midware/LwIP/src/api/api_msg.c \
../Midware/LwIP/src/api/err.c \
../Midware/LwIP/src/api/if_api.c \
../Midware/LwIP/src/api/netbuf.c \
../Midware/LwIP/src/api/netdb.c \
../Midware/LwIP/src/api/netifapi.c \
../Midware/LwIP/src/api/sockets.c \
../Midware/LwIP/src/api/tcpip.c 

OBJS += \
./Midware/LwIP/src/api/api_lib.o \
./Midware/LwIP/src/api/api_msg.o \
./Midware/LwIP/src/api/err.o \
./Midware/LwIP/src/api/if_api.o \
./Midware/LwIP/src/api/netbuf.o \
./Midware/LwIP/src/api/netdb.o \
./Midware/LwIP/src/api/netifapi.o \
./Midware/LwIP/src/api/sockets.o \
./Midware/LwIP/src/api/tcpip.o 

C_DEPS += \
./Midware/LwIP/src/api/api_lib.d \
./Midware/LwIP/src/api/api_msg.d \
./Midware/LwIP/src/api/err.d \
./Midware/LwIP/src/api/if_api.d \
./Midware/LwIP/src/api/netbuf.d \
./Midware/LwIP/src/api/netdb.d \
./Midware/LwIP/src/api/netifapi.d \
./Midware/LwIP/src/api/sockets.d \
./Midware/LwIP/src/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LwIP/src/api/%.o Midware/LwIP/src/api/%.su Midware/LwIP/src/api/%.cyclo: ../Midware/LwIP/src/api/%.c Midware/LwIP/src/api/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -I"E:/My_Work/STM32F407VET6/Core" -I"E:/My_Work/STM32F407VET6/Midware/LwIP" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/system" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src/include" -I"E:/My_Work/STM32F407VET6/Hardware/W25Q128" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LwIP-2f-src-2f-api

clean-Midware-2f-LwIP-2f-src-2f-api:
	-$(RM) ./Midware/LwIP/src/api/api_lib.cyclo ./Midware/LwIP/src/api/api_lib.d ./Midware/LwIP/src/api/api_lib.o ./Midware/LwIP/src/api/api_lib.su ./Midware/LwIP/src/api/api_msg.cyclo ./Midware/LwIP/src/api/api_msg.d ./Midware/LwIP/src/api/api_msg.o ./Midware/LwIP/src/api/api_msg.su ./Midware/LwIP/src/api/err.cyclo ./Midware/LwIP/src/api/err.d ./Midware/LwIP/src/api/err.o ./Midware/LwIP/src/api/err.su ./Midware/LwIP/src/api/if_api.cyclo ./Midware/LwIP/src/api/if_api.d ./Midware/LwIP/src/api/if_api.o ./Midware/LwIP/src/api/if_api.su ./Midware/LwIP/src/api/netbuf.cyclo ./Midware/LwIP/src/api/netbuf.d ./Midware/LwIP/src/api/netbuf.o ./Midware/LwIP/src/api/netbuf.su ./Midware/LwIP/src/api/netdb.cyclo ./Midware/LwIP/src/api/netdb.d ./Midware/LwIP/src/api/netdb.o ./Midware/LwIP/src/api/netdb.su ./Midware/LwIP/src/api/netifapi.cyclo ./Midware/LwIP/src/api/netifapi.d ./Midware/LwIP/src/api/netifapi.o ./Midware/LwIP/src/api/netifapi.su ./Midware/LwIP/src/api/sockets.cyclo ./Midware/LwIP/src/api/sockets.d ./Midware/LwIP/src/api/sockets.o ./Midware/LwIP/src/api/sockets.su ./Midware/LwIP/src/api/tcpip.cyclo ./Midware/LwIP/src/api/tcpip.d ./Midware/LwIP/src/api/tcpip.o ./Midware/LwIP/src/api/tcpip.su

.PHONY: clean-Midware-2f-LwIP-2f-src-2f-api

