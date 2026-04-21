-makelib ies_lib/xilinx_vip -sv \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_10 -sv \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_12 -sv \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/f42d/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_ps7_0_125M_0/sim/system_rst_ps7_0_125M_0.vhd" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_10 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_utils_v2_0_6 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_6 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_6 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_17 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/floating_point_v7_0_19 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/floating_point_v7_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_mult_v3_0_6 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_dsp48_mult_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/div_gen_v5_1_18 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/hdl/div_gen_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/div_gen_hex_2_dec_1/sim/div_gen_hex_2_dec.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/blk_mem_gen_1_1/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_Pro_FPGA_ctrl_0_2/src/blk_mem_gen_1_1/sim/blk_mem_gen_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_23 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_24 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_24 \
  "../../../../Mini_ctrl_brd_zynq.gen/sources_1/bd/system/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/sim/system.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

