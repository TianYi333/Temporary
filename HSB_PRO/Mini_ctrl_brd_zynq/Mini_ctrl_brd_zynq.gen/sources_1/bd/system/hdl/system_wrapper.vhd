--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
--Date        : Fri Oct 24 10:23:45 2025
--Host        : FXT333 running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    C_UART_RX_0 : in STD_LOGIC;
    C_UART_TX_0 : out STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DIR_R_0 : out STD_LOGIC;
    DIR_T_0 : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    J_D18 : out STD_LOGIC;
    J_E17 : inout STD_LOGIC;
    J_F16 : in STD_LOGIC;
    J_G14 : inout STD_LOGIC;
    J_G17 : inout STD_LOGIC;
    J_IN_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    J_J15 : out STD_LOGIC;
    J_L14 : in STD_LOGIC;
    J_M14 : out STD_LOGIC;
    J_M17 : out STD_LOGIC;
    J_N16 : out STD_LOGIC;
    J_N20 : inout STD_LOGIC;
    J_P20 : out STD_LOGIC;
    J_T5 : out STD_LOGIC;
    J_U5 : out STD_LOGIC;
    J_U7 : out STD_LOGIC;
    J_V7 : out STD_LOGIC;
    J_V8 : out STD_LOGIC;
    MA_RW_0 : out STD_LOGIC;
    SLO_RW_0 : out STD_LOGIC;
    triger_in_0 : in STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    J_E17 : inout STD_LOGIC;
    J_D18 : out STD_LOGIC;
    J_G14 : inout STD_LOGIC;
    J_J15 : out STD_LOGIC;
    J_G17 : inout STD_LOGIC;
    J_M17 : out STD_LOGIC;
    J_V8 : out STD_LOGIC;
    C_UART_RX_0 : in STD_LOGIC;
    C_UART_TX_0 : out STD_LOGIC;
    J_V7 : out STD_LOGIC;
    DIR_R_0 : out STD_LOGIC;
    DIR_T_0 : out STD_LOGIC;
    J_IN_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    J_F16 : in STD_LOGIC;
    MA_RW_0 : out STD_LOGIC;
    J_U7 : out STD_LOGIC;
    J_T5 : out STD_LOGIC;
    J_U5 : out STD_LOGIC;
    J_L14 : in STD_LOGIC;
    SLO_RW_0 : out STD_LOGIC;
    J_P20 : out STD_LOGIC;
    J_N20 : inout STD_LOGIC;
    J_M14 : out STD_LOGIC;
    J_N16 : out STD_LOGIC;
    triger_in_0 : in STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC
  );
  end component system;
begin
system_i: component system
     port map (
      C_UART_RX_0 => C_UART_RX_0,
      C_UART_TX_0 => C_UART_TX_0,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      DIR_R_0 => DIR_R_0,
      DIR_T_0 => DIR_T_0,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      J_D18 => J_D18,
      J_E17 => J_E17,
      J_F16 => J_F16,
      J_G14 => J_G14,
      J_G17 => J_G17,
      J_IN_0(3 downto 0) => J_IN_0(3 downto 0),
      J_J15 => J_J15,
      J_L14 => J_L14,
      J_M14 => J_M14,
      J_M17 => J_M17,
      J_N16 => J_N16,
      J_N20 => J_N20,
      J_P20 => J_P20,
      J_T5 => J_T5,
      J_U5 => J_U5,
      J_U7 => J_U7,
      J_V7 => J_V7,
      J_V8 => J_V8,
      MA_RW_0 => MA_RW_0,
      SLO_RW_0 => SLO_RW_0,
      triger_in_0 => triger_in_0
    );
end STRUCTURE;
