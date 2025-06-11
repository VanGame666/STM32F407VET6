################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_12.c \
../Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_16.c 

OBJS += \
./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_12.o \
./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_16.o 

C_DEPS += \
./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_12.d \
./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_16.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LVGL/generated/guider_fonts/%.o Midware/LVGL/generated/guider_fonts/%.su Midware/LVGL/generated/guider_fonts/%.cyclo: ../Midware/LVGL/generated/guider_fonts/%.c Midware/LVGL/generated/guider_fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VE/Hardware/DISP" -I"E:/My_Work/STM32F407VE/Hardware/TOUCH" -I"E:/My_Work/STM32F407VE/Midware/FatFS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VE/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VE/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VE/Midware/LVGL/port" -I"E:/My_Work/STM32F407VE/Midware/LVGL/src" -I"E:/My_Work/STM32F407VE/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VE/Midware/LVGL" -I"E:/My_Work/STM32F407VE/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LVGL-2f-generated-2f-guider_fonts

clean-Midware-2f-LVGL-2f-generated-2f-guider_fonts:
	-$(RM) ./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_12.cyclo ./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_12.d ./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_12.o ./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_12.su ./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_16.cyclo ./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_16.d ./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_16.o ./Midware/LVGL/generated/guider_fonts/lv_font_montserratMedium_16.su

.PHONY: clean-Midware-2f-LVGL-2f-generated-2f-guider_fonts

