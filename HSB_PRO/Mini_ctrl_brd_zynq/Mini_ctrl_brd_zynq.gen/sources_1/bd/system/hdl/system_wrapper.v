//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Mon May 26 14:01:18 2025
//Host        : FXT333 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (C_UART_RX_0,
    C_UART_TX_0,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    DIR_R_0,
    DIR_T_0,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    J_D18,
    J_E17,
    J_F16,
    J_G14,
    J_G17,
    J_IN_0,
    J_J15,
    J_L14,
    J_M14,
    J_M17,
    J_N16,
    J_N20,
    J_P20,
    J_T5,
    J_U5,
    J_U7,
    J_V7,
    J_V8,
    MA_RW_0,
    SLO_RW_0,
    triger_in_0);
  input C_UART_RX_0;
  output C_UART_TX_0;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output DIR_R_0;
  output DIR_T_0;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output J_D18;
  inout J_E17;
  input J_F16;
  inout J_G14;
  inout J_G17;
  output [3:0]J_IN_0;
  output J_J15;
  input J_L14;
  output J_M14;
  output J_M17;
  output J_N16;
  inout J_N20;
  output J_P20;
  output J_T5;
  output J_U5;
  output J_U7;
  output J_V7;
  output J_V8;
  output MA_RW_0;
  output SLO_RW_0;
  input triger_in_0;

  wire C_UART_RX_0;
  wire C_UART_TX_0;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire DIR_R_0;
  wire DIR_T_0;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire J_D18;
  wire J_E17;
  wire J_F16;
  wire J_G14;
  wire J_G17;
  wire [3:0]J_IN_0;
  wire J_J15;
  wire J_L14;
  wire J_M14;
  wire J_M17;
  wire J_N16;
  wire J_N20;
  wire J_P20;
  wire J_T5;
  wire J_U5;
  wire J_U7;
  wire J_V7;
  wire J_V8;
  wire MA_RW_0;
  wire SLO_RW_0;
  wire triger_in_0;

  system system_i
       (.C_UART_RX_0(C_UART_RX_0),
        .C_UART_TX_0(C_UART_TX_0),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .DIR_R_0(DIR_R_0),
        .DIR_T_0(DIR_T_0),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .J_D18(J_D18),
        .J_E17(J_E17),
        .J_F16(J_F16),
        .J_G14(J_G14),
        .J_G17(J_G17),
        .J_IN_0(J_IN_0),
        .J_J15(J_J15),
        .J_L14(J_L14),
        .J_M14(J_M14),
        .J_M17(J_M17),
        .J_N16(J_N16),
        .J_N20(J_N20),
        .J_P20(J_P20),
        .J_T5(J_T5),
        .J_U5(J_U5),
        .J_U7(J_U7),
        .J_V7(J_V7),
        .J_V8(J_V8),
        .MA_RW_0(MA_RW_0),
        .SLO_RW_0(SLO_RW_0),
        .triger_in_0(triger_in_0));
endmodule
