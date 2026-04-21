vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_10
vlib modelsim_lib/msim/processing_system7_vip_v1_0_12
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_17
vlib modelsim_lib/msim/floating_point_v7_0_19
vlib modelsim_lib/msim/xbip_dsp48_mult_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/div_gen_v5_1_18
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_23
vlib modelsim_lib/msim/axi_register_slice_v2_1_24
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_24

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_10 modelsim_lib/msim/axi_vip_v1_1_10
vmap processing_system7_vip_v1_0_12 modelsim_lib/msim/processing_system7_vip_v1_0_12
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 modelsim_lib/msim/mult_gen_v12_0_17
vmap floating_point_v7_0_19 modelsim_lib/msim/floating_point_v7_0_19
vmap xbip_dsp48_mult_v3_0_6 modelsim_lib/msim/xbip_dsp48_mult_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap div_gen_v5_1_18 modelsim_lib/msim/div_gen_v5_1_18
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_23 modelsim_lib/msim/axi_data_fifo_v2_1_23
vmap axi_register_slice_v2_1_24 modelsim_lib/msim/axi_register_slice_v2_1_24
vmap axi_protocol_converter_v2_1_24 modelsim_lib/msim/axi_protocol_converter_v2_1_24

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_10  -incr -mfcu -sv -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_12  -incr -mfcu -sv -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_rst_ps7_0_125M_0/sim/system_rst_ps7_0_125M_0.vhd" \

vcom -work xbip_utils_v3_0_10  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_19  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_mult_v3_0_6  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_dsp48_mult_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work div_gen_v5_1_18  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/div_gen_v5_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/sim/div_gen_hex_2_dec.vhd" \

vlog -work blk_mem_gen_v8_4_4  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/blk_mem_gen_1_1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/blk_mem_gen_1_1/sim/blk_mem_gen_1.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/mult_gen_0_1/sim/mult_gen_0.vhd" \
"../../../bd/system/ipshared/fcf5/src/Biss_c.vhd" \
"../../../bd/system/ipshared/fcf5/hdl/Pro_FPGA_ctrl_v1_0_S00_AXI.vhd" \
"../../../bd/system/ipshared/fcf5/src/TOP.vhd" \
"../../../bd/system/ipshared/fcf5/src/UART.vhd" \
"../../../bd/system/ipshared/fcf5/src/VERSION_CHECK.vhd" \
"../../../bd/system/ipshared/fcf5/hdl/axi4_2_gmii.vhd" \
"../../../bd/system/ipshared/fcf5/src/d_ram_ssd1309.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_AM2302.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_J.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_am2302_check.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_d_ram_ssd1309.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_dec_2_rom_addr.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_dec_2_rom_addr_1.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_display_am2302.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_display_gy_25.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_hex_2_dec.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_hex_2_dec_1.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_servo.vhd" \
"../../../bd/system/ipshared/fcf5/src/fun_ssd1309.vhd" \
"../../../bd/system/ipshared/fcf5/src/led_ctrl.vhd" \
"../../../bd/system/ipshared/fcf5/src/servo_rx.vhd" \
"../../../bd/system/ipshared/fcf5/src/servo_tx.vhd" \
"../../../bd/system/ipshared/fcf5/src/spi_gen.vhd" \
"../../../bd/system/ipshared/fcf5/hdl/Pro_FPGA_ctrl_v1_0.vhd" \
"../../../bd/system/ip/system_Pro_FPGA_ctrl_0_2/sim/system_Pro_FPGA_ctrl_0_2.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_23  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_24  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

