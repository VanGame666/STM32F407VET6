################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LVGL/src/extra/widgets/tabview/lv_tabview.c 

OBJS += \
./Midware/LVGL/src/extra/widgets/tabview/lv_tabview.o 

C_DEPS += \
./Midware/LVGL/src/extra/widgets/tabview/lv_tabview.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LVGL/src/extra/widgets/tabview/%.o Midware/LVGL/src/extra/widgets/tabview/%.su Midware/LVGL/src/extra/widgets/tabview/%.cyclo: ../Midware/LVGL/src/extra/widgets/tabview/%.c Midware/LVGL/src/extra/widgets/tabview/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VE/Hardware/DISP" -I"E:/My_Work/STM32F407VE/Hardware/TOUCH" -I"E:/My_Work/STM32F407VE/Midware/FatFS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VE/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VE/Midware/LVGL/port" -I"E:/My_Work/STM32F407VE/Midware/LVGL/src" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VE/Midware/LVGL" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LVGL-2f-src-2f-extra-2f-widgets-2f-tabview

clean-Midware-2f-LVGL-2f-src-2f-extra-2f-widgets-2f-tabview:
	-$(RM) ./Midware/LVGL/src/extra/widgets/tabview/lv_tabview.cyclo ./Midware/LVGL/src/extra/widgets/tabview/lv_tabview.d ./Midware/LVGL/src/extra/widgets/tabview/lv_tabview.o ./Midware/LVGL/src/extra/widgets/tabview/lv_tabview.su

.PHONY: clean-Midware-2f-LVGL-2f-src-2f-extra-2f-widgets-2f-tabview

