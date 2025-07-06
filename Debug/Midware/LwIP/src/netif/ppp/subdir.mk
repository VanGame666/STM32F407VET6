################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LwIP/src/netif/ppp/auth.c \
../Midware/LwIP/src/netif/ppp/ccp.c \
../Midware/LwIP/src/netif/ppp/chap-md5.c \
../Midware/LwIP/src/netif/ppp/chap-new.c \
../Midware/LwIP/src/netif/ppp/chap_ms.c \
../Midware/LwIP/src/netif/ppp/demand.c \
../Midware/LwIP/src/netif/ppp/eap.c \
../Midware/LwIP/src/netif/ppp/ecp.c \
../Midware/LwIP/src/netif/ppp/eui64.c \
../Midware/LwIP/src/netif/ppp/fsm.c \
../Midware/LwIP/src/netif/ppp/ipcp.c \
../Midware/LwIP/src/netif/ppp/ipv6cp.c \
../Midware/LwIP/src/netif/ppp/lcp.c \
../Midware/LwIP/src/netif/ppp/magic.c \
../Midware/LwIP/src/netif/ppp/mppe.c \
../Midware/LwIP/src/netif/ppp/multilink.c \
../Midware/LwIP/src/netif/ppp/ppp.c \
../Midware/LwIP/src/netif/ppp/pppapi.c \
../Midware/LwIP/src/netif/ppp/pppcrypt.c \
../Midware/LwIP/src/netif/ppp/pppoe.c \
../Midware/LwIP/src/netif/ppp/pppol2tp.c \
../Midware/LwIP/src/netif/ppp/pppos.c \
../Midware/LwIP/src/netif/ppp/upap.c \
../Midware/LwIP/src/netif/ppp/utils.c \
../Midware/LwIP/src/netif/ppp/vj.c 

OBJS += \
./Midware/LwIP/src/netif/ppp/auth.o \
./Midware/LwIP/src/netif/ppp/ccp.o \
./Midware/LwIP/src/netif/ppp/chap-md5.o \
./Midware/LwIP/src/netif/ppp/chap-new.o \
./Midware/LwIP/src/netif/ppp/chap_ms.o \
./Midware/LwIP/src/netif/ppp/demand.o \
./Midware/LwIP/src/netif/ppp/eap.o \
./Midware/LwIP/src/netif/ppp/ecp.o \
./Midware/LwIP/src/netif/ppp/eui64.o \
./Midware/LwIP/src/netif/ppp/fsm.o \
./Midware/LwIP/src/netif/ppp/ipcp.o \
./Midware/LwIP/src/netif/ppp/ipv6cp.o \
./Midware/LwIP/src/netif/ppp/lcp.o \
./Midware/LwIP/src/netif/ppp/magic.o \
./Midware/LwIP/src/netif/ppp/mppe.o \
./Midware/LwIP/src/netif/ppp/multilink.o \
./Midware/LwIP/src/netif/ppp/ppp.o \
./Midware/LwIP/src/netif/ppp/pppapi.o \
./Midware/LwIP/src/netif/ppp/pppcrypt.o \
./Midware/LwIP/src/netif/ppp/pppoe.o \
./Midware/LwIP/src/netif/ppp/pppol2tp.o \
./Midware/LwIP/src/netif/ppp/pppos.o \
./Midware/LwIP/src/netif/ppp/upap.o \
./Midware/LwIP/src/netif/ppp/utils.o \
./Midware/LwIP/src/netif/ppp/vj.o 

C_DEPS += \
./Midware/LwIP/src/netif/ppp/auth.d \
./Midware/LwIP/src/netif/ppp/ccp.d \
./Midware/LwIP/src/netif/ppp/chap-md5.d \
./Midware/LwIP/src/netif/ppp/chap-new.d \
./Midware/LwIP/src/netif/ppp/chap_ms.d \
./Midware/LwIP/src/netif/ppp/demand.d \
./Midware/LwIP/src/netif/ppp/eap.d \
./Midware/LwIP/src/netif/ppp/ecp.d \
./Midware/LwIP/src/netif/ppp/eui64.d \
./Midware/LwIP/src/netif/ppp/fsm.d \
./Midware/LwIP/src/netif/ppp/ipcp.d \
./Midware/LwIP/src/netif/ppp/ipv6cp.d \
./Midware/LwIP/src/netif/ppp/lcp.d \
./Midware/LwIP/src/netif/ppp/magic.d \
./Midware/LwIP/src/netif/ppp/mppe.d \
./Midware/LwIP/src/netif/ppp/multilink.d \
./Midware/LwIP/src/netif/ppp/ppp.d \
./Midware/LwIP/src/netif/ppp/pppapi.d \
./Midware/LwIP/src/netif/ppp/pppcrypt.d \
./Midware/LwIP/src/netif/ppp/pppoe.d \
./Midware/LwIP/src/netif/ppp/pppol2tp.d \
./Midware/LwIP/src/netif/ppp/pppos.d \
./Midware/LwIP/src/netif/ppp/upap.d \
./Midware/LwIP/src/netif/ppp/utils.d \
./Midware/LwIP/src/netif/ppp/vj.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LwIP/src/netif/ppp/%.o Midware/LwIP/src/netif/ppp/%.su Midware/LwIP/src/netif/ppp/%.cyclo: ../Midware/LwIP/src/netif/ppp/%.c Midware/LwIP/src/netif/ppp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -I"E:/My_Work/STM32F407VET6/Core" -I"E:/My_Work/STM32F407VET6/Midware/LwIP" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/system" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src/include" -I"E:/My_Work/STM32F407VET6/Hardware/W25Q128" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LwIP-2f-src-2f-netif-2f-ppp

clean-Midware-2f-LwIP-2f-src-2f-netif-2f-ppp:
	-$(RM) ./Midware/LwIP/src/netif/ppp/auth.cyclo ./Midware/LwIP/src/netif/ppp/auth.d ./Midware/LwIP/src/netif/ppp/auth.o ./Midware/LwIP/src/netif/ppp/auth.su ./Midware/LwIP/src/netif/ppp/ccp.cyclo ./Midware/LwIP/src/netif/ppp/ccp.d ./Midware/LwIP/src/netif/ppp/ccp.o ./Midware/LwIP/src/netif/ppp/ccp.su ./Midware/LwIP/src/netif/ppp/chap-md5.cyclo ./Midware/LwIP/src/netif/ppp/chap-md5.d ./Midware/LwIP/src/netif/ppp/chap-md5.o ./Midware/LwIP/src/netif/ppp/chap-md5.su ./Midware/LwIP/src/netif/ppp/chap-new.cyclo ./Midware/LwIP/src/netif/ppp/chap-new.d ./Midware/LwIP/src/netif/ppp/chap-new.o ./Midware/LwIP/src/netif/ppp/chap-new.su ./Midware/LwIP/src/netif/ppp/chap_ms.cyclo ./Midware/LwIP/src/netif/ppp/chap_ms.d ./Midware/LwIP/src/netif/ppp/chap_ms.o ./Midware/LwIP/src/netif/ppp/chap_ms.su ./Midware/LwIP/src/netif/ppp/demand.cyclo ./Midware/LwIP/src/netif/ppp/demand.d ./Midware/LwIP/src/netif/ppp/demand.o ./Midware/LwIP/src/netif/ppp/demand.su ./Midware/LwIP/src/netif/ppp/eap.cyclo ./Midware/LwIP/src/netif/ppp/eap.d ./Midware/LwIP/src/netif/ppp/eap.o ./Midware/LwIP/src/netif/ppp/eap.su ./Midware/LwIP/src/netif/ppp/ecp.cyclo ./Midware/LwIP/src/netif/ppp/ecp.d ./Midware/LwIP/src/netif/ppp/ecp.o ./Midware/LwIP/src/netif/ppp/ecp.su ./Midware/LwIP/src/netif/ppp/eui64.cyclo ./Midware/LwIP/src/netif/ppp/eui64.d ./Midware/LwIP/src/netif/ppp/eui64.o ./Midware/LwIP/src/netif/ppp/eui64.su ./Midware/LwIP/src/netif/ppp/fsm.cyclo ./Midware/LwIP/src/netif/ppp/fsm.d ./Midware/LwIP/src/netif/ppp/fsm.o ./Midware/LwIP/src/netif/ppp/fsm.su ./Midware/LwIP/src/netif/ppp/ipcp.cyclo ./Midware/LwIP/src/netif/ppp/ipcp.d ./Midware/LwIP/src/netif/ppp/ipcp.o ./Midware/LwIP/src/netif/ppp/ipcp.su ./Midware/LwIP/src/netif/ppp/ipv6cp.cyclo ./Midware/LwIP/src/netif/ppp/ipv6cp.d ./Midware/LwIP/src/netif/ppp/ipv6cp.o ./Midware/LwIP/src/netif/ppp/ipv6cp.su ./Midware/LwIP/src/netif/ppp/lcp.cyclo ./Midware/LwIP/src/netif/ppp/lcp.d ./Midware/LwIP/src/netif/ppp/lcp.o ./Midware/LwIP/src/netif/ppp/lcp.su ./Midware/LwIP/src/netif/ppp/magic.cyclo ./Midware/LwIP/src/netif/ppp/magic.d ./Midware/LwIP/src/netif/ppp/magic.o ./Midware/LwIP/src/netif/ppp/magic.su ./Midware/LwIP/src/netif/ppp/mppe.cyclo ./Midware/LwIP/src/netif/ppp/mppe.d ./Midware/LwIP/src/netif/ppp/mppe.o ./Midware/LwIP/src/netif/ppp/mppe.su ./Midware/LwIP/src/netif/ppp/multilink.cyclo ./Midware/LwIP/src/netif/ppp/multilink.d ./Midware/LwIP/src/netif/ppp/multilink.o ./Midware/LwIP/src/netif/ppp/multilink.su ./Midware/LwIP/src/netif/ppp/ppp.cyclo ./Midware/LwIP/src/netif/ppp/ppp.d ./Midware/LwIP/src/netif/ppp/ppp.o ./Midware/LwIP/src/netif/ppp/ppp.su ./Midware/LwIP/src/netif/ppp/pppapi.cyclo ./Midware/LwIP/src/netif/ppp/pppapi.d ./Midware/LwIP/src/netif/ppp/pppapi.o ./Midware/LwIP/src/netif/ppp/pppapi.su ./Midware/LwIP/src/netif/ppp/pppcrypt.cyclo ./Midware/LwIP/src/netif/ppp/pppcrypt.d ./Midware/LwIP/src/netif/ppp/pppcrypt.o ./Midware/LwIP/src/netif/ppp/pppcrypt.su ./Midware/LwIP/src/netif/ppp/pppoe.cyclo ./Midware/LwIP/src/netif/ppp/pppoe.d ./Midware/LwIP/src/netif/ppp/pppoe.o ./Midware/LwIP/src/netif/ppp/pppoe.su ./Midware/LwIP/src/netif/ppp/pppol2tp.cyclo ./Midware/LwIP/src/netif/ppp/pppol2tp.d ./Midware/LwIP/src/netif/ppp/pppol2tp.o ./Midware/LwIP/src/netif/ppp/pppol2tp.su ./Midware/LwIP/src/netif/ppp/pppos.cyclo ./Midware/LwIP/src/netif/ppp/pppos.d ./Midware/LwIP/src/netif/ppp/pppos.o ./Midware/LwIP/src/netif/ppp/pppos.su ./Midware/LwIP/src/netif/ppp/upap.cyclo ./Midware/LwIP/src/netif/ppp/upap.d ./Midware/LwIP/src/netif/ppp/upap.o ./Midware/LwIP/src/netif/ppp/upap.su ./Midware/LwIP/src/netif/ppp/utils.cyclo ./Midware/LwIP/src/netif/ppp/utils.d ./Midware/LwIP/src/netif/ppp/utils.o ./Midware/LwIP/src/netif/ppp/utils.su ./Midware/LwIP/src/netif/ppp/vj.cyclo ./Midware/LwIP/src/netif/ppp/vj.d ./Midware/LwIP/src/netif/ppp/vj.o ./Midware/LwIP/src/netif/ppp/vj.su

.PHONY: clean-Midware-2f-LwIP-2f-src-2f-netif-2f-ppp

