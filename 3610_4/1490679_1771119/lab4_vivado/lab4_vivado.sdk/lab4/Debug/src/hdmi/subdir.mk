################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hdmi/video_frame_buffer.c \
../src/hdmi/video_generator.c \
../src/hdmi/video_resolution.c \
../src/hdmi/zed_hdmi_display.c \
../src/hdmi/zed_iic_axi.c 

OBJS += \
./src/hdmi/video_frame_buffer.o \
./src/hdmi/video_generator.o \
./src/hdmi/video_resolution.o \
./src/hdmi/zed_hdmi_display.o \
./src/hdmi/zed_iic_axi.o 

C_DEPS += \
./src/hdmi/video_frame_buffer.d \
./src/hdmi/video_generator.d \
./src/hdmi/video_resolution.d \
./src/hdmi/zed_hdmi_display.d \
./src/hdmi/zed_iic_axi.d 


# Each subdirectory must supply rules for building sources it contributes
src/hdmi/%.o: ../src/hdmi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


