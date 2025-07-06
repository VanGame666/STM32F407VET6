################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LWIP/App/lwip.c 

OBJS += \
./LWIP/App/lwip.o 

C_DEPS += \
./LWIP/App/lwip.d 


# Each subdirectory must supply rules for building sources it contributes
LWIP/App/%.o LWIP/App/%.su LWIP/App/%.cyclo: ../LWIP/App/%.c LWIP/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Hardware/DISP" -I"E:/My_Work/STM32F407VET6/Hardware/TOUCH" -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -I"E:/My_Work/STM32F407VET6/Core" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/BSP/Components/lan8742 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LWIP-2f-App

clean-LWIP-2f-App:
	-$(RM) ./LWIP/App/lwip.cyclo ./LWIP/App/lwip.d ./LWIP/App/lwip.o ./LWIP/App/lwip.su

.PHONY: clean-LWIP-2f-App

