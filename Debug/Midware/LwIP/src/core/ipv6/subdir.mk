################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LwIP/src/core/ipv6/dhcp6.c \
../Midware/LwIP/src/core/ipv6/ethip6.c \
../Midware/LwIP/src/core/ipv6/icmp6.c \
../Midware/LwIP/src/core/ipv6/inet6.c \
../Midware/LwIP/src/core/ipv6/ip6.c \
../Midware/LwIP/src/core/ipv6/ip6_addr.c \
../Midware/LwIP/src/core/ipv6/ip6_frag.c \
../Midware/LwIP/src/core/ipv6/mld6.c \
../Midware/LwIP/src/core/ipv6/nd6.c 

OBJS += \
./Midware/LwIP/src/core/ipv6/dhcp6.o \
./Midware/LwIP/src/core/ipv6/ethip6.o \
./Midware/LwIP/src/core/ipv6/icmp6.o \
./Midware/LwIP/src/core/ipv6/inet6.o \
./Midware/LwIP/src/core/ipv6/ip6.o \
./Midware/LwIP/src/core/ipv6/ip6_addr.o \
./Midware/LwIP/src/core/ipv6/ip6_frag.o \
./Midware/LwIP/src/core/ipv6/mld6.o \
./Midware/LwIP/src/core/ipv6/nd6.o 

C_DEPS += \
./Midware/LwIP/src/core/ipv6/dhcp6.d \
./Midware/LwIP/src/core/ipv6/ethip6.d \
./Midware/LwIP/src/core/ipv6/icmp6.d \
./Midware/LwIP/src/core/ipv6/inet6.d \
./Midware/LwIP/src/core/ipv6/ip6.d \
./Midware/LwIP/src/core/ipv6/ip6_addr.d \
./Midware/LwIP/src/core/ipv6/ip6_frag.d \
./Midware/LwIP/src/core/ipv6/mld6.d \
./Midware/LwIP/src/core/ipv6/nd6.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LwIP/src/core/ipv6/%.o Midware/LwIP/src/core/ipv6/%.su Midware/LwIP/src/core/ipv6/%.cyclo: ../Midware/LwIP/src/core/ipv6/%.c Midware/LwIP/src/core/ipv6/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -I"E:/My_Work/STM32F407VET6/Core" -I"E:/My_Work/STM32F407VET6/Midware/LwIP" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/system" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src/include" -I"E:/My_Work/STM32F407VET6/Hardware/W25Q128" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LwIP-2f-src-2f-core-2f-ipv6

clean-Midware-2f-LwIP-2f-src-2f-core-2f-ipv6:
	-$(RM) ./Midware/LwIP/src/core/ipv6/dhcp6.cyclo ./Midware/LwIP/src/core/ipv6/dhcp6.d ./Midware/LwIP/src/core/ipv6/dhcp6.o ./Midware/LwIP/src/core/ipv6/dhcp6.su ./Midware/LwIP/src/core/ipv6/ethip6.cyclo ./Midware/LwIP/src/core/ipv6/ethip6.d ./Midware/LwIP/src/core/ipv6/ethip6.o ./Midware/LwIP/src/core/ipv6/ethip6.su ./Midware/LwIP/src/core/ipv6/icmp6.cyclo ./Midware/LwIP/src/core/ipv6/icmp6.d ./Midware/LwIP/src/core/ipv6/icmp6.o ./Midware/LwIP/src/core/ipv6/icmp6.su ./Midware/LwIP/src/core/ipv6/inet6.cyclo ./Midware/LwIP/src/core/ipv6/inet6.d ./Midware/LwIP/src/core/ipv6/inet6.o ./Midware/LwIP/src/core/ipv6/inet6.su ./Midware/LwIP/src/core/ipv6/ip6.cyclo ./Midware/LwIP/src/core/ipv6/ip6.d ./Midware/LwIP/src/core/ipv6/ip6.o ./Midware/LwIP/src/core/ipv6/ip6.su ./Midware/LwIP/src/core/ipv6/ip6_addr.cyclo ./Midware/LwIP/src/core/ipv6/ip6_addr.d ./Midware/LwIP/src/core/ipv6/ip6_addr.o ./Midware/LwIP/src/core/ipv6/ip6_addr.su ./Midware/LwIP/src/core/ipv6/ip6_frag.cyclo ./Midware/LwIP/src/core/ipv6/ip6_frag.d ./Midware/LwIP/src/core/ipv6/ip6_frag.o ./Midware/LwIP/src/core/ipv6/ip6_frag.su ./Midware/LwIP/src/core/ipv6/mld6.cyclo ./Midware/LwIP/src/core/ipv6/mld6.d ./Midware/LwIP/src/core/ipv6/mld6.o ./Midware/LwIP/src/core/ipv6/mld6.su ./Midware/LwIP/src/core/ipv6/nd6.cyclo ./Midware/LwIP/src/core/ipv6/nd6.d ./Midware/LwIP/src/core/ipv6/nd6.o ./Midware/LwIP/src/core/ipv6/nd6.su

.PHONY: clean-Midware-2f-LwIP-2f-src-2f-core-2f-ipv6

