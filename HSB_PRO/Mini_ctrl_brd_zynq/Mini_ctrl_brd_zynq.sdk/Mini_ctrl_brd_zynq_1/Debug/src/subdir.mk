################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/Angle_Sensor.c \
../src/Lwip_Receive.c \
../src/TTC_timer_intr.c \
../src/bram.c \
../src/freertos_tcp_perf_server.c \
../src/iic_phyreset.c \
../src/led.c \
../src/main.c \
../src/ssd1309_spi.c 

OBJS += \
./src/Angle_Sensor.o \
./src/Lwip_Receive.o \
./src/TTC_timer_intr.o \
./src/bram.o \
./src/freertos_tcp_perf_server.o \
./src/iic_phyreset.o \
./src/led.o \
./src/main.o \
./src/ssd1309_spi.o 

C_DEPS += \
./src/Angle_Sensor.d \
./src/Lwip_Receive.d \
./src/TTC_timer_intr.d \
./src/bram.d \
./src/freertos_tcp_perf_server.d \
./src/iic_phyreset.d \
./src/led.d \
./src/main.d \
./src/ssd1309_spi.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../Mini_ctrl_brd_zynq_1_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


