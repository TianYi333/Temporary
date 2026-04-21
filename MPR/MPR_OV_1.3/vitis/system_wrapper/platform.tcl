# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\ASUS-PC\Desktop\temporary\MPR_OV_1.3\vitis\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\ASUS-PC\Desktop\temporary\MPR_OV_1.3\vitis\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {D:\ASUS-PC\Desktop\temporary\MPR_OV_1.3\vitis\system_wrapper.xsa}\
-out {D:/ASUS-PC/Desktop/temporary/MPR_OV_1.3/vitis}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_tcp_perf_server}
platform generate -domains 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
bsp reload
bsp setlib -name xilffs -ver 4.5
bsp config max_task_name_len "100"
bsp config minimal_stack_size "200"
bsp config tick_rate "1000"
bsp config total_heap_size "89128960"
bsp config socket_mode_thread_prio "10"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {system_wrapper}
bsp reload
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/MPR_OV_1.3/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/MPR_OV_1.3/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp reload
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
domain active {zynq_fsbl}
bsp reload
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/MPR_OV_1.3/vitis/system_wrapper.xsa}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_wrapper}
platform generate -domains 
platform generate
platform active {system_wrapper}
bsp reload
bsp reload
platform generate -domains 
catch {bsp regenerate}
bsp config tick_rate "1000"
bsp write
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/MPR_OV_1.3/vitis/system_wrapper.xsa}
bsp reload
bsp config tick_rate "100"
bsp write
bsp reload
catch {bsp regenerate}
bsp config tick_rate "1000"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
bsp reload
platform clean
platform generate
bsp reload
platform clean
platform generate
platform generate
platform generate
platform generate
platform active {system_wrapper}
bsp reload
bsp reload
platform generate -domains 
platform clean
platform generate
platform generate
platform generate
platform active {system_wrapper}
bsp reload
bsp reload
