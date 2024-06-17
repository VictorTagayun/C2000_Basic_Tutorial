################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcrc -Ooff --include_path="E:/Hobby/TI/workspace/03_epwm_updown_aq_w_toggle" --include_path="C:/ti/C2000Ware_5_02_00_00" --include_path="E:/Hobby/TI/workspace/03_epwm_updown_aq_w_toggle/device" --include_path="C:/ti/C2000Ware_5_02_00_00/driverlib/f28003x/driverlib" --include_path="C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=DEBUG --define=_FLASH --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="E:/Hobby/TI/workspace/03_epwm_updown_aq_w_toggle/CPU1_FLASH/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-2013359199: ../03_epwm_updown_aq_w_toggle.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs1271/ccs/utils/sysconfig_1.20.0/sysconfig_cli.bat" --script "E:/Hobby/TI/workspace/03_epwm_updown_aq_w_toggle/03_epwm_updown_aq_w_toggle.syscfg" -o "syscfg" -s "C:/ti/C2000Ware_5_02_00_00/.metadata/sdk.json" -d "F28003x" --package 100PZ --part F28003x_100PZ --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-2013359199 ../03_epwm_updown_aq_w_toggle.syscfg
syscfg/board.h: build-2013359199
syscfg/board.cmd.genlibs: build-2013359199
syscfg/board.opt: build-2013359199
syscfg/board.json: build-2013359199
syscfg/pinmux.csv: build-2013359199
syscfg/epwm.dot: build-2013359199
syscfg/c2000ware_libraries.cmd.genlibs: build-2013359199
syscfg/c2000ware_libraries.opt: build-2013359199
syscfg/c2000ware_libraries.c: build-2013359199
syscfg/c2000ware_libraries.h: build-2013359199
syscfg/clocktree.h: build-2013359199
syscfg: build-2013359199

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcrc -Ooff --include_path="E:/Hobby/TI/workspace/03_epwm_updown_aq_w_toggle" --include_path="C:/ti/C2000Ware_5_02_00_00" --include_path="E:/Hobby/TI/workspace/03_epwm_updown_aq_w_toggle/device" --include_path="C:/ti/C2000Ware_5_02_00_00/driverlib/f28003x/driverlib" --include_path="C:/ti/ccs1271/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=DEBUG --define=_FLASH --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="E:/Hobby/TI/workspace/03_epwm_updown_aq_w_toggle/CPU1_FLASH/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


