################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Midware/LVGL/src/misc/lv_anim.c \
../Midware/LVGL/src/misc/lv_anim_timeline.c \
../Midware/LVGL/src/misc/lv_area.c \
../Midware/LVGL/src/misc/lv_async.c \
../Midware/LVGL/src/misc/lv_bidi.c \
../Midware/LVGL/src/misc/lv_color.c \
../Midware/LVGL/src/misc/lv_fs.c \
../Midware/LVGL/src/misc/lv_gc.c \
../Midware/LVGL/src/misc/lv_ll.c \
../Midware/LVGL/src/misc/lv_log.c \
../Midware/LVGL/src/misc/lv_lru.c \
../Midware/LVGL/src/misc/lv_math.c \
../Midware/LVGL/src/misc/lv_mem.c \
../Midware/LVGL/src/misc/lv_printf.c \
../Midware/LVGL/src/misc/lv_style.c \
../Midware/LVGL/src/misc/lv_style_gen.c \
../Midware/LVGL/src/misc/lv_templ.c \
../Midware/LVGL/src/misc/lv_timer.c \
../Midware/LVGL/src/misc/lv_tlsf.c \
../Midware/LVGL/src/misc/lv_txt.c \
../Midware/LVGL/src/misc/lv_txt_ap.c \
../Midware/LVGL/src/misc/lv_utils.c 

OBJS += \
./Midware/LVGL/src/misc/lv_anim.o \
./Midware/LVGL/src/misc/lv_anim_timeline.o \
./Midware/LVGL/src/misc/lv_area.o \
./Midware/LVGL/src/misc/lv_async.o \
./Midware/LVGL/src/misc/lv_bidi.o \
./Midware/LVGL/src/misc/lv_color.o \
./Midware/LVGL/src/misc/lv_fs.o \
./Midware/LVGL/src/misc/lv_gc.o \
./Midware/LVGL/src/misc/lv_ll.o \
./Midware/LVGL/src/misc/lv_log.o \
./Midware/LVGL/src/misc/lv_lru.o \
./Midware/LVGL/src/misc/lv_math.o \
./Midware/LVGL/src/misc/lv_mem.o \
./Midware/LVGL/src/misc/lv_printf.o \
./Midware/LVGL/src/misc/lv_style.o \
./Midware/LVGL/src/misc/lv_style_gen.o \
./Midware/LVGL/src/misc/lv_templ.o \
./Midware/LVGL/src/misc/lv_timer.o \
./Midware/LVGL/src/misc/lv_tlsf.o \
./Midware/LVGL/src/misc/lv_txt.o \
./Midware/LVGL/src/misc/lv_txt_ap.o \
./Midware/LVGL/src/misc/lv_utils.o 

C_DEPS += \
./Midware/LVGL/src/misc/lv_anim.d \
./Midware/LVGL/src/misc/lv_anim_timeline.d \
./Midware/LVGL/src/misc/lv_area.d \
./Midware/LVGL/src/misc/lv_async.d \
./Midware/LVGL/src/misc/lv_bidi.d \
./Midware/LVGL/src/misc/lv_color.d \
./Midware/LVGL/src/misc/lv_fs.d \
./Midware/LVGL/src/misc/lv_gc.d \
./Midware/LVGL/src/misc/lv_ll.d \
./Midware/LVGL/src/misc/lv_log.d \
./Midware/LVGL/src/misc/lv_lru.d \
./Midware/LVGL/src/misc/lv_math.d \
./Midware/LVGL/src/misc/lv_mem.d \
./Midware/LVGL/src/misc/lv_printf.d \
./Midware/LVGL/src/misc/lv_style.d \
./Midware/LVGL/src/misc/lv_style_gen.d \
./Midware/LVGL/src/misc/lv_templ.d \
./Midware/LVGL/src/misc/lv_timer.d \
./Midware/LVGL/src/misc/lv_tlsf.d \
./Midware/LVGL/src/misc/lv_txt.d \
./Midware/LVGL/src/misc/lv_txt_ap.d \
./Midware/LVGL/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Midware/LVGL/src/misc/%.o Midware/LVGL/src/misc/%.su Midware/LVGL/src/misc/%.cyclo: ../Midware/LVGL/src/misc/%.c Midware/LVGL/src/misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"E:/My_Work/STM32F407VET6/Midware/FatFS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/include" -I"E:/My_Work/STM32F407VET6/Midware/FreeRTOS/portable" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/custom" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/port" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/src" -I"E:/My_Work/STM32F407VET6/Midware/LVGL/generated/guider_customer_fonts" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/src/device" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4" -I"E:/My_Work/STM32F407VET6/Midware/LVGL" -I"E:/My_Work/STM32F407VET6/Midware/TinyUSB/hw/bsp/stm32f4/boards/stm32f407blackvet" -I"E:/My_Work/STM32F407VET6/Hardware/AT24C02" -I"E:/My_Work/STM32F407VET6/Protocol" -I"E:/My_Work/STM32F407VET6/Core" -I"E:/My_Work/STM32F407VET6/Midware/LwIP" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/system" -I"E:/My_Work/STM32F407VET6/Midware/LwIP/src/include" -I"E:/My_Work/STM32F407VET6/Hardware/W25Q128" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Midware-2f-LVGL-2f-src-2f-misc

clean-Midware-2f-LVGL-2f-src-2f-misc:
	-$(RM) ./Midware/LVGL/src/misc/lv_anim.cyclo ./Midware/LVGL/src/misc/lv_anim.d ./Midware/LVGL/src/misc/lv_anim.o ./Midware/LVGL/src/misc/lv_anim.su ./Midware/LVGL/src/misc/lv_anim_timeline.cyclo ./Midware/LVGL/src/misc/lv_anim_timeline.d ./Midware/LVGL/src/misc/lv_anim_timeline.o ./Midware/LVGL/src/misc/lv_anim_timeline.su ./Midware/LVGL/src/misc/lv_area.cyclo ./Midware/LVGL/src/misc/lv_area.d ./Midware/LVGL/src/misc/lv_area.o ./Midware/LVGL/src/misc/lv_area.su ./Midware/LVGL/src/misc/lv_async.cyclo ./Midware/LVGL/src/misc/lv_async.d ./Midware/LVGL/src/misc/lv_async.o ./Midware/LVGL/src/misc/lv_async.su ./Midware/LVGL/src/misc/lv_bidi.cyclo ./Midware/LVGL/src/misc/lv_bidi.d ./Midware/LVGL/src/misc/lv_bidi.o ./Midware/LVGL/src/misc/lv_bidi.su ./Midware/LVGL/src/misc/lv_color.cyclo ./Midware/LVGL/src/misc/lv_color.d ./Midware/LVGL/src/misc/lv_color.o ./Midware/LVGL/src/misc/lv_color.su ./Midware/LVGL/src/misc/lv_fs.cyclo ./Midware/LVGL/src/misc/lv_fs.d ./Midware/LVGL/src/misc/lv_fs.o ./Midware/LVGL/src/misc/lv_fs.su ./Midware/LVGL/src/misc/lv_gc.cyclo ./Midware/LVGL/src/misc/lv_gc.d ./Midware/LVGL/src/misc/lv_gc.o ./Midware/LVGL/src/misc/lv_gc.su ./Midware/LVGL/src/misc/lv_ll.cyclo ./Midware/LVGL/src/misc/lv_ll.d ./Midware/LVGL/src/misc/lv_ll.o ./Midware/LVGL/src/misc/lv_ll.su ./Midware/LVGL/src/misc/lv_log.cyclo ./Midware/LVGL/src/misc/lv_log.d ./Midware/LVGL/src/misc/lv_log.o ./Midware/LVGL/src/misc/lv_log.su ./Midware/LVGL/src/misc/lv_lru.cyclo ./Midware/LVGL/src/misc/lv_lru.d ./Midware/LVGL/src/misc/lv_lru.o ./Midware/LVGL/src/misc/lv_lru.su ./Midware/LVGL/src/misc/lv_math.cyclo ./Midware/LVGL/src/misc/lv_math.d ./Midware/LVGL/src/misc/lv_math.o ./Midware/LVGL/src/misc/lv_math.su ./Midware/LVGL/src/misc/lv_mem.cyclo ./Midware/LVGL/src/misc/lv_mem.d ./Midware/LVGL/src/misc/lv_mem.o ./Midware/LVGL/src/misc/lv_mem.su ./Midware/LVGL/src/misc/lv_printf.cyclo ./Midware/LVGL/src/misc/lv_printf.d ./Midware/LVGL/src/misc/lv_printf.o ./Midware/LVGL/src/misc/lv_printf.su ./Midware/LVGL/src/misc/lv_style.cyclo ./Midware/LVGL/src/misc/lv_style.d ./Midware/LVGL/src/misc/lv_style.o ./Midware/LVGL/src/misc/lv_style.su ./Midware/LVGL/src/misc/lv_style_gen.cyclo ./Midware/LVGL/src/misc/lv_style_gen.d ./Midware/LVGL/src/misc/lv_style_gen.o ./Midware/LVGL/src/misc/lv_style_gen.su ./Midware/LVGL/src/misc/lv_templ.cyclo ./Midware/LVGL/src/misc/lv_templ.d ./Midware/LVGL/src/misc/lv_templ.o ./Midware/LVGL/src/misc/lv_templ.su ./Midware/LVGL/src/misc/lv_timer.cyclo ./Midware/LVGL/src/misc/lv_timer.d ./Midware/LVGL/src/misc/lv_timer.o ./Midware/LVGL/src/misc/lv_timer.su ./Midware/LVGL/src/misc/lv_tlsf.cyclo ./Midware/LVGL/src/misc/lv_tlsf.d ./Midware/LVGL/src/misc/lv_tlsf.o ./Midware/LVGL/src/misc/lv_tlsf.su ./Midware/LVGL/src/misc/lv_txt.cyclo ./Midware/LVGL/src/misc/lv_txt.d ./Midware/LVGL/src/misc/lv_txt.o ./Midware/LVGL/src/misc/lv_txt.su ./Midware/LVGL/src/misc/lv_txt_ap.cyclo ./Midware/LVGL/src/misc/lv_txt_ap.d ./Midware/LVGL/src/misc/lv_txt_ap.o ./Midware/LVGL/src/misc/lv_txt_ap.su ./Midware/LVGL/src/misc/lv_utils.cyclo ./Midware/LVGL/src/misc/lv_utils.d ./Midware/LVGL/src/misc/lv_utils.o ./Midware/LVGL/src/misc/lv_utils.su

.PHONY: clean-Midware-2f-LVGL-2f-src-2f-misc

