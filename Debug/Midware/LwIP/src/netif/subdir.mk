################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LwIP/src/netif/bridgeif.c \
../Midware/LwIP/src/netif/bridgeif_fdb.c \
../Midware/LwIP/src/netif/ethernet.c \
../Midware/LwIP/src/netif/lowpan6.c \
../Midware/LwIP/src/netif/lowpan6_ble.c \
../Midware/LwIP/src/netif/lowpan6_common.c \
../Midware/LwIP/src/netif/slipif.c \
../Midware/LwIP/src/netif/zepif.c 

OBJS += \
./Midware/LwIP/src/netif/bridgeif.o \
./Midware/LwIP/src/netif/bridgeif_fdb.o \
./Midware/LwIP/src/netif/ethernet.o \
./Midware/LwIP/src/netif/lowpan6.o \
./Midware/LwIP/src/netif/lowpan6_ble.o \
./Midware/LwIP/src/netif/lowpan6_common.o \
./Midware/LwIP/src/netif/slipif.o \
./Midware/LwIP/src/netif/zepif.o 

C_DEPS += \
./Midware/LwIP/src/netif/bridgeif.d \
./Midware/LwIP/src/netif/bridgeif_fdb.d \
./Midware/LwIP/src/netif/ethernet.d \
./Midware/LwIP/src/netif/lowpan6.d \
./Midware/LwIP/src/netif/lowpan6_ble.d \
./Midware/LwIP/src/netif/lowpan6_common.d \
./Midware/LwIP/src/netif/slipif.d \
./Midware/LwIP/src/netif/zepif.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LwIP/src/netif/%.o Midware/LwIP/src/netif/%.su Midware/LwIP/src/netif/%.cyclo: ../Midware/LwIP/src/netif/%.c Midware/LwIP/src/netif/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -I"E:/My_Work/STM32F407VET6/Core" -I"E:/My_Work/STM32F407VET6/Midware/LwIP" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/system" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src/include" -I"E:/My_Work/STM32F407VET6/Hardware/W25Q128" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LwIP-2f-src-2f-netif

clean-Midware-2f-LwIP-2f-src-2f-netif:
	-$(RM) ./Midware/LwIP/src/netif/bridgeif.cyclo ./Midware/LwIP/src/netif/bridgeif.d ./Midware/LwIP/src/netif/bridgeif.o ./Midware/LwIP/src/netif/bridgeif.su ./Midware/LwIP/src/netif/bridgeif_fdb.cyclo ./Midware/LwIP/src/netif/bridgeif_fdb.d ./Midware/LwIP/src/netif/bridgeif_fdb.o ./Midware/LwIP/src/netif/bridgeif_fdb.su ./Midware/LwIP/src/netif/ethernet.cyclo ./Midware/LwIP/src/netif/ethernet.d ./Midware/LwIP/src/netif/ethernet.o ./Midware/LwIP/src/netif/ethernet.su ./Midware/LwIP/src/netif/lowpan6.cyclo ./Midware/LwIP/src/netif/lowpan6.d ./Midware/LwIP/src/netif/lowpan6.o ./Midware/LwIP/src/netif/lowpan6.su ./Midware/LwIP/src/netif/lowpan6_ble.cyclo ./Midware/LwIP/src/netif/lowpan6_ble.d ./Midware/LwIP/src/netif/lowpan6_ble.o ./Midware/LwIP/src/netif/lowpan6_ble.su ./Midware/LwIP/src/netif/lowpan6_common.cyclo ./Midware/LwIP/src/netif/lowpan6_common.d ./Midware/LwIP/src/netif/lowpan6_common.o ./Midware/LwIP/src/netif/lowpan6_common.su ./Midware/LwIP/src/netif/slipif.cyclo ./Midware/LwIP/src/netif/slipif.d ./Midware/LwIP/src/netif/slipif.o ./Midware/LwIP/src/netif/slipif.su ./Midware/LwIP/src/netif/zepif.cyclo ./Midware/LwIP/src/netif/zepif.d ./Midware/LwIP/src/netif/zepif.o ./Midware/LwIP/src/netif/zepif.su

.PHONY: clean-Midware-2f-LwIP-2f-src-2f-netif

