# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\ASUS-PC\Desktop\temporary\Mini_ctrl_brd_zynq\Vitis\Mini_ctrl_brd_zynq_system\_ide\scripts\debugger_mini_ctrl_brd_zynq-default_3.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\ASUS-PC\Desktop\temporary\Mini_ctrl_brd_zynq\Vitis\Mini_ctrl_brd_zynq_system\_ide\scripts\debugger_mini_ctrl_brd_zynq-default_3.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248764166" && level==0 && jtag_device_ctx=="jsn-Zed-210248764166-23727093-0"}
fpga -file D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/Mini_ctrl_brd_zynq/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper/export/system_wrapper/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/Mini_ctrl_brd_zynq/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
configparams force-mem-access 0
