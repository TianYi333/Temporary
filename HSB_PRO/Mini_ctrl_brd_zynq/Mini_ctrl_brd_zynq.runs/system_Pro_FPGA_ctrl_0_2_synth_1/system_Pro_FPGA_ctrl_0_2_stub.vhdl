-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
-- Date        : Fri Oct 24 10:26:08 2025
-- Host        : FXT333 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_Pro_FPGA_ctrl_0_2_stub.vhdl
-- Design      : system_Pro_FPGA_ctrl_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    triger_in : in STD_LOGIC;
    UART_DIR : out STD_LOGIC;
    UART_IO : inout STD_LOGIC;
    DIR_T : out STD_LOGIC;
    DIR_R : out STD_LOGIC;
    C_UART_RX : in STD_LOGIC;
    C_UART_TX : out STD_LOGIC;
    led_red : out STD_LOGIC;
    led_green : out STD_LOGIC;
    AM2302_SDA_1 : inout STD_LOGIC;
    AM2302_SDA_2 : inout STD_LOGIC;
    AM2302_SDA_3 : inout STD_LOGIC;
    AM2302_SDA_1_ctrl : out STD_LOGIC;
    AM2302_SDA_2_ctrl : out STD_LOGIC;
    AM2302_SDA_3_ctrl : out STD_LOGIC;
    CS : out STD_LOGIC;
    DC : out STD_LOGIC;
    RES : out STD_LOGIC;
    SDA : out STD_LOGIC;
    SCL : out STD_LOGIC;
    J_vector : out STD_LOGIC_VECTOR ( 3 downto 0 );
    MA : in STD_LOGIC;
    SLO : in STD_LOGIC;
    MA_RW : out STD_LOGIC;
    SLO_RW : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "triger_in,UART_DIR,UART_IO,DIR_T,DIR_R,C_UART_RX,C_UART_TX,led_red,led_green,AM2302_SDA_1,AM2302_SDA_2,AM2302_SDA_3,AM2302_SDA_1_ctrl,AM2302_SDA_2_ctrl,AM2302_SDA_3_ctrl,CS,DC,RES,SDA,SCL,J_vector[3:0],MA,SLO,MA_RW,SLO_RW,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[6:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[6:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Pro_FPGA_ctrl_v1_0,Vivado 2021.1.1";
begin
end;
