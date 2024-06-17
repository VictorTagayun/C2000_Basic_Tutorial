################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcrc -Ooff --include_path="E:/Hobby/TI/workspace/02_gpio_writePin" --include_path="C:/ti/C2000Ware_5_02_00_00" --include_path="C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=DEBUG --define=_FLASH --define=generic_flash_lnk --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="E:/Hobby/TI/workspace/02_gpio_writePin/CPU1_FLASH/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-609979169: ../02_gpio_writePin.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs1271/ccs/utils/sysconfig_1.20.0/sysconfig_cli.bat" --script "E:/Hobby/TI/workspace/02_gpio_writePin/02_gpio_writePin.syscfg" -o "syscfg" -s "C:/ti/C2000Ware_5_02_00_00/.metadata/sdk.json" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-609979169 ../02_gpio_writePin.syscfg
syscfg/board.h: build-609979169
syscfg/board.cmd.genlibs: build-609979169
syscfg/board.opt: build-609979169
syscfg/board.json: build-609979169
syscfg/pinmux.csv: build-609979169
syscfg/device.c: build-609979169
syscfg/device.h: build-609979169
syscfg/device_cmd.cmd: build-609979169
syscfg/device_cmd.c: build-609979169
syscfg/device_cmd.h: build-609979169
syscfg/device_cmd.opt: build-609979169
syscfg/device_cmd.cmd.genlibs: build-609979169
syscfg/c2000ware_libraries.cmd.genlibs: build-609979169
syscfg/c2000ware_libraries.opt: build-609979169
syscfg/c2000ware_libraries.c: build-609979169
syscfg/c2000ware_libraries.h: build-609979169
syscfg/clocktree.h: build-609979169
syscfg: build-609979169

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcrc -Ooff --include_path="E:/Hobby/TI/workspace/02_gpio_writePin" --include_path="C:/ti/C2000Ware_5_02_00_00" --include_path="C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=DEBUG --define=_FLASH --define=generic_flash_lnk --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="E:/Hobby/TI/workspace/02_gpio_writePin/CPU1_FLASH/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

f28003x_codestartbranch.obj: C:/ti/C2000Ware_5_02_00_00/device_support/f28003x/common/source/f28003x_codestartbranch.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcrc -Ooff --include_path="E:/Hobby/TI/workspace/02_gpio_writePin" --include_path="C:/ti/C2000Ware_5_02_00_00" --include_path="C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=DEBUG --define=_FLASH --define=generic_flash_lnk --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="E:/Hobby/TI/workspace/02_gpio_writePin/CPU1_FLASH/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


