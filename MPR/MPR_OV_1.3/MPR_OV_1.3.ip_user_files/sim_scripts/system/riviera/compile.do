vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_10
vlib riviera/processing_system7_vip_v1_0_12
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/v_vid_in_axi4s_v4_0_9
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_26
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_24
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_23
vlib riviera/axi_crossbar_v2_1_25
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_fifo_v1_0_14
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/lib_bmg_v1_0_13
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_26
vlib riviera/axi_vdma_v6_3_12
vlib riviera/v_tc_v6_1_13
vlib riviera/v_axi4s_vid_out_v4_0_12
vlib riviera/v_tc_v6_2_2
vlib riviera/axi_protocol_converter_v2_1_24

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_10 riviera/axi_vip_v1_1_10
vmap processing_system7_vip_v1_0_12 riviera/processing_system7_vip_v1_0_12
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap v_vid_in_axi4s_v4_0_9 riviera/v_vid_in_axi4s_v4_0_9
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_26 riviera/axi_gpio_v2_0_26
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_24 riviera/axi_register_slice_v2_1_24
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_23 riviera/axi_data_fifo_v2_1_23
vmap axi_crossbar_v2_1_25 riviera/axi_crossbar_v2_1_25
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_14 riviera/lib_fifo_v1_0_14
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap lib_bmg_v1_0_13 riviera/lib_bmg_v1_0_13
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_26 riviera/axi_datamover_v5_1_26
vmap axi_vdma_v6_3_12 riviera/axi_vdma_v6_3_12
vmap v_tc_v6_1_13 riviera/v_tc_v6_1_13
vmap v_axi4s_vid_out_v4_0_12 riviera/v_axi4s_vid_out_v4_0_12
vmap v_tc_v6_2_2 riviera/v_tc_v6_2_2
vmap axi_protocol_converter_v2_1_24 riviera/axi_protocol_converter_v2_1_24

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ipshared/8797/src/ov5640_capture_data.v" \
"../../../bd/system/ip/system_ov5640_capture_data_0_0/sim/system_ov5640_capture_data_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_10  -sv2k12 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_12  -sv2k12 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../bd/system/ipshared/f810/src/rgb2lcd.v" \
"../../../bd/system/ip/system_rgb2lcd_0_0/sim/system_rgb2lcd_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_v_vid_in_axi4s_0_0/sim/system_v_vid_in_axi4s_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_26 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/65b4/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_23  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_25  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_3/sim/system_xbar_3.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_13 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_26 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/1e21/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_12  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_12 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_mmcm_pll_drp.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_0_0_family_support.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_0_0_family.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_0_0_soft_reset.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/system_clk_wiz_0_0_pselect_f.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_clk_wiz_0_0_address_decoder.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_clk_wiz_0_0_slave_attachment.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_clk_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz_drp.vhd" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_axi_clk_config.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \
"../../../bd/system/ip/system_xbar_4/sim/system_xbar_4.v" \

vcom -work v_tc_v6_1_13 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_axi4s_vid_out_v4_0_12  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/2f8d/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_v_axi4s_vid_out_0_0/sim/system_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_2 -93 \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/7f10/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_v_tc_0_0/sim/system_v_tc_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/sim/system.v" \

vlog -work axi_protocol_converter_v2_1_24  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/66f2/hdl" "+incdir+../../../../MPR_OV_1.3.gen/sources_1/bd/system/ipshared/6dcf" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

