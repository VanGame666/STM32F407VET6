################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/LwIP/src/core/altcp.c \
../Middlewares/Third_Party/LwIP/src/core/altcp_alloc.c \
../Middlewares/Third_Party/LwIP/src/core/altcp_tcp.c \
../Middlewares/Third_Party/LwIP/src/core/def.c \
../Middlewares/Third_Party/LwIP/src/core/dns.c \
../Middlewares/Third_Party/LwIP/src/core/inet_chksum.c \
../Middlewares/Third_Party/LwIP/src/core/init.c \
../Middlewares/Third_Party/LwIP/src/core/ip.c \
../Middlewares/Third_Party/LwIP/src/core/mem.c \
../Middlewares/Third_Party/LwIP/src/core/memp.c \
../Middlewares/Third_Party/LwIP/src/core/netif.c \
../Middlewares/Third_Party/LwIP/src/core/pbuf.c \
../Middlewares/Third_Party/LwIP/src/core/raw.c \
../Middlewares/Third_Party/LwIP/src/core/stats.c \
../Middlewares/Third_Party/LwIP/src/core/sys.c \
../Middlewares/Third_Party/LwIP/src/core/tcp.c \
../Middlewares/Third_Party/LwIP/src/core/tcp_in.c \
../Middlewares/Third_Party/LwIP/src/core/tcp_out.c \
../Middlewares/Third_Party/LwIP/src/core/timeouts.c \
../Middlewares/Third_Party/LwIP/src/core/udp.c 

OBJS += \
./Middlewares/Third_Party/LwIP/src/core/altcp.o \
./Middlewares/Third_Party/LwIP/src/core/altcp_alloc.o \
./Middlewares/Third_Party/LwIP/src/core/altcp_tcp.o \
./Middlewares/Third_Party/LwIP/src/core/def.o \
./Middlewares/Third_Party/LwIP/src/core/dns.o \
./Middlewares/Third_Party/LwIP/src/core/inet_chksum.o \
./Middlewares/Third_Party/LwIP/src/core/init.o \
./Middlewares/Third_Party/LwIP/src/core/ip.o \
./Middlewares/Third_Party/LwIP/src/core/mem.o \
./Middlewares/Third_Party/LwIP/src/core/memp.o \
./Middlewares/Third_Party/LwIP/src/core/netif.o \
./Middlewares/Third_Party/LwIP/src/core/pbuf.o \
./Middlewares/Third_Party/LwIP/src/core/raw.o \
./Middlewares/Third_Party/LwIP/src/core/stats.o \
./Middlewares/Third_Party/LwIP/src/core/sys.o \
./Middlewares/Third_Party/LwIP/src/core/tcp.o \
./Middlewares/Third_Party/LwIP/src/core/tcp_in.o \
./Middlewares/Third_Party/LwIP/src/core/tcp_out.o \
./Middlewares/Third_Party/LwIP/src/core/timeouts.o \
./Middlewares/Third_Party/LwIP/src/core/udp.o 

C_DEPS += \
./Middlewares/Third_Party/LwIP/src/core/altcp.d \
./Middlewares/Third_Party/LwIP/src/core/altcp_alloc.d \
./Middlewares/Third_Party/LwIP/src/core/altcp_tcp.d \
./Middlewares/Third_Party/LwIP/src/core/def.d \
./Middlewares/Third_Party/LwIP/src/core/dns.d \
./Middlewares/Third_Party/LwIP/src/core/inet_chksum.d \
./Middlewares/Third_Party/LwIP/src/core/init.d \
./Middlewares/Third_Party/LwIP/src/core/ip.d \
./Middlewares/Third_Party/LwIP/src/core/mem.d \
./Middlewares/Third_Party/LwIP/src/core/memp.d \
./Middlewares/Third_Party/LwIP/src/core/netif.d \
./Middlewares/Third_Party/LwIP/src/core/pbuf.d \
./Middlewares/Third_Party/LwIP/src/core/raw.d \
./Middlewares/Third_Party/LwIP/src/core/stats.d \
./Middlewares/Third_Party/LwIP/src/core/sys.d \
./Middlewares/Third_Party/LwIP/src/core/tcp.d \
./Middlewares/Third_Party/LwIP/src/core/tcp_in.d \
./Middlewares/Third_Party/LwIP/src/core/tcp_out.d \
./Middlewares/Third_Party/LwIP/src/core/timeouts.d \
./Middlewares/Third_Party/LwIP/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/LwIP/src/core/%.o Middlewares/Third_Party/LwIP/src/core/%.su Middlewares/Third_Party/LwIP/src/core/%.cyclo: ../Middlewares/Third_Party/LwIP/src/core/%.c Middlewares/Third_Party/LwIP/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Hardware/DISP" -I"E:/My_Work/STM32F407VET6/Hardware/TOUCH" -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -I"E:/My_Work/STM32F407VET6/Core" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/BSP/Components/lan8742 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-core

clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-core:
	-$(RM) ./Middlewares/Third_Party/LwIP/src/core/altcp.cyclo ./Middlewares/Third_Party/LwIP/src/core/altcp.d ./Middlewares/Third_Party/LwIP/src/core/altcp.o ./Middlewares/Third_Party/LwIP/src/core/altcp.su ./Middlewares/Third_Party/LwIP/src/core/altcp_alloc.cyclo ./Middlewares/Third_Party/LwIP/src/core/altcp_alloc.d ./Middlewares/Third_Party/LwIP/src/core/altcp_alloc.o ./Middlewares/Third_Party/LwIP/src/core/altcp_alloc.su ./Middlewares/Third_Party/LwIP/src/core/altcp_tcp.cyclo ./Middlewares/Third_Party/LwIP/src/core/altcp_tcp.d ./Middlewares/Third_Party/LwIP/src/core/altcp_tcp.o ./Middlewares/Third_Party/LwIP/src/core/altcp_tcp.su ./Middlewares/Third_Party/LwIP/src/core/def.cyclo ./Middlewares/Third_Party/LwIP/src/core/def.d ./Middlewares/Third_Party/LwIP/src/core/def.o ./Middlewares/Third_Party/LwIP/src/core/def.su ./Middlewares/Third_Party/LwIP/src/core/dns.cyclo ./Middlewares/Third_Party/LwIP/src/core/dns.d ./Middlewares/Third_Party/LwIP/src/core/dns.o ./Middlewares/Third_Party/LwIP/src/core/dns.su ./Middlewares/Third_Party/LwIP/src/core/inet_chksum.cyclo ./Middlewares/Third_Party/LwIP/src/core/inet_chksum.d ./Middlewares/Third_Party/LwIP/src/core/inet_chksum.o ./Middlewares/Third_Party/LwIP/src/core/inet_chksum.su ./Middlewares/Third_Party/LwIP/src/core/init.cyclo ./Middlewares/Third_Party/LwIP/src/core/init.d ./Middlewares/Third_Party/LwIP/src/core/init.o ./Middlewares/Third_Party/LwIP/src/core/init.su ./Middlewares/Third_Party/LwIP/src/core/ip.cyclo ./Middlewares/Third_Party/LwIP/src/core/ip.d ./Middlewares/Third_Party/LwIP/src/core/ip.o ./Middlewares/Third_Party/LwIP/src/core/ip.su ./Middlewares/Third_Party/LwIP/src/core/mem.cyclo ./Middlewares/Third_Party/LwIP/src/core/mem.d ./Middlewares/Third_Party/LwIP/src/core/mem.o ./Middlewares/Third_Party/LwIP/src/core/mem.su ./Middlewares/Third_Party/LwIP/src/core/memp.cyclo ./Middlewares/Third_Party/LwIP/src/core/memp.d ./Middlewares/Third_Party/LwIP/src/core/memp.o ./Middlewares/Third_Party/LwIP/src/core/memp.su ./Middlewares/Third_Party/LwIP/src/core/netif.cyclo ./Middlewares/Third_Party/LwIP/src/core/netif.d ./Middlewares/Third_Party/LwIP/src/core/netif.o ./Middlewares/Third_Party/LwIP/src/core/netif.su ./Middlewares/Third_Party/LwIP/src/core/pbuf.cyclo ./Middlewares/Third_Party/LwIP/src/core/pbuf.d ./Middlewares/Third_Party/LwIP/src/core/pbuf.o ./Middlewares/Third_Party/LwIP/src/core/pbuf.su ./Middlewares/Third_Party/LwIP/src/core/raw.cyclo ./Middlewares/Third_Party/LwIP/src/core/raw.d ./Middlewares/Third_Party/LwIP/src/core/raw.o ./Middlewares/Third_Party/LwIP/src/core/raw.su ./Middlewares/Third_Party/LwIP/src/core/stats.cyclo ./Middlewares/Third_Party/LwIP/src/core/stats.d ./Middlewares/Third_Party/LwIP/src/core/stats.o ./Middlewares/Third_Party/LwIP/src/core/stats.su ./Middlewares/Third_Party/LwIP/src/core/sys.cyclo ./Middlewares/Third_Party/LwIP/src/core/sys.d ./Middlewares/Third_Party/LwIP/src/core/sys.o ./Middlewares/Third_Party/LwIP/src/core/sys.su ./Middlewares/Third_Party/LwIP/src/core/tcp.cyclo ./Middlewares/Third_Party/LwIP/src/core/tcp.d ./Middlewares/Third_Party/LwIP/src/core/tcp.o ./Middlewares/Third_Party/LwIP/src/core/tcp.su ./Middlewares/Third_Party/LwIP/src/core/tcp_in.cyclo ./Middlewares/Third_Party/LwIP/src/core/tcp_in.d ./Middlewares/Third_Party/LwIP/src/core/tcp_in.o ./Middlewares/Third_Party/LwIP/src/core/tcp_in.su ./Middlewares/Third_Party/LwIP/src/core/tcp_out.cyclo ./Middlewares/Third_Party/LwIP/src/core/tcp_out.d ./Middlewares/Third_Party/LwIP/src/core/tcp_out.o ./Middlewares/Third_Party/LwIP/src/core/tcp_out.su ./Middlewares/Third_Party/LwIP/src/core/timeouts.cyclo ./Middlewares/Third_Party/LwIP/src/core/timeouts.d ./Middlewares/Third_Party/LwIP/src/core/timeouts.o ./Middlewares/Third_Party/LwIP/src/core/timeouts.su ./Middlewares/Third_Party/LwIP/src/core/udp.cyclo ./Middlewares/Third_Party/LwIP/src/core/udp.d ./Middlewares/Third_Party/LwIP/src/core/udp.o ./Middlewares/Third_Party/LwIP/src/core/udp.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-LwIP-2f-src-2f-core

