################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LwIP/src/core/altcp.c \
../Midware/LwIP/src/core/altcp_alloc.c \
../Midware/LwIP/src/core/altcp_tcp.c \
../Midware/LwIP/src/core/def.c \
../Midware/LwIP/src/core/dns.c \
../Midware/LwIP/src/core/inet_chksum.c \
../Midware/LwIP/src/core/init.c \
../Midware/LwIP/src/core/ip.c \
../Midware/LwIP/src/core/mem.c \
../Midware/LwIP/src/core/memp.c \
../Midware/LwIP/src/core/netif.c \
../Midware/LwIP/src/core/pbuf.c \
../Midware/LwIP/src/core/raw.c \
../Midware/LwIP/src/core/stats.c \
../Midware/LwIP/src/core/sys.c \
../Midware/LwIP/src/core/tcp.c \
../Midware/LwIP/src/core/tcp_in.c \
../Midware/LwIP/src/core/tcp_out.c \
../Midware/LwIP/src/core/timeouts.c \
../Midware/LwIP/src/core/udp.c 

OBJS += \
./Midware/LwIP/src/core/altcp.o \
./Midware/LwIP/src/core/altcp_alloc.o \
./Midware/LwIP/src/core/altcp_tcp.o \
./Midware/LwIP/src/core/def.o \
./Midware/LwIP/src/core/dns.o \
./Midware/LwIP/src/core/inet_chksum.o \
./Midware/LwIP/src/core/init.o \
./Midware/LwIP/src/core/ip.o \
./Midware/LwIP/src/core/mem.o \
./Midware/LwIP/src/core/memp.o \
./Midware/LwIP/src/core/netif.o \
./Midware/LwIP/src/core/pbuf.o \
./Midware/LwIP/src/core/raw.o \
./Midware/LwIP/src/core/stats.o \
./Midware/LwIP/src/core/sys.o \
./Midware/LwIP/src/core/tcp.o \
./Midware/LwIP/src/core/tcp_in.o \
./Midware/LwIP/src/core/tcp_out.o \
./Midware/LwIP/src/core/timeouts.o \
./Midware/LwIP/src/core/udp.o 

C_DEPS += \
./Midware/LwIP/src/core/altcp.d \
./Midware/LwIP/src/core/altcp_alloc.d \
./Midware/LwIP/src/core/altcp_tcp.d \
./Midware/LwIP/src/core/def.d \
./Midware/LwIP/src/core/dns.d \
./Midware/LwIP/src/core/inet_chksum.d \
./Midware/LwIP/src/core/init.d \
./Midware/LwIP/src/core/ip.d \
./Midware/LwIP/src/core/mem.d \
./Midware/LwIP/src/core/memp.d \
./Midware/LwIP/src/core/netif.d \
./Midware/LwIP/src/core/pbuf.d \
./Midware/LwIP/src/core/raw.d \
./Midware/LwIP/src/core/stats.d \
./Midware/LwIP/src/core/sys.d \
./Midware/LwIP/src/core/tcp.d \
./Midware/LwIP/src/core/tcp_in.d \
./Midware/LwIP/src/core/tcp_out.d \
./Midware/LwIP/src/core/timeouts.d \
./Midware/LwIP/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LwIP/src/core/%.o Midware/LwIP/src/core/%.su Midware/LwIP/src/core/%.cyclo: ../Midware/LwIP/src/core/%.c Midware/LwIP/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -I"E:/My_Work/STM32F407VET6/Core" -I"E:/My_Work/STM32F407VET6/Midware/LwIP" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/system" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src/include" -I"E:/My_Work/STM32F407VET6/Hardware/W25Q128" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LwIP-2f-src-2f-core

clean-Midware-2f-LwIP-2f-src-2f-core:
	-$(RM) ./Midware/LwIP/src/core/altcp.cyclo ./Midware/LwIP/src/core/altcp.d ./Midware/LwIP/src/core/altcp.o ./Midware/LwIP/src/core/altcp.su ./Midware/LwIP/src/core/altcp_alloc.cyclo ./Midware/LwIP/src/core/altcp_alloc.d ./Midware/LwIP/src/core/altcp_alloc.o ./Midware/LwIP/src/core/altcp_alloc.su ./Midware/LwIP/src/core/altcp_tcp.cyclo ./Midware/LwIP/src/core/altcp_tcp.d ./Midware/LwIP/src/core/altcp_tcp.o ./Midware/LwIP/src/core/altcp_tcp.su ./Midware/LwIP/src/core/def.cyclo ./Midware/LwIP/src/core/def.d ./Midware/LwIP/src/core/def.o ./Midware/LwIP/src/core/def.su ./Midware/LwIP/src/core/dns.cyclo ./Midware/LwIP/src/core/dns.d ./Midware/LwIP/src/core/dns.o ./Midware/LwIP/src/core/dns.su ./Midware/LwIP/src/core/inet_chksum.cyclo ./Midware/LwIP/src/core/inet_chksum.d ./Midware/LwIP/src/core/inet_chksum.o ./Midware/LwIP/src/core/inet_chksum.su ./Midware/LwIP/src/core/init.cyclo ./Midware/LwIP/src/core/init.d ./Midware/LwIP/src/core/init.o ./Midware/LwIP/src/core/init.su ./Midware/LwIP/src/core/ip.cyclo ./Midware/LwIP/src/core/ip.d ./Midware/LwIP/src/core/ip.o ./Midware/LwIP/src/core/ip.su ./Midware/LwIP/src/core/mem.cyclo ./Midware/LwIP/src/core/mem.d ./Midware/LwIP/src/core/mem.o ./Midware/LwIP/src/core/mem.su ./Midware/LwIP/src/core/memp.cyclo ./Midware/LwIP/src/core/memp.d ./Midware/LwIP/src/core/memp.o ./Midware/LwIP/src/core/memp.su ./Midware/LwIP/src/core/netif.cyclo ./Midware/LwIP/src/core/netif.d ./Midware/LwIP/src/core/netif.o ./Midware/LwIP/src/core/netif.su ./Midware/LwIP/src/core/pbuf.cyclo ./Midware/LwIP/src/core/pbuf.d ./Midware/LwIP/src/core/pbuf.o ./Midware/LwIP/src/core/pbuf.su ./Midware/LwIP/src/core/raw.cyclo ./Midware/LwIP/src/core/raw.d ./Midware/LwIP/src/core/raw.o ./Midware/LwIP/src/core/raw.su ./Midware/LwIP/src/core/stats.cyclo ./Midware/LwIP/src/core/stats.d ./Midware/LwIP/src/core/stats.o ./Midware/LwIP/src/core/stats.su ./Midware/LwIP/src/core/sys.cyclo ./Midware/LwIP/src/core/sys.d ./Midware/LwIP/src/core/sys.o ./Midware/LwIP/src/core/sys.su ./Midware/LwIP/src/core/tcp.cyclo ./Midware/LwIP/src/core/tcp.d ./Midware/LwIP/src/core/tcp.o ./Midware/LwIP/src/core/tcp.su ./Midware/LwIP/src/core/tcp_in.cyclo ./Midware/LwIP/src/core/tcp_in.d ./Midware/LwIP/src/core/tcp_in.o ./Midware/LwIP/src/core/tcp_in.su ./Midware/LwIP/src/core/tcp_out.cyclo ./Midware/LwIP/src/core/tcp_out.d ./Midware/LwIP/src/core/tcp_out.o ./Midware/LwIP/src/core/tcp_out.su ./Midware/LwIP/src/core/timeouts.cyclo ./Midware/LwIP/src/core/timeouts.d ./Midware/LwIP/src/core/timeouts.o ./Midware/LwIP/src/core/timeouts.su ./Midware/LwIP/src/core/udp.cyclo ./Midware/LwIP/src/core/udp.d ./Midware/LwIP/src/core/udp.o ./Midware/LwIP/src/core/udp.su

.PHONY: clean-Midware-2f-LwIP-2f-src-2f-core

