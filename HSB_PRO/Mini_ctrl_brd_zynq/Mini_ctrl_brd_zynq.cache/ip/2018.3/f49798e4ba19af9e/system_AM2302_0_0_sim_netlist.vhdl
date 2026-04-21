-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu May 15 14:54:03 2025
-- Host        : FXT333 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_AM2302_0_0_sim_netlist.vhdl
-- Design      : system_AM2302_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check is
  port (
    s_data_ctrl_tristate_oe_reg_0 : out STD_LOGIC;
    \state_am2302_reg[0]_0\ : out STD_LOGIC;
    \state_am2302_reg[2]_0\ : out STD_LOGIC;
    \state_am2302_reg[3]_0\ : out STD_LOGIC;
    \state_am2302_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 18 downto 0 );
    \axi_araddr_reg[4]\ : out STD_LOGIC;
    \axi_araddr_reg[4]_0\ : out STD_LOGIC;
    \axi_araddr_reg[4]_1\ : out STD_LOGIC;
    \axi_araddr_reg[4]_2\ : out STD_LOGIC;
    \axi_araddr_reg[4]_3\ : out STD_LOGIC;
    \axi_araddr_reg[4]_4\ : out STD_LOGIC;
    \axi_araddr_reg[4]_5\ : out STD_LOGIC;
    \axi_araddr_reg[4]_6\ : out STD_LOGIC;
    \axi_araddr_reg[4]_7\ : out STD_LOGIC;
    \axi_araddr_reg[4]_8\ : out STD_LOGIC;
    \axi_araddr_reg[4]_9\ : out STD_LOGIC;
    \axi_araddr_reg[4]_10\ : out STD_LOGIC;
    \axi_araddr_reg[4]_11\ : out STD_LOGIC;
    AM2302_SDA_1_ctrl : out STD_LOGIC;
    AM2302_SDA_1 : inout STD_LOGIC;
    s_data_ctrl_tristate_oe_reg_1 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s_data_ctrl1_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    \axi_rdata_reg[0]_1\ : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[1]_0\ : in STD_LOGIC;
    \axi_rdata_reg[2]_0\ : in STD_LOGIC;
    \axi_rdata_reg[2]_1\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[7]\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    \axi_rdata_reg[15]\ : in STD_LOGIC;
    work_cnt_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    work_cnt_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check is
  signal I : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal R : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal R0_in : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal R1_in : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal T : STD_LOGIC;
  signal am2302_humi : STD_LOGIC;
  signal am2302_humi1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \am2302_humi_reg_n_0_[0]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[10]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[11]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[12]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[13]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[14]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[15]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[1]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[2]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[3]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[4]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[5]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[6]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[7]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[8]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[9]\ : STD_LOGIC;
  signal am2302_temp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal am2302_temp1 : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[0]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[10]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[11]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[12]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[13]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[14]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[15]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[1]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[2]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[3]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[4]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[5]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[6]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[7]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[8]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[9]\ : STD_LOGIC;
  signal \am2302_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[10]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[11]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[12]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[13]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[14]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[2]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[3]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[4]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[5]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[6]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[7]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[8]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal clk_1us : STD_LOGIC;
  signal clk_1us_i_1_n_0 : STD_LOGIC;
  signal clk_1ust : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal eqOp : STD_LOGIC;
  signal \i___2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_7_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_8_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal \ltOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_n_1\ : STD_LOGIC;
  signal \ltOp_carry__1_n_2\ : STD_LOGIC;
  signal \ltOp_carry__1_n_3\ : STD_LOGIC;
  signal \ltOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_n_2\ : STD_LOGIC;
  signal \ltOp_carry__2_n_3\ : STD_LOGIC;
  signal ltOp_carry_i_1_n_0 : STD_LOGIC;
  signal ltOp_carry_i_2_n_0 : STD_LOGIC;
  signal ltOp_carry_i_3_n_0 : STD_LOGIC;
  signal ltOp_carry_i_4_n_0 : STD_LOGIC;
  signal ltOp_carry_i_5_n_0 : STD_LOGIC;
  signal ltOp_carry_i_6_n_0 : STD_LOGIC;
  signal ltOp_carry_i_7_n_0 : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal period_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \period_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \period_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal plusOp43 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp_0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_carry__6_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_3\ : STD_LOGIC;
  signal \rx_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_3_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_5_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_6_n_0\ : STD_LOGIC;
  signal \rx_data[32]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[32]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[33]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[33]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[34]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[34]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[35]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[35]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[36]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[36]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[37]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[37]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[38]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[38]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_10_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_11_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_12_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_3_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_4_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_5_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_6_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_7_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_8_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_9_n_0\ : STD_LOGIC;
  signal \rx_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \rx_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[7]\ : STD_LOGIC;
  signal rx_index : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_index0 : STD_LOGIC;
  signal \rx_index0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_7\ : STD_LOGIC;
  signal rx_index0_carry_i_1_n_0 : STD_LOGIC;
  signal rx_index0_carry_i_2_n_0 : STD_LOGIC;
  signal rx_index0_carry_i_3_n_0 : STD_LOGIC;
  signal rx_index0_carry_i_4_n_0 : STD_LOGIC;
  signal rx_index0_carry_n_0 : STD_LOGIC;
  signal rx_index0_carry_n_1 : STD_LOGIC;
  signal rx_index0_carry_n_2 : STD_LOGIC;
  signal rx_index0_carry_n_3 : STD_LOGIC;
  signal rx_index0_carry_n_4 : STD_LOGIC;
  signal rx_index0_carry_n_5 : STD_LOGIC;
  signal rx_index0_carry_n_6 : STD_LOGIC;
  signal rx_index0_carry_n_7 : STD_LOGIC;
  signal \rx_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_10_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_3_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_4_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_5_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_6_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_7_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_8_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_9_n_0\ : STD_LOGIC;
  signal s_data_ctrl : STD_LOGIC;
  signal \^s_data_ctrl_tristate_oe_reg_0\ : STD_LOGIC;
  signal s_data_in : STD_LOGIC;
  signal s_data_in1 : STD_LOGIC;
  signal s_data_out : STD_LOGIC;
  signal s_data_out2_out : STD_LOGIC;
  signal s_data_out_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal state_am23021 : STD_LOGIC;
  signal state_am2302111_out : STD_LOGIC;
  signal state_am230215_out : STD_LOGIC;
  signal state_am230218_out : STD_LOGIC;
  signal \state_am2302[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_am2302[0]_i_2_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_3_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_2_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_3_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_10_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_11_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_12_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_13_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_14_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_15_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_16_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_17_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_18_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_20_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_21_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_22_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_24_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_25_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_26_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_27_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_28_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_29_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_2_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_30_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_31_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_3_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_4_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_5_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_6_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_7_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_8_n_0\ : STD_LOGIC;
  signal \^state_am2302_reg[0]_0\ : STD_LOGIC;
  signal \^state_am2302_reg[1]_0\ : STD_LOGIC;
  signal \^state_am2302_reg[2]_0\ : STD_LOGIC;
  signal \^state_am2302_reg[3]_0\ : STD_LOGIC;
  signal status : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \status[0]_i_1_n_0\ : STD_LOGIC;
  signal \status[0]_i_2_n_0\ : STD_LOGIC;
  signal \status[0]_i_3_n_0\ : STD_LOGIC;
  signal \status[0]_i_4_n_0\ : STD_LOGIC;
  signal \status[0]_i_5_n_0\ : STD_LOGIC;
  signal \status[1]_i_1_n_0\ : STD_LOGIC;
  signal \status[2]_i_1_n_0\ : STD_LOGIC;
  signal \status[2]_i_3_n_0\ : STD_LOGIC;
  signal \status[2]_i_4_n_0\ : STD_LOGIC;
  signal \status[2]_i_5_n_0\ : STD_LOGIC;
  signal \status[2]_i_6_n_0\ : STD_LOGIC;
  signal \status[2]_i_7_n_0\ : STD_LOGIC;
  signal \us_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \us_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal us_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \us_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \us_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \us_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \us_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \us_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \us_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \us_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \us_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_5_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_6_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_7_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_8_n_0\ : STD_LOGIC;
  signal us_count_2 : STD_LOGIC;
  signal \work_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal work_cnt_reg_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ltOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rx_index0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rx_index0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_work_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \am2302_temp[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \am2302_temp[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \am2302_temp[11]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \am2302_temp[12]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \am2302_temp[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \am2302_temp[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \am2302_temp[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \am2302_temp[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \am2302_temp[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \am2302_temp[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \am2302_temp[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \am2302_temp[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \am2302_temp[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \am2302_temp[9]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_rdata[19]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of clk_1us_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i___2_carry__0_i_10\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i___2_carry__0_i_8\ : label is "soft_lutpair23";
  attribute box_type : string;
  attribute box_type of inst_am2302_io : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \rx_data[15]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rx_data[31]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rx_data[31]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rx_data[32]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rx_data[33]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rx_data[34]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rx_data[35]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rx_data[36]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rx_data[37]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rx_data[38]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rx_data[39]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rx_data[39]_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rx_data[39]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rx_data[39]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rx_data[39]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rx_data[39]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rx_data[7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rx_index[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rx_index[31]_i_10\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rx_index[31]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rx_index[31]_i_8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_data_out_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state_am2302[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state_am2302[1]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \state_am2302[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state_am2302[2]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_11\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_23\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_24\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_25\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_28\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_9\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \status[0]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \status[0]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \status[2]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \us_cnt[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \us_cnt[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \us_cnt[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \us_cnt[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \us_cnt[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \us_cnt[7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \us_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \us_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \us_count[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \us_count[6]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \us_count[7]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \us_count[7]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \us_count[7]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \us_count[7]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \us_count[7]_i_8\ : label is "soft_lutpair15";
begin
  s_data_ctrl_tristate_oe_reg_0 <= \^s_data_ctrl_tristate_oe_reg_0\;
  \state_am2302_reg[0]_0\ <= \^state_am2302_reg[0]_0\;
  \state_am2302_reg[1]_0\ <= \^state_am2302_reg[1]_0\;
  \state_am2302_reg[2]_0\ <= \^state_am2302_reg[2]_0\;
  \state_am2302_reg[3]_0\ <= \^state_am2302_reg[3]_0\;
AM2302_SDA_1_ctrl_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => T,
      O => AM2302_SDA_1_ctrl
    );
\am2302_humi1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R(24),
      Q => am2302_humi1(0),
      R => '0'
    );
\am2302_humi1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => L(34),
      Q => am2302_humi1(10),
      R => '0'
    );
\am2302_humi1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => L(35),
      Q => am2302_humi1(11),
      R => '0'
    );
\am2302_humi1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => L(36),
      Q => am2302_humi1(12),
      R => '0'
    );
\am2302_humi1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => L(37),
      Q => am2302_humi1(13),
      R => '0'
    );
\am2302_humi1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => L(38),
      Q => am2302_humi1(14),
      R => '0'
    );
\am2302_humi1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => L(39),
      Q => am2302_humi1(15),
      R => '0'
    );
\am2302_humi1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R(25),
      Q => am2302_humi1(1),
      R => '0'
    );
\am2302_humi1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R(26),
      Q => am2302_humi1(2),
      R => '0'
    );
\am2302_humi1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R(27),
      Q => am2302_humi1(3),
      R => '0'
    );
\am2302_humi1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R(28),
      Q => am2302_humi1(4),
      R => '0'
    );
\am2302_humi1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R(29),
      Q => am2302_humi1(5),
      R => '0'
    );
\am2302_humi1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R(30),
      Q => am2302_humi1(6),
      R => '0'
    );
\am2302_humi1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R(31),
      Q => am2302_humi1(7),
      R => '0'
    );
\am2302_humi1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => L(32),
      Q => am2302_humi1(8),
      R => '0'
    );
\am2302_humi1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => L(33),
      Q => am2302_humi1(9),
      R => '0'
    );
\am2302_humi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(0),
      Q => \am2302_humi_reg_n_0_[0]\,
      R => '0'
    );
\am2302_humi_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(10),
      Q => \am2302_humi_reg_n_0_[10]\,
      R => '0'
    );
\am2302_humi_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(11),
      Q => \am2302_humi_reg_n_0_[11]\,
      R => '0'
    );
\am2302_humi_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(12),
      Q => \am2302_humi_reg_n_0_[12]\,
      R => '0'
    );
\am2302_humi_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(13),
      Q => \am2302_humi_reg_n_0_[13]\,
      R => '0'
    );
\am2302_humi_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(14),
      Q => \am2302_humi_reg_n_0_[14]\,
      R => '0'
    );
\am2302_humi_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(15),
      Q => \am2302_humi_reg_n_0_[15]\,
      R => '0'
    );
\am2302_humi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(1),
      Q => \am2302_humi_reg_n_0_[1]\,
      R => '0'
    );
\am2302_humi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(2),
      Q => \am2302_humi_reg_n_0_[2]\,
      R => '0'
    );
\am2302_humi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(3),
      Q => \am2302_humi_reg_n_0_[3]\,
      R => '0'
    );
\am2302_humi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(4),
      Q => \am2302_humi_reg_n_0_[4]\,
      R => '0'
    );
\am2302_humi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(5),
      Q => \am2302_humi_reg_n_0_[5]\,
      R => '0'
    );
\am2302_humi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(6),
      Q => \am2302_humi_reg_n_0_[6]\,
      R => '0'
    );
\am2302_humi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(7),
      Q => \am2302_humi_reg_n_0_[7]\,
      R => '0'
    );
\am2302_humi_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(8),
      Q => \am2302_humi_reg_n_0_[8]\,
      R => '0'
    );
\am2302_humi_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => am2302_humi1(9),
      Q => \am2302_humi_reg_n_0_[9]\,
      R => '0'
    );
\am2302_temp1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      O => am2302_temp1
    );
\am2302_temp1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R1_in(8),
      Q => \am2302_temp1_reg_n_0_[0]\,
      R => '0'
    );
\am2302_temp1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R0_in(18),
      Q => \am2302_temp1_reg_n_0_[10]\,
      R => '0'
    );
\am2302_temp1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R0_in(19),
      Q => \am2302_temp1_reg_n_0_[11]\,
      R => '0'
    );
\am2302_temp1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R0_in(20),
      Q => \am2302_temp1_reg_n_0_[12]\,
      R => '0'
    );
\am2302_temp1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R0_in(21),
      Q => \am2302_temp1_reg_n_0_[13]\,
      R => '0'
    );
\am2302_temp1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R0_in(22),
      Q => \am2302_temp1_reg_n_0_[14]\,
      R => '0'
    );
\am2302_temp1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R0_in(23),
      Q => \am2302_temp1_reg_n_0_[15]\,
      R => '0'
    );
\am2302_temp1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R1_in(9),
      Q => \am2302_temp1_reg_n_0_[1]\,
      R => '0'
    );
\am2302_temp1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R1_in(10),
      Q => \am2302_temp1_reg_n_0_[2]\,
      R => '0'
    );
\am2302_temp1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R1_in(11),
      Q => \am2302_temp1_reg_n_0_[3]\,
      R => '0'
    );
\am2302_temp1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R1_in(12),
      Q => \am2302_temp1_reg_n_0_[4]\,
      R => '0'
    );
\am2302_temp1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R1_in(13),
      Q => \am2302_temp1_reg_n_0_[5]\,
      R => '0'
    );
\am2302_temp1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R1_in(14),
      Q => \am2302_temp1_reg_n_0_[6]\,
      R => '0'
    );
\am2302_temp1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R1_in(15),
      Q => \am2302_temp1_reg_n_0_[7]\,
      R => '0'
    );
\am2302_temp1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R0_in(16),
      Q => \am2302_temp1_reg_n_0_[8]\,
      R => '0'
    );
\am2302_temp1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_temp1,
      D => R0_in(17),
      Q => \am2302_temp1_reg_n_0_[9]\,
      R => '0'
    );
\am2302_temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(0),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[0]\,
      O => \am2302_temp[0]_i_1_n_0\
    );
\am2302_temp[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(10),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[10]\,
      O => \am2302_temp[10]_i_1_n_0\
    );
\am2302_temp[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(11),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[11]\,
      O => \am2302_temp[11]_i_1_n_0\
    );
\am2302_temp[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(12),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[12]\,
      O => \am2302_temp[12]_i_1_n_0\
    );
\am2302_temp[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(13),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[13]\,
      O => \am2302_temp[13]_i_1_n_0\
    );
\am2302_temp[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(14),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[14]\,
      O => \am2302_temp[14]_i_1_n_0\
    );
\am2302_temp[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      O => am2302_humi
    );
\am2302_temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(1),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[1]\,
      O => \am2302_temp[1]_i_1_n_0\
    );
\am2302_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(2),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[2]\,
      O => \am2302_temp[2]_i_1_n_0\
    );
\am2302_temp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(3),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[3]\,
      O => \am2302_temp[3]_i_1_n_0\
    );
\am2302_temp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(4),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[4]\,
      O => \am2302_temp[4]_i_1_n_0\
    );
\am2302_temp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(5),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[5]\,
      O => \am2302_temp[5]_i_1_n_0\
    );
\am2302_temp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(6),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[6]\,
      O => \am2302_temp[6]_i_1_n_0\
    );
\am2302_temp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(7),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[7]\,
      O => \am2302_temp[7]_i_1_n_0\
    );
\am2302_temp[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(8),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[8]\,
      O => \am2302_temp[8]_i_1_n_0\
    );
\am2302_temp[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(9),
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[9]\,
      O => \am2302_temp[9]_i_1_n_0\
    );
\am2302_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[0]_i_1_n_0\,
      Q => am2302_temp(0),
      R => '0'
    );
\am2302_temp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[10]_i_1_n_0\,
      Q => am2302_temp(10),
      R => '0'
    );
\am2302_temp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[11]_i_1_n_0\,
      Q => am2302_temp(11),
      R => '0'
    );
\am2302_temp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[12]_i_1_n_0\,
      Q => am2302_temp(12),
      R => '0'
    );
\am2302_temp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[13]_i_1_n_0\,
      Q => am2302_temp(13),
      R => '0'
    );
\am2302_temp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[14]_i_1_n_0\,
      Q => am2302_temp(14),
      R => '0'
    );
\am2302_temp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp1_reg_n_0_[15]\,
      Q => am2302_temp(15),
      R => '0'
    );
\am2302_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[1]_i_1_n_0\,
      Q => am2302_temp(1),
      R => '0'
    );
\am2302_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[2]_i_1_n_0\,
      Q => am2302_temp(2),
      R => '0'
    );
\am2302_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[3]_i_1_n_0\,
      Q => am2302_temp(3),
      R => '0'
    );
\am2302_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[4]_i_1_n_0\,
      Q => am2302_temp(4),
      R => '0'
    );
\am2302_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[5]_i_1_n_0\,
      Q => am2302_temp(5),
      R => '0'
    );
\am2302_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[6]_i_1_n_0\,
      Q => am2302_temp(6),
      R => '0'
    );
\am2302_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[7]_i_1_n_0\,
      Q => am2302_temp(7),
      R => '0'
    );
\am2302_temp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[8]_i_1_n_0\,
      Q => am2302_temp(8),
      R => '0'
    );
\am2302_temp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => am2302_humi,
      D => \am2302_temp[9]_i_1_n_0\,
      Q => am2302_temp(9),
      R => '0'
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => \axi_rdata[0]_i_2_n_0\,
      I3 => \axi_rdata_reg[0]\,
      I4 => \axi_rdata_reg[2]\(0),
      I5 => \axi_rdata_reg[0]_0\,
      O => D(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => am2302_temp(0),
      I1 => \axi_rdata_reg[0]_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => status(0),
      I5 => \am2302_humi_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[10]\,
      I4 => am2302_temp(10),
      I5 => \axi_rdata_reg[10]\,
      O => \axi_araddr_reg[4]_6\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[11]\,
      I4 => am2302_temp(11),
      I5 => \axi_rdata_reg[11]\,
      O => \axi_araddr_reg[4]_7\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[12]\,
      I4 => am2302_temp(12),
      I5 => \axi_rdata_reg[12]\,
      O => \axi_araddr_reg[4]_8\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[13]\,
      I4 => am2302_temp(13),
      I5 => \axi_rdata_reg[13]\,
      O => \axi_araddr_reg[4]_9\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[14]\,
      I4 => am2302_temp(14),
      I5 => \axi_rdata_reg[14]\,
      O => \axi_araddr_reg[4]_10\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[15]\,
      I4 => am2302_temp(15),
      I5 => \axi_rdata_reg[15]\,
      O => \axi_araddr_reg[4]_11\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => Q(3),
      O => D(3)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(0),
      I1 => work_cnt_reg(0),
      I2 => work_cnt_reg_0(0),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => Q(3),
      O => D(4)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(1),
      I1 => work_cnt_reg(1),
      I2 => work_cnt_reg_0(1),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => Q(3),
      O => D(5)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(2),
      I1 => work_cnt_reg(2),
      I2 => work_cnt_reg_0(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => Q(3),
      O => D(6)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(3),
      I1 => work_cnt_reg(3),
      I2 => work_cnt_reg_0(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => \axi_rdata[1]_i_2_n_0\,
      I3 => \axi_rdata_reg[1]\,
      I4 => \axi_rdata_reg[2]\(1),
      I5 => \axi_rdata_reg[0]_0\,
      O => D(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => am2302_temp(1),
      I1 => \axi_rdata_reg[1]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => status(1),
      I5 => \am2302_humi_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => Q(3),
      O => D(7)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(4),
      I1 => work_cnt_reg(4),
      I2 => work_cnt_reg_0(4),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => Q(3),
      O => D(8)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(5),
      I1 => work_cnt_reg(5),
      I2 => work_cnt_reg_0(5),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => Q(3),
      O => D(9)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(6),
      I1 => work_cnt_reg(6),
      I2 => work_cnt_reg_0(6),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => Q(3),
      O => D(10)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(7),
      I1 => work_cnt_reg(7),
      I2 => work_cnt_reg_0(7),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => Q(3),
      O => D(11)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(8),
      I1 => work_cnt_reg(8),
      I2 => work_cnt_reg_0(8),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => Q(3),
      O => D(12)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(9),
      I1 => work_cnt_reg(9),
      I2 => work_cnt_reg_0(9),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => Q(3),
      O => D(13)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(10),
      I1 => work_cnt_reg(10),
      I2 => work_cnt_reg_0(10),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => Q(3),
      O => D(14)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(11),
      I1 => work_cnt_reg(11),
      I2 => work_cnt_reg_0(11),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => Q(3),
      O => D(15)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(12),
      I1 => work_cnt_reg(12),
      I2 => work_cnt_reg_0(12),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => Q(3),
      O => D(16)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(13),
      I1 => work_cnt_reg(13),
      I2 => work_cnt_reg_0(13),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => \axi_rdata[2]_i_2_n_0\,
      I3 => \axi_rdata_reg[2]_0\,
      I4 => \axi_rdata_reg[2]\(2),
      I5 => \axi_rdata_reg[0]_0\,
      O => D(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => am2302_temp(2),
      I1 => \axi_rdata_reg[2]_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => status(2),
      I5 => \am2302_humi_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => Q(3),
      O => D(17)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(14),
      I1 => work_cnt_reg(14),
      I2 => work_cnt_reg_0(14),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[31]_i_3_n_0\,
      I1 => Q(3),
      O => D(18)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC0000F00000AA"
    )
        port map (
      I0 => work_cnt_reg_1(15),
      I1 => work_cnt_reg(15),
      I2 => work_cnt_reg_0(15),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[3]\,
      I4 => am2302_temp(3),
      I5 => \axi_rdata_reg[3]\,
      O => \axi_araddr_reg[4]\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[4]\,
      I4 => am2302_temp(4),
      I5 => \axi_rdata_reg[4]\,
      O => \axi_araddr_reg[4]_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[5]\,
      I4 => am2302_temp(5),
      I5 => \axi_rdata_reg[5]\,
      O => \axi_araddr_reg[4]_1\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[6]\,
      I4 => am2302_temp(6),
      I5 => \axi_rdata_reg[6]\,
      O => \axi_araddr_reg[4]_2\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[7]\,
      I4 => am2302_temp(7),
      I5 => \axi_rdata_reg[7]\,
      O => \axi_araddr_reg[4]_3\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[8]\,
      I4 => am2302_temp(8),
      I5 => \axi_rdata_reg[8]\,
      O => \axi_araddr_reg[4]_4\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14100400"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \am2302_humi_reg_n_0_[9]\,
      I4 => am2302_temp(9),
      I5 => \axi_rdata_reg[9]\,
      O => \axi_araddr_reg[4]_5\
    );
clk_1us_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CE31"
    )
        port map (
      I0 => \us_cnt[7]_i_3_n_0\,
      I1 => \us_cnt_reg__0\(7),
      I2 => \us_cnt_reg__0\(6),
      I3 => clk_1us,
      O => clk_1us_i_1_n_0
    );
clk_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => clk_1us_i_1_n_0,
      Q => clk_1us,
      R => '0'
    );
clk_1ust_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => clk_1us,
      Q => clk_1ust,
      R => '0'
    );
\i___2_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => R0_in(20),
      I1 => R(28),
      I2 => R1_in(12),
      I3 => L(37),
      I4 => \i___2_carry__0_i_8_n_0\,
      O => \i___2_carry__0_i_1_n_0\
    );
\i___2_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => R1_in(13),
      I1 => R(29),
      I2 => R0_in(21),
      O => \i___2_carry__0_i_10_n_0\
    );
\i___2_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => R0_in(23),
      I1 => R(31),
      I2 => R1_in(15),
      I3 => L(39),
      O => \i___2_carry__0_i_11_n_0\
    );
\i___2_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => R1_in(14),
      I1 => R(30),
      I2 => R0_in(22),
      O => \i___2_carry__0_i_12_n_0\
    );
\i___2_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => R0_in(19),
      I1 => R(27),
      I2 => R1_in(11),
      I3 => L(36),
      I4 => \i___2_carry__0_i_9_n_0\,
      O => \i___2_carry__0_i_2_n_0\
    );
\i___2_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => R0_in(18),
      I1 => R(26),
      I2 => R1_in(10),
      I3 => L(35),
      I4 => \i___2_carry_i_9_n_0\,
      O => \i___2_carry__0_i_3_n_0\
    );
\i___2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E187871E871E1E78"
    )
        port map (
      I0 => L(38),
      I1 => \i___2_carry__0_i_10_n_0\,
      I2 => \i___2_carry__0_i_11_n_0\,
      I3 => R1_in(14),
      I4 => R(30),
      I5 => R0_in(22),
      O => \i___2_carry__0_i_4_n_0\
    );
\i___2_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry__0_i_1_n_0\,
      I1 => \i___2_carry__0_i_12_n_0\,
      I2 => L(38),
      I3 => R1_in(13),
      I4 => R(29),
      I5 => R0_in(21),
      O => \i___2_carry__0_i_5_n_0\
    );
\i___2_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry__0_i_2_n_0\,
      I1 => \i___2_carry__0_i_8_n_0\,
      I2 => L(37),
      I3 => R1_in(12),
      I4 => R(28),
      I5 => R0_in(20),
      O => \i___2_carry__0_i_6_n_0\
    );
\i___2_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry__0_i_3_n_0\,
      I1 => \i___2_carry__0_i_9_n_0\,
      I2 => L(36),
      I3 => R1_in(11),
      I4 => R(27),
      I5 => R0_in(19),
      O => \i___2_carry__0_i_7_n_0\
    );
\i___2_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => R1_in(13),
      I1 => R(29),
      I2 => R0_in(21),
      O => \i___2_carry__0_i_8_n_0\
    );
\i___2_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => R1_in(12),
      I1 => R(28),
      I2 => R0_in(20),
      O => \i___2_carry__0_i_9_n_0\
    );
\i___2_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => R0_in(17),
      I1 => R(25),
      I2 => R1_in(9),
      I3 => L(34),
      I4 => \i___2_carry_i_8_n_0\,
      O => \i___2_carry_i_1_n_0\
    );
\i___2_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => R0_in(17),
      I1 => R(25),
      I2 => R1_in(9),
      I3 => L(34),
      I4 => \i___2_carry_i_8_n_0\,
      O => \i___2_carry_i_2_n_0\
    );
\i___2_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => R0_in(17),
      I1 => R(25),
      I2 => R1_in(9),
      I3 => L(33),
      O => \i___2_carry_i_3_n_0\
    );
\i___2_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry_i_1_n_0\,
      I1 => \i___2_carry_i_9_n_0\,
      I2 => L(35),
      I3 => R1_in(10),
      I4 => R(26),
      I5 => R0_in(18),
      O => \i___2_carry_i_4_n_0\
    );
\i___2_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \i___2_carry_i_8_n_0\,
      I1 => L(34),
      I2 => R1_in(9),
      I3 => R(25),
      I4 => R0_in(17),
      I5 => L(33),
      O => \i___2_carry_i_5_n_0\
    );
\i___2_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \i___2_carry_i_3_n_0\,
      I1 => R0_in(16),
      I2 => R(24),
      I3 => R1_in(8),
      O => \i___2_carry_i_6_n_0\
    );
\i___2_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => R0_in(16),
      I1 => R(24),
      I2 => R1_in(8),
      I3 => L(32),
      O => \i___2_carry_i_7_n_0\
    );
\i___2_carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => R1_in(10),
      I1 => R(26),
      I2 => R0_in(18),
      O => \i___2_carry_i_8_n_0\
    );
\i___2_carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => R1_in(11),
      I1 => R(27),
      I2 => R0_in(19),
      O => \i___2_carry_i_9_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => period_cnt(21),
      I1 => period_cnt(20),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => period_cnt(17),
      I1 => period_cnt(16),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(15),
      I1 => period_cnt(14),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => period_cnt(20),
      I1 => period_cnt(21),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(19),
      I1 => period_cnt(18),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => period_cnt(16),
      I1 => period_cnt(17),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => period_cnt(14),
      I1 => period_cnt(15),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(27),
      I1 => period_cnt(26),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => period_cnt(25),
      I1 => period_cnt(24),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(23),
      I1 => period_cnt(22),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(29),
      I1 => period_cnt(28),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => period_cnt(26),
      I1 => period_cnt(27),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => period_cnt(24),
      I1 => period_cnt(25),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => period_cnt(22),
      I1 => period_cnt(23),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(31),
      I1 => period_cnt(30),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(13),
      I1 => period_cnt(12),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(11),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(9),
      I1 => period_cnt(8),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(7),
      I1 => period_cnt(6),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => period_cnt(12),
      I1 => period_cnt(13),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => period_cnt(11),
      I1 => period_cnt(10),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => period_cnt(8),
      I1 => period_cnt(9),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => period_cnt(6),
      I1 => period_cnt(7),
      O => \i__carry_i_8_n_0\
    );
inst_am2302_io: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      IO => AM2302_SDA_1,
      O => s_data_in1,
      T => T
    );
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => ltOp_carry_i_1_n_0,
      DI(1) => ltOp_carry_i_2_n_0,
      DI(0) => ltOp_carry_i_3_n_0,
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ltOp_carry_i_4_n_0,
      S(2) => ltOp_carry_i_5_n_0,
      S(1) => ltOp_carry_i_6_n_0,
      S(0) => ltOp_carry_i_7_n_0
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3) => \ltOp_carry__0_n_0\,
      CO(2) => \ltOp_carry__0_n_1\,
      CO(1) => \ltOp_carry__0_n_2\,
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ltOp_carry__0_i_1_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry__0_i_2_n_0\,
      S(2) => \ltOp_carry__0_i_3_n_0\,
      S(1) => \ltOp_carry__0_i_4_n_0\,
      S(0) => \ltOp_carry__0_i_5_n_0\
    );
\ltOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => period_cnt(15),
      I1 => period_cnt(14),
      O => \ltOp_carry__0_i_1_n_0\
    );
\ltOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(19),
      I1 => period_cnt(18),
      O => \ltOp_carry__0_i_2_n_0\
    );
\ltOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(17),
      I1 => period_cnt(16),
      O => \ltOp_carry__0_i_3_n_0\
    );
\ltOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => period_cnt(14),
      I1 => period_cnt(15),
      O => \ltOp_carry__0_i_4_n_0\
    );
\ltOp_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(13),
      I1 => period_cnt(12),
      O => \ltOp_carry__0_i_5_n_0\
    );
\ltOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_carry__0_n_0\,
      CO(3) => \ltOp_carry__1_n_0\,
      CO(2) => \ltOp_carry__1_n_1\,
      CO(1) => \ltOp_carry__1_n_2\,
      CO(0) => \ltOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ltOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry__1_i_1_n_0\,
      S(2) => \ltOp_carry__1_i_2_n_0\,
      S(1) => \ltOp_carry__1_i_3_n_0\,
      S(0) => \ltOp_carry__1_i_4_n_0\
    );
\ltOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(27),
      I1 => period_cnt(26),
      O => \ltOp_carry__1_i_1_n_0\
    );
\ltOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(25),
      I1 => period_cnt(24),
      O => \ltOp_carry__1_i_2_n_0\
    );
\ltOp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(23),
      I1 => period_cnt(22),
      O => \ltOp_carry__1_i_3_n_0\
    );
\ltOp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(21),
      I1 => period_cnt(20),
      O => \ltOp_carry__1_i_4_n_0\
    );
\ltOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_ltOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ltOp_carry__2_n_2\,
      CO(0) => \ltOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => period_cnt(31),
      DI(0) => '0',
      O(3 downto 0) => \NLW_ltOp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \ltOp_carry__2_i_1_n_0\,
      S(0) => \ltOp_carry__2_i_2_n_0\
    );
\ltOp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(31),
      I1 => period_cnt(30),
      O => \ltOp_carry__2_i_1_n_0\
    );
\ltOp_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(29),
      I1 => period_cnt(28),
      O => \ltOp_carry__2_i_2_n_0\
    );
ltOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => period_cnt(9),
      I1 => period_cnt(8),
      O => ltOp_carry_i_1_n_0
    );
ltOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(7),
      I1 => period_cnt(6),
      O => ltOp_carry_i_2_n_0
    );
ltOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(5),
      I1 => period_cnt(4),
      O => ltOp_carry_i_3_n_0
    );
ltOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(11),
      I1 => period_cnt(10),
      O => ltOp_carry_i_4_n_0
    );
ltOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => period_cnt(8),
      I1 => period_cnt(9),
      O => ltOp_carry_i_5_n_0
    );
ltOp_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => period_cnt(6),
      I1 => period_cnt(7),
      O => ltOp_carry_i_6_n_0
    );
ltOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => period_cnt(4),
      I1 => period_cnt(5),
      O => ltOp_carry_i_7_n_0
    );
\ltOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp_inferred__0/i__carry_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\ltOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry_n_0\,
      CO(3) => \ltOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => '0',
      DI(1) => \i__carry__0_i_2_n_0\,
      DI(0) => \i__carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_4_n_0\,
      S(2) => \i__carry__0_i_5_n_0\,
      S(1) => \i__carry__0_i_6_n_0\,
      S(0) => \i__carry__0_i_7_n_0\
    );
\ltOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \ltOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__1_i_1_n_0\,
      DI(1) => \i__carry__1_i_2_n_0\,
      DI(0) => \i__carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_4_n_0\,
      S(2) => \i__carry__1_i_5_n_0\,
      S(1) => \i__carry__1_i_6_n_0\,
      S(0) => \i__carry__1_i_7_n_0\
    );
\ltOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry__1_n_0\,
      CO(3 downto 1) => \NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => ltOp,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => period_cnt(31),
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__2_i_1_n_0\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 0) => minusOp(3 downto 0),
      S(3) => minusOp_carry_i_1_n_0,
      S(2) => minusOp_carry_i_2_n_0,
      S(1) => minusOp_carry_i_3_n_0,
      S(0) => \am2302_temp1_reg_n_0_[0]\
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => minusOp(7 downto 4),
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[7]\,
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[6]\,
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[5]\,
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[4]\,
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => minusOp(11 downto 8),
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[11]\,
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[10]\,
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[9]\,
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[8]\,
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => minusOp(14 downto 12),
      S(3) => '0',
      S(2) => \minusOp_carry__2_i_1_n_0\,
      S(1) => \minusOp_carry__2_i_2_n_0\,
      S(0) => \minusOp_carry__2_i_3_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[14]\,
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[13]\,
      O => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[12]\,
      O => \minusOp_carry__2_i_3_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[3]\,
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[2]\,
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[1]\,
      O => minusOp_carry_i_3_n_0
    );
\period_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt(0),
      O => \period_cnt[0]_i_1_n_0\
    );
\period_cnt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000101010001"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => ltOp,
      I4 => \^state_am2302_reg[0]_0\,
      I5 => \ltOp_carry__2_n_2\,
      O => \period_cnt[31]_i_1_n_0\
    );
\period_cnt[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \^state_am2302_reg[3]_0\,
      O => s_data_out2_out
    );
\period_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => \period_cnt[0]_i_1_n_0\,
      Q => period_cnt(0),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(10),
      Q => period_cnt(10),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(11),
      Q => period_cnt(11),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(12),
      Q => period_cnt(12),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(13),
      Q => period_cnt(13),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(14),
      Q => period_cnt(14),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(15),
      Q => period_cnt(15),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(16),
      Q => period_cnt(16),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(17),
      Q => period_cnt(17),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(18),
      Q => period_cnt(18),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(19),
      Q => period_cnt(19),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(1),
      Q => period_cnt(1),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(20),
      Q => period_cnt(20),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(21),
      Q => period_cnt(21),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(22),
      Q => period_cnt(22),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(23),
      Q => period_cnt(23),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(24),
      Q => period_cnt(24),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(25),
      Q => period_cnt(25),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(26),
      Q => period_cnt(26),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(27),
      Q => period_cnt(27),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(28),
      Q => period_cnt(28),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(29),
      Q => period_cnt(29),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(2),
      Q => period_cnt(2),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(30),
      Q => period_cnt(30),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(31),
      Q => period_cnt(31),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(3),
      Q => period_cnt(3),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(4),
      Q => period_cnt(4),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(5),
      Q => period_cnt(5),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(6),
      Q => period_cnt(6),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(7),
      Q => period_cnt(7),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(8),
      Q => period_cnt(8),
      R => \period_cnt[31]_i_1_n_0\
    );
\period_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s_data_out2_out,
      D => plusOp_0(9),
      Q => period_cnt(9),
      R => \period_cnt[31]_i_1_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => period_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(4 downto 1),
      S(3 downto 0) => period_cnt(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(8 downto 5),
      S(3 downto 0) => period_cnt(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(12 downto 9),
      S(3 downto 0) => period_cnt(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(16 downto 13),
      S(3 downto 0) => period_cnt(16 downto 13)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(20 downto 17),
      S(3 downto 0) => period_cnt(20 downto 17)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(24 downto 21),
      S(3 downto 0) => period_cnt(24 downto 21)
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3) => \plusOp_carry__5_n_0\,
      CO(2) => \plusOp_carry__5_n_1\,
      CO(1) => \plusOp_carry__5_n_2\,
      CO(0) => \plusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(28 downto 25),
      S(3 downto 0) => period_cnt(28 downto 25)
    );
\plusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__6_n_2\,
      CO(0) => \plusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp_0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => period_cnt(31 downto 29)
    );
\plusOp_inferred__3/i___2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__3/i___2_carry_n_0\,
      CO(2) => \plusOp_inferred__3/i___2_carry_n_1\,
      CO(1) => \plusOp_inferred__3/i___2_carry_n_2\,
      CO(0) => \plusOp_inferred__3/i___2_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___2_carry_i_1_n_0\,
      DI(2) => \i___2_carry_i_2_n_0\,
      DI(1) => \i___2_carry_i_3_n_0\,
      DI(0) => L(32),
      O(3 downto 0) => plusOp43(3 downto 0),
      S(3) => \i___2_carry_i_4_n_0\,
      S(2) => \i___2_carry_i_5_n_0\,
      S(1) => \i___2_carry_i_6_n_0\,
      S(0) => \i___2_carry_i_7_n_0\
    );
\plusOp_inferred__3/i___2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__3/i___2_carry_n_0\,
      CO(3) => \NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_inferred__3/i___2_carry__0_n_1\,
      CO(1) => \plusOp_inferred__3/i___2_carry__0_n_2\,
      CO(0) => \plusOp_inferred__3/i___2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i___2_carry__0_i_1_n_0\,
      DI(1) => \i___2_carry__0_i_2_n_0\,
      DI(0) => \i___2_carry__0_i_3_n_0\,
      O(3 downto 0) => plusOp43(7 downto 4),
      S(3) => \i___2_carry__0_i_4_n_0\,
      S(2) => \i___2_carry__0_i_5_n_0\,
      S(1) => \i___2_carry__0_i_6_n_0\,
      S(0) => \i___2_carry__0_i_7_n_0\
    );
\rx_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[7]_i_2_n_0\,
      I5 => \rx_data_reg_n_0_[0]\,
      O => \rx_data[0]_i_1_n_0\
    );
\rx_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[15]_i_2_n_0\,
      I5 => R1_in(10),
      O => \rx_data[10]_i_1_n_0\
    );
\rx_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[15]_i_2_n_0\,
      I5 => R1_in(11),
      O => \rx_data[11]_i_1_n_0\
    );
\rx_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[15]_i_2_n_0\,
      I5 => R1_in(12),
      O => \rx_data[12]_i_1_n_0\
    );
\rx_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[15]_i_2_n_0\,
      I5 => R1_in(13),
      O => \rx_data[13]_i_1_n_0\
    );
\rx_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[15]_i_2_n_0\,
      I5 => R1_in(14),
      O => \rx_data[14]_i_1_n_0\
    );
\rx_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[15]_i_2_n_0\,
      I5 => R1_in(15),
      O => \rx_data[15]_i_1_n_0\
    );
\rx_data[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => rx_index(4),
      I1 => rx_index(3),
      I2 => rx_index(5),
      I3 => \rx_data[39]_i_7_n_0\,
      O => \rx_data[15]_i_2_n_0\
    );
\rx_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[23]_i_2_n_0\,
      I5 => R0_in(16),
      O => \rx_data[16]_i_1_n_0\
    );
\rx_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[23]_i_2_n_0\,
      I5 => R0_in(17),
      O => \rx_data[17]_i_1_n_0\
    );
\rx_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[23]_i_2_n_0\,
      I5 => R0_in(18),
      O => \rx_data[18]_i_1_n_0\
    );
\rx_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[23]_i_2_n_0\,
      I5 => R0_in(19),
      O => \rx_data[19]_i_1_n_0\
    );
\rx_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[7]_i_2_n_0\,
      I5 => \rx_data_reg_n_0_[1]\,
      O => \rx_data[1]_i_1_n_0\
    );
\rx_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[23]_i_2_n_0\,
      I5 => R0_in(20),
      O => \rx_data[20]_i_1_n_0\
    );
\rx_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[23]_i_2_n_0\,
      I5 => R0_in(21),
      O => \rx_data[21]_i_1_n_0\
    );
\rx_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[23]_i_2_n_0\,
      I5 => R0_in(22),
      O => \rx_data[22]_i_1_n_0\
    );
\rx_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[23]_i_2_n_0\,
      I5 => R0_in(23),
      O => \rx_data[23]_i_1_n_0\
    );
\rx_data[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => rx_index(4),
      I1 => rx_index(3),
      I2 => rx_index(5),
      I3 => \rx_data[39]_i_7_n_0\,
      O => \rx_data[23]_i_2_n_0\
    );
\rx_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[31]_i_3_n_0\,
      I5 => R(24),
      O => \rx_data[24]_i_1_n_0\
    );
\rx_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[31]_i_3_n_0\,
      I5 => R(25),
      O => \rx_data[25]_i_1_n_0\
    );
\rx_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[31]_i_3_n_0\,
      I5 => R(26),
      O => \rx_data[26]_i_1_n_0\
    );
\rx_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[31]_i_3_n_0\,
      I5 => R(27),
      O => \rx_data[27]_i_1_n_0\
    );
\rx_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[31]_i_3_n_0\,
      I5 => R(28),
      O => \rx_data[28]_i_1_n_0\
    );
\rx_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[31]_i_3_n_0\,
      I5 => R(29),
      O => \rx_data[29]_i_1_n_0\
    );
\rx_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[7]_i_2_n_0\,
      I5 => \rx_data_reg_n_0_[2]\,
      O => \rx_data[2]_i_1_n_0\
    );
\rx_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[31]_i_3_n_0\,
      I5 => R(30),
      O => \rx_data[30]_i_1_n_0\
    );
\rx_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[31]_i_3_n_0\,
      I5 => R(31),
      O => \rx_data[31]_i_1_n_0\
    );
\rx_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFFFBFFFFFFF"
    )
        port map (
      I0 => s_data_in,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => state_am23021,
      I5 => state_am230215_out,
      O => \rx_data[31]_i_2_n_0\
    );
\rx_data[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => rx_index(3),
      I1 => rx_index(4),
      I2 => rx_index(5),
      I3 => \rx_data[39]_i_7_n_0\,
      O => \rx_data[31]_i_3_n_0\
    );
\rx_data[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2223222000000000"
    )
        port map (
      I0 => \rx_data[31]_i_5_n_0\,
      I1 => us_count(7),
      I2 => \rx_data[31]_i_6_n_0\,
      I3 => us_count(3),
      I4 => \state_am2302[3]_i_25_n_0\,
      I5 => us_count(6),
      O => state_am23021
    );
\rx_data[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
        port map (
      I0 => us_count(2),
      I1 => us_count(5),
      I2 => us_count(4),
      I3 => us_count(1),
      I4 => us_count(0),
      O => \rx_data[31]_i_5_n_0\
    );
\rx_data[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => us_count(5),
      I1 => us_count(4),
      O => \rx_data[31]_i_6_n_0\
    );
\rx_data[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2_n_0\,
      I3 => \rx_data[39]_i_4_n_0\,
      I4 => L(32),
      O => \rx_data[32]_i_1_n_0\
    );
\rx_data[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rx_index(2),
      I1 => rx_index(0),
      I2 => rx_index(1),
      O => \rx_data[32]_i_2_n_0\
    );
\rx_data[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2_n_0\,
      I3 => \rx_data[39]_i_4_n_0\,
      I4 => L(33),
      O => \rx_data[33]_i_1_n_0\
    );
\rx_data[33]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => rx_index(0),
      I1 => rx_index(1),
      I2 => rx_index(2),
      O => \rx_data[33]_i_2_n_0\
    );
\rx_data[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2_n_0\,
      I3 => \rx_data[39]_i_4_n_0\,
      I4 => L(34),
      O => \rx_data[34]_i_1_n_0\
    );
\rx_data[34]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => rx_index(1),
      I1 => rx_index(0),
      I2 => rx_index(2),
      O => \rx_data[34]_i_2_n_0\
    );
\rx_data[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2_n_0\,
      I3 => \rx_data[39]_i_4_n_0\,
      I4 => L(35),
      O => \rx_data[35]_i_1_n_0\
    );
\rx_data[35]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => rx_index(0),
      I1 => rx_index(1),
      I2 => rx_index(2),
      O => \rx_data[35]_i_2_n_0\
    );
\rx_data[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2_n_0\,
      I3 => \rx_data[39]_i_4_n_0\,
      I4 => L(36),
      O => \rx_data[36]_i_1_n_0\
    );
\rx_data[36]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => rx_index(2),
      I1 => rx_index(0),
      I2 => rx_index(1),
      O => \rx_data[36]_i_2_n_0\
    );
\rx_data[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2_n_0\,
      I3 => \rx_data[39]_i_4_n_0\,
      I4 => L(37),
      O => \rx_data[37]_i_1_n_0\
    );
\rx_data[37]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => rx_index(0),
      I1 => rx_index(1),
      I2 => rx_index(2),
      O => \rx_data[37]_i_2_n_0\
    );
\rx_data[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2_n_0\,
      I3 => \rx_data[39]_i_4_n_0\,
      I4 => L(38),
      O => \rx_data[38]_i_1_n_0\
    );
\rx_data[38]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => rx_index(1),
      I1 => rx_index(0),
      I2 => rx_index(2),
      O => \rx_data[38]_i_2_n_0\
    );
\rx_data[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3_n_0\,
      I3 => \rx_data[39]_i_4_n_0\,
      I4 => L(39),
      O => \rx_data[39]_i_1_n_0\
    );
\rx_data[39]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_index(25),
      I1 => rx_index(26),
      O => \rx_data[39]_i_10_n_0\
    );
\rx_data[39]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_index(30),
      I1 => rx_index(31),
      I2 => rx_index(29),
      I3 => rx_index(28),
      O => \rx_data[39]_i_11_n_0\
    );
\rx_data[39]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_index(7),
      I1 => rx_index(8),
      O => \rx_data[39]_i_12_n_0\
    );
\rx_data[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044404440"
    )
        port map (
      I0 => us_count(7),
      I1 => \rx_data[39]_i_5_n_0\,
      I2 => us_count(6),
      I3 => us_count(5),
      I4 => \rx_data[39]_i_6_n_0\,
      I5 => us_count(4),
      O => state_am230215_out
    );
\rx_data[39]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rx_index(0),
      I1 => rx_index(1),
      I2 => rx_index(2),
      O => \rx_data[39]_i_3_n_0\
    );
\rx_data[39]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \rx_data[31]_i_2_n_0\,
      I1 => \rx_data[39]_i_7_n_0\,
      I2 => rx_index(4),
      I3 => rx_index(3),
      I4 => rx_index(5),
      O => \rx_data[39]_i_4_n_0\
    );
\rx_data[39]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000007F"
    )
        port map (
      I0 => us_count(2),
      I1 => us_count(1),
      I2 => us_count(3),
      I3 => us_count(5),
      I4 => us_count(6),
      O => \rx_data[39]_i_5_n_0\
    );
\rx_data[39]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => us_count(0),
      I1 => us_count(1),
      I2 => us_count(2),
      I3 => us_count(3),
      O => \rx_data[39]_i_6_n_0\
    );
\rx_data[39]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_data[39]_i_8_n_0\,
      I1 => \rx_data[39]_i_9_n_0\,
      I2 => rx_index(15),
      I3 => rx_index(12),
      I4 => rx_index(9),
      I5 => \rx_index[31]_i_10_n_0\,
      O => \rx_data[39]_i_7_n_0\
    );
\rx_data[39]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rx_index(21),
      I1 => \state_am2302[3]_i_26_n_0\,
      I2 => rx_index(24),
      I3 => \rx_data[39]_i_10_n_0\,
      I4 => rx_index(27),
      I5 => \rx_data[39]_i_11_n_0\,
      O => \rx_data[39]_i_8_n_0\
    );
\rx_data[39]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rx_index(10),
      I1 => rx_index(11),
      I2 => rx_index(13),
      I3 => rx_index(14),
      I4 => \rx_data[39]_i_12_n_0\,
      I5 => rx_index(6),
      O => \rx_data[39]_i_9_n_0\
    );
\rx_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[7]_i_2_n_0\,
      I5 => \rx_data_reg_n_0_[3]\,
      O => \rx_data[3]_i_1_n_0\
    );
\rx_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[7]_i_2_n_0\,
      I5 => \rx_data_reg_n_0_[4]\,
      O => \rx_data[4]_i_1_n_0\
    );
\rx_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[7]_i_2_n_0\,
      I5 => \rx_data_reg_n_0_[5]\,
      O => \rx_data[5]_i_1_n_0\
    );
\rx_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[7]_i_2_n_0\,
      I5 => \rx_data_reg_n_0_[6]\,
      O => \rx_data[6]_i_1_n_0\
    );
\rx_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[7]_i_2_n_0\,
      I5 => \rx_data_reg_n_0_[7]\,
      O => \rx_data[7]_i_1_n_0\
    );
\rx_data[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_index(4),
      I1 => rx_index(3),
      I2 => rx_index(5),
      I3 => \rx_data[39]_i_7_n_0\,
      O => \rx_data[7]_i_2_n_0\
    );
\rx_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[15]_i_2_n_0\,
      I5 => R1_in(8),
      O => \rx_data[8]_i_1_n_0\
    );
\rx_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => state_am230215_out,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2_n_0\,
      I3 => \rx_data[31]_i_2_n_0\,
      I4 => \rx_data[15]_i_2_n_0\,
      I5 => R1_in(9),
      O => \rx_data[9]_i_1_n_0\
    );
\rx_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[0]_i_1_n_0\,
      Q => \rx_data_reg_n_0_[0]\,
      R => '0'
    );
\rx_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[10]_i_1_n_0\,
      Q => R1_in(10),
      R => '0'
    );
\rx_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[11]_i_1_n_0\,
      Q => R1_in(11),
      R => '0'
    );
\rx_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[12]_i_1_n_0\,
      Q => R1_in(12),
      R => '0'
    );
\rx_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[13]_i_1_n_0\,
      Q => R1_in(13),
      R => '0'
    );
\rx_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[14]_i_1_n_0\,
      Q => R1_in(14),
      R => '0'
    );
\rx_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[15]_i_1_n_0\,
      Q => R1_in(15),
      R => '0'
    );
\rx_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[16]_i_1_n_0\,
      Q => R0_in(16),
      R => '0'
    );
\rx_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[17]_i_1_n_0\,
      Q => R0_in(17),
      R => '0'
    );
\rx_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[18]_i_1_n_0\,
      Q => R0_in(18),
      R => '0'
    );
\rx_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[19]_i_1_n_0\,
      Q => R0_in(19),
      R => '0'
    );
\rx_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[1]_i_1_n_0\,
      Q => \rx_data_reg_n_0_[1]\,
      R => '0'
    );
\rx_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[20]_i_1_n_0\,
      Q => R0_in(20),
      R => '0'
    );
\rx_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[21]_i_1_n_0\,
      Q => R0_in(21),
      R => '0'
    );
\rx_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[22]_i_1_n_0\,
      Q => R0_in(22),
      R => '0'
    );
\rx_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[23]_i_1_n_0\,
      Q => R0_in(23),
      R => '0'
    );
\rx_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[24]_i_1_n_0\,
      Q => R(24),
      R => '0'
    );
\rx_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[25]_i_1_n_0\,
      Q => R(25),
      R => '0'
    );
\rx_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[26]_i_1_n_0\,
      Q => R(26),
      R => '0'
    );
\rx_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[27]_i_1_n_0\,
      Q => R(27),
      R => '0'
    );
\rx_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[28]_i_1_n_0\,
      Q => R(28),
      R => '0'
    );
\rx_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[29]_i_1_n_0\,
      Q => R(29),
      R => '0'
    );
\rx_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[2]_i_1_n_0\,
      Q => \rx_data_reg_n_0_[2]\,
      R => '0'
    );
\rx_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[30]_i_1_n_0\,
      Q => R(30),
      R => '0'
    );
\rx_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[31]_i_1_n_0\,
      Q => R(31),
      R => '0'
    );
\rx_data_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[32]_i_1_n_0\,
      Q => L(32),
      R => '0'
    );
\rx_data_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[33]_i_1_n_0\,
      Q => L(33),
      R => '0'
    );
\rx_data_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[34]_i_1_n_0\,
      Q => L(34),
      R => '0'
    );
\rx_data_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[35]_i_1_n_0\,
      Q => L(35),
      R => '0'
    );
\rx_data_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[36]_i_1_n_0\,
      Q => L(36),
      R => '0'
    );
\rx_data_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[37]_i_1_n_0\,
      Q => L(37),
      R => '0'
    );
\rx_data_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[38]_i_1_n_0\,
      Q => L(38),
      R => '0'
    );
\rx_data_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[39]_i_1_n_0\,
      Q => L(39),
      R => '0'
    );
\rx_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[3]_i_1_n_0\,
      Q => \rx_data_reg_n_0_[3]\,
      R => '0'
    );
\rx_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[4]_i_1_n_0\,
      Q => \rx_data_reg_n_0_[4]\,
      R => '0'
    );
\rx_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[5]_i_1_n_0\,
      Q => \rx_data_reg_n_0_[5]\,
      R => '0'
    );
\rx_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[6]_i_1_n_0\,
      Q => \rx_data_reg_n_0_[6]\,
      R => '0'
    );
\rx_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[7]_i_1_n_0\,
      Q => \rx_data_reg_n_0_[7]\,
      R => '0'
    );
\rx_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[8]_i_1_n_0\,
      Q => R1_in(8),
      R => '0'
    );
\rx_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[9]_i_1_n_0\,
      Q => R1_in(9),
      R => '0'
    );
rx_index0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rx_index0_carry_n_0,
      CO(2) => rx_index0_carry_n_1,
      CO(1) => rx_index0_carry_n_2,
      CO(0) => rx_index0_carry_n_3,
      CYINIT => rx_index(0),
      DI(3 downto 0) => rx_index(4 downto 1),
      O(3) => rx_index0_carry_n_4,
      O(2) => rx_index0_carry_n_5,
      O(1) => rx_index0_carry_n_6,
      O(0) => rx_index0_carry_n_7,
      S(3) => rx_index0_carry_i_1_n_0,
      S(2) => rx_index0_carry_i_2_n_0,
      S(1) => rx_index0_carry_i_3_n_0,
      S(0) => rx_index0_carry_i_4_n_0
    );
\rx_index0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rx_index0_carry_n_0,
      CO(3) => \rx_index0_carry__0_n_0\,
      CO(2) => \rx_index0_carry__0_n_1\,
      CO(1) => \rx_index0_carry__0_n_2\,
      CO(0) => \rx_index0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rx_index(8 downto 5),
      O(3) => \rx_index0_carry__0_n_4\,
      O(2) => \rx_index0_carry__0_n_5\,
      O(1) => \rx_index0_carry__0_n_6\,
      O(0) => \rx_index0_carry__0_n_7\,
      S(3) => \rx_index0_carry__0_i_1_n_0\,
      S(2) => \rx_index0_carry__0_i_2_n_0\,
      S(1) => \rx_index0_carry__0_i_3_n_0\,
      S(0) => \rx_index0_carry__0_i_4_n_0\
    );
\rx_index0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(8),
      O => \rx_index0_carry__0_i_1_n_0\
    );
\rx_index0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(7),
      O => \rx_index0_carry__0_i_2_n_0\
    );
\rx_index0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(6),
      O => \rx_index0_carry__0_i_3_n_0\
    );
\rx_index0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(5),
      O => \rx_index0_carry__0_i_4_n_0\
    );
\rx_index0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__0_n_0\,
      CO(3) => \rx_index0_carry__1_n_0\,
      CO(2) => \rx_index0_carry__1_n_1\,
      CO(1) => \rx_index0_carry__1_n_2\,
      CO(0) => \rx_index0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rx_index(12 downto 9),
      O(3) => \rx_index0_carry__1_n_4\,
      O(2) => \rx_index0_carry__1_n_5\,
      O(1) => \rx_index0_carry__1_n_6\,
      O(0) => \rx_index0_carry__1_n_7\,
      S(3) => \rx_index0_carry__1_i_1_n_0\,
      S(2) => \rx_index0_carry__1_i_2_n_0\,
      S(1) => \rx_index0_carry__1_i_3_n_0\,
      S(0) => \rx_index0_carry__1_i_4_n_0\
    );
\rx_index0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(12),
      O => \rx_index0_carry__1_i_1_n_0\
    );
\rx_index0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(11),
      O => \rx_index0_carry__1_i_2_n_0\
    );
\rx_index0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(10),
      O => \rx_index0_carry__1_i_3_n_0\
    );
\rx_index0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(9),
      O => \rx_index0_carry__1_i_4_n_0\
    );
\rx_index0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__1_n_0\,
      CO(3) => \rx_index0_carry__2_n_0\,
      CO(2) => \rx_index0_carry__2_n_1\,
      CO(1) => \rx_index0_carry__2_n_2\,
      CO(0) => \rx_index0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rx_index(16 downto 13),
      O(3) => \rx_index0_carry__2_n_4\,
      O(2) => \rx_index0_carry__2_n_5\,
      O(1) => \rx_index0_carry__2_n_6\,
      O(0) => \rx_index0_carry__2_n_7\,
      S(3) => \rx_index0_carry__2_i_1_n_0\,
      S(2) => \rx_index0_carry__2_i_2_n_0\,
      S(1) => \rx_index0_carry__2_i_3_n_0\,
      S(0) => \rx_index0_carry__2_i_4_n_0\
    );
\rx_index0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(16),
      O => \rx_index0_carry__2_i_1_n_0\
    );
\rx_index0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(15),
      O => \rx_index0_carry__2_i_2_n_0\
    );
\rx_index0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(14),
      O => \rx_index0_carry__2_i_3_n_0\
    );
\rx_index0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(13),
      O => \rx_index0_carry__2_i_4_n_0\
    );
\rx_index0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__2_n_0\,
      CO(3) => \rx_index0_carry__3_n_0\,
      CO(2) => \rx_index0_carry__3_n_1\,
      CO(1) => \rx_index0_carry__3_n_2\,
      CO(0) => \rx_index0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rx_index(20 downto 17),
      O(3) => \rx_index0_carry__3_n_4\,
      O(2) => \rx_index0_carry__3_n_5\,
      O(1) => \rx_index0_carry__3_n_6\,
      O(0) => \rx_index0_carry__3_n_7\,
      S(3) => \rx_index0_carry__3_i_1_n_0\,
      S(2) => \rx_index0_carry__3_i_2_n_0\,
      S(1) => \rx_index0_carry__3_i_3_n_0\,
      S(0) => \rx_index0_carry__3_i_4_n_0\
    );
\rx_index0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(20),
      O => \rx_index0_carry__3_i_1_n_0\
    );
\rx_index0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(19),
      O => \rx_index0_carry__3_i_2_n_0\
    );
\rx_index0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(18),
      O => \rx_index0_carry__3_i_3_n_0\
    );
\rx_index0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(17),
      O => \rx_index0_carry__3_i_4_n_0\
    );
\rx_index0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__3_n_0\,
      CO(3) => \rx_index0_carry__4_n_0\,
      CO(2) => \rx_index0_carry__4_n_1\,
      CO(1) => \rx_index0_carry__4_n_2\,
      CO(0) => \rx_index0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rx_index(24 downto 21),
      O(3) => \rx_index0_carry__4_n_4\,
      O(2) => \rx_index0_carry__4_n_5\,
      O(1) => \rx_index0_carry__4_n_6\,
      O(0) => \rx_index0_carry__4_n_7\,
      S(3) => \rx_index0_carry__4_i_1_n_0\,
      S(2) => \rx_index0_carry__4_i_2_n_0\,
      S(1) => \rx_index0_carry__4_i_3_n_0\,
      S(0) => \rx_index0_carry__4_i_4_n_0\
    );
\rx_index0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(24),
      O => \rx_index0_carry__4_i_1_n_0\
    );
\rx_index0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(23),
      O => \rx_index0_carry__4_i_2_n_0\
    );
\rx_index0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(22),
      O => \rx_index0_carry__4_i_3_n_0\
    );
\rx_index0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(21),
      O => \rx_index0_carry__4_i_4_n_0\
    );
\rx_index0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__4_n_0\,
      CO(3) => \rx_index0_carry__5_n_0\,
      CO(2) => \rx_index0_carry__5_n_1\,
      CO(1) => \rx_index0_carry__5_n_2\,
      CO(0) => \rx_index0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rx_index(28 downto 25),
      O(3) => \rx_index0_carry__5_n_4\,
      O(2) => \rx_index0_carry__5_n_5\,
      O(1) => \rx_index0_carry__5_n_6\,
      O(0) => \rx_index0_carry__5_n_7\,
      S(3) => \rx_index0_carry__5_i_1_n_0\,
      S(2) => \rx_index0_carry__5_i_2_n_0\,
      S(1) => \rx_index0_carry__5_i_3_n_0\,
      S(0) => \rx_index0_carry__5_i_4_n_0\
    );
\rx_index0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(28),
      O => \rx_index0_carry__5_i_1_n_0\
    );
\rx_index0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(27),
      O => \rx_index0_carry__5_i_2_n_0\
    );
\rx_index0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(26),
      O => \rx_index0_carry__5_i_3_n_0\
    );
\rx_index0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(25),
      O => \rx_index0_carry__5_i_4_n_0\
    );
\rx_index0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_rx_index0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rx_index0_carry__6_n_2\,
      CO(0) => \rx_index0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rx_index(30 downto 29),
      O(3) => \NLW_rx_index0_carry__6_O_UNCONNECTED\(3),
      O(2) => \rx_index0_carry__6_n_5\,
      O(1) => \rx_index0_carry__6_n_6\,
      O(0) => \rx_index0_carry__6_n_7\,
      S(3) => '0',
      S(2) => \rx_index0_carry__6_i_1_n_0\,
      S(1) => \rx_index0_carry__6_i_2_n_0\,
      S(0) => \rx_index0_carry__6_i_3_n_0\
    );
\rx_index0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(31),
      O => \rx_index0_carry__6_i_1_n_0\
    );
\rx_index0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(30),
      O => \rx_index0_carry__6_i_2_n_0\
    );
\rx_index0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(29),
      O => \rx_index0_carry__6_i_3_n_0\
    );
rx_index0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(4),
      O => rx_index0_carry_i_1_n_0
    );
rx_index0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(3),
      O => rx_index0_carry_i_2_n_0
    );
rx_index0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(2),
      O => rx_index0_carry_i_3_n_0
    );
rx_index0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(1),
      O => rx_index0_carry_i_4_n_0
    );
\rx_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_index(0),
      O => \rx_index[0]_i_1_n_0\
    );
\rx_index[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000000040"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => \rx_index[31]_i_3_n_0\,
      I5 => \rx_index[31]_i_4_n_0\,
      O => \rx_index[31]_i_1_n_0\
    );
\rx_index[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rx_index(18),
      I1 => rx_index(20),
      I2 => rx_index(19),
      O => \rx_index[31]_i_10_n_0\
    );
\rx_index[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140014000000140"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => \rx_index[31]_i_3_n_0\,
      I5 => \rx_index[31]_i_4_n_0\,
      O => rx_index0
    );
\rx_index[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => rx_index(6),
      I1 => rx_index(5),
      I2 => rx_index(2),
      I3 => \rx_index[31]_i_5_n_0\,
      I4 => \rx_index[31]_i_6_n_0\,
      I5 => \rx_index[31]_i_7_n_0\,
      O => \rx_index[31]_i_3_n_0\
    );
\rx_index[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index[31]_i_8_n_0\,
      I1 => rx_index(16),
      I2 => rx_index(17),
      I3 => rx_index(23),
      I4 => rx_index(21),
      I5 => \rx_index[31]_i_9_n_0\,
      O => \rx_index[31]_i_4_n_0\
    );
\rx_index[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rx_index(12),
      I1 => rx_index(11),
      I2 => rx_index(10),
      I3 => rx_index(9),
      O => \rx_index[31]_i_5_n_0\
    );
\rx_index[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rx_index(0),
      I1 => rx_index(1),
      I2 => rx_index(31),
      I3 => rx_index(15),
      O => \rx_index[31]_i_6_n_0\
    );
\rx_index[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rx_index(13),
      I1 => rx_index(14),
      I2 => rx_index(7),
      I3 => rx_index(8),
      I4 => rx_index(4),
      I5 => rx_index(3),
      O => \rx_index[31]_i_7_n_0\
    );
\rx_index[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rx_index(24),
      I1 => rx_index(22),
      I2 => rx_index(25),
      I3 => rx_index(26),
      I4 => rx_index(27),
      O => \rx_index[31]_i_8_n_0\
    );
\rx_index[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => rx_index(30),
      I2 => rx_index(29),
      I3 => rx_index(28),
      I4 => \rx_index[31]_i_10_n_0\,
      O => \rx_index[31]_i_9_n_0\
    );
\rx_index_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index[0]_i_1_n_0\,
      Q => rx_index(0),
      S => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__1_n_6\,
      Q => rx_index(10),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__1_n_5\,
      Q => rx_index(11),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__1_n_4\,
      Q => rx_index(12),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__2_n_7\,
      Q => rx_index(13),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__2_n_6\,
      Q => rx_index(14),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__2_n_5\,
      Q => rx_index(15),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__2_n_4\,
      Q => rx_index(16),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__3_n_7\,
      Q => rx_index(17),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__3_n_6\,
      Q => rx_index(18),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__3_n_5\,
      Q => rx_index(19),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => rx_index0_carry_n_7,
      Q => rx_index(1),
      S => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__3_n_4\,
      Q => rx_index(20),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__4_n_7\,
      Q => rx_index(21),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__4_n_6\,
      Q => rx_index(22),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__4_n_5\,
      Q => rx_index(23),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__4_n_4\,
      Q => rx_index(24),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__5_n_7\,
      Q => rx_index(25),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__5_n_6\,
      Q => rx_index(26),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__5_n_5\,
      Q => rx_index(27),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__5_n_4\,
      Q => rx_index(28),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__6_n_7\,
      Q => rx_index(29),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => rx_index0_carry_n_6,
      Q => rx_index(2),
      S => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__6_n_6\,
      Q => rx_index(30),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__6_n_5\,
      Q => rx_index(31),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => rx_index0_carry_n_5,
      Q => rx_index(3),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => rx_index0_carry_n_4,
      Q => rx_index(4),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__0_n_7\,
      Q => rx_index(5),
      S => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__0_n_6\,
      Q => rx_index(6),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__0_n_5\,
      Q => rx_index(7),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__0_n_4\,
      Q => rx_index(8),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => rx_index0,
      D => \rx_index0_carry__1_n_7\,
      Q => rx_index(9),
      R => \rx_index[31]_i_1_n_0\
    );
s_data_ctrl1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_data_ctrl_tristate_oe_reg_0\,
      I1 => s_data_ctrl1_reg_0,
      O => s_data_ctrl
    );
s_data_ctrl1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_ctrl,
      Q => T,
      R => '0'
    );
s_data_ctrl_tristate_oe_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_ctrl_tristate_oe_reg_1,
      Q => \^s_data_ctrl_tristate_oe_reg_0\,
      R => '0'
    );
s_data_in_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_in1,
      Q => s_data_in,
      R => '0'
    );
s_data_out1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_out,
      Q => I,
      R => '0'
    );
s_data_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => s_data_out,
      O => s_data_out_i_1_n_0
    );
s_data_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_out_i_1_n_0,
      Q => s_data_out,
      R => '0'
    );
\state_am2302[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0EFE0"
    )
        port map (
      I0 => \state_am2302[0]_i_2_n_0\,
      I1 => \state_am2302[3]_i_6_n_0\,
      I2 => \state_am2302[3]_i_7_n_0\,
      I3 => \state_am2302[3]_i_8_n_0\,
      I4 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[0]_i_1_n_0\
    );
\state_am2302[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FF0100"
    )
        port map (
      I0 => \state_am2302[3]_i_10_n_0\,
      I1 => \state_am2302[3]_i_11_n_0\,
      I2 => \state_am2302[3]_i_12_n_0\,
      I3 => \state_am2302[3]_i_13_n_0\,
      I4 => \state_am2302[3]_i_14_n_0\,
      I5 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[0]_i_2_n_0\
    );
\state_am2302[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFE00FA00FA00"
    )
        port map (
      I0 => \state_am2302[1]_i_2_n_0\,
      I1 => \state_am2302[3]_i_6_n_0\,
      I2 => \state_am2302[1]_i_3_n_0\,
      I3 => \state_am2302[3]_i_7_n_0\,
      I4 => \state_am2302[3]_i_8_n_0\,
      I5 => data0(1),
      O => \state_am2302[1]_i_1_n_0\
    );
\state_am2302[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0802A0A0"
    )
        port map (
      I0 => \state_am2302[3]_i_14_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[1]_i_2_n_0\
    );
\state_am2302[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100002210000020"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \state_am2302[3]_i_10_n_0\,
      I3 => \^state_am2302_reg[1]_0\,
      I4 => \^state_am2302_reg[0]_0\,
      I5 => \state_am2302[3]_i_12_n_0\,
      O => \state_am2302[1]_i_3_n_0\
    );
\state_am2302[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      O => data0(1)
    );
\state_am2302[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFE00FA00FA00"
    )
        port map (
      I0 => \state_am2302[2]_i_2_n_0\,
      I1 => \state_am2302[3]_i_6_n_0\,
      I2 => \state_am2302[2]_i_3_n_0\,
      I3 => \state_am2302[3]_i_7_n_0\,
      I4 => \state_am2302[3]_i_8_n_0\,
      I5 => data0(2),
      O => \state_am2302[2]_i_1_n_0\
    );
\state_am2302[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0880A800"
    )
        port map (
      I0 => \state_am2302[3]_i_14_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[2]_i_2_n_0\
    );
\state_am2302[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000500A00005008"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \state_am2302[3]_i_10_n_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[0]_0\,
      I4 => \^state_am2302_reg[2]_0\,
      I5 => \state_am2302[3]_i_12_n_0\,
      O => \state_am2302[2]_i_3_n_0\
    );
\state_am2302[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      O => data0(2)
    );
\state_am2302[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAFAFAEEEEAAEE"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \state_am2302[3]_i_3_n_0\,
      I2 => \state_am2302[3]_i_4_n_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => s_data_in,
      I5 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[3]_i_1_n_0\
    );
\state_am2302[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state_am2302[3]_i_20_n_0\,
      I1 => \state_am2302[3]_i_21_n_0\,
      I2 => rx_index(1),
      I3 => rx_index(2),
      I4 => rx_index(0),
      I5 => \state_am2302[3]_i_22_n_0\,
      O => \state_am2302[3]_i_10_n_0\
    );
\state_am2302[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"453D"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      O => \state_am2302[3]_i_11_n_0\
    );
\state_am2302[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rx_index(31),
      I1 => rx_index(30),
      I2 => rx_index(29),
      I3 => rx_index(27),
      I4 => rx_index(28),
      O => \state_am2302[3]_i_12_n_0\
    );
\state_am2302[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"032C"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      O => \state_am2302[3]_i_13_n_0\
    );
\state_am2302[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAC"
    )
        port map (
      I0 => state_am23021,
      I1 => state_am230218_out,
      I2 => \state_am2302[3]_i_11_n_0\,
      I3 => state_am230215_out,
      O => \state_am2302[3]_i_14_n_0\
    );
\state_am2302[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[7]\,
      I1 => plusOp43(7),
      I2 => \rx_data_reg_n_0_[6]\,
      I3 => plusOp43(6),
      O => \state_am2302[3]_i_15_n_0\
    );
\state_am2302[3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[5]\,
      I1 => plusOp43(5),
      I2 => \rx_data_reg_n_0_[2]\,
      I3 => plusOp43(2),
      O => \state_am2302[3]_i_16_n_0\
    );
\state_am2302[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[1]\,
      I1 => plusOp43(1),
      I2 => \rx_data_reg_n_0_[0]\,
      I3 => plusOp43(0),
      O => \state_am2302[3]_i_17_n_0\
    );
\state_am2302[3]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[4]\,
      I1 => plusOp43(4),
      I2 => \rx_data_reg_n_0_[3]\,
      I3 => plusOp43(3),
      O => \state_am2302[3]_i_18_n_0\
    );
\state_am2302[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003333322"
    )
        port map (
      I0 => \us_count[7]_i_7_n_0\,
      I1 => \state_am2302[3]_i_24_n_0\,
      I2 => \state_am2302[3]_i_25_n_0\,
      I3 => us_count(3),
      I4 => us_count(4),
      I5 => us_count(5),
      O => state_am2302111_out
    );
\state_am2302[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFE0A0A0"
    )
        port map (
      I0 => \state_am2302[3]_i_5_n_0\,
      I1 => \state_am2302[3]_i_6_n_0\,
      I2 => \state_am2302[3]_i_7_n_0\,
      I3 => \state_am2302[3]_i_8_n_0\,
      I4 => data0(3),
      O => \state_am2302[3]_i_2_n_0\
    );
\state_am2302[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rx_index(4),
      I1 => rx_index(5),
      I2 => rx_index(3),
      I3 => rx_index(7),
      I4 => rx_index(8),
      I5 => rx_index(6),
      O => \state_am2302[3]_i_20_n_0\
    );
\state_am2302[3]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_index(25),
      I1 => rx_index(26),
      I2 => rx_index(24),
      I3 => \state_am2302[3]_i_26_n_0\,
      O => \state_am2302[3]_i_21_n_0\
    );
\state_am2302[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFFFE"
    )
        port map (
      I0 => \state_am2302[3]_i_27_n_0\,
      I1 => \state_am2302[3]_i_28_n_0\,
      I2 => rx_index(23),
      I3 => rx_index(21),
      I4 => rx_index(22),
      I5 => \state_am2302[3]_i_29_n_0\,
      O => \state_am2302[3]_i_22_n_0\
    );
\state_am2302[3]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0C080A"
    )
        port map (
      I0 => \state_am2302[3]_i_30_n_0\,
      I1 => \state_am2302[3]_i_31_n_0\,
      I2 => us_count(7),
      I3 => us_count(5),
      I4 => us_count(6),
      O => state_am230218_out
    );
\state_am2302[3]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => us_count(7),
      I1 => us_count(6),
      O => \state_am2302[3]_i_24_n_0\
    );
\state_am2302[3]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => us_count(2),
      I1 => us_count(1),
      O => \state_am2302[3]_i_25_n_0\
    );
\state_am2302[3]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_index(17),
      I1 => rx_index(16),
      I2 => rx_index(23),
      I3 => rx_index(22),
      O => \state_am2302[3]_i_26_n_0\
    );
\state_am2302[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rx_index(10),
      I1 => rx_index(11),
      I2 => rx_index(9),
      I3 => rx_index(13),
      I4 => rx_index(14),
      I5 => rx_index(12),
      O => \state_am2302[3]_i_27_n_0\
    );
\state_am2302[3]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_index(19),
      I1 => rx_index(20),
      O => \state_am2302[3]_i_28_n_0\
    );
\state_am2302[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => rx_index(17),
      I1 => rx_index(15),
      I2 => rx_index(16),
      I3 => rx_index(20),
      I4 => rx_index(18),
      I5 => rx_index(19),
      O => \state_am2302[3]_i_29_n_0\
    );
\state_am2302[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAFAABBBBBBBB"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => ltOp,
      I2 => \us_count[7]_i_4_n_0\,
      I3 => clk_1ust,
      I4 => clk_1us,
      I5 => \^state_am2302_reg[1]_0\,
      O => \state_am2302[3]_i_3_n_0\
    );
\state_am2302[3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => us_count(5),
      I1 => us_count(4),
      I2 => us_count(3),
      I3 => us_count(1),
      I4 => us_count(2),
      I5 => us_count(0),
      O => \state_am2302[3]_i_30_n_0\
    );
\state_am2302[3]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000070FFFFF"
    )
        port map (
      I0 => us_count(1),
      I1 => us_count(0),
      I2 => us_count(3),
      I3 => us_count(2),
      I4 => us_count(4),
      I5 => us_count(6),
      O => \state_am2302[3]_i_31_n_0\
    );
\state_am2302[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FFF5F5F3F3F3F3"
    )
        port map (
      I0 => s_data_in,
      I1 => \ltOp_carry__2_n_2\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \us_count[7]_i_5_n_0\,
      I4 => \us_count[7]_i_6_n_0\,
      I5 => \^state_am2302_reg[1]_0\,
      O => \state_am2302[3]_i_4_n_0\
    );
\state_am2302[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF010000000000"
    )
        port map (
      I0 => \state_am2302[3]_i_10_n_0\,
      I1 => \state_am2302[3]_i_11_n_0\,
      I2 => \state_am2302[3]_i_12_n_0\,
      I3 => \state_am2302[3]_i_13_n_0\,
      I4 => \state_am2302[3]_i_14_n_0\,
      I5 => data0(3),
      O => \state_am2302[3]_i_5_n_0\
    );
\state_am2302[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \state_am2302[3]_i_13_n_0\,
      I1 => \state_am2302[3]_i_15_n_0\,
      I2 => \state_am2302[3]_i_16_n_0\,
      I3 => \state_am2302[3]_i_17_n_0\,
      I4 => \state_am2302[3]_i_18_n_0\,
      I5 => \state_am2302[3]_i_11_n_0\,
      O => \state_am2302[3]_i_6_n_0\
    );
\state_am2302[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      O => \state_am2302[3]_i_7_n_0\
    );
\state_am2302[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14B7049515F705D5"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => state_am2302111_out,
      I5 => s_data_in,
      O => \state_am2302[3]_i_8_n_0\
    );
\state_am2302[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      O => data0(3)
    );
\state_am2302_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1_n_0\,
      D => \state_am2302[0]_i_1_n_0\,
      Q => \^state_am2302_reg[0]_0\,
      R => '0'
    );
\state_am2302_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1_n_0\,
      D => \state_am2302[1]_i_1_n_0\,
      Q => \^state_am2302_reg[1]_0\,
      R => '0'
    );
\state_am2302_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1_n_0\,
      D => \state_am2302[2]_i_1_n_0\,
      Q => \^state_am2302_reg[2]_0\,
      R => '0'
    );
\state_am2302_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1_n_0\,
      D => \state_am2302[3]_i_2_n_0\,
      Q => \^state_am2302_reg[3]_0\,
      R => '0'
    );
\status[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"307F7F7F30000000"
    )
        port map (
      I0 => \status[0]_i_2_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \status[0]_i_3_n_0\,
      I4 => \status[0]_i_4_n_0\,
      I5 => status(0),
      O => \status[0]_i_1_n_0\
    );
\status[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \state_am2302[3]_i_15_n_0\,
      I1 => \state_am2302[3]_i_16_n_0\,
      I2 => \state_am2302[3]_i_17_n_0\,
      I3 => \state_am2302[3]_i_18_n_0\,
      I4 => \^state_am2302_reg[1]_0\,
      I5 => \^state_am2302_reg[2]_0\,
      O => \status[0]_i_2_n_0\
    );
\status[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0040404040"
    )
        port map (
      I0 => \us_count[7]_i_5_n_0\,
      I1 => s_data_in,
      I2 => \us_count[7]_i_6_n_0\,
      I3 => \status[2]_i_6_n_0\,
      I4 => \status[2]_i_5_n_0\,
      I5 => \status[0]_i_5_n_0\,
      O => \status[0]_i_3_n_0\
    );
\status[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      O => \status[0]_i_4_n_0\
    );
\status[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      O => \status[0]_i_5_n_0\
    );
\status[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333F3FF33330100"
    )
        port map (
      I0 => eqOp,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \status[2]_i_3_n_0\,
      I4 => \status[2]_i_4_n_0\,
      I5 => status(1),
      O => \status[1]_i_1_n_0\
    );
\status[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C3F3FFC3C30100"
    )
        port map (
      I0 => eqOp,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \status[2]_i_3_n_0\,
      I4 => \status[2]_i_4_n_0\,
      I5 => status(2),
      O => \status[2]_i_1_n_0\
    );
\status[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \state_am2302[3]_i_15_n_0\,
      I1 => \state_am2302[3]_i_16_n_0\,
      I2 => \state_am2302[3]_i_17_n_0\,
      I3 => \state_am2302[3]_i_18_n_0\,
      O => eqOp
    );
\status[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      O => \status[2]_i_3_n_0\
    );
\status[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2A2A200"
    )
        port map (
      I0 => \status[0]_i_4_n_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \status[2]_i_5_n_0\,
      I4 => \status[2]_i_6_n_0\,
      I5 => \status[2]_i_7_n_0\,
      O => \status[2]_i_4_n_0\
    );
\status[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => s_data_in,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => state_am230218_out,
      O => \status[2]_i_5_n_0\
    );
\status[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001100000F0F00"
    )
        port map (
      I0 => state_am23021,
      I1 => state_am230215_out,
      I2 => state_am2302111_out,
      I3 => \^state_am2302_reg[0]_0\,
      I4 => s_data_in,
      I5 => \^state_am2302_reg[1]_0\,
      O => \status[2]_i_6_n_0\
    );
\status[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004400000"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => clk_1ust,
      I3 => clk_1us,
      I4 => s_data_in,
      I5 => \us_count[7]_i_5_n_0\,
      O => \status[2]_i_7_n_0\
    );
\status_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \status[0]_i_1_n_0\,
      Q => status(0),
      R => '0'
    );
\status_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \status[1]_i_1_n_0\,
      Q => status(1),
      R => '0'
    );
\status_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \status[2]_i_1_n_0\,
      Q => status(2),
      R => '0'
    );
\us_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \us_cnt_reg__0\(0),
      O => \us_cnt[0]_i_1_n_0\
    );
\us_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \us_cnt_reg__0\(0),
      I1 => \us_cnt_reg__0\(1),
      O => plusOp(1)
    );
\us_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \us_cnt_reg__0\(0),
      I1 => \us_cnt_reg__0\(1),
      I2 => \us_cnt_reg__0\(2),
      O => plusOp(2)
    );
\us_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \us_cnt_reg__0\(1),
      I1 => \us_cnt_reg__0\(0),
      I2 => \us_cnt_reg__0\(2),
      I3 => \us_cnt_reg__0\(3),
      O => plusOp(3)
    );
\us_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \us_cnt_reg__0\(2),
      I1 => \us_cnt_reg__0\(0),
      I2 => \us_cnt_reg__0\(1),
      I3 => \us_cnt_reg__0\(3),
      I4 => \us_cnt_reg__0\(4),
      O => plusOp(4)
    );
\us_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \us_cnt_reg__0\(3),
      I1 => \us_cnt_reg__0\(1),
      I2 => \us_cnt_reg__0\(0),
      I3 => \us_cnt_reg__0\(2),
      I4 => \us_cnt_reg__0\(4),
      I5 => \us_cnt_reg__0\(5),
      O => plusOp(5)
    );
\us_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \us_cnt[7]_i_4_n_0\,
      I1 => \us_cnt_reg__0\(6),
      O => plusOp(6)
    );
\us_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => \us_cnt[7]_i_3_n_0\,
      I1 => \us_cnt_reg__0\(7),
      I2 => \us_cnt_reg__0\(6),
      O => clear
    );
\us_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \us_cnt[7]_i_4_n_0\,
      I1 => \us_cnt_reg__0\(6),
      I2 => \us_cnt_reg__0\(7),
      O => plusOp(7)
    );
\us_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777777F"
    )
        port map (
      I0 => \us_cnt_reg__0\(5),
      I1 => \us_cnt_reg__0\(4),
      I2 => \us_cnt_reg__0\(2),
      I3 => \us_cnt_reg__0\(3),
      I4 => \us_cnt_reg__0\(0),
      I5 => \us_cnt_reg__0\(1),
      O => \us_cnt[7]_i_3_n_0\
    );
\us_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \us_cnt_reg__0\(5),
      I1 => \us_cnt_reg__0\(3),
      I2 => \us_cnt_reg__0\(1),
      I3 => \us_cnt_reg__0\(0),
      I4 => \us_cnt_reg__0\(2),
      I5 => \us_cnt_reg__0\(4),
      O => \us_cnt[7]_i_4_n_0\
    );
\us_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \us_cnt[0]_i_1_n_0\,
      Q => \us_cnt_reg__0\(0),
      R => clear
    );
\us_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \us_cnt_reg__0\(1),
      R => clear
    );
\us_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \us_cnt_reg__0\(2),
      R => clear
    );
\us_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \us_cnt_reg__0\(3),
      R => clear
    );
\us_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp(4),
      Q => \us_cnt_reg__0\(4),
      R => clear
    );
\us_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp(5),
      Q => \us_cnt_reg__0\(5),
      R => clear
    );
\us_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp(6),
      Q => \us_cnt_reg__0\(6),
      R => clear
    );
\us_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp(7),
      Q => \us_cnt_reg__0\(7),
      R => clear
    );
\us_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A5ACA50C"
    )
        port map (
      I0 => s_data_in,
      I1 => \us_count[7]_i_4_n_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \us_count[7]_i_5_n_0\,
      I5 => us_count(0),
      O => \us_count[0]_i_1_n_0\
    );
\us_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => us_count(0),
      I1 => us_count(1),
      O => \us_count[1]_i_1_n_0\
    );
\us_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => us_count(1),
      I1 => us_count(0),
      I2 => us_count(2),
      O => \us_count[2]_i_1_n_0\
    );
\us_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => us_count(0),
      I1 => us_count(1),
      I2 => us_count(2),
      I3 => us_count(3),
      O => \us_count[3]_i_1_n_0\
    );
\us_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => us_count(2),
      I1 => us_count(1),
      I2 => us_count(0),
      I3 => us_count(3),
      I4 => us_count(4),
      O => \us_count[4]_i_1_n_0\
    );
\us_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => us_count(3),
      I1 => us_count(0),
      I2 => us_count(1),
      I3 => us_count(2),
      I4 => us_count(4),
      I5 => us_count(5),
      O => \us_count[5]_i_1_n_0\
    );
\us_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => us_count(4),
      I1 => us_count(2),
      I2 => \us_count[6]_i_2_n_0\,
      I3 => us_count(3),
      I4 => us_count(5),
      I5 => us_count(6),
      O => \us_count[6]_i_1_n_0\
    );
\us_count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => us_count(0),
      I1 => us_count(1),
      O => \us_count[6]_i_2_n_0\
    );
\us_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2288220A2288AA0A"
    )
        port map (
      I0 => us_count_2,
      I1 => s_data_in,
      I2 => \us_count[7]_i_4_n_0\,
      I3 => \^state_am2302_reg[0]_0\,
      I4 => \^state_am2302_reg[2]_0\,
      I5 => \us_count[7]_i_5_n_0\,
      O => \us_count[7]_i_1_n_0\
    );
\us_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545400545000"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => s_data_in,
      I4 => \^state_am2302_reg[0]_0\,
      I5 => \us_count[7]_i_6_n_0\,
      O => us_count_2
    );
\us_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => us_count(5),
      I1 => us_count(3),
      I2 => \us_count[7]_i_7_n_0\,
      I3 => us_count(4),
      I4 => us_count(6),
      I5 => us_count(7),
      O => \us_count[7]_i_3_n_0\
    );
\us_count[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => \us_count[7]_i_8_n_0\,
      I1 => us_count(4),
      I2 => us_count(5),
      I3 => us_count(6),
      I4 => us_count(7),
      O => \us_count[7]_i_4_n_0\
    );
\us_count[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFFCFDF"
    )
        port map (
      I0 => us_count(4),
      I1 => us_count(7),
      I2 => us_count(6),
      I3 => us_count(5),
      I4 => \us_count[7]_i_8_n_0\,
      O => \us_count[7]_i_5_n_0\
    );
\us_count[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_1us,
      I1 => clk_1ust,
      O => \us_count[7]_i_6_n_0\
    );
\us_count[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => us_count(2),
      I1 => us_count(1),
      I2 => us_count(0),
      O => \us_count[7]_i_7_n_0\
    );
\us_count[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001F"
    )
        port map (
      I0 => us_count(0),
      I1 => us_count(1),
      I2 => us_count(2),
      I3 => us_count(3),
      O => \us_count[7]_i_8_n_0\
    );
\us_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count_2,
      D => \us_count[0]_i_1_n_0\,
      Q => us_count(0),
      R => '0'
    );
\us_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count_2,
      D => \us_count[1]_i_1_n_0\,
      Q => us_count(1),
      R => \us_count[7]_i_1_n_0\
    );
\us_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count_2,
      D => \us_count[2]_i_1_n_0\,
      Q => us_count(2),
      R => \us_count[7]_i_1_n_0\
    );
\us_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count_2,
      D => \us_count[3]_i_1_n_0\,
      Q => us_count(3),
      R => \us_count[7]_i_1_n_0\
    );
\us_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count_2,
      D => \us_count[4]_i_1_n_0\,
      Q => us_count(4),
      R => \us_count[7]_i_1_n_0\
    );
\us_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count_2,
      D => \us_count[5]_i_1_n_0\,
      Q => us_count(5),
      R => \us_count[7]_i_1_n_0\
    );
\us_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count_2,
      D => \us_count[6]_i_1_n_0\,
      Q => us_count(6),
      R => \us_count[7]_i_1_n_0\
    );
\us_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count_2,
      D => \us_count[7]_i_3_n_0\,
      Q => us_count(7),
      R => \us_count[7]_i_1_n_0\
    );
\work_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => ltOp,
      I3 => \^state_am2302_reg[1]_0\,
      I4 => \^state_am2302_reg[2]_0\,
      O => sel
    );
\work_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => work_cnt_reg_1(0),
      O => \work_cnt[0]_i_3_n_0\
    );
\work_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[0]_i_2_n_7\,
      Q => work_cnt_reg_1(0),
      R => '0'
    );
\work_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \work_cnt_reg[0]_i_2_n_0\,
      CO(2) => \work_cnt_reg[0]_i_2_n_1\,
      CO(1) => \work_cnt_reg[0]_i_2_n_2\,
      CO(0) => \work_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \work_cnt_reg[0]_i_2_n_4\,
      O(2) => \work_cnt_reg[0]_i_2_n_5\,
      O(1) => \work_cnt_reg[0]_i_2_n_6\,
      O(0) => \work_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => work_cnt_reg_1(3 downto 1),
      S(0) => \work_cnt[0]_i_3_n_0\
    );
\work_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[8]_i_1_n_5\,
      Q => work_cnt_reg_1(10),
      R => '0'
    );
\work_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[8]_i_1_n_4\,
      Q => work_cnt_reg_1(11),
      R => '0'
    );
\work_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[12]_i_1_n_7\,
      Q => work_cnt_reg_1(12),
      R => '0'
    );
\work_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \work_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_work_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \work_cnt_reg[12]_i_1_n_1\,
      CO(1) => \work_cnt_reg[12]_i_1_n_2\,
      CO(0) => \work_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \work_cnt_reg[12]_i_1_n_4\,
      O(2) => \work_cnt_reg[12]_i_1_n_5\,
      O(1) => \work_cnt_reg[12]_i_1_n_6\,
      O(0) => \work_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => work_cnt_reg_1(15 downto 12)
    );
\work_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[12]_i_1_n_6\,
      Q => work_cnt_reg_1(13),
      R => '0'
    );
\work_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[12]_i_1_n_5\,
      Q => work_cnt_reg_1(14),
      R => '0'
    );
\work_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[12]_i_1_n_4\,
      Q => work_cnt_reg_1(15),
      R => '0'
    );
\work_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[0]_i_2_n_6\,
      Q => work_cnt_reg_1(1),
      R => '0'
    );
\work_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[0]_i_2_n_5\,
      Q => work_cnt_reg_1(2),
      R => '0'
    );
\work_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[0]_i_2_n_4\,
      Q => work_cnt_reg_1(3),
      R => '0'
    );
\work_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[4]_i_1_n_7\,
      Q => work_cnt_reg_1(4),
      R => '0'
    );
\work_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \work_cnt_reg[0]_i_2_n_0\,
      CO(3) => \work_cnt_reg[4]_i_1_n_0\,
      CO(2) => \work_cnt_reg[4]_i_1_n_1\,
      CO(1) => \work_cnt_reg[4]_i_1_n_2\,
      CO(0) => \work_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \work_cnt_reg[4]_i_1_n_4\,
      O(2) => \work_cnt_reg[4]_i_1_n_5\,
      O(1) => \work_cnt_reg[4]_i_1_n_6\,
      O(0) => \work_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => work_cnt_reg_1(7 downto 4)
    );
\work_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[4]_i_1_n_6\,
      Q => work_cnt_reg_1(5),
      R => '0'
    );
\work_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[4]_i_1_n_5\,
      Q => work_cnt_reg_1(6),
      R => '0'
    );
\work_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[4]_i_1_n_4\,
      Q => work_cnt_reg_1(7),
      R => '0'
    );
\work_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[8]_i_1_n_7\,
      Q => work_cnt_reg_1(8),
      R => '0'
    );
\work_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \work_cnt_reg[4]_i_1_n_0\,
      CO(3) => \work_cnt_reg[8]_i_1_n_0\,
      CO(2) => \work_cnt_reg[8]_i_1_n_1\,
      CO(1) => \work_cnt_reg[8]_i_1_n_2\,
      CO(0) => \work_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \work_cnt_reg[8]_i_1_n_4\,
      O(2) => \work_cnt_reg[8]_i_1_n_5\,
      O(1) => \work_cnt_reg[8]_i_1_n_6\,
      O(0) => \work_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => work_cnt_reg_1(11 downto 8)
    );
\work_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \work_cnt_reg[8]_i_1_n_6\,
      Q => work_cnt_reg_1(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_0 is
  port (
    s_data_ctrl_tristate_oe_reg_0 : out STD_LOGIC;
    work_cnt_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_am2302_reg[0]_0\ : out STD_LOGIC;
    \state_am2302_reg[2]_0\ : out STD_LOGIC;
    \state_am2302_reg[3]_0\ : out STD_LOGIC;
    \state_am2302_reg[1]_0\ : out STD_LOGIC;
    \am2302_humi_reg[0]_0\ : out STD_LOGIC;
    \am2302_humi_reg[1]_0\ : out STD_LOGIC;
    \am2302_humi_reg[2]_0\ : out STD_LOGIC;
    \axi_araddr_reg[2]\ : out STD_LOGIC;
    \axi_araddr_reg[2]_0\ : out STD_LOGIC;
    \axi_araddr_reg[2]_1\ : out STD_LOGIC;
    \axi_araddr_reg[2]_2\ : out STD_LOGIC;
    \axi_araddr_reg[2]_3\ : out STD_LOGIC;
    \axi_araddr_reg[2]_4\ : out STD_LOGIC;
    \axi_araddr_reg[2]_5\ : out STD_LOGIC;
    \axi_araddr_reg[2]_6\ : out STD_LOGIC;
    \axi_araddr_reg[2]_7\ : out STD_LOGIC;
    \axi_araddr_reg[2]_8\ : out STD_LOGIC;
    \axi_araddr_reg[2]_9\ : out STD_LOGIC;
    \axi_araddr_reg[2]_10\ : out STD_LOGIC;
    \axi_araddr_reg[2]_11\ : out STD_LOGIC;
    AM2302_SDA_2_ctrl : out STD_LOGIC;
    \status_reg[2]_0\ : out STD_LOGIC;
    \status_reg[1]_0\ : out STD_LOGIC;
    \status_reg[0]_0\ : out STD_LOGIC;
    AM2302_SDA_2 : inout STD_LOGIC;
    s_data_ctrl_tristate_oe_reg_1 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s_data_ctrl1_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata[15]_i_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_0 : entity is "fun_am2302_check";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_0 is
  signal I : STD_LOGIC;
  signal T : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[0]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[10]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[11]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[12]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[13]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[14]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[15]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[1]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[2]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[3]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[4]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[5]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[6]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[7]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[8]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[9]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[0]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[10]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[11]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[12]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[13]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[14]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[15]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[1]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[2]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[3]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[4]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[5]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[6]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[7]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[8]\ : STD_LOGIC;
  signal \am2302_humi_reg_n_0_[9]\ : STD_LOGIC;
  signal \am2302_temp1[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[0]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[10]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[11]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[12]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[13]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[14]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[15]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[1]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[2]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[3]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[4]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[5]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[6]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[7]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[8]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[9]\ : STD_LOGIC;
  signal \am2302_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[10]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[11]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[12]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[13]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[14]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \am2302_temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[2]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[3]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[4]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[5]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[6]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[7]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[8]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[9]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[0]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[10]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[11]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[12]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[13]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[14]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[15]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[1]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[2]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[3]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[4]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[5]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[6]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[7]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[8]\ : STD_LOGIC;
  signal \am2302_temp_reg_n_0_[9]\ : STD_LOGIC;
  signal \clk_1us_i_1__0_n_0\ : STD_LOGIC;
  signal clk_1us_reg_n_0 : STD_LOGIC;
  signal clk_1ust_reg_n_0 : STD_LOGIC;
  signal \i___2_carry__0_i_10__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_11__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_12__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_9__0_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_9__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_n_1\ : STD_LOGIC;
  signal \ltOp_carry__1_n_2\ : STD_LOGIC;
  signal \ltOp_carry__1_n_3\ : STD_LOGIC;
  signal \ltOp_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_n_2\ : STD_LOGIC;
  signal \ltOp_carry__2_n_3\ : STD_LOGIC;
  signal \ltOp_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_7__0_n_0\ : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry_i_3__0_n_0\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_4 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal \period_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \period_cnt[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \period_cnt[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_4\ : STD_LOGIC;
  signal \plusOp_carry__3_n_5\ : STD_LOGIC;
  signal \plusOp_carry__3_n_6\ : STD_LOGIC;
  signal \plusOp_carry__3_n_7\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_4\ : STD_LOGIC;
  signal \plusOp_carry__4_n_5\ : STD_LOGIC;
  signal \plusOp_carry__4_n_6\ : STD_LOGIC;
  signal \plusOp_carry__4_n_7\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_carry__5_n_4\ : STD_LOGIC;
  signal \plusOp_carry__5_n_5\ : STD_LOGIC;
  signal \plusOp_carry__5_n_6\ : STD_LOGIC;
  signal \plusOp_carry__5_n_7\ : STD_LOGIC;
  signal \plusOp_carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_carry__6_n_5\ : STD_LOGIC;
  signal \plusOp_carry__6_n_6\ : STD_LOGIC;
  signal \plusOp_carry__6_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_7\ : STD_LOGIC;
  signal \rx_data[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[23]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_4__0_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_5__0_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_6__0_n_0\ : STD_LOGIC;
  signal \rx_data[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[32]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[33]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[33]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[34]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[34]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[35]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[35]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[36]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[36]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[37]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[37]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[38]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[38]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_10__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_11__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_12__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_4__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_5__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_6__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_7__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_8__0_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_9__0_n_0\ : STD_LOGIC;
  signal \rx_data[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_data[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_4__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_4__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__6_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__6_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__6_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_7\ : STD_LOGIC;
  signal \rx_index0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal rx_index0_carry_n_0 : STD_LOGIC;
  signal rx_index0_carry_n_1 : STD_LOGIC;
  signal rx_index0_carry_n_2 : STD_LOGIC;
  signal rx_index0_carry_n_3 : STD_LOGIC;
  signal rx_index0_carry_n_4 : STD_LOGIC;
  signal rx_index0_carry_n_5 : STD_LOGIC;
  signal rx_index0_carry_n_6 : STD_LOGIC;
  signal rx_index0_carry_n_7 : STD_LOGIC;
  signal \rx_index[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_10__0_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_3__0_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_4__0_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_5__0_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_6__0_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_7__0_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_8__0_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_9__0_n_0\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[10]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[11]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[12]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[13]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[14]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[15]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[16]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[17]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[18]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[19]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[20]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[21]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[22]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[23]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[24]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[25]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[26]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[27]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[28]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[29]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[30]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[31]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[5]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[6]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[7]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[8]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[9]\ : STD_LOGIC;
  signal s_data_ctrl : STD_LOGIC;
  signal \^s_data_ctrl_tristate_oe_reg_0\ : STD_LOGIC;
  signal s_data_in1 : STD_LOGIC;
  signal s_data_in_reg_n_0 : STD_LOGIC;
  signal \s_data_out_i_1__0_n_0\ : STD_LOGIC;
  signal s_data_out_reg_n_0 : STD_LOGIC;
  signal \state_am2302[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_am2302[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_11__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_12__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_13__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_14__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_15__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_16__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_17__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_18__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_19__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_20__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_21__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_22__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_23__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_24__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_25__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_26__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_27__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_28__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_29__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_30__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_31__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_9__0_n_0\ : STD_LOGIC;
  signal \^state_am2302_reg[0]_0\ : STD_LOGIC;
  signal \^state_am2302_reg[1]_0\ : STD_LOGIC;
  signal \^state_am2302_reg[2]_0\ : STD_LOGIC;
  signal \^state_am2302_reg[3]_0\ : STD_LOGIC;
  signal \status[0]_i_1_n_0\ : STD_LOGIC;
  signal \status[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \status[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \status[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \status[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \status[1]_i_1_n_0\ : STD_LOGIC;
  signal \status[2]_i_1_n_0\ : STD_LOGIC;
  signal \status[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \status[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \status[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \status[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \status[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \status[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \^status_reg[0]_0\ : STD_LOGIC;
  signal \^status_reg[1]_0\ : STD_LOGIC;
  signal \^status_reg[2]_0\ : STD_LOGIC;
  signal \us_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \us_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal us_count : STD_LOGIC;
  signal \us_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \us_count[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \us_count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \us_count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \us_count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \us_count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \us_count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \us_count[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_6__0_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_7__0_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_8__0_n_0\ : STD_LOGIC;
  signal \us_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \work_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \work_cnt[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \^work_cnt_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \work_cnt_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ltOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rx_index0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rx_index0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_work_cnt_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \am2302_temp[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \am2302_temp[10]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \am2302_temp[11]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \am2302_temp[12]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \am2302_temp[14]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \am2302_temp[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \am2302_temp[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \am2302_temp[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \am2302_temp[4]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \am2302_temp[5]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \am2302_temp[6]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \am2302_temp[7]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \am2302_temp[8]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \am2302_temp[9]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \clk_1us_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \i___2_carry__0_i_10__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \i___2_carry__0_i_8__0\ : label is "soft_lutpair62";
  attribute box_type : string;
  attribute box_type of inst_am2302_io : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \rx_data[15]_i_2__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_data[31]_i_3__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_data[31]_i_5__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rx_data[32]_i_2__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rx_data[33]_i_2__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rx_data[34]_i_2__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rx_data[35]_i_2__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rx_data[36]_i_2__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rx_data[37]_i_2__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rx_data[38]_i_2__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rx_data[39]_i_10__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rx_data[39]_i_11__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rx_data[39]_i_3__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rx_data[39]_i_4__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_data[39]_i_5__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rx_data[39]_i_6__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rx_data[7]_i_2__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_index[0]_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rx_index[31]_i_10__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_index[31]_i_6__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rx_index[31]_i_8__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_data_out_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \state_am2302[1]_i_2__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \state_am2302[1]_i_4__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \state_am2302[2]_i_2__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \state_am2302[2]_i_4__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_11__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_12__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_13__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_23__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_24__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_25__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_28__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_7__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_9__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \status[0]_i_4__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \status[0]_i_5__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \status[2]_i_5__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \us_cnt[1]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \us_cnt[2]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \us_cnt[3]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \us_cnt[4]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \us_cnt[6]_i_1__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \us_cnt[7]_i_2__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \us_count[2]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \us_count[3]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \us_count[4]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \us_count[6]_i_2__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \us_count[7]_i_4__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \us_count[7]_i_5__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \us_count[7]_i_6__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \us_count[7]_i_7__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \us_count[7]_i_8__0\ : label is "soft_lutpair55";
begin
  s_data_ctrl_tristate_oe_reg_0 <= \^s_data_ctrl_tristate_oe_reg_0\;
  \state_am2302_reg[0]_0\ <= \^state_am2302_reg[0]_0\;
  \state_am2302_reg[1]_0\ <= \^state_am2302_reg[1]_0\;
  \state_am2302_reg[2]_0\ <= \^state_am2302_reg[2]_0\;
  \state_am2302_reg[3]_0\ <= \^state_am2302_reg[3]_0\;
  \status_reg[0]_0\ <= \^status_reg[0]_0\;
  \status_reg[1]_0\ <= \^status_reg[1]_0\;
  \status_reg[2]_0\ <= \^status_reg[2]_0\;
  work_cnt_reg(15 downto 0) <= \^work_cnt_reg\(15 downto 0);
AM2302_SDA_2_ctrl_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => T,
      O => AM2302_SDA_2_ctrl
    );
\am2302_humi1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[24]\,
      Q => \am2302_humi1_reg_n_0_[0]\,
      R => '0'
    );
\am2302_humi1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[34]\,
      Q => \am2302_humi1_reg_n_0_[10]\,
      R => '0'
    );
\am2302_humi1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[35]\,
      Q => \am2302_humi1_reg_n_0_[11]\,
      R => '0'
    );
\am2302_humi1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[36]\,
      Q => \am2302_humi1_reg_n_0_[12]\,
      R => '0'
    );
\am2302_humi1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[37]\,
      Q => \am2302_humi1_reg_n_0_[13]\,
      R => '0'
    );
\am2302_humi1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[38]\,
      Q => \am2302_humi1_reg_n_0_[14]\,
      R => '0'
    );
\am2302_humi1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[39]\,
      Q => \am2302_humi1_reg_n_0_[15]\,
      R => '0'
    );
\am2302_humi1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[25]\,
      Q => \am2302_humi1_reg_n_0_[1]\,
      R => '0'
    );
\am2302_humi1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[26]\,
      Q => \am2302_humi1_reg_n_0_[2]\,
      R => '0'
    );
\am2302_humi1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[27]\,
      Q => \am2302_humi1_reg_n_0_[3]\,
      R => '0'
    );
\am2302_humi1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[28]\,
      Q => \am2302_humi1_reg_n_0_[4]\,
      R => '0'
    );
\am2302_humi1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[29]\,
      Q => \am2302_humi1_reg_n_0_[5]\,
      R => '0'
    );
\am2302_humi1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[30]\,
      Q => \am2302_humi1_reg_n_0_[6]\,
      R => '0'
    );
\am2302_humi1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[31]\,
      Q => \am2302_humi1_reg_n_0_[7]\,
      R => '0'
    );
\am2302_humi1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[32]\,
      Q => \am2302_humi1_reg_n_0_[8]\,
      R => '0'
    );
\am2302_humi1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[33]\,
      Q => \am2302_humi1_reg_n_0_[9]\,
      R => '0'
    );
\am2302_humi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[0]\,
      Q => \am2302_humi_reg_n_0_[0]\,
      R => '0'
    );
\am2302_humi_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[10]\,
      Q => \am2302_humi_reg_n_0_[10]\,
      R => '0'
    );
\am2302_humi_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[11]\,
      Q => \am2302_humi_reg_n_0_[11]\,
      R => '0'
    );
\am2302_humi_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[12]\,
      Q => \am2302_humi_reg_n_0_[12]\,
      R => '0'
    );
\am2302_humi_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[13]\,
      Q => \am2302_humi_reg_n_0_[13]\,
      R => '0'
    );
\am2302_humi_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[14]\,
      Q => \am2302_humi_reg_n_0_[14]\,
      R => '0'
    );
\am2302_humi_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[15]\,
      Q => \am2302_humi_reg_n_0_[15]\,
      R => '0'
    );
\am2302_humi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[1]\,
      Q => \am2302_humi_reg_n_0_[1]\,
      R => '0'
    );
\am2302_humi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[2]\,
      Q => \am2302_humi_reg_n_0_[2]\,
      R => '0'
    );
\am2302_humi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[3]\,
      Q => \am2302_humi_reg_n_0_[3]\,
      R => '0'
    );
\am2302_humi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[4]\,
      Q => \am2302_humi_reg_n_0_[4]\,
      R => '0'
    );
\am2302_humi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[5]\,
      Q => \am2302_humi_reg_n_0_[5]\,
      R => '0'
    );
\am2302_humi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[6]\,
      Q => \am2302_humi_reg_n_0_[6]\,
      R => '0'
    );
\am2302_humi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[7]\,
      Q => \am2302_humi_reg_n_0_[7]\,
      R => '0'
    );
\am2302_humi_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[8]\,
      Q => \am2302_humi_reg_n_0_[8]\,
      R => '0'
    );
\am2302_humi_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_humi1_reg_n_0_[9]\,
      Q => \am2302_humi_reg_n_0_[9]\,
      R => '0'
    );
\am2302_temp1[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      O => \am2302_temp1[15]_i_1__0_n_0\
    );
\am2302_temp1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[8]\,
      Q => \am2302_temp1_reg_n_0_[0]\,
      R => '0'
    );
\am2302_temp1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[18]\,
      Q => \am2302_temp1_reg_n_0_[10]\,
      R => '0'
    );
\am2302_temp1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[19]\,
      Q => \am2302_temp1_reg_n_0_[11]\,
      R => '0'
    );
\am2302_temp1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[20]\,
      Q => \am2302_temp1_reg_n_0_[12]\,
      R => '0'
    );
\am2302_temp1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[21]\,
      Q => \am2302_temp1_reg_n_0_[13]\,
      R => '0'
    );
\am2302_temp1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[22]\,
      Q => \am2302_temp1_reg_n_0_[14]\,
      R => '0'
    );
\am2302_temp1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[23]\,
      Q => \am2302_temp1_reg_n_0_[15]\,
      R => '0'
    );
\am2302_temp1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[9]\,
      Q => \am2302_temp1_reg_n_0_[1]\,
      R => '0'
    );
\am2302_temp1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[10]\,
      Q => \am2302_temp1_reg_n_0_[2]\,
      R => '0'
    );
\am2302_temp1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[11]\,
      Q => \am2302_temp1_reg_n_0_[3]\,
      R => '0'
    );
\am2302_temp1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[12]\,
      Q => \am2302_temp1_reg_n_0_[4]\,
      R => '0'
    );
\am2302_temp1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[13]\,
      Q => \am2302_temp1_reg_n_0_[5]\,
      R => '0'
    );
\am2302_temp1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[14]\,
      Q => \am2302_temp1_reg_n_0_[6]\,
      R => '0'
    );
\am2302_temp1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[15]\,
      Q => \am2302_temp1_reg_n_0_[7]\,
      R => '0'
    );
\am2302_temp1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[16]\,
      Q => \am2302_temp1_reg_n_0_[8]\,
      R => '0'
    );
\am2302_temp1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__0_n_0\,
      D => \rx_data_reg_n_0_[17]\,
      Q => \am2302_temp1_reg_n_0_[9]\,
      R => '0'
    );
\am2302_temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp_carry_n_7,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[0]\,
      O => \am2302_temp[0]_i_1_n_0\
    );
\am2302_temp[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__1_n_5\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[10]\,
      O => \am2302_temp[10]_i_1_n_0\
    );
\am2302_temp[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__1_n_4\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[11]\,
      O => \am2302_temp[11]_i_1_n_0\
    );
\am2302_temp[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__2_n_7\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[12]\,
      O => \am2302_temp[12]_i_1_n_0\
    );
\am2302_temp[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__2_n_6\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[13]\,
      O => \am2302_temp[13]_i_1_n_0\
    );
\am2302_temp[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__2_n_5\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[14]\,
      O => \am2302_temp[14]_i_1_n_0\
    );
\am2302_temp[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      O => \am2302_temp[15]_i_1__0_n_0\
    );
\am2302_temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp_carry_n_6,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[1]\,
      O => \am2302_temp[1]_i_1_n_0\
    );
\am2302_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp_carry_n_5,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[2]\,
      O => \am2302_temp[2]_i_1_n_0\
    );
\am2302_temp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp_carry_n_4,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[3]\,
      O => \am2302_temp[3]_i_1_n_0\
    );
\am2302_temp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__0_n_7\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[4]\,
      O => \am2302_temp[4]_i_1_n_0\
    );
\am2302_temp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__0_n_6\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[5]\,
      O => \am2302_temp[5]_i_1_n_0\
    );
\am2302_temp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__0_n_5\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[6]\,
      O => \am2302_temp[6]_i_1_n_0\
    );
\am2302_temp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__0_n_4\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[7]\,
      O => \am2302_temp[7]_i_1_n_0\
    );
\am2302_temp[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__1_n_7\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[8]\,
      O => \am2302_temp[8]_i_1_n_0\
    );
\am2302_temp[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__1_n_6\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[9]\,
      O => \am2302_temp[9]_i_1_n_0\
    );
\am2302_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[0]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[0]\,
      R => '0'
    );
\am2302_temp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[10]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[10]\,
      R => '0'
    );
\am2302_temp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[11]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[11]\,
      R => '0'
    );
\am2302_temp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[12]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[12]\,
      R => '0'
    );
\am2302_temp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[13]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[13]\,
      R => '0'
    );
\am2302_temp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[14]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[14]\,
      R => '0'
    );
\am2302_temp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp1_reg_n_0_[15]\,
      Q => \am2302_temp_reg_n_0_[15]\,
      R => '0'
    );
\am2302_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[1]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[1]\,
      R => '0'
    );
\am2302_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[2]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[2]\,
      R => '0'
    );
\am2302_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[3]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[3]\,
      R => '0'
    );
\am2302_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[4]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[4]\,
      R => '0'
    );
\am2302_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[5]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[5]\,
      R => '0'
    );
\am2302_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[6]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[6]\,
      R => '0'
    );
\am2302_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[7]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[7]\,
      R => '0'
    );
\am2302_temp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[8]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[8]\,
      R => '0'
    );
\am2302_temp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__0_n_0\,
      D => \am2302_temp[9]_i_1_n_0\,
      Q => \am2302_temp_reg_n_0_[9]\,
      R => '0'
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \am2302_humi_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => \axi_rdata[15]_i_2\(0),
      I3 => \axi_rdata[15]_i_2\(1),
      I4 => \am2302_temp_reg_n_0_[0]\,
      I5 => \axi_rdata_reg[0]\,
      O => \am2302_humi_reg[0]_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(10),
      I3 => \am2302_humi_reg_n_0_[10]\,
      I4 => \am2302_temp_reg_n_0_[10]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_6\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(11),
      I3 => \am2302_humi_reg_n_0_[11]\,
      I4 => \am2302_temp_reg_n_0_[11]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_7\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(12),
      I3 => \am2302_humi_reg_n_0_[12]\,
      I4 => \am2302_temp_reg_n_0_[12]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_8\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(13),
      I3 => \am2302_humi_reg_n_0_[13]\,
      I4 => \am2302_temp_reg_n_0_[13]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_9\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(14),
      I3 => \am2302_humi_reg_n_0_[14]\,
      I4 => \am2302_temp_reg_n_0_[14]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_10\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(15),
      I3 => \am2302_humi_reg_n_0_[15]\,
      I4 => \am2302_temp_reg_n_0_[15]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_11\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \am2302_humi_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => \axi_rdata[15]_i_2\(0),
      I3 => \axi_rdata[15]_i_2\(1),
      I4 => \am2302_temp_reg_n_0_[1]\,
      I5 => \axi_rdata_reg[1]\,
      O => \am2302_humi_reg[1]_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \am2302_humi_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => \axi_rdata[15]_i_2\(0),
      I3 => \axi_rdata[15]_i_2\(1),
      I4 => \am2302_temp_reg_n_0_[2]\,
      I5 => \axi_rdata_reg[2]\,
      O => \am2302_humi_reg[2]_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(3),
      I3 => \am2302_humi_reg_n_0_[3]\,
      I4 => \am2302_temp_reg_n_0_[3]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(4),
      I3 => \am2302_humi_reg_n_0_[4]\,
      I4 => \am2302_temp_reg_n_0_[4]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(5),
      I3 => \am2302_humi_reg_n_0_[5]\,
      I4 => \am2302_temp_reg_n_0_[5]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_1\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(6),
      I3 => \am2302_humi_reg_n_0_[6]\,
      I4 => \am2302_temp_reg_n_0_[6]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_2\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(7),
      I3 => \am2302_humi_reg_n_0_[7]\,
      I4 => \am2302_temp_reg_n_0_[7]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_3\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(8),
      I3 => \am2302_humi_reg_n_0_[8]\,
      I4 => \am2302_temp_reg_n_0_[8]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_4\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B391A28000000000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2\(0),
      I1 => \axi_rdata[15]_i_2\(1),
      I2 => Q(9),
      I3 => \am2302_humi_reg_n_0_[9]\,
      I4 => \am2302_temp_reg_n_0_[9]\,
      I5 => \axi_rdata[15]_i_2\(2),
      O => \axi_araddr_reg[2]_5\
    );
\clk_1us_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CE31"
    )
        port map (
      I0 => \us_cnt[7]_i_3__0_n_0\,
      I1 => \us_cnt_reg__0\(7),
      I2 => \us_cnt_reg__0\(6),
      I3 => clk_1us_reg_n_0,
      O => \clk_1us_i_1__0_n_0\
    );
clk_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_1us_i_1__0_n_0\,
      Q => clk_1us_reg_n_0,
      R => '0'
    );
clk_1ust_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => clk_1us_reg_n_0,
      Q => clk_1ust_reg_n_0,
      R => '0'
    );
\i___2_carry__0_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \rx_data_reg_n_0_[13]\,
      I1 => \rx_data_reg_n_0_[29]\,
      I2 => \rx_data_reg_n_0_[21]\,
      O => \i___2_carry__0_i_10__0_n_0\
    );
\i___2_carry__0_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rx_data_reg_n_0_[23]\,
      I1 => \rx_data_reg_n_0_[31]\,
      I2 => \rx_data_reg_n_0_[15]\,
      I3 => \rx_data_reg_n_0_[39]\,
      O => \i___2_carry__0_i_11__0_n_0\
    );
\i___2_carry__0_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rx_data_reg_n_0_[14]\,
      I1 => \rx_data_reg_n_0_[30]\,
      I2 => \rx_data_reg_n_0_[22]\,
      O => \i___2_carry__0_i_12__0_n_0\
    );
\i___2_carry__0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \rx_data_reg_n_0_[20]\,
      I1 => \rx_data_reg_n_0_[28]\,
      I2 => \rx_data_reg_n_0_[12]\,
      I3 => \rx_data_reg_n_0_[37]\,
      I4 => \i___2_carry__0_i_8__0_n_0\,
      O => \i___2_carry__0_i_1__0_n_0\
    );
\i___2_carry__0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \rx_data_reg_n_0_[19]\,
      I1 => \rx_data_reg_n_0_[27]\,
      I2 => \rx_data_reg_n_0_[11]\,
      I3 => \rx_data_reg_n_0_[36]\,
      I4 => \i___2_carry__0_i_9__0_n_0\,
      O => \i___2_carry__0_i_2__0_n_0\
    );
\i___2_carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \rx_data_reg_n_0_[18]\,
      I1 => \rx_data_reg_n_0_[26]\,
      I2 => \rx_data_reg_n_0_[10]\,
      I3 => \rx_data_reg_n_0_[35]\,
      I4 => \i___2_carry_i_9__0_n_0\,
      O => \i___2_carry__0_i_3__0_n_0\
    );
\i___2_carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E187871E871E1E78"
    )
        port map (
      I0 => \rx_data_reg_n_0_[38]\,
      I1 => \i___2_carry__0_i_10__0_n_0\,
      I2 => \i___2_carry__0_i_11__0_n_0\,
      I3 => \rx_data_reg_n_0_[14]\,
      I4 => \rx_data_reg_n_0_[30]\,
      I5 => \rx_data_reg_n_0_[22]\,
      O => \i___2_carry__0_i_4__0_n_0\
    );
\i___2_carry__0_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry__0_i_1__0_n_0\,
      I1 => \i___2_carry__0_i_12__0_n_0\,
      I2 => \rx_data_reg_n_0_[38]\,
      I3 => \rx_data_reg_n_0_[13]\,
      I4 => \rx_data_reg_n_0_[29]\,
      I5 => \rx_data_reg_n_0_[21]\,
      O => \i___2_carry__0_i_5__0_n_0\
    );
\i___2_carry__0_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry__0_i_2__0_n_0\,
      I1 => \i___2_carry__0_i_8__0_n_0\,
      I2 => \rx_data_reg_n_0_[37]\,
      I3 => \rx_data_reg_n_0_[12]\,
      I4 => \rx_data_reg_n_0_[28]\,
      I5 => \rx_data_reg_n_0_[20]\,
      O => \i___2_carry__0_i_6__0_n_0\
    );
\i___2_carry__0_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry__0_i_3__0_n_0\,
      I1 => \i___2_carry__0_i_9__0_n_0\,
      I2 => \rx_data_reg_n_0_[36]\,
      I3 => \rx_data_reg_n_0_[11]\,
      I4 => \rx_data_reg_n_0_[27]\,
      I5 => \rx_data_reg_n_0_[19]\,
      O => \i___2_carry__0_i_7__0_n_0\
    );
\i___2_carry__0_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rx_data_reg_n_0_[13]\,
      I1 => \rx_data_reg_n_0_[29]\,
      I2 => \rx_data_reg_n_0_[21]\,
      O => \i___2_carry__0_i_8__0_n_0\
    );
\i___2_carry__0_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rx_data_reg_n_0_[12]\,
      I1 => \rx_data_reg_n_0_[28]\,
      I2 => \rx_data_reg_n_0_[20]\,
      O => \i___2_carry__0_i_9__0_n_0\
    );
\i___2_carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \rx_data_reg_n_0_[17]\,
      I1 => \rx_data_reg_n_0_[25]\,
      I2 => \rx_data_reg_n_0_[9]\,
      I3 => \rx_data_reg_n_0_[34]\,
      I4 => \i___2_carry_i_8__0_n_0\,
      O => \i___2_carry_i_1__0_n_0\
    );
\i___2_carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \rx_data_reg_n_0_[17]\,
      I1 => \rx_data_reg_n_0_[25]\,
      I2 => \rx_data_reg_n_0_[9]\,
      I3 => \rx_data_reg_n_0_[34]\,
      I4 => \i___2_carry_i_8__0_n_0\,
      O => \i___2_carry_i_2__0_n_0\
    );
\i___2_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rx_data_reg_n_0_[17]\,
      I1 => \rx_data_reg_n_0_[25]\,
      I2 => \rx_data_reg_n_0_[9]\,
      I3 => \rx_data_reg_n_0_[33]\,
      O => \i___2_carry_i_3__0_n_0\
    );
\i___2_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry_i_1__0_n_0\,
      I1 => \i___2_carry_i_9__0_n_0\,
      I2 => \rx_data_reg_n_0_[35]\,
      I3 => \rx_data_reg_n_0_[10]\,
      I4 => \rx_data_reg_n_0_[26]\,
      I5 => \rx_data_reg_n_0_[18]\,
      O => \i___2_carry_i_4__0_n_0\
    );
\i___2_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \i___2_carry_i_8__0_n_0\,
      I1 => \rx_data_reg_n_0_[34]\,
      I2 => \rx_data_reg_n_0_[9]\,
      I3 => \rx_data_reg_n_0_[25]\,
      I4 => \rx_data_reg_n_0_[17]\,
      I5 => \rx_data_reg_n_0_[33]\,
      O => \i___2_carry_i_5__0_n_0\
    );
\i___2_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \i___2_carry_i_3__0_n_0\,
      I1 => \rx_data_reg_n_0_[16]\,
      I2 => \rx_data_reg_n_0_[24]\,
      I3 => \rx_data_reg_n_0_[8]\,
      O => \i___2_carry_i_6__0_n_0\
    );
\i___2_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rx_data_reg_n_0_[16]\,
      I1 => \rx_data_reg_n_0_[24]\,
      I2 => \rx_data_reg_n_0_[8]\,
      I3 => \rx_data_reg_n_0_[32]\,
      O => \i___2_carry_i_7__0_n_0\
    );
\i___2_carry_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rx_data_reg_n_0_[10]\,
      I1 => \rx_data_reg_n_0_[26]\,
      I2 => \rx_data_reg_n_0_[18]\,
      O => \i___2_carry_i_8__0_n_0\
    );
\i___2_carry_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rx_data_reg_n_0_[11]\,
      I1 => \rx_data_reg_n_0_[27]\,
      I2 => \rx_data_reg_n_0_[19]\,
      O => \i___2_carry_i_9__0_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[21]\,
      I1 => \period_cnt_reg_n_0_[20]\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[17]\,
      I1 => \period_cnt_reg_n_0_[16]\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[15]\,
      I1 => \period_cnt_reg_n_0_[14]\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[20]\,
      I1 => \period_cnt_reg_n_0_[21]\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[19]\,
      I1 => \period_cnt_reg_n_0_[18]\,
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[16]\,
      I1 => \period_cnt_reg_n_0_[17]\,
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[14]\,
      I1 => \period_cnt_reg_n_0_[15]\,
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[27]\,
      I1 => \period_cnt_reg_n_0_[26]\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[25]\,
      I1 => \period_cnt_reg_n_0_[24]\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[23]\,
      I1 => \period_cnt_reg_n_0_[22]\,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[29]\,
      I1 => \period_cnt_reg_n_0_[28]\,
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[26]\,
      I1 => \period_cnt_reg_n_0_[27]\,
      O => \i__carry__1_i_5__0_n_0\
    );
\i__carry__1_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[24]\,
      I1 => \period_cnt_reg_n_0_[25]\,
      O => \i__carry__1_i_6__0_n_0\
    );
\i__carry__1_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[22]\,
      I1 => \period_cnt_reg_n_0_[23]\,
      O => \i__carry__1_i_7__0_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[31]\,
      I1 => \period_cnt_reg_n_0_[30]\,
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[13]\,
      I1 => \period_cnt_reg_n_0_[12]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[11]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[9]\,
      I1 => \period_cnt_reg_n_0_[8]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[7]\,
      I1 => \period_cnt_reg_n_0_[6]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[12]\,
      I1 => \period_cnt_reg_n_0_[13]\,
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[11]\,
      I1 => \period_cnt_reg_n_0_[10]\,
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[8]\,
      I1 => \period_cnt_reg_n_0_[9]\,
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[6]\,
      I1 => \period_cnt_reg_n_0_[7]\,
      O => \i__carry_i_8__0_n_0\
    );
inst_am2302_io: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      IO => AM2302_SDA_2,
      O => s_data_in1,
      T => T
    );
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \ltOp_carry_i_1__0_n_0\,
      DI(1) => \ltOp_carry_i_2__0_n_0\,
      DI(0) => \ltOp_carry_i_3__0_n_0\,
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \ltOp_carry_i_4__0_n_0\,
      S(2) => \ltOp_carry_i_5__0_n_0\,
      S(1) => \ltOp_carry_i_6__0_n_0\,
      S(0) => \ltOp_carry_i_7__0_n_0\
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3) => \ltOp_carry__0_n_0\,
      CO(2) => \ltOp_carry__0_n_1\,
      CO(1) => \ltOp_carry__0_n_2\,
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ltOp_carry__0_i_1__0_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry__0_i_2__0_n_0\,
      S(2) => \ltOp_carry__0_i_3__0_n_0\,
      S(1) => \ltOp_carry__0_i_4__0_n_0\,
      S(0) => \ltOp_carry__0_i_5__0_n_0\
    );
\ltOp_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[15]\,
      I1 => \period_cnt_reg_n_0_[14]\,
      O => \ltOp_carry__0_i_1__0_n_0\
    );
\ltOp_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[19]\,
      I1 => \period_cnt_reg_n_0_[18]\,
      O => \ltOp_carry__0_i_2__0_n_0\
    );
\ltOp_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[17]\,
      I1 => \period_cnt_reg_n_0_[16]\,
      O => \ltOp_carry__0_i_3__0_n_0\
    );
\ltOp_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[14]\,
      I1 => \period_cnt_reg_n_0_[15]\,
      O => \ltOp_carry__0_i_4__0_n_0\
    );
\ltOp_carry__0_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[13]\,
      I1 => \period_cnt_reg_n_0_[12]\,
      O => \ltOp_carry__0_i_5__0_n_0\
    );
\ltOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_carry__0_n_0\,
      CO(3) => \ltOp_carry__1_n_0\,
      CO(2) => \ltOp_carry__1_n_1\,
      CO(1) => \ltOp_carry__1_n_2\,
      CO(0) => \ltOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ltOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry__1_i_1__0_n_0\,
      S(2) => \ltOp_carry__1_i_2__0_n_0\,
      S(1) => \ltOp_carry__1_i_3__0_n_0\,
      S(0) => \ltOp_carry__1_i_4__0_n_0\
    );
\ltOp_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[27]\,
      I1 => \period_cnt_reg_n_0_[26]\,
      O => \ltOp_carry__1_i_1__0_n_0\
    );
\ltOp_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[25]\,
      I1 => \period_cnt_reg_n_0_[24]\,
      O => \ltOp_carry__1_i_2__0_n_0\
    );
\ltOp_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[23]\,
      I1 => \period_cnt_reg_n_0_[22]\,
      O => \ltOp_carry__1_i_3__0_n_0\
    );
\ltOp_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[21]\,
      I1 => \period_cnt_reg_n_0_[20]\,
      O => \ltOp_carry__1_i_4__0_n_0\
    );
\ltOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_ltOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ltOp_carry__2_n_2\,
      CO(0) => \ltOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \period_cnt_reg_n_0_[31]\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_ltOp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \ltOp_carry__2_i_1__0_n_0\,
      S(0) => \ltOp_carry__2_i_2__0_n_0\
    );
\ltOp_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[31]\,
      I1 => \period_cnt_reg_n_0_[30]\,
      O => \ltOp_carry__2_i_1__0_n_0\
    );
\ltOp_carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[29]\,
      I1 => \period_cnt_reg_n_0_[28]\,
      O => \ltOp_carry__2_i_2__0_n_0\
    );
\ltOp_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[9]\,
      I1 => \period_cnt_reg_n_0_[8]\,
      O => \ltOp_carry_i_1__0_n_0\
    );
\ltOp_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[7]\,
      I1 => \period_cnt_reg_n_0_[6]\,
      O => \ltOp_carry_i_2__0_n_0\
    );
\ltOp_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[5]\,
      I1 => \period_cnt_reg_n_0_[4]\,
      O => \ltOp_carry_i_3__0_n_0\
    );
\ltOp_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[11]\,
      I1 => \period_cnt_reg_n_0_[10]\,
      O => \ltOp_carry_i_4__0_n_0\
    );
\ltOp_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[8]\,
      I1 => \period_cnt_reg_n_0_[9]\,
      O => \ltOp_carry_i_5__0_n_0\
    );
\ltOp_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[6]\,
      I1 => \period_cnt_reg_n_0_[7]\,
      O => \ltOp_carry_i_6__0_n_0\
    );
\ltOp_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[4]\,
      I1 => \period_cnt_reg_n_0_[5]\,
      O => \ltOp_carry_i_7__0_n_0\
    );
\ltOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp_inferred__0/i__carry_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\ltOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry_n_0\,
      CO(3) => \ltOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => '0',
      DI(1) => \i__carry__0_i_2__0_n_0\,
      DI(0) => \i__carry__0_i_3__0_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_4__0_n_0\,
      S(2) => \i__carry__0_i_5__0_n_0\,
      S(1) => \i__carry__0_i_6__0_n_0\,
      S(0) => \i__carry__0_i_7__0_n_0\
    );
\ltOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \ltOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__1_i_1__0_n_0\,
      DI(1) => \i__carry__1_i_2__0_n_0\,
      DI(0) => \i__carry__1_i_3__0_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_4__0_n_0\,
      S(2) => \i__carry__1_i_5__0_n_0\,
      S(1) => \i__carry__1_i_6__0_n_0\,
      S(0) => \i__carry__1_i_7__0_n_0\
    );
\ltOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry__1_n_0\,
      CO(3 downto 1) => \NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ltOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \period_cnt_reg_n_0_[31]\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__2_i_1__0_n_0\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => minusOp_carry_n_4,
      O(2) => minusOp_carry_n_5,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3) => \minusOp_carry_i_1__0_n_0\,
      S(2) => \minusOp_carry_i_2__0_n_0\,
      S(1) => \minusOp_carry_i_3__0_n_0\,
      S(0) => \am2302_temp1_reg_n_0_[0]\
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minusOp_carry__0_n_4\,
      O(2) => \minusOp_carry__0_n_5\,
      O(1) => \minusOp_carry__0_n_6\,
      O(0) => \minusOp_carry__0_n_7\,
      S(3) => \minusOp_carry__0_i_1__0_n_0\,
      S(2) => \minusOp_carry__0_i_2__0_n_0\,
      S(1) => \minusOp_carry__0_i_3__0_n_0\,
      S(0) => \minusOp_carry__0_i_4__0_n_0\
    );
\minusOp_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[7]\,
      O => \minusOp_carry__0_i_1__0_n_0\
    );
\minusOp_carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[6]\,
      O => \minusOp_carry__0_i_2__0_n_0\
    );
\minusOp_carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[5]\,
      O => \minusOp_carry__0_i_3__0_n_0\
    );
\minusOp_carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[4]\,
      O => \minusOp_carry__0_i_4__0_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minusOp_carry__1_n_4\,
      O(2) => \minusOp_carry__1_n_5\,
      O(1) => \minusOp_carry__1_n_6\,
      O(0) => \minusOp_carry__1_n_7\,
      S(3) => \minusOp_carry__1_i_1__0_n_0\,
      S(2) => \minusOp_carry__1_i_2__0_n_0\,
      S(1) => \minusOp_carry__1_i_3__0_n_0\,
      S(0) => \minusOp_carry__1_i_4__0_n_0\
    );
\minusOp_carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[11]\,
      O => \minusOp_carry__1_i_1__0_n_0\
    );
\minusOp_carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[10]\,
      O => \minusOp_carry__1_i_2__0_n_0\
    );
\minusOp_carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[9]\,
      O => \minusOp_carry__1_i_3__0_n_0\
    );
\minusOp_carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[8]\,
      O => \minusOp_carry__1_i_4__0_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3),
      O(2) => \minusOp_carry__2_n_5\,
      O(1) => \minusOp_carry__2_n_6\,
      O(0) => \minusOp_carry__2_n_7\,
      S(3) => '0',
      S(2) => \minusOp_carry__2_i_1__0_n_0\,
      S(1) => \minusOp_carry__2_i_2__0_n_0\,
      S(0) => \minusOp_carry__2_i_3__0_n_0\
    );
\minusOp_carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[14]\,
      O => \minusOp_carry__2_i_1__0_n_0\
    );
\minusOp_carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[13]\,
      O => \minusOp_carry__2_i_2__0_n_0\
    );
\minusOp_carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[12]\,
      O => \minusOp_carry__2_i_3__0_n_0\
    );
\minusOp_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[3]\,
      O => \minusOp_carry_i_1__0_n_0\
    );
\minusOp_carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[2]\,
      O => \minusOp_carry_i_2__0_n_0\
    );
\minusOp_carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[1]\,
      O => \minusOp_carry_i_3__0_n_0\
    );
\period_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[0]\,
      O => \period_cnt[0]_i_1__0_n_0\
    );
\period_cnt[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000101010001"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \ltOp_inferred__0/i__carry__2_n_3\,
      I4 => \^state_am2302_reg[0]_0\,
      I5 => \ltOp_carry__2_n_2\,
      O => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt[31]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \^state_am2302_reg[3]_0\,
      O => \period_cnt[31]_i_2__0_n_0\
    );
\period_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \period_cnt[0]_i_1__0_n_0\,
      Q => \period_cnt_reg_n_0_[0]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__1_n_6\,
      Q => \period_cnt_reg_n_0_[10]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__1_n_5\,
      Q => \period_cnt_reg_n_0_[11]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__1_n_4\,
      Q => \period_cnt_reg_n_0_[12]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__2_n_7\,
      Q => \period_cnt_reg_n_0_[13]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__2_n_6\,
      Q => \period_cnt_reg_n_0_[14]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__2_n_5\,
      Q => \period_cnt_reg_n_0_[15]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__2_n_4\,
      Q => \period_cnt_reg_n_0_[16]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__3_n_7\,
      Q => \period_cnt_reg_n_0_[17]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__3_n_6\,
      Q => \period_cnt_reg_n_0_[18]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__3_n_5\,
      Q => \period_cnt_reg_n_0_[19]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => plusOp_carry_n_7,
      Q => \period_cnt_reg_n_0_[1]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__3_n_4\,
      Q => \period_cnt_reg_n_0_[20]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__4_n_7\,
      Q => \period_cnt_reg_n_0_[21]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__4_n_6\,
      Q => \period_cnt_reg_n_0_[22]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__4_n_5\,
      Q => \period_cnt_reg_n_0_[23]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__4_n_4\,
      Q => \period_cnt_reg_n_0_[24]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__5_n_7\,
      Q => \period_cnt_reg_n_0_[25]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__5_n_6\,
      Q => \period_cnt_reg_n_0_[26]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__5_n_5\,
      Q => \period_cnt_reg_n_0_[27]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__5_n_4\,
      Q => \period_cnt_reg_n_0_[28]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__6_n_7\,
      Q => \period_cnt_reg_n_0_[29]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => plusOp_carry_n_6,
      Q => \period_cnt_reg_n_0_[2]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__6_n_6\,
      Q => \period_cnt_reg_n_0_[30]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__6_n_5\,
      Q => \period_cnt_reg_n_0_[31]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => plusOp_carry_n_5,
      Q => \period_cnt_reg_n_0_[3]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => plusOp_carry_n_4,
      Q => \period_cnt_reg_n_0_[4]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__0_n_7\,
      Q => \period_cnt_reg_n_0_[5]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__0_n_6\,
      Q => \period_cnt_reg_n_0_[6]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__0_n_5\,
      Q => \period_cnt_reg_n_0_[7]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__0_n_4\,
      Q => \period_cnt_reg_n_0_[8]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
\period_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__0_n_0\,
      D => \plusOp_carry__1_n_7\,
      Q => \period_cnt_reg_n_0_[9]\,
      R => \period_cnt[31]_i_1__0_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \period_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3) => \period_cnt_reg_n_0_[4]\,
      S(2) => \period_cnt_reg_n_0_[3]\,
      S(1) => \period_cnt_reg_n_0_[2]\,
      S(0) => \period_cnt_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3) => \period_cnt_reg_n_0_[8]\,
      S(2) => \period_cnt_reg_n_0_[7]\,
      S(1) => \period_cnt_reg_n_0_[6]\,
      S(0) => \period_cnt_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__1_n_4\,
      O(2) => \plusOp_carry__1_n_5\,
      O(1) => \plusOp_carry__1_n_6\,
      O(0) => \plusOp_carry__1_n_7\,
      S(3) => \period_cnt_reg_n_0_[12]\,
      S(2) => \period_cnt_reg_n_0_[11]\,
      S(1) => \period_cnt_reg_n_0_[10]\,
      S(0) => \period_cnt_reg_n_0_[9]\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__2_n_4\,
      O(2) => \plusOp_carry__2_n_5\,
      O(1) => \plusOp_carry__2_n_6\,
      O(0) => \plusOp_carry__2_n_7\,
      S(3) => \period_cnt_reg_n_0_[16]\,
      S(2) => \period_cnt_reg_n_0_[15]\,
      S(1) => \period_cnt_reg_n_0_[14]\,
      S(0) => \period_cnt_reg_n_0_[13]\
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__3_n_4\,
      O(2) => \plusOp_carry__3_n_5\,
      O(1) => \plusOp_carry__3_n_6\,
      O(0) => \plusOp_carry__3_n_7\,
      S(3) => \period_cnt_reg_n_0_[20]\,
      S(2) => \period_cnt_reg_n_0_[19]\,
      S(1) => \period_cnt_reg_n_0_[18]\,
      S(0) => \period_cnt_reg_n_0_[17]\
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__4_n_4\,
      O(2) => \plusOp_carry__4_n_5\,
      O(1) => \plusOp_carry__4_n_6\,
      O(0) => \plusOp_carry__4_n_7\,
      S(3) => \period_cnt_reg_n_0_[24]\,
      S(2) => \period_cnt_reg_n_0_[23]\,
      S(1) => \period_cnt_reg_n_0_[22]\,
      S(0) => \period_cnt_reg_n_0_[21]\
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3) => \plusOp_carry__5_n_0\,
      CO(2) => \plusOp_carry__5_n_1\,
      CO(1) => \plusOp_carry__5_n_2\,
      CO(0) => \plusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__5_n_4\,
      O(2) => \plusOp_carry__5_n_5\,
      O(1) => \plusOp_carry__5_n_6\,
      O(0) => \plusOp_carry__5_n_7\,
      S(3) => \period_cnt_reg_n_0_[28]\,
      S(2) => \period_cnt_reg_n_0_[27]\,
      S(1) => \period_cnt_reg_n_0_[26]\,
      S(0) => \period_cnt_reg_n_0_[25]\
    );
\plusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__6_n_2\,
      CO(0) => \plusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__6_O_UNCONNECTED\(3),
      O(2) => \plusOp_carry__6_n_5\,
      O(1) => \plusOp_carry__6_n_6\,
      O(0) => \plusOp_carry__6_n_7\,
      S(3) => '0',
      S(2) => \period_cnt_reg_n_0_[31]\,
      S(1) => \period_cnt_reg_n_0_[30]\,
      S(0) => \period_cnt_reg_n_0_[29]\
    );
\plusOp_inferred__3/i___2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__3/i___2_carry_n_0\,
      CO(2) => \plusOp_inferred__3/i___2_carry_n_1\,
      CO(1) => \plusOp_inferred__3/i___2_carry_n_2\,
      CO(0) => \plusOp_inferred__3/i___2_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___2_carry_i_1__0_n_0\,
      DI(2) => \i___2_carry_i_2__0_n_0\,
      DI(1) => \i___2_carry_i_3__0_n_0\,
      DI(0) => \rx_data_reg_n_0_[32]\,
      O(3) => \plusOp_inferred__3/i___2_carry_n_4\,
      O(2) => \plusOp_inferred__3/i___2_carry_n_5\,
      O(1) => \plusOp_inferred__3/i___2_carry_n_6\,
      O(0) => \plusOp_inferred__3/i___2_carry_n_7\,
      S(3) => \i___2_carry_i_4__0_n_0\,
      S(2) => \i___2_carry_i_5__0_n_0\,
      S(1) => \i___2_carry_i_6__0_n_0\,
      S(0) => \i___2_carry_i_7__0_n_0\
    );
\plusOp_inferred__3/i___2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__3/i___2_carry_n_0\,
      CO(3) => \NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_inferred__3/i___2_carry__0_n_1\,
      CO(1) => \plusOp_inferred__3/i___2_carry__0_n_2\,
      CO(0) => \plusOp_inferred__3/i___2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i___2_carry__0_i_1__0_n_0\,
      DI(1) => \i___2_carry__0_i_2__0_n_0\,
      DI(0) => \i___2_carry__0_i_3__0_n_0\,
      O(3) => \plusOp_inferred__3/i___2_carry__0_n_4\,
      O(2) => \plusOp_inferred__3/i___2_carry__0_n_5\,
      O(1) => \plusOp_inferred__3/i___2_carry__0_n_6\,
      O(0) => \plusOp_inferred__3/i___2_carry__0_n_7\,
      S(3) => \i___2_carry__0_i_4__0_n_0\,
      S(2) => \i___2_carry__0_i_5__0_n_0\,
      S(1) => \i___2_carry__0_i_6__0_n_0\,
      S(0) => \i___2_carry__0_i_7__0_n_0\
    );
\rx_data[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[7]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[0]\,
      O => \rx_data[0]_i_1__0_n_0\
    );
\rx_data[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[15]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[10]\,
      O => \rx_data[10]_i_1__0_n_0\
    );
\rx_data[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[15]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[11]\,
      O => \rx_data[11]_i_1__0_n_0\
    );
\rx_data[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[15]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[12]\,
      O => \rx_data[12]_i_1__0_n_0\
    );
\rx_data[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[15]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[13]\,
      O => \rx_data[13]_i_1__0_n_0\
    );
\rx_data[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[15]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[14]\,
      O => \rx_data[14]_i_1__0_n_0\
    );
\rx_data[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[15]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[15]\,
      O => \rx_data[15]_i_1__0_n_0\
    );
\rx_data[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \rx_index_reg_n_0_[4]\,
      I1 => \rx_index_reg_n_0_[3]\,
      I2 => \rx_index_reg_n_0_[5]\,
      I3 => \rx_data[39]_i_7__0_n_0\,
      O => \rx_data[15]_i_2__0_n_0\
    );
\rx_data[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[23]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[16]\,
      O => \rx_data[16]_i_1__0_n_0\
    );
\rx_data[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[23]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[17]\,
      O => \rx_data[17]_i_1__0_n_0\
    );
\rx_data[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[23]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[18]\,
      O => \rx_data[18]_i_1__0_n_0\
    );
\rx_data[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[23]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[19]\,
      O => \rx_data[19]_i_1__0_n_0\
    );
\rx_data[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[7]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[1]\,
      O => \rx_data[1]_i_1__0_n_0\
    );
\rx_data[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[23]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[20]\,
      O => \rx_data[20]_i_1__0_n_0\
    );
\rx_data[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[23]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[21]\,
      O => \rx_data[21]_i_1__0_n_0\
    );
\rx_data[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[23]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[22]\,
      O => \rx_data[22]_i_1__0_n_0\
    );
\rx_data[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[23]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[23]\,
      O => \rx_data[23]_i_1__0_n_0\
    );
\rx_data[23]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \rx_index_reg_n_0_[4]\,
      I1 => \rx_index_reg_n_0_[3]\,
      I2 => \rx_index_reg_n_0_[5]\,
      I3 => \rx_data[39]_i_7__0_n_0\,
      O => \rx_data[23]_i_2__0_n_0\
    );
\rx_data[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[31]_i_3__0_n_0\,
      I5 => \rx_data_reg_n_0_[24]\,
      O => \rx_data[24]_i_1__0_n_0\
    );
\rx_data[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[31]_i_3__0_n_0\,
      I5 => \rx_data_reg_n_0_[25]\,
      O => \rx_data[25]_i_1__0_n_0\
    );
\rx_data[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[31]_i_3__0_n_0\,
      I5 => \rx_data_reg_n_0_[26]\,
      O => \rx_data[26]_i_1__0_n_0\
    );
\rx_data[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[31]_i_3__0_n_0\,
      I5 => \rx_data_reg_n_0_[27]\,
      O => \rx_data[27]_i_1__0_n_0\
    );
\rx_data[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[31]_i_3__0_n_0\,
      I5 => \rx_data_reg_n_0_[28]\,
      O => \rx_data[28]_i_1__0_n_0\
    );
\rx_data[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[31]_i_3__0_n_0\,
      I5 => \rx_data_reg_n_0_[29]\,
      O => \rx_data[29]_i_1__0_n_0\
    );
\rx_data[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[7]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[2]\,
      O => \rx_data[2]_i_1__0_n_0\
    );
\rx_data[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[31]_i_3__0_n_0\,
      I5 => \rx_data_reg_n_0_[30]\,
      O => \rx_data[30]_i_1__0_n_0\
    );
\rx_data[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[31]_i_3__0_n_0\,
      I5 => \rx_data_reg_n_0_[31]\,
      O => \rx_data[31]_i_1__0_n_0\
    );
\rx_data[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFFFBFFFFFFF"
    )
        port map (
      I0 => s_data_in_reg_n_0,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \rx_data[31]_i_4__0_n_0\,
      I5 => \rx_data[39]_i_2__0_n_0\,
      O => \rx_data[31]_i_2__0_n_0\
    );
\rx_data[31]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \rx_index_reg_n_0_[3]\,
      I1 => \rx_index_reg_n_0_[4]\,
      I2 => \rx_index_reg_n_0_[5]\,
      I3 => \rx_data[39]_i_7__0_n_0\,
      O => \rx_data[31]_i_3__0_n_0\
    );
\rx_data[31]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2223222000000000"
    )
        port map (
      I0 => \rx_data[31]_i_5__0_n_0\,
      I1 => \us_count_reg_n_0_[7]\,
      I2 => \rx_data[31]_i_6__0_n_0\,
      I3 => \us_count_reg_n_0_[3]\,
      I4 => \state_am2302[3]_i_25__0_n_0\,
      I5 => \us_count_reg_n_0_[6]\,
      O => \rx_data[31]_i_4__0_n_0\
    );
\rx_data[31]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
        port map (
      I0 => \us_count_reg_n_0_[2]\,
      I1 => \us_count_reg_n_0_[5]\,
      I2 => \us_count_reg_n_0_[4]\,
      I3 => \us_count_reg_n_0_[1]\,
      I4 => \us_count_reg_n_0_[0]\,
      O => \rx_data[31]_i_5__0_n_0\
    );
\rx_data[31]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \us_count_reg_n_0_[5]\,
      I1 => \us_count_reg_n_0_[4]\,
      O => \rx_data[31]_i_6__0_n_0\
    );
\rx_data[32]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2__0_n_0\,
      I3 => \rx_data[39]_i_4__0_n_0\,
      I4 => \rx_data_reg_n_0_[32]\,
      O => \rx_data[32]_i_1__0_n_0\
    );
\rx_data[32]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[2]\,
      I1 => \rx_index_reg_n_0_[0]\,
      I2 => \rx_index_reg_n_0_[1]\,
      O => \rx_data[32]_i_2__0_n_0\
    );
\rx_data[33]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2__0_n_0\,
      I3 => \rx_data[39]_i_4__0_n_0\,
      I4 => \rx_data_reg_n_0_[33]\,
      O => \rx_data[33]_i_1__0_n_0\
    );
\rx_data[33]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      I1 => \rx_index_reg_n_0_[1]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[33]_i_2__0_n_0\
    );
\rx_data[34]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2__0_n_0\,
      I3 => \rx_data[39]_i_4__0_n_0\,
      I4 => \rx_data_reg_n_0_[34]\,
      O => \rx_data[34]_i_1__0_n_0\
    );
\rx_data[34]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \rx_index_reg_n_0_[1]\,
      I1 => \rx_index_reg_n_0_[0]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[34]_i_2__0_n_0\
    );
\rx_data[35]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2__0_n_0\,
      I3 => \rx_data[39]_i_4__0_n_0\,
      I4 => \rx_data_reg_n_0_[35]\,
      O => \rx_data[35]_i_1__0_n_0\
    );
\rx_data[35]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      I1 => \rx_index_reg_n_0_[1]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[35]_i_2__0_n_0\
    );
\rx_data[36]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2__0_n_0\,
      I3 => \rx_data[39]_i_4__0_n_0\,
      I4 => \rx_data_reg_n_0_[36]\,
      O => \rx_data[36]_i_1__0_n_0\
    );
\rx_data[36]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \rx_index_reg_n_0_[2]\,
      I1 => \rx_index_reg_n_0_[0]\,
      I2 => \rx_index_reg_n_0_[1]\,
      O => \rx_data[36]_i_2__0_n_0\
    );
\rx_data[37]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2__0_n_0\,
      I3 => \rx_data[39]_i_4__0_n_0\,
      I4 => \rx_data_reg_n_0_[37]\,
      O => \rx_data[37]_i_1__0_n_0\
    );
\rx_data[37]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      I1 => \rx_index_reg_n_0_[1]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[37]_i_2__0_n_0\
    );
\rx_data[38]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2__0_n_0\,
      I3 => \rx_data[39]_i_4__0_n_0\,
      I4 => \rx_data_reg_n_0_[38]\,
      O => \rx_data[38]_i_1__0_n_0\
    );
\rx_data[38]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \rx_index_reg_n_0_[1]\,
      I1 => \rx_index_reg_n_0_[0]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[38]_i_2__0_n_0\
    );
\rx_data[39]_i_10__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rx_index_reg_n_0_[25]\,
      I1 => \rx_index_reg_n_0_[26]\,
      O => \rx_data[39]_i_10__0_n_0\
    );
\rx_data[39]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[30]\,
      I1 => \rx_index_reg_n_0_[31]\,
      I2 => \rx_index_reg_n_0_[29]\,
      I3 => \rx_index_reg_n_0_[28]\,
      O => \rx_data[39]_i_11__0_n_0\
    );
\rx_data[39]_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rx_index_reg_n_0_[7]\,
      I1 => \rx_index_reg_n_0_[8]\,
      O => \rx_data[39]_i_12__0_n_0\
    );
\rx_data[39]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3__0_n_0\,
      I3 => \rx_data[39]_i_4__0_n_0\,
      I4 => \rx_data_reg_n_0_[39]\,
      O => \rx_data[39]_i_1__0_n_0\
    );
\rx_data[39]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044404440"
    )
        port map (
      I0 => \us_count_reg_n_0_[7]\,
      I1 => \rx_data[39]_i_5__0_n_0\,
      I2 => \us_count_reg_n_0_[6]\,
      I3 => \us_count_reg_n_0_[5]\,
      I4 => \rx_data[39]_i_6__0_n_0\,
      I5 => \us_count_reg_n_0_[4]\,
      O => \rx_data[39]_i_2__0_n_0\
    );
\rx_data[39]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      I1 => \rx_index_reg_n_0_[1]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[39]_i_3__0_n_0\
    );
\rx_data[39]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \rx_data[31]_i_2__0_n_0\,
      I1 => \rx_data[39]_i_7__0_n_0\,
      I2 => \rx_index_reg_n_0_[4]\,
      I3 => \rx_index_reg_n_0_[3]\,
      I4 => \rx_index_reg_n_0_[5]\,
      O => \rx_data[39]_i_4__0_n_0\
    );
\rx_data[39]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000007F"
    )
        port map (
      I0 => \us_count_reg_n_0_[2]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[3]\,
      I3 => \us_count_reg_n_0_[5]\,
      I4 => \us_count_reg_n_0_[6]\,
      O => \rx_data[39]_i_5__0_n_0\
    );
\rx_data[39]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \us_count_reg_n_0_[0]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[2]\,
      I3 => \us_count_reg_n_0_[3]\,
      O => \rx_data[39]_i_6__0_n_0\
    );
\rx_data[39]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_data[39]_i_8__0_n_0\,
      I1 => \rx_data[39]_i_9__0_n_0\,
      I2 => \rx_index_reg_n_0_[15]\,
      I3 => \rx_index_reg_n_0_[12]\,
      I4 => \rx_index_reg_n_0_[9]\,
      I5 => \rx_index[31]_i_10__0_n_0\,
      O => \rx_data[39]_i_7__0_n_0\
    );
\rx_data[39]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[21]\,
      I1 => \state_am2302[3]_i_26__0_n_0\,
      I2 => \rx_index_reg_n_0_[24]\,
      I3 => \rx_data[39]_i_10__0_n_0\,
      I4 => \rx_index_reg_n_0_[27]\,
      I5 => \rx_data[39]_i_11__0_n_0\,
      O => \rx_data[39]_i_8__0_n_0\
    );
\rx_data[39]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[10]\,
      I1 => \rx_index_reg_n_0_[11]\,
      I2 => \rx_index_reg_n_0_[13]\,
      I3 => \rx_index_reg_n_0_[14]\,
      I4 => \rx_data[39]_i_12__0_n_0\,
      I5 => \rx_index_reg_n_0_[6]\,
      O => \rx_data[39]_i_9__0_n_0\
    );
\rx_data[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[7]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[3]\,
      O => \rx_data[3]_i_1__0_n_0\
    );
\rx_data[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[7]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[4]\,
      O => \rx_data[4]_i_1__0_n_0\
    );
\rx_data[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[7]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[5]\,
      O => \rx_data[5]_i_1__0_n_0\
    );
\rx_data[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[7]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[6]\,
      O => \rx_data[6]_i_1__0_n_0\
    );
\rx_data[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[7]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[7]\,
      O => \rx_data[7]_i_1__0_n_0\
    );
\rx_data[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[4]\,
      I1 => \rx_index_reg_n_0_[3]\,
      I2 => \rx_index_reg_n_0_[5]\,
      I3 => \rx_data[39]_i_7__0_n_0\,
      O => \rx_data[7]_i_2__0_n_0\
    );
\rx_data[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[15]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[8]\,
      O => \rx_data[8]_i_1__0_n_0\
    );
\rx_data[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2__0_n_0\,
      I3 => \rx_data[31]_i_2__0_n_0\,
      I4 => \rx_data[15]_i_2__0_n_0\,
      I5 => \rx_data_reg_n_0_[9]\,
      O => \rx_data[9]_i_1__0_n_0\
    );
\rx_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[0]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[0]\,
      R => '0'
    );
\rx_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[10]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[10]\,
      R => '0'
    );
\rx_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[11]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[11]\,
      R => '0'
    );
\rx_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[12]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[12]\,
      R => '0'
    );
\rx_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[13]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[13]\,
      R => '0'
    );
\rx_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[14]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[14]\,
      R => '0'
    );
\rx_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[15]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[15]\,
      R => '0'
    );
\rx_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[16]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[16]\,
      R => '0'
    );
\rx_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[17]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[17]\,
      R => '0'
    );
\rx_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[18]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[18]\,
      R => '0'
    );
\rx_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[19]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[19]\,
      R => '0'
    );
\rx_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[1]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[1]\,
      R => '0'
    );
\rx_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[20]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[20]\,
      R => '0'
    );
\rx_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[21]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[21]\,
      R => '0'
    );
\rx_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[22]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[22]\,
      R => '0'
    );
\rx_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[23]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[23]\,
      R => '0'
    );
\rx_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[24]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[24]\,
      R => '0'
    );
\rx_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[25]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[25]\,
      R => '0'
    );
\rx_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[26]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[26]\,
      R => '0'
    );
\rx_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[27]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[27]\,
      R => '0'
    );
\rx_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[28]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[28]\,
      R => '0'
    );
\rx_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[29]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[29]\,
      R => '0'
    );
\rx_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[2]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[2]\,
      R => '0'
    );
\rx_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[30]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[30]\,
      R => '0'
    );
\rx_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[31]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[31]\,
      R => '0'
    );
\rx_data_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[32]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[32]\,
      R => '0'
    );
\rx_data_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[33]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[33]\,
      R => '0'
    );
\rx_data_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[34]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[34]\,
      R => '0'
    );
\rx_data_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[35]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[35]\,
      R => '0'
    );
\rx_data_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[36]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[36]\,
      R => '0'
    );
\rx_data_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[37]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[37]\,
      R => '0'
    );
\rx_data_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[38]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[38]\,
      R => '0'
    );
\rx_data_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[39]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[39]\,
      R => '0'
    );
\rx_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[3]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[3]\,
      R => '0'
    );
\rx_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[4]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[4]\,
      R => '0'
    );
\rx_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[5]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[5]\,
      R => '0'
    );
\rx_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[6]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[6]\,
      R => '0'
    );
\rx_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[7]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[7]\,
      R => '0'
    );
\rx_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[8]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[8]\,
      R => '0'
    );
\rx_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[9]_i_1__0_n_0\,
      Q => \rx_data_reg_n_0_[9]\,
      R => '0'
    );
rx_index0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rx_index0_carry_n_0,
      CO(2) => rx_index0_carry_n_1,
      CO(1) => rx_index0_carry_n_2,
      CO(0) => rx_index0_carry_n_3,
      CYINIT => \rx_index_reg_n_0_[0]\,
      DI(3) => \rx_index_reg_n_0_[4]\,
      DI(2) => \rx_index_reg_n_0_[3]\,
      DI(1) => \rx_index_reg_n_0_[2]\,
      DI(0) => \rx_index_reg_n_0_[1]\,
      O(3) => rx_index0_carry_n_4,
      O(2) => rx_index0_carry_n_5,
      O(1) => rx_index0_carry_n_6,
      O(0) => rx_index0_carry_n_7,
      S(3) => \rx_index0_carry_i_1__0_n_0\,
      S(2) => \rx_index0_carry_i_2__0_n_0\,
      S(1) => \rx_index0_carry_i_3__0_n_0\,
      S(0) => \rx_index0_carry_i_4__0_n_0\
    );
\rx_index0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rx_index0_carry_n_0,
      CO(3) => \rx_index0_carry__0_n_0\,
      CO(2) => \rx_index0_carry__0_n_1\,
      CO(1) => \rx_index0_carry__0_n_2\,
      CO(0) => \rx_index0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[8]\,
      DI(2) => \rx_index_reg_n_0_[7]\,
      DI(1) => \rx_index_reg_n_0_[6]\,
      DI(0) => \rx_index_reg_n_0_[5]\,
      O(3) => \rx_index0_carry__0_n_4\,
      O(2) => \rx_index0_carry__0_n_5\,
      O(1) => \rx_index0_carry__0_n_6\,
      O(0) => \rx_index0_carry__0_n_7\,
      S(3) => \rx_index0_carry__0_i_1__0_n_0\,
      S(2) => \rx_index0_carry__0_i_2__0_n_0\,
      S(1) => \rx_index0_carry__0_i_3__0_n_0\,
      S(0) => \rx_index0_carry__0_i_4__0_n_0\
    );
\rx_index0_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[8]\,
      O => \rx_index0_carry__0_i_1__0_n_0\
    );
\rx_index0_carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[7]\,
      O => \rx_index0_carry__0_i_2__0_n_0\
    );
\rx_index0_carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[6]\,
      O => \rx_index0_carry__0_i_3__0_n_0\
    );
\rx_index0_carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[5]\,
      O => \rx_index0_carry__0_i_4__0_n_0\
    );
\rx_index0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__0_n_0\,
      CO(3) => \rx_index0_carry__1_n_0\,
      CO(2) => \rx_index0_carry__1_n_1\,
      CO(1) => \rx_index0_carry__1_n_2\,
      CO(0) => \rx_index0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[12]\,
      DI(2) => \rx_index_reg_n_0_[11]\,
      DI(1) => \rx_index_reg_n_0_[10]\,
      DI(0) => \rx_index_reg_n_0_[9]\,
      O(3) => \rx_index0_carry__1_n_4\,
      O(2) => \rx_index0_carry__1_n_5\,
      O(1) => \rx_index0_carry__1_n_6\,
      O(0) => \rx_index0_carry__1_n_7\,
      S(3) => \rx_index0_carry__1_i_1__0_n_0\,
      S(2) => \rx_index0_carry__1_i_2__0_n_0\,
      S(1) => \rx_index0_carry__1_i_3__0_n_0\,
      S(0) => \rx_index0_carry__1_i_4__0_n_0\
    );
\rx_index0_carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[12]\,
      O => \rx_index0_carry__1_i_1__0_n_0\
    );
\rx_index0_carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[11]\,
      O => \rx_index0_carry__1_i_2__0_n_0\
    );
\rx_index0_carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[10]\,
      O => \rx_index0_carry__1_i_3__0_n_0\
    );
\rx_index0_carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[9]\,
      O => \rx_index0_carry__1_i_4__0_n_0\
    );
\rx_index0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__1_n_0\,
      CO(3) => \rx_index0_carry__2_n_0\,
      CO(2) => \rx_index0_carry__2_n_1\,
      CO(1) => \rx_index0_carry__2_n_2\,
      CO(0) => \rx_index0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[16]\,
      DI(2) => \rx_index_reg_n_0_[15]\,
      DI(1) => \rx_index_reg_n_0_[14]\,
      DI(0) => \rx_index_reg_n_0_[13]\,
      O(3) => \rx_index0_carry__2_n_4\,
      O(2) => \rx_index0_carry__2_n_5\,
      O(1) => \rx_index0_carry__2_n_6\,
      O(0) => \rx_index0_carry__2_n_7\,
      S(3) => \rx_index0_carry__2_i_1__0_n_0\,
      S(2) => \rx_index0_carry__2_i_2__0_n_0\,
      S(1) => \rx_index0_carry__2_i_3__0_n_0\,
      S(0) => \rx_index0_carry__2_i_4__0_n_0\
    );
\rx_index0_carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[16]\,
      O => \rx_index0_carry__2_i_1__0_n_0\
    );
\rx_index0_carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[15]\,
      O => \rx_index0_carry__2_i_2__0_n_0\
    );
\rx_index0_carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[14]\,
      O => \rx_index0_carry__2_i_3__0_n_0\
    );
\rx_index0_carry__2_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[13]\,
      O => \rx_index0_carry__2_i_4__0_n_0\
    );
\rx_index0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__2_n_0\,
      CO(3) => \rx_index0_carry__3_n_0\,
      CO(2) => \rx_index0_carry__3_n_1\,
      CO(1) => \rx_index0_carry__3_n_2\,
      CO(0) => \rx_index0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[20]\,
      DI(2) => \rx_index_reg_n_0_[19]\,
      DI(1) => \rx_index_reg_n_0_[18]\,
      DI(0) => \rx_index_reg_n_0_[17]\,
      O(3) => \rx_index0_carry__3_n_4\,
      O(2) => \rx_index0_carry__3_n_5\,
      O(1) => \rx_index0_carry__3_n_6\,
      O(0) => \rx_index0_carry__3_n_7\,
      S(3) => \rx_index0_carry__3_i_1__0_n_0\,
      S(2) => \rx_index0_carry__3_i_2__0_n_0\,
      S(1) => \rx_index0_carry__3_i_3__0_n_0\,
      S(0) => \rx_index0_carry__3_i_4__0_n_0\
    );
\rx_index0_carry__3_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[20]\,
      O => \rx_index0_carry__3_i_1__0_n_0\
    );
\rx_index0_carry__3_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[19]\,
      O => \rx_index0_carry__3_i_2__0_n_0\
    );
\rx_index0_carry__3_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[18]\,
      O => \rx_index0_carry__3_i_3__0_n_0\
    );
\rx_index0_carry__3_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[17]\,
      O => \rx_index0_carry__3_i_4__0_n_0\
    );
\rx_index0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__3_n_0\,
      CO(3) => \rx_index0_carry__4_n_0\,
      CO(2) => \rx_index0_carry__4_n_1\,
      CO(1) => \rx_index0_carry__4_n_2\,
      CO(0) => \rx_index0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[24]\,
      DI(2) => \rx_index_reg_n_0_[23]\,
      DI(1) => \rx_index_reg_n_0_[22]\,
      DI(0) => \rx_index_reg_n_0_[21]\,
      O(3) => \rx_index0_carry__4_n_4\,
      O(2) => \rx_index0_carry__4_n_5\,
      O(1) => \rx_index0_carry__4_n_6\,
      O(0) => \rx_index0_carry__4_n_7\,
      S(3) => \rx_index0_carry__4_i_1__0_n_0\,
      S(2) => \rx_index0_carry__4_i_2__0_n_0\,
      S(1) => \rx_index0_carry__4_i_3__0_n_0\,
      S(0) => \rx_index0_carry__4_i_4__0_n_0\
    );
\rx_index0_carry__4_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[24]\,
      O => \rx_index0_carry__4_i_1__0_n_0\
    );
\rx_index0_carry__4_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[23]\,
      O => \rx_index0_carry__4_i_2__0_n_0\
    );
\rx_index0_carry__4_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[22]\,
      O => \rx_index0_carry__4_i_3__0_n_0\
    );
\rx_index0_carry__4_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[21]\,
      O => \rx_index0_carry__4_i_4__0_n_0\
    );
\rx_index0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__4_n_0\,
      CO(3) => \rx_index0_carry__5_n_0\,
      CO(2) => \rx_index0_carry__5_n_1\,
      CO(1) => \rx_index0_carry__5_n_2\,
      CO(0) => \rx_index0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[28]\,
      DI(2) => \rx_index_reg_n_0_[27]\,
      DI(1) => \rx_index_reg_n_0_[26]\,
      DI(0) => \rx_index_reg_n_0_[25]\,
      O(3) => \rx_index0_carry__5_n_4\,
      O(2) => \rx_index0_carry__5_n_5\,
      O(1) => \rx_index0_carry__5_n_6\,
      O(0) => \rx_index0_carry__5_n_7\,
      S(3) => \rx_index0_carry__5_i_1__0_n_0\,
      S(2) => \rx_index0_carry__5_i_2__0_n_0\,
      S(1) => \rx_index0_carry__5_i_3__0_n_0\,
      S(0) => \rx_index0_carry__5_i_4__0_n_0\
    );
\rx_index0_carry__5_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[28]\,
      O => \rx_index0_carry__5_i_1__0_n_0\
    );
\rx_index0_carry__5_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[27]\,
      O => \rx_index0_carry__5_i_2__0_n_0\
    );
\rx_index0_carry__5_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[26]\,
      O => \rx_index0_carry__5_i_3__0_n_0\
    );
\rx_index0_carry__5_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[25]\,
      O => \rx_index0_carry__5_i_4__0_n_0\
    );
\rx_index0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_rx_index0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rx_index0_carry__6_n_2\,
      CO(0) => \rx_index0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \rx_index_reg_n_0_[30]\,
      DI(0) => \rx_index_reg_n_0_[29]\,
      O(3) => \NLW_rx_index0_carry__6_O_UNCONNECTED\(3),
      O(2) => \rx_index0_carry__6_n_5\,
      O(1) => \rx_index0_carry__6_n_6\,
      O(0) => \rx_index0_carry__6_n_7\,
      S(3) => '0',
      S(2) => \rx_index0_carry__6_i_1__0_n_0\,
      S(1) => \rx_index0_carry__6_i_2__0_n_0\,
      S(0) => \rx_index0_carry__6_i_3__0_n_0\
    );
\rx_index0_carry__6_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[31]\,
      O => \rx_index0_carry__6_i_1__0_n_0\
    );
\rx_index0_carry__6_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[30]\,
      O => \rx_index0_carry__6_i_2__0_n_0\
    );
\rx_index0_carry__6_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[29]\,
      O => \rx_index0_carry__6_i_3__0_n_0\
    );
\rx_index0_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[4]\,
      O => \rx_index0_carry_i_1__0_n_0\
    );
\rx_index0_carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[3]\,
      O => \rx_index0_carry_i_2__0_n_0\
    );
\rx_index0_carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[2]\,
      O => \rx_index0_carry_i_3__0_n_0\
    );
\rx_index0_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[1]\,
      O => \rx_index0_carry_i_4__0_n_0\
    );
\rx_index[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      O => \rx_index[0]_i_1__0_n_0\
    );
\rx_index[31]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[18]\,
      I1 => \rx_index_reg_n_0_[20]\,
      I2 => \rx_index_reg_n_0_[19]\,
      O => \rx_index[31]_i_10__0_n_0\
    );
\rx_index[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000000040"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => \rx_index[31]_i_3__0_n_0\,
      I5 => \rx_index[31]_i_4__0_n_0\,
      O => \rx_index[31]_i_1__0_n_0\
    );
\rx_index[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140014000000140"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => \rx_index[31]_i_3__0_n_0\,
      I5 => \rx_index[31]_i_4__0_n_0\,
      O => \rx_index[31]_i_2__0_n_0\
    );
\rx_index[31]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \rx_index_reg_n_0_[6]\,
      I1 => \rx_index_reg_n_0_[5]\,
      I2 => \rx_index_reg_n_0_[2]\,
      I3 => \rx_index[31]_i_5__0_n_0\,
      I4 => \rx_index[31]_i_6__0_n_0\,
      I5 => \rx_index[31]_i_7__0_n_0\,
      O => \rx_index[31]_i_3__0_n_0\
    );
\rx_index[31]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index[31]_i_8__0_n_0\,
      I1 => \rx_index_reg_n_0_[16]\,
      I2 => \rx_index_reg_n_0_[17]\,
      I3 => \rx_index_reg_n_0_[23]\,
      I4 => \rx_index_reg_n_0_[21]\,
      I5 => \rx_index[31]_i_9__0_n_0\,
      O => \rx_index[31]_i_4__0_n_0\
    );
\rx_index[31]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rx_index_reg_n_0_[12]\,
      I1 => \rx_index_reg_n_0_[11]\,
      I2 => \rx_index_reg_n_0_[10]\,
      I3 => \rx_index_reg_n_0_[9]\,
      O => \rx_index[31]_i_5__0_n_0\
    );
\rx_index[31]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      I1 => \rx_index_reg_n_0_[1]\,
      I2 => \rx_index_reg_n_0_[31]\,
      I3 => \rx_index_reg_n_0_[15]\,
      O => \rx_index[31]_i_6__0_n_0\
    );
\rx_index[31]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rx_index_reg_n_0_[13]\,
      I1 => \rx_index_reg_n_0_[14]\,
      I2 => \rx_index_reg_n_0_[7]\,
      I3 => \rx_index_reg_n_0_[8]\,
      I4 => \rx_index_reg_n_0_[4]\,
      I5 => \rx_index_reg_n_0_[3]\,
      O => \rx_index[31]_i_7__0_n_0\
    );
\rx_index[31]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[24]\,
      I1 => \rx_index_reg_n_0_[22]\,
      I2 => \rx_index_reg_n_0_[25]\,
      I3 => \rx_index_reg_n_0_[26]\,
      I4 => \rx_index_reg_n_0_[27]\,
      O => \rx_index[31]_i_8__0_n_0\
    );
\rx_index[31]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \rx_index_reg_n_0_[30]\,
      I2 => \rx_index_reg_n_0_[29]\,
      I3 => \rx_index_reg_n_0_[28]\,
      I4 => \rx_index[31]_i_10__0_n_0\,
      O => \rx_index[31]_i_9__0_n_0\
    );
\rx_index_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index[0]_i_1__0_n_0\,
      Q => \rx_index_reg_n_0_[0]\,
      S => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__1_n_6\,
      Q => \rx_index_reg_n_0_[10]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__1_n_5\,
      Q => \rx_index_reg_n_0_[11]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__1_n_4\,
      Q => \rx_index_reg_n_0_[12]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__2_n_7\,
      Q => \rx_index_reg_n_0_[13]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__2_n_6\,
      Q => \rx_index_reg_n_0_[14]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__2_n_5\,
      Q => \rx_index_reg_n_0_[15]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__2_n_4\,
      Q => \rx_index_reg_n_0_[16]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__3_n_7\,
      Q => \rx_index_reg_n_0_[17]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__3_n_6\,
      Q => \rx_index_reg_n_0_[18]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__3_n_5\,
      Q => \rx_index_reg_n_0_[19]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => rx_index0_carry_n_7,
      Q => \rx_index_reg_n_0_[1]\,
      S => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__3_n_4\,
      Q => \rx_index_reg_n_0_[20]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__4_n_7\,
      Q => \rx_index_reg_n_0_[21]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__4_n_6\,
      Q => \rx_index_reg_n_0_[22]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__4_n_5\,
      Q => \rx_index_reg_n_0_[23]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__4_n_4\,
      Q => \rx_index_reg_n_0_[24]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__5_n_7\,
      Q => \rx_index_reg_n_0_[25]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__5_n_6\,
      Q => \rx_index_reg_n_0_[26]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__5_n_5\,
      Q => \rx_index_reg_n_0_[27]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__5_n_4\,
      Q => \rx_index_reg_n_0_[28]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__6_n_7\,
      Q => \rx_index_reg_n_0_[29]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => rx_index0_carry_n_6,
      Q => \rx_index_reg_n_0_[2]\,
      S => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__6_n_6\,
      Q => \rx_index_reg_n_0_[30]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__6_n_5\,
      Q => \rx_index_reg_n_0_[31]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => rx_index0_carry_n_5,
      Q => \rx_index_reg_n_0_[3]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => rx_index0_carry_n_4,
      Q => \rx_index_reg_n_0_[4]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__0_n_7\,
      Q => \rx_index_reg_n_0_[5]\,
      S => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__0_n_6\,
      Q => \rx_index_reg_n_0_[6]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__0_n_5\,
      Q => \rx_index_reg_n_0_[7]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__0_n_4\,
      Q => \rx_index_reg_n_0_[8]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\rx_index_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__0_n_0\,
      D => \rx_index0_carry__1_n_7\,
      Q => \rx_index_reg_n_0_[9]\,
      R => \rx_index[31]_i_1__0_n_0\
    );
\s_data_ctrl1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_data_ctrl_tristate_oe_reg_0\,
      I1 => s_data_ctrl1_reg_0,
      O => s_data_ctrl
    );
s_data_ctrl1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_ctrl,
      Q => T,
      R => '0'
    );
s_data_ctrl_tristate_oe_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_ctrl_tristate_oe_reg_1,
      Q => \^s_data_ctrl_tristate_oe_reg_0\,
      R => '0'
    );
s_data_in_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_in1,
      Q => s_data_in_reg_n_0,
      R => '0'
    );
s_data_out1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_out_reg_n_0,
      Q => I,
      R => '0'
    );
\s_data_out_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => s_data_out_reg_n_0,
      O => \s_data_out_i_1__0_n_0\
    );
s_data_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_data_out_i_1__0_n_0\,
      Q => s_data_out_reg_n_0,
      R => '0'
    );
\state_am2302[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0EFE0"
    )
        port map (
      I0 => \state_am2302[0]_i_2__0_n_0\,
      I1 => \state_am2302[3]_i_6__0_n_0\,
      I2 => \state_am2302[3]_i_7__0_n_0\,
      I3 => \state_am2302[3]_i_8__0_n_0\,
      I4 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[0]_i_1__0_n_0\
    );
\state_am2302[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FF0100"
    )
        port map (
      I0 => \state_am2302[3]_i_10__0_n_0\,
      I1 => \state_am2302[3]_i_11__0_n_0\,
      I2 => \state_am2302[3]_i_12__0_n_0\,
      I3 => \state_am2302[3]_i_13__0_n_0\,
      I4 => \state_am2302[3]_i_14__0_n_0\,
      I5 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[0]_i_2__0_n_0\
    );
\state_am2302[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFE00FA00FA00"
    )
        port map (
      I0 => \state_am2302[1]_i_2__0_n_0\,
      I1 => \state_am2302[3]_i_6__0_n_0\,
      I2 => \state_am2302[1]_i_3__0_n_0\,
      I3 => \state_am2302[3]_i_7__0_n_0\,
      I4 => \state_am2302[3]_i_8__0_n_0\,
      I5 => \state_am2302[1]_i_4__0_n_0\,
      O => \state_am2302[1]_i_1__0_n_0\
    );
\state_am2302[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0802A0A0"
    )
        port map (
      I0 => \state_am2302[3]_i_14__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[1]_i_2__0_n_0\
    );
\state_am2302[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100002210000020"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \state_am2302[3]_i_10__0_n_0\,
      I3 => \^state_am2302_reg[1]_0\,
      I4 => \^state_am2302_reg[0]_0\,
      I5 => \state_am2302[3]_i_12__0_n_0\,
      O => \state_am2302[1]_i_3__0_n_0\
    );
\state_am2302[1]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      O => \state_am2302[1]_i_4__0_n_0\
    );
\state_am2302[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFE00FA00FA00"
    )
        port map (
      I0 => \state_am2302[2]_i_2__0_n_0\,
      I1 => \state_am2302[3]_i_6__0_n_0\,
      I2 => \state_am2302[2]_i_3__0_n_0\,
      I3 => \state_am2302[3]_i_7__0_n_0\,
      I4 => \state_am2302[3]_i_8__0_n_0\,
      I5 => \state_am2302[2]_i_4__0_n_0\,
      O => \state_am2302[2]_i_1__0_n_0\
    );
\state_am2302[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0880A800"
    )
        port map (
      I0 => \state_am2302[3]_i_14__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[2]_i_2__0_n_0\
    );
\state_am2302[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000500A00005008"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \state_am2302[3]_i_10__0_n_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[0]_0\,
      I4 => \^state_am2302_reg[2]_0\,
      I5 => \state_am2302[3]_i_12__0_n_0\,
      O => \state_am2302[2]_i_3__0_n_0\
    );
\state_am2302[2]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      O => \state_am2302[2]_i_4__0_n_0\
    );
\state_am2302[3]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state_am2302[3]_i_20__0_n_0\,
      I1 => \state_am2302[3]_i_21__0_n_0\,
      I2 => \rx_index_reg_n_0_[1]\,
      I3 => \rx_index_reg_n_0_[2]\,
      I4 => \rx_index_reg_n_0_[0]\,
      I5 => \state_am2302[3]_i_22__0_n_0\,
      O => \state_am2302[3]_i_10__0_n_0\
    );
\state_am2302[3]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"453D"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      O => \state_am2302[3]_i_11__0_n_0\
    );
\state_am2302[3]_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[31]\,
      I1 => \rx_index_reg_n_0_[30]\,
      I2 => \rx_index_reg_n_0_[29]\,
      I3 => \rx_index_reg_n_0_[27]\,
      I4 => \rx_index_reg_n_0_[28]\,
      O => \state_am2302[3]_i_12__0_n_0\
    );
\state_am2302[3]_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"032C"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      O => \state_am2302[3]_i_13__0_n_0\
    );
\state_am2302[3]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAC"
    )
        port map (
      I0 => \rx_data[31]_i_4__0_n_0\,
      I1 => \state_am2302[3]_i_23__0_n_0\,
      I2 => \state_am2302[3]_i_11__0_n_0\,
      I3 => \rx_data[39]_i_2__0_n_0\,
      O => \state_am2302[3]_i_14__0_n_0\
    );
\state_am2302[3]_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[7]\,
      I1 => \plusOp_inferred__3/i___2_carry__0_n_4\,
      I2 => \rx_data_reg_n_0_[6]\,
      I3 => \plusOp_inferred__3/i___2_carry__0_n_5\,
      O => \state_am2302[3]_i_15__0_n_0\
    );
\state_am2302[3]_i_16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[5]\,
      I1 => \plusOp_inferred__3/i___2_carry__0_n_6\,
      I2 => \rx_data_reg_n_0_[2]\,
      I3 => \plusOp_inferred__3/i___2_carry_n_5\,
      O => \state_am2302[3]_i_16__0_n_0\
    );
\state_am2302[3]_i_17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[1]\,
      I1 => \plusOp_inferred__3/i___2_carry_n_6\,
      I2 => \rx_data_reg_n_0_[0]\,
      I3 => \plusOp_inferred__3/i___2_carry_n_7\,
      O => \state_am2302[3]_i_17__0_n_0\
    );
\state_am2302[3]_i_18__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[4]\,
      I1 => \plusOp_inferred__3/i___2_carry__0_n_7\,
      I2 => \rx_data_reg_n_0_[3]\,
      I3 => \plusOp_inferred__3/i___2_carry_n_4\,
      O => \state_am2302[3]_i_18__0_n_0\
    );
\state_am2302[3]_i_19__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003333322"
    )
        port map (
      I0 => \us_count[7]_i_7__0_n_0\,
      I1 => \state_am2302[3]_i_24__0_n_0\,
      I2 => \state_am2302[3]_i_25__0_n_0\,
      I3 => \us_count_reg_n_0_[3]\,
      I4 => \us_count_reg_n_0_[4]\,
      I5 => \us_count_reg_n_0_[5]\,
      O => \state_am2302[3]_i_19__0_n_0\
    );
\state_am2302[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAFAFAEEEEAAEE"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \state_am2302[3]_i_3__0_n_0\,
      I2 => \state_am2302[3]_i_4__0_n_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => s_data_in_reg_n_0,
      I5 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[3]_i_1__0_n_0\
    );
\state_am2302[3]_i_20__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[4]\,
      I1 => \rx_index_reg_n_0_[5]\,
      I2 => \rx_index_reg_n_0_[3]\,
      I3 => \rx_index_reg_n_0_[7]\,
      I4 => \rx_index_reg_n_0_[8]\,
      I5 => \rx_index_reg_n_0_[6]\,
      O => \state_am2302[3]_i_20__0_n_0\
    );
\state_am2302[3]_i_21__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[25]\,
      I1 => \rx_index_reg_n_0_[26]\,
      I2 => \rx_index_reg_n_0_[24]\,
      I3 => \state_am2302[3]_i_26__0_n_0\,
      O => \state_am2302[3]_i_21__0_n_0\
    );
\state_am2302[3]_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFFFE"
    )
        port map (
      I0 => \state_am2302[3]_i_27__0_n_0\,
      I1 => \state_am2302[3]_i_28__0_n_0\,
      I2 => \rx_index_reg_n_0_[23]\,
      I3 => \rx_index_reg_n_0_[21]\,
      I4 => \rx_index_reg_n_0_[22]\,
      I5 => \state_am2302[3]_i_29__0_n_0\,
      O => \state_am2302[3]_i_22__0_n_0\
    );
\state_am2302[3]_i_23__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0C080A"
    )
        port map (
      I0 => \state_am2302[3]_i_30__0_n_0\,
      I1 => \state_am2302[3]_i_31__0_n_0\,
      I2 => \us_count_reg_n_0_[7]\,
      I3 => \us_count_reg_n_0_[5]\,
      I4 => \us_count_reg_n_0_[6]\,
      O => \state_am2302[3]_i_23__0_n_0\
    );
\state_am2302[3]_i_24__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \us_count_reg_n_0_[7]\,
      I1 => \us_count_reg_n_0_[6]\,
      O => \state_am2302[3]_i_24__0_n_0\
    );
\state_am2302[3]_i_25__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \us_count_reg_n_0_[2]\,
      I1 => \us_count_reg_n_0_[1]\,
      O => \state_am2302[3]_i_25__0_n_0\
    );
\state_am2302[3]_i_26__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[17]\,
      I1 => \rx_index_reg_n_0_[16]\,
      I2 => \rx_index_reg_n_0_[23]\,
      I3 => \rx_index_reg_n_0_[22]\,
      O => \state_am2302[3]_i_26__0_n_0\
    );
\state_am2302[3]_i_27__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[10]\,
      I1 => \rx_index_reg_n_0_[11]\,
      I2 => \rx_index_reg_n_0_[9]\,
      I3 => \rx_index_reg_n_0_[13]\,
      I4 => \rx_index_reg_n_0_[14]\,
      I5 => \rx_index_reg_n_0_[12]\,
      O => \state_am2302[3]_i_27__0_n_0\
    );
\state_am2302[3]_i_28__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rx_index_reg_n_0_[19]\,
      I1 => \rx_index_reg_n_0_[20]\,
      O => \state_am2302[3]_i_28__0_n_0\
    );
\state_am2302[3]_i_29__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[17]\,
      I1 => \rx_index_reg_n_0_[15]\,
      I2 => \rx_index_reg_n_0_[16]\,
      I3 => \rx_index_reg_n_0_[20]\,
      I4 => \rx_index_reg_n_0_[18]\,
      I5 => \rx_index_reg_n_0_[19]\,
      O => \state_am2302[3]_i_29__0_n_0\
    );
\state_am2302[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFE0A0A0"
    )
        port map (
      I0 => \state_am2302[3]_i_5__0_n_0\,
      I1 => \state_am2302[3]_i_6__0_n_0\,
      I2 => \state_am2302[3]_i_7__0_n_0\,
      I3 => \state_am2302[3]_i_8__0_n_0\,
      I4 => \state_am2302[3]_i_9__0_n_0\,
      O => \state_am2302[3]_i_2__0_n_0\
    );
\state_am2302[3]_i_30__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => \us_count_reg_n_0_[5]\,
      I1 => \us_count_reg_n_0_[4]\,
      I2 => \us_count_reg_n_0_[3]\,
      I3 => \us_count_reg_n_0_[1]\,
      I4 => \us_count_reg_n_0_[2]\,
      I5 => \us_count_reg_n_0_[0]\,
      O => \state_am2302[3]_i_30__0_n_0\
    );
\state_am2302[3]_i_31__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000070FFFFF"
    )
        port map (
      I0 => \us_count_reg_n_0_[1]\,
      I1 => \us_count_reg_n_0_[0]\,
      I2 => \us_count_reg_n_0_[3]\,
      I3 => \us_count_reg_n_0_[2]\,
      I4 => \us_count_reg_n_0_[4]\,
      I5 => \us_count_reg_n_0_[6]\,
      O => \state_am2302[3]_i_31__0_n_0\
    );
\state_am2302[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAFAABBBBBBBB"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \ltOp_inferred__0/i__carry__2_n_3\,
      I2 => \us_count[7]_i_4__0_n_0\,
      I3 => clk_1ust_reg_n_0,
      I4 => clk_1us_reg_n_0,
      I5 => \^state_am2302_reg[1]_0\,
      O => \state_am2302[3]_i_3__0_n_0\
    );
\state_am2302[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FFF5F5F3F3F3F3"
    )
        port map (
      I0 => s_data_in_reg_n_0,
      I1 => \ltOp_carry__2_n_2\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \us_count[7]_i_5__0_n_0\,
      I4 => \us_count[7]_i_6__0_n_0\,
      I5 => \^state_am2302_reg[1]_0\,
      O => \state_am2302[3]_i_4__0_n_0\
    );
\state_am2302[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF010000000000"
    )
        port map (
      I0 => \state_am2302[3]_i_10__0_n_0\,
      I1 => \state_am2302[3]_i_11__0_n_0\,
      I2 => \state_am2302[3]_i_12__0_n_0\,
      I3 => \state_am2302[3]_i_13__0_n_0\,
      I4 => \state_am2302[3]_i_14__0_n_0\,
      I5 => \state_am2302[3]_i_9__0_n_0\,
      O => \state_am2302[3]_i_5__0_n_0\
    );
\state_am2302[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \state_am2302[3]_i_13__0_n_0\,
      I1 => \state_am2302[3]_i_15__0_n_0\,
      I2 => \state_am2302[3]_i_16__0_n_0\,
      I3 => \state_am2302[3]_i_17__0_n_0\,
      I4 => \state_am2302[3]_i_18__0_n_0\,
      I5 => \state_am2302[3]_i_11__0_n_0\,
      O => \state_am2302[3]_i_6__0_n_0\
    );
\state_am2302[3]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      O => \state_am2302[3]_i_7__0_n_0\
    );
\state_am2302[3]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14B7049515F705D5"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => \state_am2302[3]_i_19__0_n_0\,
      I5 => s_data_in_reg_n_0,
      O => \state_am2302[3]_i_8__0_n_0\
    );
\state_am2302[3]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      O => \state_am2302[3]_i_9__0_n_0\
    );
\state_am2302_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1__0_n_0\,
      D => \state_am2302[0]_i_1__0_n_0\,
      Q => \^state_am2302_reg[0]_0\,
      R => '0'
    );
\state_am2302_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1__0_n_0\,
      D => \state_am2302[1]_i_1__0_n_0\,
      Q => \^state_am2302_reg[1]_0\,
      R => '0'
    );
\state_am2302_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1__0_n_0\,
      D => \state_am2302[2]_i_1__0_n_0\,
      Q => \^state_am2302_reg[2]_0\,
      R => '0'
    );
\state_am2302_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1__0_n_0\,
      D => \state_am2302[3]_i_2__0_n_0\,
      Q => \^state_am2302_reg[3]_0\,
      R => '0'
    );
\status[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"307F7F7F30000000"
    )
        port map (
      I0 => \status[0]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \status[0]_i_3__0_n_0\,
      I4 => \status[0]_i_4__0_n_0\,
      I5 => \^status_reg[0]_0\,
      O => \status[0]_i_1_n_0\
    );
\status[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \state_am2302[3]_i_15__0_n_0\,
      I1 => \state_am2302[3]_i_16__0_n_0\,
      I2 => \state_am2302[3]_i_17__0_n_0\,
      I3 => \state_am2302[3]_i_18__0_n_0\,
      I4 => \^state_am2302_reg[1]_0\,
      I5 => \^state_am2302_reg[2]_0\,
      O => \status[0]_i_2__0_n_0\
    );
\status[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0040404040"
    )
        port map (
      I0 => \us_count[7]_i_5__0_n_0\,
      I1 => s_data_in_reg_n_0,
      I2 => \us_count[7]_i_6__0_n_0\,
      I3 => \status[2]_i_6__0_n_0\,
      I4 => \status[2]_i_5__0_n_0\,
      I5 => \status[0]_i_5__0_n_0\,
      O => \status[0]_i_3__0_n_0\
    );
\status[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      O => \status[0]_i_4__0_n_0\
    );
\status[0]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      O => \status[0]_i_5__0_n_0\
    );
\status[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333F3FF33330100"
    )
        port map (
      I0 => \status[2]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \status[2]_i_3__0_n_0\,
      I4 => \status[2]_i_4__0_n_0\,
      I5 => \^status_reg[1]_0\,
      O => \status[1]_i_1_n_0\
    );
\status[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C3F3FFC3C30100"
    )
        port map (
      I0 => \status[2]_i_2__0_n_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \status[2]_i_3__0_n_0\,
      I4 => \status[2]_i_4__0_n_0\,
      I5 => \^status_reg[2]_0\,
      O => \status[2]_i_1_n_0\
    );
\status[2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \state_am2302[3]_i_15__0_n_0\,
      I1 => \state_am2302[3]_i_16__0_n_0\,
      I2 => \state_am2302[3]_i_17__0_n_0\,
      I3 => \state_am2302[3]_i_18__0_n_0\,
      O => \status[2]_i_2__0_n_0\
    );
\status[2]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      O => \status[2]_i_3__0_n_0\
    );
\status[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2A2A200"
    )
        port map (
      I0 => \status[0]_i_4__0_n_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \status[2]_i_5__0_n_0\,
      I4 => \status[2]_i_6__0_n_0\,
      I5 => \status[2]_i_7__0_n_0\,
      O => \status[2]_i_4__0_n_0\
    );
\status[2]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => s_data_in_reg_n_0,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \state_am2302[3]_i_23__0_n_0\,
      O => \status[2]_i_5__0_n_0\
    );
\status[2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001100000F0F00"
    )
        port map (
      I0 => \rx_data[31]_i_4__0_n_0\,
      I1 => \rx_data[39]_i_2__0_n_0\,
      I2 => \state_am2302[3]_i_19__0_n_0\,
      I3 => \^state_am2302_reg[0]_0\,
      I4 => s_data_in_reg_n_0,
      I5 => \^state_am2302_reg[1]_0\,
      O => \status[2]_i_6__0_n_0\
    );
\status[2]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004400000"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => clk_1ust_reg_n_0,
      I3 => clk_1us_reg_n_0,
      I4 => s_data_in_reg_n_0,
      I5 => \us_count[7]_i_5__0_n_0\,
      O => \status[2]_i_7__0_n_0\
    );
\status_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \status[0]_i_1_n_0\,
      Q => \^status_reg[0]_0\,
      R => '0'
    );
\status_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \status[1]_i_1_n_0\,
      Q => \^status_reg[1]_0\,
      R => '0'
    );
\status_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \status[2]_i_1_n_0\,
      Q => \^status_reg[2]_0\,
      R => '0'
    );
\us_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \us_cnt_reg__0\(0),
      O => \us_cnt[0]_i_1__0_n_0\
    );
\us_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \us_cnt_reg__0\(0),
      I1 => \us_cnt_reg__0\(1),
      O => \plusOp__0\(1)
    );
\us_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \us_cnt_reg__0\(0),
      I1 => \us_cnt_reg__0\(1),
      I2 => \us_cnt_reg__0\(2),
      O => \plusOp__0\(2)
    );
\us_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \us_cnt_reg__0\(1),
      I1 => \us_cnt_reg__0\(0),
      I2 => \us_cnt_reg__0\(2),
      I3 => \us_cnt_reg__0\(3),
      O => \plusOp__0\(3)
    );
\us_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \us_cnt_reg__0\(2),
      I1 => \us_cnt_reg__0\(0),
      I2 => \us_cnt_reg__0\(1),
      I3 => \us_cnt_reg__0\(3),
      I4 => \us_cnt_reg__0\(4),
      O => \plusOp__0\(4)
    );
\us_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \us_cnt_reg__0\(3),
      I1 => \us_cnt_reg__0\(1),
      I2 => \us_cnt_reg__0\(0),
      I3 => \us_cnt_reg__0\(2),
      I4 => \us_cnt_reg__0\(4),
      I5 => \us_cnt_reg__0\(5),
      O => \plusOp__0\(5)
    );
\us_cnt[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \us_cnt[7]_i_4__0_n_0\,
      I1 => \us_cnt_reg__0\(6),
      O => \plusOp__0\(6)
    );
\us_cnt[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => \us_cnt[7]_i_3__0_n_0\,
      I1 => \us_cnt_reg__0\(7),
      I2 => \us_cnt_reg__0\(6),
      O => \us_cnt[7]_i_1__0_n_0\
    );
\us_cnt[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \us_cnt[7]_i_4__0_n_0\,
      I1 => \us_cnt_reg__0\(6),
      I2 => \us_cnt_reg__0\(7),
      O => \plusOp__0\(7)
    );
\us_cnt[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777777F"
    )
        port map (
      I0 => \us_cnt_reg__0\(5),
      I1 => \us_cnt_reg__0\(4),
      I2 => \us_cnt_reg__0\(2),
      I3 => \us_cnt_reg__0\(3),
      I4 => \us_cnt_reg__0\(0),
      I5 => \us_cnt_reg__0\(1),
      O => \us_cnt[7]_i_3__0_n_0\
    );
\us_cnt[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \us_cnt_reg__0\(5),
      I1 => \us_cnt_reg__0\(3),
      I2 => \us_cnt_reg__0\(1),
      I3 => \us_cnt_reg__0\(0),
      I4 => \us_cnt_reg__0\(2),
      I5 => \us_cnt_reg__0\(4),
      O => \us_cnt[7]_i_4__0_n_0\
    );
\us_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \us_cnt[0]_i_1__0_n_0\,
      Q => \us_cnt_reg__0\(0),
      R => \us_cnt[7]_i_1__0_n_0\
    );
\us_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__0\(1),
      Q => \us_cnt_reg__0\(1),
      R => \us_cnt[7]_i_1__0_n_0\
    );
\us_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__0\(2),
      Q => \us_cnt_reg__0\(2),
      R => \us_cnt[7]_i_1__0_n_0\
    );
\us_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__0\(3),
      Q => \us_cnt_reg__0\(3),
      R => \us_cnt[7]_i_1__0_n_0\
    );
\us_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__0\(4),
      Q => \us_cnt_reg__0\(4),
      R => \us_cnt[7]_i_1__0_n_0\
    );
\us_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__0\(5),
      Q => \us_cnt_reg__0\(5),
      R => \us_cnt[7]_i_1__0_n_0\
    );
\us_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__0\(6),
      Q => \us_cnt_reg__0\(6),
      R => \us_cnt[7]_i_1__0_n_0\
    );
\us_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__0\(7),
      Q => \us_cnt_reg__0\(7),
      R => \us_cnt[7]_i_1__0_n_0\
    );
\us_count[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A5ACA50C"
    )
        port map (
      I0 => s_data_in_reg_n_0,
      I1 => \us_count[7]_i_4__0_n_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \us_count[7]_i_5__0_n_0\,
      I5 => \us_count_reg_n_0_[0]\,
      O => \us_count[0]_i_1__0_n_0\
    );
\us_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \us_count_reg_n_0_[0]\,
      I1 => \us_count_reg_n_0_[1]\,
      O => \us_count[1]_i_1__0_n_0\
    );
\us_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \us_count_reg_n_0_[1]\,
      I1 => \us_count_reg_n_0_[0]\,
      I2 => \us_count_reg_n_0_[2]\,
      O => \us_count[2]_i_1__0_n_0\
    );
\us_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \us_count_reg_n_0_[0]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[2]\,
      I3 => \us_count_reg_n_0_[3]\,
      O => \us_count[3]_i_1__0_n_0\
    );
\us_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \us_count_reg_n_0_[2]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[0]\,
      I3 => \us_count_reg_n_0_[3]\,
      I4 => \us_count_reg_n_0_[4]\,
      O => \us_count[4]_i_1__0_n_0\
    );
\us_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \us_count_reg_n_0_[3]\,
      I1 => \us_count_reg_n_0_[0]\,
      I2 => \us_count_reg_n_0_[1]\,
      I3 => \us_count_reg_n_0_[2]\,
      I4 => \us_count_reg_n_0_[4]\,
      I5 => \us_count_reg_n_0_[5]\,
      O => \us_count[5]_i_1__0_n_0\
    );
\us_count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \us_count_reg_n_0_[4]\,
      I1 => \us_count_reg_n_0_[2]\,
      I2 => \us_count[6]_i_2__0_n_0\,
      I3 => \us_count_reg_n_0_[3]\,
      I4 => \us_count_reg_n_0_[5]\,
      I5 => \us_count_reg_n_0_[6]\,
      O => \us_count[6]_i_1__0_n_0\
    );
\us_count[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \us_count_reg_n_0_[0]\,
      I1 => \us_count_reg_n_0_[1]\,
      O => \us_count[6]_i_2__0_n_0\
    );
\us_count[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2288220A2288AA0A"
    )
        port map (
      I0 => us_count,
      I1 => s_data_in_reg_n_0,
      I2 => \us_count[7]_i_4__0_n_0\,
      I3 => \^state_am2302_reg[0]_0\,
      I4 => \^state_am2302_reg[2]_0\,
      I5 => \us_count[7]_i_5__0_n_0\,
      O => \us_count[7]_i_1__0_n_0\
    );
\us_count[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545400545000"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => s_data_in_reg_n_0,
      I4 => \^state_am2302_reg[0]_0\,
      I5 => \us_count[7]_i_6__0_n_0\,
      O => us_count
    );
\us_count[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \us_count_reg_n_0_[5]\,
      I1 => \us_count_reg_n_0_[3]\,
      I2 => \us_count[7]_i_7__0_n_0\,
      I3 => \us_count_reg_n_0_[4]\,
      I4 => \us_count_reg_n_0_[6]\,
      I5 => \us_count_reg_n_0_[7]\,
      O => \us_count[7]_i_3__0_n_0\
    );
\us_count[7]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => \us_count[7]_i_8__0_n_0\,
      I1 => \us_count_reg_n_0_[4]\,
      I2 => \us_count_reg_n_0_[5]\,
      I3 => \us_count_reg_n_0_[6]\,
      I4 => \us_count_reg_n_0_[7]\,
      O => \us_count[7]_i_4__0_n_0\
    );
\us_count[7]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFFCFDF"
    )
        port map (
      I0 => \us_count_reg_n_0_[4]\,
      I1 => \us_count_reg_n_0_[7]\,
      I2 => \us_count_reg_n_0_[6]\,
      I3 => \us_count_reg_n_0_[5]\,
      I4 => \us_count[7]_i_8__0_n_0\,
      O => \us_count[7]_i_5__0_n_0\
    );
\us_count[7]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_1us_reg_n_0,
      I1 => clk_1ust_reg_n_0,
      O => \us_count[7]_i_6__0_n_0\
    );
\us_count[7]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \us_count_reg_n_0_[2]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[0]\,
      O => \us_count[7]_i_7__0_n_0\
    );
\us_count[7]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001F"
    )
        port map (
      I0 => \us_count_reg_n_0_[0]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[2]\,
      I3 => \us_count_reg_n_0_[3]\,
      O => \us_count[7]_i_8__0_n_0\
    );
\us_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[0]_i_1__0_n_0\,
      Q => \us_count_reg_n_0_[0]\,
      R => '0'
    );
\us_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[1]_i_1__0_n_0\,
      Q => \us_count_reg_n_0_[1]\,
      R => \us_count[7]_i_1__0_n_0\
    );
\us_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[2]_i_1__0_n_0\,
      Q => \us_count_reg_n_0_[2]\,
      R => \us_count[7]_i_1__0_n_0\
    );
\us_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[3]_i_1__0_n_0\,
      Q => \us_count_reg_n_0_[3]\,
      R => \us_count[7]_i_1__0_n_0\
    );
\us_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[4]_i_1__0_n_0\,
      Q => \us_count_reg_n_0_[4]\,
      R => \us_count[7]_i_1__0_n_0\
    );
\us_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[5]_i_1__0_n_0\,
      Q => \us_count_reg_n_0_[5]\,
      R => \us_count[7]_i_1__0_n_0\
    );
\us_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[6]_i_1__0_n_0\,
      Q => \us_count_reg_n_0_[6]\,
      R => \us_count[7]_i_1__0_n_0\
    );
\us_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[7]_i_3__0_n_0\,
      Q => \us_count_reg_n_0_[7]\,
      R => \us_count[7]_i_1__0_n_0\
    );
\work_cnt[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \ltOp_inferred__0/i__carry__2_n_3\,
      I3 => \^state_am2302_reg[1]_0\,
      I4 => \^state_am2302_reg[2]_0\,
      O => \work_cnt[0]_i_1__0_n_0\
    );
\work_cnt[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^work_cnt_reg\(0),
      O => \work_cnt[0]_i_3__0_n_0\
    );
\work_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[0]_i_2__0_n_7\,
      Q => \^work_cnt_reg\(0),
      R => '0'
    );
\work_cnt_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \work_cnt_reg[0]_i_2__0_n_0\,
      CO(2) => \work_cnt_reg[0]_i_2__0_n_1\,
      CO(1) => \work_cnt_reg[0]_i_2__0_n_2\,
      CO(0) => \work_cnt_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \work_cnt_reg[0]_i_2__0_n_4\,
      O(2) => \work_cnt_reg[0]_i_2__0_n_5\,
      O(1) => \work_cnt_reg[0]_i_2__0_n_6\,
      O(0) => \work_cnt_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => \^work_cnt_reg\(3 downto 1),
      S(0) => \work_cnt[0]_i_3__0_n_0\
    );
\work_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[8]_i_1__0_n_5\,
      Q => \^work_cnt_reg\(10),
      R => '0'
    );
\work_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[8]_i_1__0_n_4\,
      Q => \^work_cnt_reg\(11),
      R => '0'
    );
\work_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[12]_i_1__0_n_7\,
      Q => \^work_cnt_reg\(12),
      R => '0'
    );
\work_cnt_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \work_cnt_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_work_cnt_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \work_cnt_reg[12]_i_1__0_n_1\,
      CO(1) => \work_cnt_reg[12]_i_1__0_n_2\,
      CO(0) => \work_cnt_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \work_cnt_reg[12]_i_1__0_n_4\,
      O(2) => \work_cnt_reg[12]_i_1__0_n_5\,
      O(1) => \work_cnt_reg[12]_i_1__0_n_6\,
      O(0) => \work_cnt_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => \^work_cnt_reg\(15 downto 12)
    );
\work_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[12]_i_1__0_n_6\,
      Q => \^work_cnt_reg\(13),
      R => '0'
    );
\work_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[12]_i_1__0_n_5\,
      Q => \^work_cnt_reg\(14),
      R => '0'
    );
\work_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[12]_i_1__0_n_4\,
      Q => \^work_cnt_reg\(15),
      R => '0'
    );
\work_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[0]_i_2__0_n_6\,
      Q => \^work_cnt_reg\(1),
      R => '0'
    );
\work_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[0]_i_2__0_n_5\,
      Q => \^work_cnt_reg\(2),
      R => '0'
    );
\work_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[0]_i_2__0_n_4\,
      Q => \^work_cnt_reg\(3),
      R => '0'
    );
\work_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[4]_i_1__0_n_7\,
      Q => \^work_cnt_reg\(4),
      R => '0'
    );
\work_cnt_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \work_cnt_reg[0]_i_2__0_n_0\,
      CO(3) => \work_cnt_reg[4]_i_1__0_n_0\,
      CO(2) => \work_cnt_reg[4]_i_1__0_n_1\,
      CO(1) => \work_cnt_reg[4]_i_1__0_n_2\,
      CO(0) => \work_cnt_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \work_cnt_reg[4]_i_1__0_n_4\,
      O(2) => \work_cnt_reg[4]_i_1__0_n_5\,
      O(1) => \work_cnt_reg[4]_i_1__0_n_6\,
      O(0) => \work_cnt_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => \^work_cnt_reg\(7 downto 4)
    );
\work_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[4]_i_1__0_n_6\,
      Q => \^work_cnt_reg\(5),
      R => '0'
    );
\work_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[4]_i_1__0_n_5\,
      Q => \^work_cnt_reg\(6),
      R => '0'
    );
\work_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[4]_i_1__0_n_4\,
      Q => \^work_cnt_reg\(7),
      R => '0'
    );
\work_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[8]_i_1__0_n_7\,
      Q => \^work_cnt_reg\(8),
      R => '0'
    );
\work_cnt_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \work_cnt_reg[4]_i_1__0_n_0\,
      CO(3) => \work_cnt_reg[8]_i_1__0_n_0\,
      CO(2) => \work_cnt_reg[8]_i_1__0_n_1\,
      CO(1) => \work_cnt_reg[8]_i_1__0_n_2\,
      CO(0) => \work_cnt_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \work_cnt_reg[8]_i_1__0_n_4\,
      O(2) => \work_cnt_reg[8]_i_1__0_n_5\,
      O(1) => \work_cnt_reg[8]_i_1__0_n_6\,
      O(0) => \work_cnt_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => \^work_cnt_reg\(11 downto 8)
    );
\work_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__0_n_0\,
      D => \work_cnt_reg[8]_i_1__0_n_6\,
      Q => \^work_cnt_reg\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_1 is
  port (
    s_data_ctrl_tristate_oe_reg_0 : out STD_LOGIC;
    work_cnt_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_am2302_reg[0]_0\ : out STD_LOGIC;
    \state_am2302_reg[2]_0\ : out STD_LOGIC;
    \state_am2302_reg[3]_0\ : out STD_LOGIC;
    \state_am2302_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    AM2302_SDA_3_ctrl : out STD_LOGIC;
    \status_reg[2]_0\ : out STD_LOGIC;
    \status_reg[1]_0\ : out STD_LOGIC;
    \status_reg[0]_0\ : out STD_LOGIC;
    \am2302_temp_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AM2302_SDA_3 : inout STD_LOGIC;
    s_data_ctrl_tristate_oe_reg_1 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s_data_ctrl1_reg_0 : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[3]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[7]\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    \axi_rdata_reg[15]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_1 : entity is "fun_am2302_check";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_1 is
  signal I : STD_LOGIC;
  signal T : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[0]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[10]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[11]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[12]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[13]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[14]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[15]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[1]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[2]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[3]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[4]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[5]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[6]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[7]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[8]\ : STD_LOGIC;
  signal \am2302_humi1_reg_n_0_[9]\ : STD_LOGIC;
  signal \am2302_temp1[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[0]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[10]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[11]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[12]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[13]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[14]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[15]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[1]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[2]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[3]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[4]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[5]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[6]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[7]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[8]\ : STD_LOGIC;
  signal \am2302_temp1_reg_n_0_[9]\ : STD_LOGIC;
  signal \am2302_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[10]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[11]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[12]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[13]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[14]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \am2302_temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[2]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[3]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[4]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[5]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[6]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[7]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[8]_i_1_n_0\ : STD_LOGIC;
  signal \am2302_temp[9]_i_1_n_0\ : STD_LOGIC;
  signal \clk_1us_i_1__1_n_0\ : STD_LOGIC;
  signal clk_1us_reg_n_0 : STD_LOGIC;
  signal clk_1ust_reg_n_0 : STD_LOGIC;
  signal data8 : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal \i___2_carry__0_i_10__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_11__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_12__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_8__1_n_0\ : STD_LOGIC;
  signal \i___2_carry__0_i_9__1_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i___2_carry_i_9__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__1_n_1\ : STD_LOGIC;
  signal \ltOp_carry__1_n_2\ : STD_LOGIC;
  signal \ltOp_carry__1_n_3\ : STD_LOGIC;
  signal \ltOp_carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__2_n_2\ : STD_LOGIC;
  signal \ltOp_carry__2_n_3\ : STD_LOGIC;
  signal \ltOp_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \ltOp_carry_i_7__1_n_0\ : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry_i_3__1_n_0\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_4 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal \period_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \period_cnt[31]_i_1__1_n_0\ : STD_LOGIC;
  signal \period_cnt[31]_i_2__1_n_0\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \period_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_4\ : STD_LOGIC;
  signal \plusOp_carry__3_n_5\ : STD_LOGIC;
  signal \plusOp_carry__3_n_6\ : STD_LOGIC;
  signal \plusOp_carry__3_n_7\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_4\ : STD_LOGIC;
  signal \plusOp_carry__4_n_5\ : STD_LOGIC;
  signal \plusOp_carry__4_n_6\ : STD_LOGIC;
  signal \plusOp_carry__4_n_7\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_carry__5_n_4\ : STD_LOGIC;
  signal \plusOp_carry__5_n_5\ : STD_LOGIC;
  signal \plusOp_carry__5_n_6\ : STD_LOGIC;
  signal \plusOp_carry__5_n_7\ : STD_LOGIC;
  signal \plusOp_carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_carry__6_n_5\ : STD_LOGIC;
  signal \plusOp_carry__6_n_6\ : STD_LOGIC;
  signal \plusOp_carry__6_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__3/i___2_carry_n_7\ : STD_LOGIC;
  signal \rx_data[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[14]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[15]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[17]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[18]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[19]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[21]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[22]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[23]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[23]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[25]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[26]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[27]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[28]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[29]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[30]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_4__1_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_5__1_n_0\ : STD_LOGIC;
  signal \rx_data[31]_i_6__1_n_0\ : STD_LOGIC;
  signal \rx_data[32]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[32]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[33]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[33]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[34]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[34]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[35]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[35]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[36]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[36]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[37]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[37]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[38]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[38]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_10__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_11__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_12__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_4__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_5__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_6__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_7__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_8__1_n_0\ : STD_LOGIC;
  signal \rx_data[39]_i_9__1_n_0\ : STD_LOGIC;
  signal \rx_data[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_data[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \rx_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__0_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__1_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__2_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_i_4__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__3_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_i_4__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__4_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_i_4__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_1\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_4\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__5_n_7\ : STD_LOGIC;
  signal \rx_index0_carry__6_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__6_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__6_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_2\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_3\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_5\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_6\ : STD_LOGIC;
  signal \rx_index0_carry__6_n_7\ : STD_LOGIC;
  signal \rx_index0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_index0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal rx_index0_carry_n_0 : STD_LOGIC;
  signal rx_index0_carry_n_1 : STD_LOGIC;
  signal rx_index0_carry_n_2 : STD_LOGIC;
  signal rx_index0_carry_n_3 : STD_LOGIC;
  signal rx_index0_carry_n_4 : STD_LOGIC;
  signal rx_index0_carry_n_5 : STD_LOGIC;
  signal rx_index0_carry_n_6 : STD_LOGIC;
  signal rx_index0_carry_n_7 : STD_LOGIC;
  signal \rx_index[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_10__1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_1__1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_2__1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_3__1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_4__1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_5__1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_6__1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_7__1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_8__1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_9__1_n_0\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[10]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[11]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[12]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[13]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[14]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[15]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[16]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[17]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[18]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[19]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[20]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[21]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[22]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[23]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[24]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[25]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[26]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[27]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[28]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[29]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[30]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[31]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[5]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[6]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[7]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[8]\ : STD_LOGIC;
  signal \rx_index_reg_n_0_[9]\ : STD_LOGIC;
  signal s_data_ctrl : STD_LOGIC;
  signal \^s_data_ctrl_tristate_oe_reg_0\ : STD_LOGIC;
  signal s_data_in1 : STD_LOGIC;
  signal s_data_in_reg_n_0 : STD_LOGIC;
  signal \s_data_out_i_1__1_n_0\ : STD_LOGIC;
  signal s_data_out_reg_n_0 : STD_LOGIC;
  signal \state_am2302[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \state_am2302[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \state_am2302[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \state_am2302[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_10__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_11__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_12__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_13__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_14__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_15__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_16__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_17__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_18__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_19__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_20__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_21__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_22__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_23__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_24__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_25__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_26__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_27__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_28__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_29__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_30__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_31__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_8__1_n_0\ : STD_LOGIC;
  signal \state_am2302[3]_i_9__1_n_0\ : STD_LOGIC;
  signal \^state_am2302_reg[0]_0\ : STD_LOGIC;
  signal \^state_am2302_reg[1]_0\ : STD_LOGIC;
  signal \^state_am2302_reg[2]_0\ : STD_LOGIC;
  signal \^state_am2302_reg[3]_0\ : STD_LOGIC;
  signal \status[0]_i_1_n_0\ : STD_LOGIC;
  signal \status[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \status[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \status[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \status[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \status[1]_i_1_n_0\ : STD_LOGIC;
  signal \status[2]_i_1_n_0\ : STD_LOGIC;
  signal \status[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \status[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \status[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \status[2]_i_5__1_n_0\ : STD_LOGIC;
  signal \status[2]_i_6__1_n_0\ : STD_LOGIC;
  signal \status[2]_i_7__1_n_0\ : STD_LOGIC;
  signal \^status_reg[0]_0\ : STD_LOGIC;
  signal \^status_reg[1]_0\ : STD_LOGIC;
  signal \^status_reg[2]_0\ : STD_LOGIC;
  signal \us_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_3__1_n_0\ : STD_LOGIC;
  signal \us_cnt[7]_i_4__1_n_0\ : STD_LOGIC;
  signal \us_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal us_count : STD_LOGIC;
  signal \us_count[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \us_count[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \us_count[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \us_count[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \us_count[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \us_count[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \us_count[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \us_count[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_3__1_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_4__1_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_5__1_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_6__1_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_7__1_n_0\ : STD_LOGIC;
  signal \us_count[7]_i_8__1_n_0\ : STD_LOGIC;
  signal \us_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \us_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \work_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \work_cnt[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \^work_cnt_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \work_cnt_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__1_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__1_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__1_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__1_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__1_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[0]_i_2__1_n_7\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \work_cnt_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ltOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rx_index0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rx_index0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_work_cnt_reg[12]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \am2302_temp[0]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \am2302_temp[10]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \am2302_temp[11]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \am2302_temp[12]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \am2302_temp[14]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \am2302_temp[1]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \am2302_temp[2]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \am2302_temp[3]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \am2302_temp[4]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \am2302_temp[5]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \am2302_temp[6]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \am2302_temp[7]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \am2302_temp[8]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \am2302_temp[9]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \clk_1us_i_1__1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \i___2_carry__0_i_10__1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \i___2_carry__0_i_8__1\ : label is "soft_lutpair96";
  attribute box_type : string;
  attribute box_type of inst_am2302_io : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \rx_data[15]_i_2__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \rx_data[31]_i_3__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \rx_data[31]_i_5__1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \rx_data[32]_i_2__1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \rx_data[33]_i_2__1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \rx_data[34]_i_2__1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \rx_data[35]_i_2__1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \rx_data[36]_i_2__1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \rx_data[37]_i_2__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \rx_data[38]_i_2__1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \rx_data[39]_i_10__1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \rx_data[39]_i_11__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \rx_data[39]_i_3__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \rx_data[39]_i_4__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \rx_data[39]_i_5__1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \rx_data[39]_i_6__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \rx_data[7]_i_2__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \rx_index[0]_i_1__1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \rx_index[31]_i_10__1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \rx_index[31]_i_6__1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \rx_index[31]_i_8__1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_data_out_i_1__1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \state_am2302[1]_i_2__1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \state_am2302[1]_i_4__1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \state_am2302[2]_i_2__1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \state_am2302[2]_i_4__1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_11__1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_12__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_13__1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_23__1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_24__1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_25__1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_28__1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_7__1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \state_am2302[3]_i_9__1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \status[0]_i_4__1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \status[0]_i_5__1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \status[2]_i_5__1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \us_cnt[1]_i_1__1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \us_cnt[2]_i_1__1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \us_cnt[3]_i_1__1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \us_cnt[4]_i_1__1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \us_cnt[6]_i_1__1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \us_cnt[7]_i_2__1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \us_count[2]_i_1__1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \us_count[3]_i_1__1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \us_count[4]_i_1__1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \us_count[6]_i_2__1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \us_count[7]_i_4__1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \us_count[7]_i_5__1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \us_count[7]_i_6__1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \us_count[7]_i_7__1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \us_count[7]_i_8__1\ : label is "soft_lutpair90";
begin
  s_data_ctrl_tristate_oe_reg_0 <= \^s_data_ctrl_tristate_oe_reg_0\;
  \state_am2302_reg[0]_0\ <= \^state_am2302_reg[0]_0\;
  \state_am2302_reg[1]_0\ <= \^state_am2302_reg[1]_0\;
  \state_am2302_reg[2]_0\ <= \^state_am2302_reg[2]_0\;
  \state_am2302_reg[3]_0\ <= \^state_am2302_reg[3]_0\;
  \status_reg[0]_0\ <= \^status_reg[0]_0\;
  \status_reg[1]_0\ <= \^status_reg[1]_0\;
  \status_reg[2]_0\ <= \^status_reg[2]_0\;
  work_cnt_reg(15 downto 0) <= \^work_cnt_reg\(15 downto 0);
AM2302_SDA_3_ctrl_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => T,
      O => AM2302_SDA_3_ctrl
    );
\am2302_humi1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[24]\,
      Q => \am2302_humi1_reg_n_0_[0]\,
      R => '0'
    );
\am2302_humi1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[34]\,
      Q => \am2302_humi1_reg_n_0_[10]\,
      R => '0'
    );
\am2302_humi1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[35]\,
      Q => \am2302_humi1_reg_n_0_[11]\,
      R => '0'
    );
\am2302_humi1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[36]\,
      Q => \am2302_humi1_reg_n_0_[12]\,
      R => '0'
    );
\am2302_humi1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[37]\,
      Q => \am2302_humi1_reg_n_0_[13]\,
      R => '0'
    );
\am2302_humi1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[38]\,
      Q => \am2302_humi1_reg_n_0_[14]\,
      R => '0'
    );
\am2302_humi1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[39]\,
      Q => \am2302_humi1_reg_n_0_[15]\,
      R => '0'
    );
\am2302_humi1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[25]\,
      Q => \am2302_humi1_reg_n_0_[1]\,
      R => '0'
    );
\am2302_humi1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[26]\,
      Q => \am2302_humi1_reg_n_0_[2]\,
      R => '0'
    );
\am2302_humi1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[27]\,
      Q => \am2302_humi1_reg_n_0_[3]\,
      R => '0'
    );
\am2302_humi1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[28]\,
      Q => \am2302_humi1_reg_n_0_[4]\,
      R => '0'
    );
\am2302_humi1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[29]\,
      Q => \am2302_humi1_reg_n_0_[5]\,
      R => '0'
    );
\am2302_humi1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[30]\,
      Q => \am2302_humi1_reg_n_0_[6]\,
      R => '0'
    );
\am2302_humi1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[31]\,
      Q => \am2302_humi1_reg_n_0_[7]\,
      R => '0'
    );
\am2302_humi1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[32]\,
      Q => \am2302_humi1_reg_n_0_[8]\,
      R => '0'
    );
\am2302_humi1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[33]\,
      Q => \am2302_humi1_reg_n_0_[9]\,
      R => '0'
    );
\am2302_humi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[0]\,
      Q => Q(0),
      R => '0'
    );
\am2302_humi_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[10]\,
      Q => data8(10),
      R => '0'
    );
\am2302_humi_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[11]\,
      Q => data8(11),
      R => '0'
    );
\am2302_humi_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[12]\,
      Q => data8(12),
      R => '0'
    );
\am2302_humi_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[13]\,
      Q => data8(13),
      R => '0'
    );
\am2302_humi_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[14]\,
      Q => data8(14),
      R => '0'
    );
\am2302_humi_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[15]\,
      Q => data8(15),
      R => '0'
    );
\am2302_humi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[1]\,
      Q => Q(1),
      R => '0'
    );
\am2302_humi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[2]\,
      Q => Q(2),
      R => '0'
    );
\am2302_humi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[3]\,
      Q => data8(3),
      R => '0'
    );
\am2302_humi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[4]\,
      Q => data8(4),
      R => '0'
    );
\am2302_humi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[5]\,
      Q => data8(5),
      R => '0'
    );
\am2302_humi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[6]\,
      Q => data8(6),
      R => '0'
    );
\am2302_humi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[7]\,
      Q => data8(7),
      R => '0'
    );
\am2302_humi_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[8]\,
      Q => data8(8),
      R => '0'
    );
\am2302_humi_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_humi1_reg_n_0_[9]\,
      Q => data8(9),
      R => '0'
    );
\am2302_temp1[15]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      O => \am2302_temp1[15]_i_1__1_n_0\
    );
\am2302_temp1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[8]\,
      Q => \am2302_temp1_reg_n_0_[0]\,
      R => '0'
    );
\am2302_temp1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[18]\,
      Q => \am2302_temp1_reg_n_0_[10]\,
      R => '0'
    );
\am2302_temp1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[19]\,
      Q => \am2302_temp1_reg_n_0_[11]\,
      R => '0'
    );
\am2302_temp1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[20]\,
      Q => \am2302_temp1_reg_n_0_[12]\,
      R => '0'
    );
\am2302_temp1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[21]\,
      Q => \am2302_temp1_reg_n_0_[13]\,
      R => '0'
    );
\am2302_temp1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[22]\,
      Q => \am2302_temp1_reg_n_0_[14]\,
      R => '0'
    );
\am2302_temp1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[23]\,
      Q => \am2302_temp1_reg_n_0_[15]\,
      R => '0'
    );
\am2302_temp1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[9]\,
      Q => \am2302_temp1_reg_n_0_[1]\,
      R => '0'
    );
\am2302_temp1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[10]\,
      Q => \am2302_temp1_reg_n_0_[2]\,
      R => '0'
    );
\am2302_temp1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[11]\,
      Q => \am2302_temp1_reg_n_0_[3]\,
      R => '0'
    );
\am2302_temp1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[12]\,
      Q => \am2302_temp1_reg_n_0_[4]\,
      R => '0'
    );
\am2302_temp1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[13]\,
      Q => \am2302_temp1_reg_n_0_[5]\,
      R => '0'
    );
\am2302_temp1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[14]\,
      Q => \am2302_temp1_reg_n_0_[6]\,
      R => '0'
    );
\am2302_temp1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[15]\,
      Q => \am2302_temp1_reg_n_0_[7]\,
      R => '0'
    );
\am2302_temp1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[16]\,
      Q => \am2302_temp1_reg_n_0_[8]\,
      R => '0'
    );
\am2302_temp1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp1[15]_i_1__1_n_0\,
      D => \rx_data_reg_n_0_[17]\,
      Q => \am2302_temp1_reg_n_0_[9]\,
      R => '0'
    );
\am2302_temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp_carry_n_7,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[0]\,
      O => \am2302_temp[0]_i_1_n_0\
    );
\am2302_temp[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__1_n_5\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[10]\,
      O => \am2302_temp[10]_i_1_n_0\
    );
\am2302_temp[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__1_n_4\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[11]\,
      O => \am2302_temp[11]_i_1_n_0\
    );
\am2302_temp[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__2_n_7\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[12]\,
      O => \am2302_temp[12]_i_1_n_0\
    );
\am2302_temp[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__2_n_6\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[13]\,
      O => \am2302_temp[13]_i_1_n_0\
    );
\am2302_temp[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__2_n_5\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[14]\,
      O => \am2302_temp[14]_i_1_n_0\
    );
\am2302_temp[15]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      O => \am2302_temp[15]_i_1__1_n_0\
    );
\am2302_temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp_carry_n_6,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[1]\,
      O => \am2302_temp[1]_i_1_n_0\
    );
\am2302_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp_carry_n_5,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[2]\,
      O => \am2302_temp[2]_i_1_n_0\
    );
\am2302_temp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp_carry_n_4,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[3]\,
      O => \am2302_temp[3]_i_1_n_0\
    );
\am2302_temp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__0_n_7\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[4]\,
      O => \am2302_temp[4]_i_1_n_0\
    );
\am2302_temp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__0_n_6\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[5]\,
      O => \am2302_temp[5]_i_1_n_0\
    );
\am2302_temp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__0_n_5\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[6]\,
      O => \am2302_temp[6]_i_1_n_0\
    );
\am2302_temp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__0_n_4\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[7]\,
      O => \am2302_temp[7]_i_1_n_0\
    );
\am2302_temp[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__1_n_7\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[8]\,
      O => \am2302_temp[8]_i_1_n_0\
    );
\am2302_temp[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \minusOp_carry__1_n_6\,
      I1 => \am2302_temp1_reg_n_0_[15]\,
      I2 => \am2302_temp1_reg_n_0_[9]\,
      O => \am2302_temp[9]_i_1_n_0\
    );
\am2302_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[0]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(0),
      R => '0'
    );
\am2302_temp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[10]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(10),
      R => '0'
    );
\am2302_temp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[11]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(11),
      R => '0'
    );
\am2302_temp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[12]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(12),
      R => '0'
    );
\am2302_temp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[13]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(13),
      R => '0'
    );
\am2302_temp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[14]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(14),
      R => '0'
    );
\am2302_temp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp1_reg_n_0_[15]\,
      Q => \am2302_temp_reg[15]_0\(15),
      R => '0'
    );
\am2302_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[1]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(1),
      R => '0'
    );
\am2302_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[2]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(2),
      R => '0'
    );
\am2302_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[3]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(3),
      R => '0'
    );
\am2302_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[4]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(4),
      R => '0'
    );
\am2302_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[5]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(5),
      R => '0'
    );
\am2302_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[6]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(6),
      R => '0'
    );
\am2302_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[7]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(7),
      R => '0'
    );
\am2302_temp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[8]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(8),
      R => '0'
    );
\am2302_temp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \am2302_temp[15]_i_1__1_n_0\,
      D => \am2302_temp[9]_i_1_n_0\,
      Q => \am2302_temp_reg[15]_0\(9),
      R => '0'
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(10),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[10]\,
      O => D(7)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(11),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[11]\,
      O => D(8)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(12),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[12]\,
      O => D(9)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(13),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[13]\,
      O => D(10)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(14),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[14]\,
      O => D(11)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(15),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[15]\,
      O => D(12)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(3),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[3]_0\,
      O => D(0)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(4),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[4]\,
      O => D(1)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(5),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[5]\,
      O => D(2)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(6),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[6]\,
      O => D(3)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(7),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[7]\,
      O => D(4)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(8),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[8]\,
      O => D(5)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => data8(9),
      I1 => \axi_rdata_reg[3]\(0),
      I2 => \axi_rdata_reg[3]\(1),
      I3 => \axi_rdata_reg[3]\(2),
      I4 => \axi_rdata_reg[3]\(3),
      I5 => \axi_rdata_reg[9]\,
      O => D(6)
    );
\clk_1us_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CE31"
    )
        port map (
      I0 => \us_cnt[7]_i_3__1_n_0\,
      I1 => \us_cnt_reg__0\(7),
      I2 => \us_cnt_reg__0\(6),
      I3 => clk_1us_reg_n_0,
      O => \clk_1us_i_1__1_n_0\
    );
clk_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_1us_i_1__1_n_0\,
      Q => clk_1us_reg_n_0,
      R => '0'
    );
clk_1ust_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => clk_1us_reg_n_0,
      Q => clk_1ust_reg_n_0,
      R => '0'
    );
\i___2_carry__0_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \rx_data_reg_n_0_[13]\,
      I1 => \rx_data_reg_n_0_[29]\,
      I2 => \rx_data_reg_n_0_[21]\,
      O => \i___2_carry__0_i_10__1_n_0\
    );
\i___2_carry__0_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rx_data_reg_n_0_[23]\,
      I1 => \rx_data_reg_n_0_[31]\,
      I2 => \rx_data_reg_n_0_[15]\,
      I3 => \rx_data_reg_n_0_[39]\,
      O => \i___2_carry__0_i_11__1_n_0\
    );
\i___2_carry__0_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rx_data_reg_n_0_[14]\,
      I1 => \rx_data_reg_n_0_[30]\,
      I2 => \rx_data_reg_n_0_[22]\,
      O => \i___2_carry__0_i_12__1_n_0\
    );
\i___2_carry__0_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \rx_data_reg_n_0_[20]\,
      I1 => \rx_data_reg_n_0_[28]\,
      I2 => \rx_data_reg_n_0_[12]\,
      I3 => \rx_data_reg_n_0_[37]\,
      I4 => \i___2_carry__0_i_8__1_n_0\,
      O => \i___2_carry__0_i_1__1_n_0\
    );
\i___2_carry__0_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \rx_data_reg_n_0_[19]\,
      I1 => \rx_data_reg_n_0_[27]\,
      I2 => \rx_data_reg_n_0_[11]\,
      I3 => \rx_data_reg_n_0_[36]\,
      I4 => \i___2_carry__0_i_9__1_n_0\,
      O => \i___2_carry__0_i_2__1_n_0\
    );
\i___2_carry__0_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \rx_data_reg_n_0_[18]\,
      I1 => \rx_data_reg_n_0_[26]\,
      I2 => \rx_data_reg_n_0_[10]\,
      I3 => \rx_data_reg_n_0_[35]\,
      I4 => \i___2_carry_i_9__1_n_0\,
      O => \i___2_carry__0_i_3__1_n_0\
    );
\i___2_carry__0_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E187871E871E1E78"
    )
        port map (
      I0 => \rx_data_reg_n_0_[38]\,
      I1 => \i___2_carry__0_i_10__1_n_0\,
      I2 => \i___2_carry__0_i_11__1_n_0\,
      I3 => \rx_data_reg_n_0_[14]\,
      I4 => \rx_data_reg_n_0_[30]\,
      I5 => \rx_data_reg_n_0_[22]\,
      O => \i___2_carry__0_i_4__1_n_0\
    );
\i___2_carry__0_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry__0_i_1__1_n_0\,
      I1 => \i___2_carry__0_i_12__1_n_0\,
      I2 => \rx_data_reg_n_0_[38]\,
      I3 => \rx_data_reg_n_0_[13]\,
      I4 => \rx_data_reg_n_0_[29]\,
      I5 => \rx_data_reg_n_0_[21]\,
      O => \i___2_carry__0_i_5__1_n_0\
    );
\i___2_carry__0_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry__0_i_2__1_n_0\,
      I1 => \i___2_carry__0_i_8__1_n_0\,
      I2 => \rx_data_reg_n_0_[37]\,
      I3 => \rx_data_reg_n_0_[12]\,
      I4 => \rx_data_reg_n_0_[28]\,
      I5 => \rx_data_reg_n_0_[20]\,
      O => \i___2_carry__0_i_6__1_n_0\
    );
\i___2_carry__0_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry__0_i_3__1_n_0\,
      I1 => \i___2_carry__0_i_9__1_n_0\,
      I2 => \rx_data_reg_n_0_[36]\,
      I3 => \rx_data_reg_n_0_[11]\,
      I4 => \rx_data_reg_n_0_[27]\,
      I5 => \rx_data_reg_n_0_[19]\,
      O => \i___2_carry__0_i_7__1_n_0\
    );
\i___2_carry__0_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rx_data_reg_n_0_[13]\,
      I1 => \rx_data_reg_n_0_[29]\,
      I2 => \rx_data_reg_n_0_[21]\,
      O => \i___2_carry__0_i_8__1_n_0\
    );
\i___2_carry__0_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rx_data_reg_n_0_[12]\,
      I1 => \rx_data_reg_n_0_[28]\,
      I2 => \rx_data_reg_n_0_[20]\,
      O => \i___2_carry__0_i_9__1_n_0\
    );
\i___2_carry_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \rx_data_reg_n_0_[17]\,
      I1 => \rx_data_reg_n_0_[25]\,
      I2 => \rx_data_reg_n_0_[9]\,
      I3 => \rx_data_reg_n_0_[34]\,
      I4 => \i___2_carry_i_8__1_n_0\,
      O => \i___2_carry_i_1__1_n_0\
    );
\i___2_carry_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \rx_data_reg_n_0_[17]\,
      I1 => \rx_data_reg_n_0_[25]\,
      I2 => \rx_data_reg_n_0_[9]\,
      I3 => \rx_data_reg_n_0_[34]\,
      I4 => \i___2_carry_i_8__1_n_0\,
      O => \i___2_carry_i_2__1_n_0\
    );
\i___2_carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rx_data_reg_n_0_[17]\,
      I1 => \rx_data_reg_n_0_[25]\,
      I2 => \rx_data_reg_n_0_[9]\,
      I3 => \rx_data_reg_n_0_[33]\,
      O => \i___2_carry_i_3__1_n_0\
    );
\i___2_carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \i___2_carry_i_1__1_n_0\,
      I1 => \i___2_carry_i_9__1_n_0\,
      I2 => \rx_data_reg_n_0_[35]\,
      I3 => \rx_data_reg_n_0_[10]\,
      I4 => \rx_data_reg_n_0_[26]\,
      I5 => \rx_data_reg_n_0_[18]\,
      O => \i___2_carry_i_4__1_n_0\
    );
\i___2_carry_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \i___2_carry_i_8__1_n_0\,
      I1 => \rx_data_reg_n_0_[34]\,
      I2 => \rx_data_reg_n_0_[9]\,
      I3 => \rx_data_reg_n_0_[25]\,
      I4 => \rx_data_reg_n_0_[17]\,
      I5 => \rx_data_reg_n_0_[33]\,
      O => \i___2_carry_i_5__1_n_0\
    );
\i___2_carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \i___2_carry_i_3__1_n_0\,
      I1 => \rx_data_reg_n_0_[16]\,
      I2 => \rx_data_reg_n_0_[24]\,
      I3 => \rx_data_reg_n_0_[8]\,
      O => \i___2_carry_i_6__1_n_0\
    );
\i___2_carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rx_data_reg_n_0_[16]\,
      I1 => \rx_data_reg_n_0_[24]\,
      I2 => \rx_data_reg_n_0_[8]\,
      I3 => \rx_data_reg_n_0_[32]\,
      O => \i___2_carry_i_7__1_n_0\
    );
\i___2_carry_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rx_data_reg_n_0_[10]\,
      I1 => \rx_data_reg_n_0_[26]\,
      I2 => \rx_data_reg_n_0_[18]\,
      O => \i___2_carry_i_8__1_n_0\
    );
\i___2_carry_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rx_data_reg_n_0_[11]\,
      I1 => \rx_data_reg_n_0_[27]\,
      I2 => \rx_data_reg_n_0_[19]\,
      O => \i___2_carry_i_9__1_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[21]\,
      I1 => \period_cnt_reg_n_0_[20]\,
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[17]\,
      I1 => \period_cnt_reg_n_0_[16]\,
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[15]\,
      I1 => \period_cnt_reg_n_0_[14]\,
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[20]\,
      I1 => \period_cnt_reg_n_0_[21]\,
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[19]\,
      I1 => \period_cnt_reg_n_0_[18]\,
      O => \i__carry__0_i_5__1_n_0\
    );
\i__carry__0_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[16]\,
      I1 => \period_cnt_reg_n_0_[17]\,
      O => \i__carry__0_i_6__1_n_0\
    );
\i__carry__0_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[14]\,
      I1 => \period_cnt_reg_n_0_[15]\,
      O => \i__carry__0_i_7__1_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[27]\,
      I1 => \period_cnt_reg_n_0_[26]\,
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[25]\,
      I1 => \period_cnt_reg_n_0_[24]\,
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[23]\,
      I1 => \period_cnt_reg_n_0_[22]\,
      O => \i__carry__1_i_3__1_n_0\
    );
\i__carry__1_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[29]\,
      I1 => \period_cnt_reg_n_0_[28]\,
      O => \i__carry__1_i_4__1_n_0\
    );
\i__carry__1_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[26]\,
      I1 => \period_cnt_reg_n_0_[27]\,
      O => \i__carry__1_i_5__1_n_0\
    );
\i__carry__1_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[24]\,
      I1 => \period_cnt_reg_n_0_[25]\,
      O => \i__carry__1_i_6__1_n_0\
    );
\i__carry__1_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[22]\,
      I1 => \period_cnt_reg_n_0_[23]\,
      O => \i__carry__1_i_7__1_n_0\
    );
\i__carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[31]\,
      I1 => \period_cnt_reg_n_0_[30]\,
      O => \i__carry__2_i_1__1_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[13]\,
      I1 => \period_cnt_reg_n_0_[12]\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[11]\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[9]\,
      I1 => \period_cnt_reg_n_0_[8]\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[7]\,
      I1 => \period_cnt_reg_n_0_[6]\,
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[12]\,
      I1 => \period_cnt_reg_n_0_[13]\,
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[11]\,
      I1 => \period_cnt_reg_n_0_[10]\,
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[8]\,
      I1 => \period_cnt_reg_n_0_[9]\,
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[6]\,
      I1 => \period_cnt_reg_n_0_[7]\,
      O => \i__carry_i_8__1_n_0\
    );
inst_am2302_io: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      IO => AM2302_SDA_3,
      O => s_data_in1,
      T => T
    );
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \ltOp_carry_i_1__1_n_0\,
      DI(1) => \ltOp_carry_i_2__1_n_0\,
      DI(0) => \ltOp_carry_i_3__1_n_0\,
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \ltOp_carry_i_4__1_n_0\,
      S(2) => \ltOp_carry_i_5__1_n_0\,
      S(1) => \ltOp_carry_i_6__1_n_0\,
      S(0) => \ltOp_carry_i_7__1_n_0\
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3) => \ltOp_carry__0_n_0\,
      CO(2) => \ltOp_carry__0_n_1\,
      CO(1) => \ltOp_carry__0_n_2\,
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ltOp_carry__0_i_1__1_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry__0_i_2__1_n_0\,
      S(2) => \ltOp_carry__0_i_3__1_n_0\,
      S(1) => \ltOp_carry__0_i_4__1_n_0\,
      S(0) => \ltOp_carry__0_i_5__1_n_0\
    );
\ltOp_carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[15]\,
      I1 => \period_cnt_reg_n_0_[14]\,
      O => \ltOp_carry__0_i_1__1_n_0\
    );
\ltOp_carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[19]\,
      I1 => \period_cnt_reg_n_0_[18]\,
      O => \ltOp_carry__0_i_2__1_n_0\
    );
\ltOp_carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[17]\,
      I1 => \period_cnt_reg_n_0_[16]\,
      O => \ltOp_carry__0_i_3__1_n_0\
    );
\ltOp_carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[14]\,
      I1 => \period_cnt_reg_n_0_[15]\,
      O => \ltOp_carry__0_i_4__1_n_0\
    );
\ltOp_carry__0_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[13]\,
      I1 => \period_cnt_reg_n_0_[12]\,
      O => \ltOp_carry__0_i_5__1_n_0\
    );
\ltOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_carry__0_n_0\,
      CO(3) => \ltOp_carry__1_n_0\,
      CO(2) => \ltOp_carry__1_n_1\,
      CO(1) => \ltOp_carry__1_n_2\,
      CO(0) => \ltOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ltOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry__1_i_1__1_n_0\,
      S(2) => \ltOp_carry__1_i_2__1_n_0\,
      S(1) => \ltOp_carry__1_i_3__1_n_0\,
      S(0) => \ltOp_carry__1_i_4__1_n_0\
    );
\ltOp_carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[27]\,
      I1 => \period_cnt_reg_n_0_[26]\,
      O => \ltOp_carry__1_i_1__1_n_0\
    );
\ltOp_carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[25]\,
      I1 => \period_cnt_reg_n_0_[24]\,
      O => \ltOp_carry__1_i_2__1_n_0\
    );
\ltOp_carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[23]\,
      I1 => \period_cnt_reg_n_0_[22]\,
      O => \ltOp_carry__1_i_3__1_n_0\
    );
\ltOp_carry__1_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[21]\,
      I1 => \period_cnt_reg_n_0_[20]\,
      O => \ltOp_carry__1_i_4__1_n_0\
    );
\ltOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_ltOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ltOp_carry__2_n_2\,
      CO(0) => \ltOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \period_cnt_reg_n_0_[31]\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_ltOp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \ltOp_carry__2_i_1__1_n_0\,
      S(0) => \ltOp_carry__2_i_2__1_n_0\
    );
\ltOp_carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[31]\,
      I1 => \period_cnt_reg_n_0_[30]\,
      O => \ltOp_carry__2_i_1__1_n_0\
    );
\ltOp_carry__2_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[29]\,
      I1 => \period_cnt_reg_n_0_[28]\,
      O => \ltOp_carry__2_i_2__1_n_0\
    );
\ltOp_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[9]\,
      I1 => \period_cnt_reg_n_0_[8]\,
      O => \ltOp_carry_i_1__1_n_0\
    );
\ltOp_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[7]\,
      I1 => \period_cnt_reg_n_0_[6]\,
      O => \ltOp_carry_i_2__1_n_0\
    );
\ltOp_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[5]\,
      I1 => \period_cnt_reg_n_0_[4]\,
      O => \ltOp_carry_i_3__1_n_0\
    );
\ltOp_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[11]\,
      I1 => \period_cnt_reg_n_0_[10]\,
      O => \ltOp_carry_i_4__1_n_0\
    );
\ltOp_carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[8]\,
      I1 => \period_cnt_reg_n_0_[9]\,
      O => \ltOp_carry_i_5__1_n_0\
    );
\ltOp_carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[6]\,
      I1 => \period_cnt_reg_n_0_[7]\,
      O => \ltOp_carry_i_6__1_n_0\
    );
\ltOp_carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[4]\,
      I1 => \period_cnt_reg_n_0_[5]\,
      O => \ltOp_carry_i_7__1_n_0\
    );
\ltOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp_inferred__0/i__carry_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\ltOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry_n_0\,
      CO(3) => \ltOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__1_n_0\,
      DI(2) => '0',
      DI(1) => \i__carry__0_i_2__1_n_0\,
      DI(0) => \i__carry__0_i_3__1_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_4__1_n_0\,
      S(2) => \i__carry__0_i_5__1_n_0\,
      S(1) => \i__carry__0_i_6__1_n_0\,
      S(0) => \i__carry__0_i_7__1_n_0\
    );
\ltOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \ltOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__1_i_1__1_n_0\,
      DI(1) => \i__carry__1_i_2__1_n_0\,
      DI(0) => \i__carry__1_i_3__1_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_4__1_n_0\,
      S(2) => \i__carry__1_i_5__1_n_0\,
      S(1) => \i__carry__1_i_6__1_n_0\,
      S(0) => \i__carry__1_i_7__1_n_0\
    );
\ltOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry__1_n_0\,
      CO(3 downto 1) => \NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ltOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \period_cnt_reg_n_0_[31]\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__2_i_1__1_n_0\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => minusOp_carry_n_4,
      O(2) => minusOp_carry_n_5,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3) => \minusOp_carry_i_1__1_n_0\,
      S(2) => \minusOp_carry_i_2__1_n_0\,
      S(1) => \minusOp_carry_i_3__1_n_0\,
      S(0) => \am2302_temp1_reg_n_0_[0]\
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minusOp_carry__0_n_4\,
      O(2) => \minusOp_carry__0_n_5\,
      O(1) => \minusOp_carry__0_n_6\,
      O(0) => \minusOp_carry__0_n_7\,
      S(3) => \minusOp_carry__0_i_1__1_n_0\,
      S(2) => \minusOp_carry__0_i_2__1_n_0\,
      S(1) => \minusOp_carry__0_i_3__1_n_0\,
      S(0) => \minusOp_carry__0_i_4__1_n_0\
    );
\minusOp_carry__0_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[7]\,
      O => \minusOp_carry__0_i_1__1_n_0\
    );
\minusOp_carry__0_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[6]\,
      O => \minusOp_carry__0_i_2__1_n_0\
    );
\minusOp_carry__0_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[5]\,
      O => \minusOp_carry__0_i_3__1_n_0\
    );
\minusOp_carry__0_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[4]\,
      O => \minusOp_carry__0_i_4__1_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \minusOp_carry__1_n_4\,
      O(2) => \minusOp_carry__1_n_5\,
      O(1) => \minusOp_carry__1_n_6\,
      O(0) => \minusOp_carry__1_n_7\,
      S(3) => \minusOp_carry__1_i_1__1_n_0\,
      S(2) => \minusOp_carry__1_i_2__1_n_0\,
      S(1) => \minusOp_carry__1_i_3__1_n_0\,
      S(0) => \minusOp_carry__1_i_4__1_n_0\
    );
\minusOp_carry__1_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[11]\,
      O => \minusOp_carry__1_i_1__1_n_0\
    );
\minusOp_carry__1_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[10]\,
      O => \minusOp_carry__1_i_2__1_n_0\
    );
\minusOp_carry__1_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[9]\,
      O => \minusOp_carry__1_i_3__1_n_0\
    );
\minusOp_carry__1_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[8]\,
      O => \minusOp_carry__1_i_4__1_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3),
      O(2) => \minusOp_carry__2_n_5\,
      O(1) => \minusOp_carry__2_n_6\,
      O(0) => \minusOp_carry__2_n_7\,
      S(3) => '0',
      S(2) => \minusOp_carry__2_i_1__1_n_0\,
      S(1) => \minusOp_carry__2_i_2__1_n_0\,
      S(0) => \minusOp_carry__2_i_3__1_n_0\
    );
\minusOp_carry__2_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[14]\,
      O => \minusOp_carry__2_i_1__1_n_0\
    );
\minusOp_carry__2_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[13]\,
      O => \minusOp_carry__2_i_2__1_n_0\
    );
\minusOp_carry__2_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[12]\,
      O => \minusOp_carry__2_i_3__1_n_0\
    );
\minusOp_carry_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[3]\,
      O => \minusOp_carry_i_1__1_n_0\
    );
\minusOp_carry_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[2]\,
      O => \minusOp_carry_i_2__1_n_0\
    );
\minusOp_carry_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \am2302_temp1_reg_n_0_[1]\,
      O => \minusOp_carry_i_3__1_n_0\
    );
\period_cnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_cnt_reg_n_0_[0]\,
      O => \period_cnt[0]_i_1__1_n_0\
    );
\period_cnt[31]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000101010001"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \ltOp_inferred__0/i__carry__2_n_3\,
      I4 => \^state_am2302_reg[0]_0\,
      I5 => \ltOp_carry__2_n_2\,
      O => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt[31]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \^state_am2302_reg[3]_0\,
      O => \period_cnt[31]_i_2__1_n_0\
    );
\period_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \period_cnt[0]_i_1__1_n_0\,
      Q => \period_cnt_reg_n_0_[0]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__1_n_6\,
      Q => \period_cnt_reg_n_0_[10]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__1_n_5\,
      Q => \period_cnt_reg_n_0_[11]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__1_n_4\,
      Q => \period_cnt_reg_n_0_[12]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__2_n_7\,
      Q => \period_cnt_reg_n_0_[13]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__2_n_6\,
      Q => \period_cnt_reg_n_0_[14]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__2_n_5\,
      Q => \period_cnt_reg_n_0_[15]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__2_n_4\,
      Q => \period_cnt_reg_n_0_[16]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__3_n_7\,
      Q => \period_cnt_reg_n_0_[17]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__3_n_6\,
      Q => \period_cnt_reg_n_0_[18]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__3_n_5\,
      Q => \period_cnt_reg_n_0_[19]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => plusOp_carry_n_7,
      Q => \period_cnt_reg_n_0_[1]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__3_n_4\,
      Q => \period_cnt_reg_n_0_[20]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__4_n_7\,
      Q => \period_cnt_reg_n_0_[21]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__4_n_6\,
      Q => \period_cnt_reg_n_0_[22]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__4_n_5\,
      Q => \period_cnt_reg_n_0_[23]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__4_n_4\,
      Q => \period_cnt_reg_n_0_[24]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__5_n_7\,
      Q => \period_cnt_reg_n_0_[25]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__5_n_6\,
      Q => \period_cnt_reg_n_0_[26]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__5_n_5\,
      Q => \period_cnt_reg_n_0_[27]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__5_n_4\,
      Q => \period_cnt_reg_n_0_[28]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__6_n_7\,
      Q => \period_cnt_reg_n_0_[29]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => plusOp_carry_n_6,
      Q => \period_cnt_reg_n_0_[2]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__6_n_6\,
      Q => \period_cnt_reg_n_0_[30]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__6_n_5\,
      Q => \period_cnt_reg_n_0_[31]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => plusOp_carry_n_5,
      Q => \period_cnt_reg_n_0_[3]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => plusOp_carry_n_4,
      Q => \period_cnt_reg_n_0_[4]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__0_n_7\,
      Q => \period_cnt_reg_n_0_[5]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__0_n_6\,
      Q => \period_cnt_reg_n_0_[6]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__0_n_5\,
      Q => \period_cnt_reg_n_0_[7]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__0_n_4\,
      Q => \period_cnt_reg_n_0_[8]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
\period_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \period_cnt[31]_i_2__1_n_0\,
      D => \plusOp_carry__1_n_7\,
      Q => \period_cnt_reg_n_0_[9]\,
      R => \period_cnt[31]_i_1__1_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \period_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3) => \period_cnt_reg_n_0_[4]\,
      S(2) => \period_cnt_reg_n_0_[3]\,
      S(1) => \period_cnt_reg_n_0_[2]\,
      S(0) => \period_cnt_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3) => \period_cnt_reg_n_0_[8]\,
      S(2) => \period_cnt_reg_n_0_[7]\,
      S(1) => \period_cnt_reg_n_0_[6]\,
      S(0) => \period_cnt_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__1_n_4\,
      O(2) => \plusOp_carry__1_n_5\,
      O(1) => \plusOp_carry__1_n_6\,
      O(0) => \plusOp_carry__1_n_7\,
      S(3) => \period_cnt_reg_n_0_[12]\,
      S(2) => \period_cnt_reg_n_0_[11]\,
      S(1) => \period_cnt_reg_n_0_[10]\,
      S(0) => \period_cnt_reg_n_0_[9]\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__2_n_4\,
      O(2) => \plusOp_carry__2_n_5\,
      O(1) => \plusOp_carry__2_n_6\,
      O(0) => \plusOp_carry__2_n_7\,
      S(3) => \period_cnt_reg_n_0_[16]\,
      S(2) => \period_cnt_reg_n_0_[15]\,
      S(1) => \period_cnt_reg_n_0_[14]\,
      S(0) => \period_cnt_reg_n_0_[13]\
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__3_n_4\,
      O(2) => \plusOp_carry__3_n_5\,
      O(1) => \plusOp_carry__3_n_6\,
      O(0) => \plusOp_carry__3_n_7\,
      S(3) => \period_cnt_reg_n_0_[20]\,
      S(2) => \period_cnt_reg_n_0_[19]\,
      S(1) => \period_cnt_reg_n_0_[18]\,
      S(0) => \period_cnt_reg_n_0_[17]\
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__4_n_4\,
      O(2) => \plusOp_carry__4_n_5\,
      O(1) => \plusOp_carry__4_n_6\,
      O(0) => \plusOp_carry__4_n_7\,
      S(3) => \period_cnt_reg_n_0_[24]\,
      S(2) => \period_cnt_reg_n_0_[23]\,
      S(1) => \period_cnt_reg_n_0_[22]\,
      S(0) => \period_cnt_reg_n_0_[21]\
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3) => \plusOp_carry__5_n_0\,
      CO(2) => \plusOp_carry__5_n_1\,
      CO(1) => \plusOp_carry__5_n_2\,
      CO(0) => \plusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__5_n_4\,
      O(2) => \plusOp_carry__5_n_5\,
      O(1) => \plusOp_carry__5_n_6\,
      O(0) => \plusOp_carry__5_n_7\,
      S(3) => \period_cnt_reg_n_0_[28]\,
      S(2) => \period_cnt_reg_n_0_[27]\,
      S(1) => \period_cnt_reg_n_0_[26]\,
      S(0) => \period_cnt_reg_n_0_[25]\
    );
\plusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__6_n_2\,
      CO(0) => \plusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__6_O_UNCONNECTED\(3),
      O(2) => \plusOp_carry__6_n_5\,
      O(1) => \plusOp_carry__6_n_6\,
      O(0) => \plusOp_carry__6_n_7\,
      S(3) => '0',
      S(2) => \period_cnt_reg_n_0_[31]\,
      S(1) => \period_cnt_reg_n_0_[30]\,
      S(0) => \period_cnt_reg_n_0_[29]\
    );
\plusOp_inferred__3/i___2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__3/i___2_carry_n_0\,
      CO(2) => \plusOp_inferred__3/i___2_carry_n_1\,
      CO(1) => \plusOp_inferred__3/i___2_carry_n_2\,
      CO(0) => \plusOp_inferred__3/i___2_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___2_carry_i_1__1_n_0\,
      DI(2) => \i___2_carry_i_2__1_n_0\,
      DI(1) => \i___2_carry_i_3__1_n_0\,
      DI(0) => \rx_data_reg_n_0_[32]\,
      O(3) => \plusOp_inferred__3/i___2_carry_n_4\,
      O(2) => \plusOp_inferred__3/i___2_carry_n_5\,
      O(1) => \plusOp_inferred__3/i___2_carry_n_6\,
      O(0) => \plusOp_inferred__3/i___2_carry_n_7\,
      S(3) => \i___2_carry_i_4__1_n_0\,
      S(2) => \i___2_carry_i_5__1_n_0\,
      S(1) => \i___2_carry_i_6__1_n_0\,
      S(0) => \i___2_carry_i_7__1_n_0\
    );
\plusOp_inferred__3/i___2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__3/i___2_carry_n_0\,
      CO(3) => \NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_inferred__3/i___2_carry__0_n_1\,
      CO(1) => \plusOp_inferred__3/i___2_carry__0_n_2\,
      CO(0) => \plusOp_inferred__3/i___2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i___2_carry__0_i_1__1_n_0\,
      DI(1) => \i___2_carry__0_i_2__1_n_0\,
      DI(0) => \i___2_carry__0_i_3__1_n_0\,
      O(3) => \plusOp_inferred__3/i___2_carry__0_n_4\,
      O(2) => \plusOp_inferred__3/i___2_carry__0_n_5\,
      O(1) => \plusOp_inferred__3/i___2_carry__0_n_6\,
      O(0) => \plusOp_inferred__3/i___2_carry__0_n_7\,
      S(3) => \i___2_carry__0_i_4__1_n_0\,
      S(2) => \i___2_carry__0_i_5__1_n_0\,
      S(1) => \i___2_carry__0_i_6__1_n_0\,
      S(0) => \i___2_carry__0_i_7__1_n_0\
    );
\rx_data[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[7]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[0]\,
      O => \rx_data[0]_i_1__1_n_0\
    );
\rx_data[10]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[15]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[10]\,
      O => \rx_data[10]_i_1__1_n_0\
    );
\rx_data[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[15]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[11]\,
      O => \rx_data[11]_i_1__1_n_0\
    );
\rx_data[12]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[15]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[12]\,
      O => \rx_data[12]_i_1__1_n_0\
    );
\rx_data[13]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[15]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[13]\,
      O => \rx_data[13]_i_1__1_n_0\
    );
\rx_data[14]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[15]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[14]\,
      O => \rx_data[14]_i_1__1_n_0\
    );
\rx_data[15]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[15]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[15]\,
      O => \rx_data[15]_i_1__1_n_0\
    );
\rx_data[15]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \rx_index_reg_n_0_[4]\,
      I1 => \rx_index_reg_n_0_[3]\,
      I2 => \rx_index_reg_n_0_[5]\,
      I3 => \rx_data[39]_i_7__1_n_0\,
      O => \rx_data[15]_i_2__1_n_0\
    );
\rx_data[16]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[23]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[16]\,
      O => \rx_data[16]_i_1__1_n_0\
    );
\rx_data[17]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[23]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[17]\,
      O => \rx_data[17]_i_1__1_n_0\
    );
\rx_data[18]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[23]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[18]\,
      O => \rx_data[18]_i_1__1_n_0\
    );
\rx_data[19]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[23]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[19]\,
      O => \rx_data[19]_i_1__1_n_0\
    );
\rx_data[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[7]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[1]\,
      O => \rx_data[1]_i_1__1_n_0\
    );
\rx_data[20]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[23]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[20]\,
      O => \rx_data[20]_i_1__1_n_0\
    );
\rx_data[21]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[23]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[21]\,
      O => \rx_data[21]_i_1__1_n_0\
    );
\rx_data[22]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[23]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[22]\,
      O => \rx_data[22]_i_1__1_n_0\
    );
\rx_data[23]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[23]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[23]\,
      O => \rx_data[23]_i_1__1_n_0\
    );
\rx_data[23]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \rx_index_reg_n_0_[4]\,
      I1 => \rx_index_reg_n_0_[3]\,
      I2 => \rx_index_reg_n_0_[5]\,
      I3 => \rx_data[39]_i_7__1_n_0\,
      O => \rx_data[23]_i_2__1_n_0\
    );
\rx_data[24]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[31]_i_3__1_n_0\,
      I5 => \rx_data_reg_n_0_[24]\,
      O => \rx_data[24]_i_1__1_n_0\
    );
\rx_data[25]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[31]_i_3__1_n_0\,
      I5 => \rx_data_reg_n_0_[25]\,
      O => \rx_data[25]_i_1__1_n_0\
    );
\rx_data[26]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[31]_i_3__1_n_0\,
      I5 => \rx_data_reg_n_0_[26]\,
      O => \rx_data[26]_i_1__1_n_0\
    );
\rx_data[27]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[31]_i_3__1_n_0\,
      I5 => \rx_data_reg_n_0_[27]\,
      O => \rx_data[27]_i_1__1_n_0\
    );
\rx_data[28]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[31]_i_3__1_n_0\,
      I5 => \rx_data_reg_n_0_[28]\,
      O => \rx_data[28]_i_1__1_n_0\
    );
\rx_data[29]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[31]_i_3__1_n_0\,
      I5 => \rx_data_reg_n_0_[29]\,
      O => \rx_data[29]_i_1__1_n_0\
    );
\rx_data[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[7]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[2]\,
      O => \rx_data[2]_i_1__1_n_0\
    );
\rx_data[30]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[31]_i_3__1_n_0\,
      I5 => \rx_data_reg_n_0_[30]\,
      O => \rx_data[30]_i_1__1_n_0\
    );
\rx_data[31]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[31]_i_3__1_n_0\,
      I5 => \rx_data_reg_n_0_[31]\,
      O => \rx_data[31]_i_1__1_n_0\
    );
\rx_data[31]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFFFBFFFFFFF"
    )
        port map (
      I0 => s_data_in_reg_n_0,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \rx_data[31]_i_4__1_n_0\,
      I5 => \rx_data[39]_i_2__1_n_0\,
      O => \rx_data[31]_i_2__1_n_0\
    );
\rx_data[31]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \rx_index_reg_n_0_[3]\,
      I1 => \rx_index_reg_n_0_[4]\,
      I2 => \rx_index_reg_n_0_[5]\,
      I3 => \rx_data[39]_i_7__1_n_0\,
      O => \rx_data[31]_i_3__1_n_0\
    );
\rx_data[31]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2223222000000000"
    )
        port map (
      I0 => \rx_data[31]_i_5__1_n_0\,
      I1 => \us_count_reg_n_0_[7]\,
      I2 => \rx_data[31]_i_6__1_n_0\,
      I3 => \us_count_reg_n_0_[3]\,
      I4 => \state_am2302[3]_i_25__1_n_0\,
      I5 => \us_count_reg_n_0_[6]\,
      O => \rx_data[31]_i_4__1_n_0\
    );
\rx_data[31]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
        port map (
      I0 => \us_count_reg_n_0_[2]\,
      I1 => \us_count_reg_n_0_[5]\,
      I2 => \us_count_reg_n_0_[4]\,
      I3 => \us_count_reg_n_0_[1]\,
      I4 => \us_count_reg_n_0_[0]\,
      O => \rx_data[31]_i_5__1_n_0\
    );
\rx_data[31]_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \us_count_reg_n_0_[5]\,
      I1 => \us_count_reg_n_0_[4]\,
      O => \rx_data[31]_i_6__1_n_0\
    );
\rx_data[32]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2__1_n_0\,
      I3 => \rx_data[39]_i_4__1_n_0\,
      I4 => \rx_data_reg_n_0_[32]\,
      O => \rx_data[32]_i_1__1_n_0\
    );
\rx_data[32]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[2]\,
      I1 => \rx_index_reg_n_0_[0]\,
      I2 => \rx_index_reg_n_0_[1]\,
      O => \rx_data[32]_i_2__1_n_0\
    );
\rx_data[33]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2__1_n_0\,
      I3 => \rx_data[39]_i_4__1_n_0\,
      I4 => \rx_data_reg_n_0_[33]\,
      O => \rx_data[33]_i_1__1_n_0\
    );
\rx_data[33]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      I1 => \rx_index_reg_n_0_[1]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[33]_i_2__1_n_0\
    );
\rx_data[34]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[34]_i_2__1_n_0\,
      I3 => \rx_data[39]_i_4__1_n_0\,
      I4 => \rx_data_reg_n_0_[34]\,
      O => \rx_data[34]_i_1__1_n_0\
    );
\rx_data[34]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \rx_index_reg_n_0_[1]\,
      I1 => \rx_index_reg_n_0_[0]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[34]_i_2__1_n_0\
    );
\rx_data[35]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2__1_n_0\,
      I3 => \rx_data[39]_i_4__1_n_0\,
      I4 => \rx_data_reg_n_0_[35]\,
      O => \rx_data[35]_i_1__1_n_0\
    );
\rx_data[35]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      I1 => \rx_index_reg_n_0_[1]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[35]_i_2__1_n_0\
    );
\rx_data[36]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2__1_n_0\,
      I3 => \rx_data[39]_i_4__1_n_0\,
      I4 => \rx_data_reg_n_0_[36]\,
      O => \rx_data[36]_i_1__1_n_0\
    );
\rx_data[36]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \rx_index_reg_n_0_[2]\,
      I1 => \rx_index_reg_n_0_[0]\,
      I2 => \rx_index_reg_n_0_[1]\,
      O => \rx_data[36]_i_2__1_n_0\
    );
\rx_data[37]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2__1_n_0\,
      I3 => \rx_data[39]_i_4__1_n_0\,
      I4 => \rx_data_reg_n_0_[37]\,
      O => \rx_data[37]_i_1__1_n_0\
    );
\rx_data[37]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      I1 => \rx_index_reg_n_0_[1]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[37]_i_2__1_n_0\
    );
\rx_data[38]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2__1_n_0\,
      I3 => \rx_data[39]_i_4__1_n_0\,
      I4 => \rx_data_reg_n_0_[38]\,
      O => \rx_data[38]_i_1__1_n_0\
    );
\rx_data[38]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \rx_index_reg_n_0_[1]\,
      I1 => \rx_index_reg_n_0_[0]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[38]_i_2__1_n_0\
    );
\rx_data[39]_i_10__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rx_index_reg_n_0_[25]\,
      I1 => \rx_index_reg_n_0_[26]\,
      O => \rx_data[39]_i_10__1_n_0\
    );
\rx_data[39]_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[30]\,
      I1 => \rx_index_reg_n_0_[31]\,
      I2 => \rx_index_reg_n_0_[29]\,
      I3 => \rx_index_reg_n_0_[28]\,
      O => \rx_data[39]_i_11__1_n_0\
    );
\rx_data[39]_i_12__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rx_index_reg_n_0_[7]\,
      I1 => \rx_index_reg_n_0_[8]\,
      O => \rx_data[39]_i_12__1_n_0\
    );
\rx_data[39]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3__1_n_0\,
      I3 => \rx_data[39]_i_4__1_n_0\,
      I4 => \rx_data_reg_n_0_[39]\,
      O => \rx_data[39]_i_1__1_n_0\
    );
\rx_data[39]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044404440"
    )
        port map (
      I0 => \us_count_reg_n_0_[7]\,
      I1 => \rx_data[39]_i_5__1_n_0\,
      I2 => \us_count_reg_n_0_[6]\,
      I3 => \us_count_reg_n_0_[5]\,
      I4 => \rx_data[39]_i_6__1_n_0\,
      I5 => \us_count_reg_n_0_[4]\,
      O => \rx_data[39]_i_2__1_n_0\
    );
\rx_data[39]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      I1 => \rx_index_reg_n_0_[1]\,
      I2 => \rx_index_reg_n_0_[2]\,
      O => \rx_data[39]_i_3__1_n_0\
    );
\rx_data[39]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \rx_data[31]_i_2__1_n_0\,
      I1 => \rx_data[39]_i_7__1_n_0\,
      I2 => \rx_index_reg_n_0_[4]\,
      I3 => \rx_index_reg_n_0_[3]\,
      I4 => \rx_index_reg_n_0_[5]\,
      O => \rx_data[39]_i_4__1_n_0\
    );
\rx_data[39]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000007F"
    )
        port map (
      I0 => \us_count_reg_n_0_[2]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[3]\,
      I3 => \us_count_reg_n_0_[5]\,
      I4 => \us_count_reg_n_0_[6]\,
      O => \rx_data[39]_i_5__1_n_0\
    );
\rx_data[39]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \us_count_reg_n_0_[0]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[2]\,
      I3 => \us_count_reg_n_0_[3]\,
      O => \rx_data[39]_i_6__1_n_0\
    );
\rx_data[39]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_data[39]_i_8__1_n_0\,
      I1 => \rx_data[39]_i_9__1_n_0\,
      I2 => \rx_index_reg_n_0_[15]\,
      I3 => \rx_index_reg_n_0_[12]\,
      I4 => \rx_index_reg_n_0_[9]\,
      I5 => \rx_index[31]_i_10__1_n_0\,
      O => \rx_data[39]_i_7__1_n_0\
    );
\rx_data[39]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[21]\,
      I1 => \state_am2302[3]_i_26__1_n_0\,
      I2 => \rx_index_reg_n_0_[24]\,
      I3 => \rx_data[39]_i_10__1_n_0\,
      I4 => \rx_index_reg_n_0_[27]\,
      I5 => \rx_data[39]_i_11__1_n_0\,
      O => \rx_data[39]_i_8__1_n_0\
    );
\rx_data[39]_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[10]\,
      I1 => \rx_index_reg_n_0_[11]\,
      I2 => \rx_index_reg_n_0_[13]\,
      I3 => \rx_index_reg_n_0_[14]\,
      I4 => \rx_data[39]_i_12__1_n_0\,
      I5 => \rx_index_reg_n_0_[6]\,
      O => \rx_data[39]_i_9__1_n_0\
    );
\rx_data[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[35]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[7]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[3]\,
      O => \rx_data[3]_i_1__1_n_0\
    );
\rx_data[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[36]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[7]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[4]\,
      O => \rx_data[4]_i_1__1_n_0\
    );
\rx_data[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[37]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[7]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[5]\,
      O => \rx_data[5]_i_1__1_n_0\
    );
\rx_data[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[38]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[7]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[6]\,
      O => \rx_data[6]_i_1__1_n_0\
    );
\rx_data[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[39]_i_3__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[7]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[7]\,
      O => \rx_data[7]_i_1__1_n_0\
    );
\rx_data[7]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[4]\,
      I1 => \rx_index_reg_n_0_[3]\,
      I2 => \rx_index_reg_n_0_[5]\,
      I3 => \rx_data[39]_i_7__1_n_0\,
      O => \rx_data[7]_i_2__1_n_0\
    );
\rx_data[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[32]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[15]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[8]\,
      O => \rx_data[8]_i_1__1_n_0\
    );
\rx_data[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => \rx_data[39]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \rx_data[33]_i_2__1_n_0\,
      I3 => \rx_data[31]_i_2__1_n_0\,
      I4 => \rx_data[15]_i_2__1_n_0\,
      I5 => \rx_data_reg_n_0_[9]\,
      O => \rx_data[9]_i_1__1_n_0\
    );
\rx_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[0]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[0]\,
      R => '0'
    );
\rx_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[10]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[10]\,
      R => '0'
    );
\rx_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[11]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[11]\,
      R => '0'
    );
\rx_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[12]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[12]\,
      R => '0'
    );
\rx_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[13]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[13]\,
      R => '0'
    );
\rx_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[14]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[14]\,
      R => '0'
    );
\rx_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[15]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[15]\,
      R => '0'
    );
\rx_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[16]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[16]\,
      R => '0'
    );
\rx_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[17]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[17]\,
      R => '0'
    );
\rx_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[18]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[18]\,
      R => '0'
    );
\rx_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[19]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[19]\,
      R => '0'
    );
\rx_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[1]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[1]\,
      R => '0'
    );
\rx_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[20]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[20]\,
      R => '0'
    );
\rx_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[21]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[21]\,
      R => '0'
    );
\rx_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[22]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[22]\,
      R => '0'
    );
\rx_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[23]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[23]\,
      R => '0'
    );
\rx_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[24]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[24]\,
      R => '0'
    );
\rx_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[25]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[25]\,
      R => '0'
    );
\rx_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[26]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[26]\,
      R => '0'
    );
\rx_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[27]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[27]\,
      R => '0'
    );
\rx_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[28]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[28]\,
      R => '0'
    );
\rx_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[29]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[29]\,
      R => '0'
    );
\rx_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[2]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[2]\,
      R => '0'
    );
\rx_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[30]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[30]\,
      R => '0'
    );
\rx_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[31]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[31]\,
      R => '0'
    );
\rx_data_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[32]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[32]\,
      R => '0'
    );
\rx_data_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[33]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[33]\,
      R => '0'
    );
\rx_data_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[34]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[34]\,
      R => '0'
    );
\rx_data_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[35]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[35]\,
      R => '0'
    );
\rx_data_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[36]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[36]\,
      R => '0'
    );
\rx_data_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[37]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[37]\,
      R => '0'
    );
\rx_data_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[38]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[38]\,
      R => '0'
    );
\rx_data_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[39]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[39]\,
      R => '0'
    );
\rx_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[3]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[3]\,
      R => '0'
    );
\rx_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[4]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[4]\,
      R => '0'
    );
\rx_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[5]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[5]\,
      R => '0'
    );
\rx_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[6]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[6]\,
      R => '0'
    );
\rx_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[7]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[7]\,
      R => '0'
    );
\rx_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[8]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[8]\,
      R => '0'
    );
\rx_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \rx_data[9]_i_1__1_n_0\,
      Q => \rx_data_reg_n_0_[9]\,
      R => '0'
    );
rx_index0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rx_index0_carry_n_0,
      CO(2) => rx_index0_carry_n_1,
      CO(1) => rx_index0_carry_n_2,
      CO(0) => rx_index0_carry_n_3,
      CYINIT => \rx_index_reg_n_0_[0]\,
      DI(3) => \rx_index_reg_n_0_[4]\,
      DI(2) => \rx_index_reg_n_0_[3]\,
      DI(1) => \rx_index_reg_n_0_[2]\,
      DI(0) => \rx_index_reg_n_0_[1]\,
      O(3) => rx_index0_carry_n_4,
      O(2) => rx_index0_carry_n_5,
      O(1) => rx_index0_carry_n_6,
      O(0) => rx_index0_carry_n_7,
      S(3) => \rx_index0_carry_i_1__1_n_0\,
      S(2) => \rx_index0_carry_i_2__1_n_0\,
      S(1) => \rx_index0_carry_i_3__1_n_0\,
      S(0) => \rx_index0_carry_i_4__1_n_0\
    );
\rx_index0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rx_index0_carry_n_0,
      CO(3) => \rx_index0_carry__0_n_0\,
      CO(2) => \rx_index0_carry__0_n_1\,
      CO(1) => \rx_index0_carry__0_n_2\,
      CO(0) => \rx_index0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[8]\,
      DI(2) => \rx_index_reg_n_0_[7]\,
      DI(1) => \rx_index_reg_n_0_[6]\,
      DI(0) => \rx_index_reg_n_0_[5]\,
      O(3) => \rx_index0_carry__0_n_4\,
      O(2) => \rx_index0_carry__0_n_5\,
      O(1) => \rx_index0_carry__0_n_6\,
      O(0) => \rx_index0_carry__0_n_7\,
      S(3) => \rx_index0_carry__0_i_1__1_n_0\,
      S(2) => \rx_index0_carry__0_i_2__1_n_0\,
      S(1) => \rx_index0_carry__0_i_3__1_n_0\,
      S(0) => \rx_index0_carry__0_i_4__1_n_0\
    );
\rx_index0_carry__0_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[8]\,
      O => \rx_index0_carry__0_i_1__1_n_0\
    );
\rx_index0_carry__0_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[7]\,
      O => \rx_index0_carry__0_i_2__1_n_0\
    );
\rx_index0_carry__0_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[6]\,
      O => \rx_index0_carry__0_i_3__1_n_0\
    );
\rx_index0_carry__0_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[5]\,
      O => \rx_index0_carry__0_i_4__1_n_0\
    );
\rx_index0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__0_n_0\,
      CO(3) => \rx_index0_carry__1_n_0\,
      CO(2) => \rx_index0_carry__1_n_1\,
      CO(1) => \rx_index0_carry__1_n_2\,
      CO(0) => \rx_index0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[12]\,
      DI(2) => \rx_index_reg_n_0_[11]\,
      DI(1) => \rx_index_reg_n_0_[10]\,
      DI(0) => \rx_index_reg_n_0_[9]\,
      O(3) => \rx_index0_carry__1_n_4\,
      O(2) => \rx_index0_carry__1_n_5\,
      O(1) => \rx_index0_carry__1_n_6\,
      O(0) => \rx_index0_carry__1_n_7\,
      S(3) => \rx_index0_carry__1_i_1__1_n_0\,
      S(2) => \rx_index0_carry__1_i_2__1_n_0\,
      S(1) => \rx_index0_carry__1_i_3__1_n_0\,
      S(0) => \rx_index0_carry__1_i_4__1_n_0\
    );
\rx_index0_carry__1_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[12]\,
      O => \rx_index0_carry__1_i_1__1_n_0\
    );
\rx_index0_carry__1_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[11]\,
      O => \rx_index0_carry__1_i_2__1_n_0\
    );
\rx_index0_carry__1_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[10]\,
      O => \rx_index0_carry__1_i_3__1_n_0\
    );
\rx_index0_carry__1_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[9]\,
      O => \rx_index0_carry__1_i_4__1_n_0\
    );
\rx_index0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__1_n_0\,
      CO(3) => \rx_index0_carry__2_n_0\,
      CO(2) => \rx_index0_carry__2_n_1\,
      CO(1) => \rx_index0_carry__2_n_2\,
      CO(0) => \rx_index0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[16]\,
      DI(2) => \rx_index_reg_n_0_[15]\,
      DI(1) => \rx_index_reg_n_0_[14]\,
      DI(0) => \rx_index_reg_n_0_[13]\,
      O(3) => \rx_index0_carry__2_n_4\,
      O(2) => \rx_index0_carry__2_n_5\,
      O(1) => \rx_index0_carry__2_n_6\,
      O(0) => \rx_index0_carry__2_n_7\,
      S(3) => \rx_index0_carry__2_i_1__1_n_0\,
      S(2) => \rx_index0_carry__2_i_2__1_n_0\,
      S(1) => \rx_index0_carry__2_i_3__1_n_0\,
      S(0) => \rx_index0_carry__2_i_4__1_n_0\
    );
\rx_index0_carry__2_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[16]\,
      O => \rx_index0_carry__2_i_1__1_n_0\
    );
\rx_index0_carry__2_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[15]\,
      O => \rx_index0_carry__2_i_2__1_n_0\
    );
\rx_index0_carry__2_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[14]\,
      O => \rx_index0_carry__2_i_3__1_n_0\
    );
\rx_index0_carry__2_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[13]\,
      O => \rx_index0_carry__2_i_4__1_n_0\
    );
\rx_index0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__2_n_0\,
      CO(3) => \rx_index0_carry__3_n_0\,
      CO(2) => \rx_index0_carry__3_n_1\,
      CO(1) => \rx_index0_carry__3_n_2\,
      CO(0) => \rx_index0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[20]\,
      DI(2) => \rx_index_reg_n_0_[19]\,
      DI(1) => \rx_index_reg_n_0_[18]\,
      DI(0) => \rx_index_reg_n_0_[17]\,
      O(3) => \rx_index0_carry__3_n_4\,
      O(2) => \rx_index0_carry__3_n_5\,
      O(1) => \rx_index0_carry__3_n_6\,
      O(0) => \rx_index0_carry__3_n_7\,
      S(3) => \rx_index0_carry__3_i_1__1_n_0\,
      S(2) => \rx_index0_carry__3_i_2__1_n_0\,
      S(1) => \rx_index0_carry__3_i_3__1_n_0\,
      S(0) => \rx_index0_carry__3_i_4__1_n_0\
    );
\rx_index0_carry__3_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[20]\,
      O => \rx_index0_carry__3_i_1__1_n_0\
    );
\rx_index0_carry__3_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[19]\,
      O => \rx_index0_carry__3_i_2__1_n_0\
    );
\rx_index0_carry__3_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[18]\,
      O => \rx_index0_carry__3_i_3__1_n_0\
    );
\rx_index0_carry__3_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[17]\,
      O => \rx_index0_carry__3_i_4__1_n_0\
    );
\rx_index0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__3_n_0\,
      CO(3) => \rx_index0_carry__4_n_0\,
      CO(2) => \rx_index0_carry__4_n_1\,
      CO(1) => \rx_index0_carry__4_n_2\,
      CO(0) => \rx_index0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[24]\,
      DI(2) => \rx_index_reg_n_0_[23]\,
      DI(1) => \rx_index_reg_n_0_[22]\,
      DI(0) => \rx_index_reg_n_0_[21]\,
      O(3) => \rx_index0_carry__4_n_4\,
      O(2) => \rx_index0_carry__4_n_5\,
      O(1) => \rx_index0_carry__4_n_6\,
      O(0) => \rx_index0_carry__4_n_7\,
      S(3) => \rx_index0_carry__4_i_1__1_n_0\,
      S(2) => \rx_index0_carry__4_i_2__1_n_0\,
      S(1) => \rx_index0_carry__4_i_3__1_n_0\,
      S(0) => \rx_index0_carry__4_i_4__1_n_0\
    );
\rx_index0_carry__4_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[24]\,
      O => \rx_index0_carry__4_i_1__1_n_0\
    );
\rx_index0_carry__4_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[23]\,
      O => \rx_index0_carry__4_i_2__1_n_0\
    );
\rx_index0_carry__4_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[22]\,
      O => \rx_index0_carry__4_i_3__1_n_0\
    );
\rx_index0_carry__4_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[21]\,
      O => \rx_index0_carry__4_i_4__1_n_0\
    );
\rx_index0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__4_n_0\,
      CO(3) => \rx_index0_carry__5_n_0\,
      CO(2) => \rx_index0_carry__5_n_1\,
      CO(1) => \rx_index0_carry__5_n_2\,
      CO(0) => \rx_index0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \rx_index_reg_n_0_[28]\,
      DI(2) => \rx_index_reg_n_0_[27]\,
      DI(1) => \rx_index_reg_n_0_[26]\,
      DI(0) => \rx_index_reg_n_0_[25]\,
      O(3) => \rx_index0_carry__5_n_4\,
      O(2) => \rx_index0_carry__5_n_5\,
      O(1) => \rx_index0_carry__5_n_6\,
      O(0) => \rx_index0_carry__5_n_7\,
      S(3) => \rx_index0_carry__5_i_1__1_n_0\,
      S(2) => \rx_index0_carry__5_i_2__1_n_0\,
      S(1) => \rx_index0_carry__5_i_3__1_n_0\,
      S(0) => \rx_index0_carry__5_i_4__1_n_0\
    );
\rx_index0_carry__5_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[28]\,
      O => \rx_index0_carry__5_i_1__1_n_0\
    );
\rx_index0_carry__5_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[27]\,
      O => \rx_index0_carry__5_i_2__1_n_0\
    );
\rx_index0_carry__5_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[26]\,
      O => \rx_index0_carry__5_i_3__1_n_0\
    );
\rx_index0_carry__5_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[25]\,
      O => \rx_index0_carry__5_i_4__1_n_0\
    );
\rx_index0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_rx_index0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rx_index0_carry__6_n_2\,
      CO(0) => \rx_index0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \rx_index_reg_n_0_[30]\,
      DI(0) => \rx_index_reg_n_0_[29]\,
      O(3) => \NLW_rx_index0_carry__6_O_UNCONNECTED\(3),
      O(2) => \rx_index0_carry__6_n_5\,
      O(1) => \rx_index0_carry__6_n_6\,
      O(0) => \rx_index0_carry__6_n_7\,
      S(3) => '0',
      S(2) => \rx_index0_carry__6_i_1__1_n_0\,
      S(1) => \rx_index0_carry__6_i_2__1_n_0\,
      S(0) => \rx_index0_carry__6_i_3__1_n_0\
    );
\rx_index0_carry__6_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[31]\,
      O => \rx_index0_carry__6_i_1__1_n_0\
    );
\rx_index0_carry__6_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[30]\,
      O => \rx_index0_carry__6_i_2__1_n_0\
    );
\rx_index0_carry__6_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[29]\,
      O => \rx_index0_carry__6_i_3__1_n_0\
    );
\rx_index0_carry_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[4]\,
      O => \rx_index0_carry_i_1__1_n_0\
    );
\rx_index0_carry_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[3]\,
      O => \rx_index0_carry_i_2__1_n_0\
    );
\rx_index0_carry_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[2]\,
      O => \rx_index0_carry_i_3__1_n_0\
    );
\rx_index0_carry_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[1]\,
      O => \rx_index0_carry_i_4__1_n_0\
    );
\rx_index[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      O => \rx_index[0]_i_1__1_n_0\
    );
\rx_index[31]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[18]\,
      I1 => \rx_index_reg_n_0_[20]\,
      I2 => \rx_index_reg_n_0_[19]\,
      O => \rx_index[31]_i_10__1_n_0\
    );
\rx_index[31]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000000040"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => \rx_index[31]_i_3__1_n_0\,
      I5 => \rx_index[31]_i_4__1_n_0\,
      O => \rx_index[31]_i_1__1_n_0\
    );
\rx_index[31]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140014000000140"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => \rx_index[31]_i_3__1_n_0\,
      I5 => \rx_index[31]_i_4__1_n_0\,
      O => \rx_index[31]_i_2__1_n_0\
    );
\rx_index[31]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \rx_index_reg_n_0_[6]\,
      I1 => \rx_index_reg_n_0_[5]\,
      I2 => \rx_index_reg_n_0_[2]\,
      I3 => \rx_index[31]_i_5__1_n_0\,
      I4 => \rx_index[31]_i_6__1_n_0\,
      I5 => \rx_index[31]_i_7__1_n_0\,
      O => \rx_index[31]_i_3__1_n_0\
    );
\rx_index[31]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index[31]_i_8__1_n_0\,
      I1 => \rx_index_reg_n_0_[16]\,
      I2 => \rx_index_reg_n_0_[17]\,
      I3 => \rx_index_reg_n_0_[23]\,
      I4 => \rx_index_reg_n_0_[21]\,
      I5 => \rx_index[31]_i_9__1_n_0\,
      O => \rx_index[31]_i_4__1_n_0\
    );
\rx_index[31]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rx_index_reg_n_0_[12]\,
      I1 => \rx_index_reg_n_0_[11]\,
      I2 => \rx_index_reg_n_0_[10]\,
      I3 => \rx_index_reg_n_0_[9]\,
      O => \rx_index[31]_i_5__1_n_0\
    );
\rx_index[31]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rx_index_reg_n_0_[0]\,
      I1 => \rx_index_reg_n_0_[1]\,
      I2 => \rx_index_reg_n_0_[31]\,
      I3 => \rx_index_reg_n_0_[15]\,
      O => \rx_index[31]_i_6__1_n_0\
    );
\rx_index[31]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rx_index_reg_n_0_[13]\,
      I1 => \rx_index_reg_n_0_[14]\,
      I2 => \rx_index_reg_n_0_[7]\,
      I3 => \rx_index_reg_n_0_[8]\,
      I4 => \rx_index_reg_n_0_[4]\,
      I5 => \rx_index_reg_n_0_[3]\,
      O => \rx_index[31]_i_7__1_n_0\
    );
\rx_index[31]_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[24]\,
      I1 => \rx_index_reg_n_0_[22]\,
      I2 => \rx_index_reg_n_0_[25]\,
      I3 => \rx_index_reg_n_0_[26]\,
      I4 => \rx_index_reg_n_0_[27]\,
      O => \rx_index[31]_i_8__1_n_0\
    );
\rx_index[31]_i_9__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \rx_index_reg_n_0_[30]\,
      I2 => \rx_index_reg_n_0_[29]\,
      I3 => \rx_index_reg_n_0_[28]\,
      I4 => \rx_index[31]_i_10__1_n_0\,
      O => \rx_index[31]_i_9__1_n_0\
    );
\rx_index_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index[0]_i_1__1_n_0\,
      Q => \rx_index_reg_n_0_[0]\,
      S => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__1_n_6\,
      Q => \rx_index_reg_n_0_[10]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__1_n_5\,
      Q => \rx_index_reg_n_0_[11]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__1_n_4\,
      Q => \rx_index_reg_n_0_[12]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__2_n_7\,
      Q => \rx_index_reg_n_0_[13]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__2_n_6\,
      Q => \rx_index_reg_n_0_[14]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__2_n_5\,
      Q => \rx_index_reg_n_0_[15]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__2_n_4\,
      Q => \rx_index_reg_n_0_[16]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__3_n_7\,
      Q => \rx_index_reg_n_0_[17]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__3_n_6\,
      Q => \rx_index_reg_n_0_[18]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__3_n_5\,
      Q => \rx_index_reg_n_0_[19]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => rx_index0_carry_n_7,
      Q => \rx_index_reg_n_0_[1]\,
      S => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__3_n_4\,
      Q => \rx_index_reg_n_0_[20]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__4_n_7\,
      Q => \rx_index_reg_n_0_[21]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__4_n_6\,
      Q => \rx_index_reg_n_0_[22]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__4_n_5\,
      Q => \rx_index_reg_n_0_[23]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__4_n_4\,
      Q => \rx_index_reg_n_0_[24]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__5_n_7\,
      Q => \rx_index_reg_n_0_[25]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__5_n_6\,
      Q => \rx_index_reg_n_0_[26]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__5_n_5\,
      Q => \rx_index_reg_n_0_[27]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__5_n_4\,
      Q => \rx_index_reg_n_0_[28]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__6_n_7\,
      Q => \rx_index_reg_n_0_[29]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => rx_index0_carry_n_6,
      Q => \rx_index_reg_n_0_[2]\,
      S => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__6_n_6\,
      Q => \rx_index_reg_n_0_[30]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__6_n_5\,
      Q => \rx_index_reg_n_0_[31]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => rx_index0_carry_n_5,
      Q => \rx_index_reg_n_0_[3]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => rx_index0_carry_n_4,
      Q => \rx_index_reg_n_0_[4]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__0_n_7\,
      Q => \rx_index_reg_n_0_[5]\,
      S => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__0_n_6\,
      Q => \rx_index_reg_n_0_[6]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__0_n_5\,
      Q => \rx_index_reg_n_0_[7]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__0_n_4\,
      Q => \rx_index_reg_n_0_[8]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\rx_index_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \rx_index[31]_i_2__1_n_0\,
      D => \rx_index0_carry__1_n_7\,
      Q => \rx_index_reg_n_0_[9]\,
      R => \rx_index[31]_i_1__1_n_0\
    );
\s_data_ctrl1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_data_ctrl_tristate_oe_reg_0\,
      I1 => s_data_ctrl1_reg_0,
      O => s_data_ctrl
    );
s_data_ctrl1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_ctrl,
      Q => T,
      R => '0'
    );
s_data_ctrl_tristate_oe_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_ctrl_tristate_oe_reg_1,
      Q => \^s_data_ctrl_tristate_oe_reg_0\,
      R => '0'
    );
s_data_in_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_in1,
      Q => s_data_in_reg_n_0,
      R => '0'
    );
s_data_out1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_out_reg_n_0,
      Q => I,
      R => '0'
    );
\s_data_out_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => s_data_out_reg_n_0,
      O => \s_data_out_i_1__1_n_0\
    );
s_data_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_data_out_i_1__1_n_0\,
      Q => s_data_out_reg_n_0,
      R => '0'
    );
\state_am2302[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0EFE0"
    )
        port map (
      I0 => \state_am2302[0]_i_2__1_n_0\,
      I1 => \state_am2302[3]_i_6__1_n_0\,
      I2 => \state_am2302[3]_i_7__1_n_0\,
      I3 => \state_am2302[3]_i_8__1_n_0\,
      I4 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[0]_i_1__1_n_0\
    );
\state_am2302[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FF0100"
    )
        port map (
      I0 => \state_am2302[3]_i_10__1_n_0\,
      I1 => \state_am2302[3]_i_11__1_n_0\,
      I2 => \state_am2302[3]_i_12__1_n_0\,
      I3 => \state_am2302[3]_i_13__1_n_0\,
      I4 => \state_am2302[3]_i_14__1_n_0\,
      I5 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[0]_i_2__1_n_0\
    );
\state_am2302[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFE00FA00FA00"
    )
        port map (
      I0 => \state_am2302[1]_i_2__1_n_0\,
      I1 => \state_am2302[3]_i_6__1_n_0\,
      I2 => \state_am2302[1]_i_3__1_n_0\,
      I3 => \state_am2302[3]_i_7__1_n_0\,
      I4 => \state_am2302[3]_i_8__1_n_0\,
      I5 => \state_am2302[1]_i_4__1_n_0\,
      O => \state_am2302[1]_i_1__1_n_0\
    );
\state_am2302[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0802A0A0"
    )
        port map (
      I0 => \state_am2302[3]_i_14__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[1]_i_2__1_n_0\
    );
\state_am2302[1]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100002210000020"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \state_am2302[3]_i_10__1_n_0\,
      I3 => \^state_am2302_reg[1]_0\,
      I4 => \^state_am2302_reg[0]_0\,
      I5 => \state_am2302[3]_i_12__1_n_0\,
      O => \state_am2302[1]_i_3__1_n_0\
    );
\state_am2302[1]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      O => \state_am2302[1]_i_4__1_n_0\
    );
\state_am2302[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFE00FA00FA00"
    )
        port map (
      I0 => \state_am2302[2]_i_2__1_n_0\,
      I1 => \state_am2302[3]_i_6__1_n_0\,
      I2 => \state_am2302[2]_i_3__1_n_0\,
      I3 => \state_am2302[3]_i_7__1_n_0\,
      I4 => \state_am2302[3]_i_8__1_n_0\,
      I5 => \state_am2302[2]_i_4__1_n_0\,
      O => \state_am2302[2]_i_1__1_n_0\
    );
\state_am2302[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0880A800"
    )
        port map (
      I0 => \state_am2302[3]_i_14__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[2]_i_2__1_n_0\
    );
\state_am2302[2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000500A00005008"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \state_am2302[3]_i_10__1_n_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[0]_0\,
      I4 => \^state_am2302_reg[2]_0\,
      I5 => \state_am2302[3]_i_12__1_n_0\,
      O => \state_am2302[2]_i_3__1_n_0\
    );
\state_am2302[2]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      O => \state_am2302[2]_i_4__1_n_0\
    );
\state_am2302[3]_i_10__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state_am2302[3]_i_20__1_n_0\,
      I1 => \state_am2302[3]_i_21__1_n_0\,
      I2 => \rx_index_reg_n_0_[1]\,
      I3 => \rx_index_reg_n_0_[2]\,
      I4 => \rx_index_reg_n_0_[0]\,
      I5 => \state_am2302[3]_i_22__1_n_0\,
      O => \state_am2302[3]_i_10__1_n_0\
    );
\state_am2302[3]_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"453D"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      O => \state_am2302[3]_i_11__1_n_0\
    );
\state_am2302[3]_i_12__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[31]\,
      I1 => \rx_index_reg_n_0_[30]\,
      I2 => \rx_index_reg_n_0_[29]\,
      I3 => \rx_index_reg_n_0_[27]\,
      I4 => \rx_index_reg_n_0_[28]\,
      O => \state_am2302[3]_i_12__1_n_0\
    );
\state_am2302[3]_i_13__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"032C"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[2]_0\,
      I2 => \^state_am2302_reg[1]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      O => \state_am2302[3]_i_13__1_n_0\
    );
\state_am2302[3]_i_14__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAC"
    )
        port map (
      I0 => \rx_data[31]_i_4__1_n_0\,
      I1 => \state_am2302[3]_i_23__1_n_0\,
      I2 => \state_am2302[3]_i_11__1_n_0\,
      I3 => \rx_data[39]_i_2__1_n_0\,
      O => \state_am2302[3]_i_14__1_n_0\
    );
\state_am2302[3]_i_15__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[7]\,
      I1 => \plusOp_inferred__3/i___2_carry__0_n_4\,
      I2 => \rx_data_reg_n_0_[6]\,
      I3 => \plusOp_inferred__3/i___2_carry__0_n_5\,
      O => \state_am2302[3]_i_15__1_n_0\
    );
\state_am2302[3]_i_16__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[5]\,
      I1 => \plusOp_inferred__3/i___2_carry__0_n_6\,
      I2 => \rx_data_reg_n_0_[2]\,
      I3 => \plusOp_inferred__3/i___2_carry_n_5\,
      O => \state_am2302[3]_i_16__1_n_0\
    );
\state_am2302[3]_i_17__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[1]\,
      I1 => \plusOp_inferred__3/i___2_carry_n_6\,
      I2 => \rx_data_reg_n_0_[0]\,
      I3 => \plusOp_inferred__3/i___2_carry_n_7\,
      O => \state_am2302[3]_i_17__1_n_0\
    );
\state_am2302[3]_i_18__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \rx_data_reg_n_0_[4]\,
      I1 => \plusOp_inferred__3/i___2_carry__0_n_7\,
      I2 => \rx_data_reg_n_0_[3]\,
      I3 => \plusOp_inferred__3/i___2_carry_n_4\,
      O => \state_am2302[3]_i_18__1_n_0\
    );
\state_am2302[3]_i_19__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003333322"
    )
        port map (
      I0 => \us_count[7]_i_7__1_n_0\,
      I1 => \state_am2302[3]_i_24__1_n_0\,
      I2 => \state_am2302[3]_i_25__1_n_0\,
      I3 => \us_count_reg_n_0_[3]\,
      I4 => \us_count_reg_n_0_[4]\,
      I5 => \us_count_reg_n_0_[5]\,
      O => \state_am2302[3]_i_19__1_n_0\
    );
\state_am2302[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAFAFAEEEEAAEE"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \state_am2302[3]_i_3__1_n_0\,
      I2 => \state_am2302[3]_i_4__1_n_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => s_data_in_reg_n_0,
      I5 => \^state_am2302_reg[0]_0\,
      O => \state_am2302[3]_i_1__1_n_0\
    );
\state_am2302[3]_i_20__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[4]\,
      I1 => \rx_index_reg_n_0_[5]\,
      I2 => \rx_index_reg_n_0_[3]\,
      I3 => \rx_index_reg_n_0_[7]\,
      I4 => \rx_index_reg_n_0_[8]\,
      I5 => \rx_index_reg_n_0_[6]\,
      O => \state_am2302[3]_i_20__1_n_0\
    );
\state_am2302[3]_i_21__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[25]\,
      I1 => \rx_index_reg_n_0_[26]\,
      I2 => \rx_index_reg_n_0_[24]\,
      I3 => \state_am2302[3]_i_26__1_n_0\,
      O => \state_am2302[3]_i_21__1_n_0\
    );
\state_am2302[3]_i_22__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFFFE"
    )
        port map (
      I0 => \state_am2302[3]_i_27__1_n_0\,
      I1 => \state_am2302[3]_i_28__1_n_0\,
      I2 => \rx_index_reg_n_0_[23]\,
      I3 => \rx_index_reg_n_0_[21]\,
      I4 => \rx_index_reg_n_0_[22]\,
      I5 => \state_am2302[3]_i_29__1_n_0\,
      O => \state_am2302[3]_i_22__1_n_0\
    );
\state_am2302[3]_i_23__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0C080A"
    )
        port map (
      I0 => \state_am2302[3]_i_30__1_n_0\,
      I1 => \state_am2302[3]_i_31__1_n_0\,
      I2 => \us_count_reg_n_0_[7]\,
      I3 => \us_count_reg_n_0_[5]\,
      I4 => \us_count_reg_n_0_[6]\,
      O => \state_am2302[3]_i_23__1_n_0\
    );
\state_am2302[3]_i_24__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \us_count_reg_n_0_[7]\,
      I1 => \us_count_reg_n_0_[6]\,
      O => \state_am2302[3]_i_24__1_n_0\
    );
\state_am2302[3]_i_25__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \us_count_reg_n_0_[2]\,
      I1 => \us_count_reg_n_0_[1]\,
      O => \state_am2302[3]_i_25__1_n_0\
    );
\state_am2302[3]_i_26__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[17]\,
      I1 => \rx_index_reg_n_0_[16]\,
      I2 => \rx_index_reg_n_0_[23]\,
      I3 => \rx_index_reg_n_0_[22]\,
      O => \state_am2302[3]_i_26__1_n_0\
    );
\state_am2302[3]_i_27__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[10]\,
      I1 => \rx_index_reg_n_0_[11]\,
      I2 => \rx_index_reg_n_0_[9]\,
      I3 => \rx_index_reg_n_0_[13]\,
      I4 => \rx_index_reg_n_0_[14]\,
      I5 => \rx_index_reg_n_0_[12]\,
      O => \state_am2302[3]_i_27__1_n_0\
    );
\state_am2302[3]_i_28__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rx_index_reg_n_0_[19]\,
      I1 => \rx_index_reg_n_0_[20]\,
      O => \state_am2302[3]_i_28__1_n_0\
    );
\state_am2302[3]_i_29__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \rx_index_reg_n_0_[17]\,
      I1 => \rx_index_reg_n_0_[15]\,
      I2 => \rx_index_reg_n_0_[16]\,
      I3 => \rx_index_reg_n_0_[20]\,
      I4 => \rx_index_reg_n_0_[18]\,
      I5 => \rx_index_reg_n_0_[19]\,
      O => \state_am2302[3]_i_29__1_n_0\
    );
\state_am2302[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFE0A0A0"
    )
        port map (
      I0 => \state_am2302[3]_i_5__1_n_0\,
      I1 => \state_am2302[3]_i_6__1_n_0\,
      I2 => \state_am2302[3]_i_7__1_n_0\,
      I3 => \state_am2302[3]_i_8__1_n_0\,
      I4 => \state_am2302[3]_i_9__1_n_0\,
      O => \state_am2302[3]_i_2__1_n_0\
    );
\state_am2302[3]_i_30__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => \us_count_reg_n_0_[5]\,
      I1 => \us_count_reg_n_0_[4]\,
      I2 => \us_count_reg_n_0_[3]\,
      I3 => \us_count_reg_n_0_[1]\,
      I4 => \us_count_reg_n_0_[2]\,
      I5 => \us_count_reg_n_0_[0]\,
      O => \state_am2302[3]_i_30__1_n_0\
    );
\state_am2302[3]_i_31__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000070FFFFF"
    )
        port map (
      I0 => \us_count_reg_n_0_[1]\,
      I1 => \us_count_reg_n_0_[0]\,
      I2 => \us_count_reg_n_0_[3]\,
      I3 => \us_count_reg_n_0_[2]\,
      I4 => \us_count_reg_n_0_[4]\,
      I5 => \us_count_reg_n_0_[6]\,
      O => \state_am2302[3]_i_31__1_n_0\
    );
\state_am2302[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAFAABBBBBBBB"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \ltOp_inferred__0/i__carry__2_n_3\,
      I2 => \us_count[7]_i_4__1_n_0\,
      I3 => clk_1ust_reg_n_0,
      I4 => clk_1us_reg_n_0,
      I5 => \^state_am2302_reg[1]_0\,
      O => \state_am2302[3]_i_3__1_n_0\
    );
\state_am2302[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FFF5F5F3F3F3F3"
    )
        port map (
      I0 => s_data_in_reg_n_0,
      I1 => \ltOp_carry__2_n_2\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \us_count[7]_i_5__1_n_0\,
      I4 => \us_count[7]_i_6__1_n_0\,
      I5 => \^state_am2302_reg[1]_0\,
      O => \state_am2302[3]_i_4__1_n_0\
    );
\state_am2302[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF010000000000"
    )
        port map (
      I0 => \state_am2302[3]_i_10__1_n_0\,
      I1 => \state_am2302[3]_i_11__1_n_0\,
      I2 => \state_am2302[3]_i_12__1_n_0\,
      I3 => \state_am2302[3]_i_13__1_n_0\,
      I4 => \state_am2302[3]_i_14__1_n_0\,
      I5 => \state_am2302[3]_i_9__1_n_0\,
      O => \state_am2302[3]_i_5__1_n_0\
    );
\state_am2302[3]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \state_am2302[3]_i_13__1_n_0\,
      I1 => \state_am2302[3]_i_15__1_n_0\,
      I2 => \state_am2302[3]_i_16__1_n_0\,
      I3 => \state_am2302[3]_i_17__1_n_0\,
      I4 => \state_am2302[3]_i_18__1_n_0\,
      I5 => \state_am2302[3]_i_11__1_n_0\,
      O => \state_am2302[3]_i_6__1_n_0\
    );
\state_am2302[3]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      O => \state_am2302[3]_i_7__1_n_0\
    );
\state_am2302[3]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14B7049515F705D5"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      I4 => \state_am2302[3]_i_19__1_n_0\,
      I5 => s_data_in_reg_n_0,
      O => \state_am2302[3]_i_8__1_n_0\
    );
\state_am2302[3]_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      O => \state_am2302[3]_i_9__1_n_0\
    );
\state_am2302_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1__1_n_0\,
      D => \state_am2302[0]_i_1__1_n_0\,
      Q => \^state_am2302_reg[0]_0\,
      R => '0'
    );
\state_am2302_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1__1_n_0\,
      D => \state_am2302[1]_i_1__1_n_0\,
      Q => \^state_am2302_reg[1]_0\,
      R => '0'
    );
\state_am2302_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1__1_n_0\,
      D => \state_am2302[2]_i_1__1_n_0\,
      Q => \^state_am2302_reg[2]_0\,
      R => '0'
    );
\state_am2302_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state_am2302[3]_i_1__1_n_0\,
      D => \state_am2302[3]_i_2__1_n_0\,
      Q => \^state_am2302_reg[3]_0\,
      R => '0'
    );
\status[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"307F7F7F30000000"
    )
        port map (
      I0 => \status[0]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \status[0]_i_3__1_n_0\,
      I4 => \status[0]_i_4__1_n_0\,
      I5 => \^status_reg[0]_0\,
      O => \status[0]_i_1_n_0\
    );
\status[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \state_am2302[3]_i_15__1_n_0\,
      I1 => \state_am2302[3]_i_16__1_n_0\,
      I2 => \state_am2302[3]_i_17__1_n_0\,
      I3 => \state_am2302[3]_i_18__1_n_0\,
      I4 => \^state_am2302_reg[1]_0\,
      I5 => \^state_am2302_reg[2]_0\,
      O => \status[0]_i_2__1_n_0\
    );
\status[0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0040404040"
    )
        port map (
      I0 => \us_count[7]_i_5__1_n_0\,
      I1 => s_data_in_reg_n_0,
      I2 => \us_count[7]_i_6__1_n_0\,
      I3 => \status[2]_i_6__1_n_0\,
      I4 => \status[2]_i_5__1_n_0\,
      I5 => \status[0]_i_5__1_n_0\,
      O => \status[0]_i_3__1_n_0\
    );
\status[0]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \^state_am2302_reg[3]_0\,
      O => \status[0]_i_4__1_n_0\
    );
\status[0]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      O => \status[0]_i_5__1_n_0\
    );
\status[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333F3FF33330100"
    )
        port map (
      I0 => \status[2]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \status[2]_i_3__1_n_0\,
      I4 => \status[2]_i_4__1_n_0\,
      I5 => \^status_reg[1]_0\,
      O => \status[1]_i_1_n_0\
    );
\status[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C3F3FFC3C30100"
    )
        port map (
      I0 => \status[2]_i_2__1_n_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \status[2]_i_3__1_n_0\,
      I4 => \status[2]_i_4__1_n_0\,
      I5 => \^status_reg[2]_0\,
      O => \status[2]_i_1_n_0\
    );
\status[2]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \state_am2302[3]_i_15__1_n_0\,
      I1 => \state_am2302[3]_i_16__1_n_0\,
      I2 => \state_am2302[3]_i_17__1_n_0\,
      I3 => \state_am2302[3]_i_18__1_n_0\,
      O => \status[2]_i_2__1_n_0\
    );
\status[2]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[0]_0\,
      O => \status[2]_i_3__1_n_0\
    );
\status[2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2A2A200"
    )
        port map (
      I0 => \status[0]_i_4__1_n_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => \status[2]_i_5__1_n_0\,
      I4 => \status[2]_i_6__1_n_0\,
      I5 => \status[2]_i_7__1_n_0\,
      O => \status[2]_i_4__1_n_0\
    );
\status[2]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^state_am2302_reg[1]_0\,
      I1 => s_data_in_reg_n_0,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \state_am2302[3]_i_23__1_n_0\,
      O => \status[2]_i_5__1_n_0\
    );
\status[2]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001100000F0F00"
    )
        port map (
      I0 => \rx_data[31]_i_4__1_n_0\,
      I1 => \rx_data[39]_i_2__1_n_0\,
      I2 => \state_am2302[3]_i_19__1_n_0\,
      I3 => \^state_am2302_reg[0]_0\,
      I4 => s_data_in_reg_n_0,
      I5 => \^state_am2302_reg[1]_0\,
      O => \status[2]_i_6__1_n_0\
    );
\status[2]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004400000"
    )
        port map (
      I0 => \^state_am2302_reg[2]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => clk_1ust_reg_n_0,
      I3 => clk_1us_reg_n_0,
      I4 => s_data_in_reg_n_0,
      I5 => \us_count[7]_i_5__1_n_0\,
      O => \status[2]_i_7__1_n_0\
    );
\status_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \status[0]_i_1_n_0\,
      Q => \^status_reg[0]_0\,
      R => '0'
    );
\status_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \status[1]_i_1_n_0\,
      Q => \^status_reg[1]_0\,
      R => '0'
    );
\status_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \status[2]_i_1_n_0\,
      Q => \^status_reg[2]_0\,
      R => '0'
    );
\us_cnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \us_cnt_reg__0\(0),
      O => \us_cnt[0]_i_1__1_n_0\
    );
\us_cnt[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \us_cnt_reg__0\(0),
      I1 => \us_cnt_reg__0\(1),
      O => \plusOp__1\(1)
    );
\us_cnt[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \us_cnt_reg__0\(0),
      I1 => \us_cnt_reg__0\(1),
      I2 => \us_cnt_reg__0\(2),
      O => \plusOp__1\(2)
    );
\us_cnt[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \us_cnt_reg__0\(1),
      I1 => \us_cnt_reg__0\(0),
      I2 => \us_cnt_reg__0\(2),
      I3 => \us_cnt_reg__0\(3),
      O => \plusOp__1\(3)
    );
\us_cnt[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \us_cnt_reg__0\(2),
      I1 => \us_cnt_reg__0\(0),
      I2 => \us_cnt_reg__0\(1),
      I3 => \us_cnt_reg__0\(3),
      I4 => \us_cnt_reg__0\(4),
      O => \plusOp__1\(4)
    );
\us_cnt[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \us_cnt_reg__0\(3),
      I1 => \us_cnt_reg__0\(1),
      I2 => \us_cnt_reg__0\(0),
      I3 => \us_cnt_reg__0\(2),
      I4 => \us_cnt_reg__0\(4),
      I5 => \us_cnt_reg__0\(5),
      O => \plusOp__1\(5)
    );
\us_cnt[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \us_cnt[7]_i_4__1_n_0\,
      I1 => \us_cnt_reg__0\(6),
      O => \plusOp__1\(6)
    );
\us_cnt[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => \us_cnt[7]_i_3__1_n_0\,
      I1 => \us_cnt_reg__0\(7),
      I2 => \us_cnt_reg__0\(6),
      O => \us_cnt[7]_i_1__1_n_0\
    );
\us_cnt[7]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \us_cnt[7]_i_4__1_n_0\,
      I1 => \us_cnt_reg__0\(6),
      I2 => \us_cnt_reg__0\(7),
      O => \plusOp__1\(7)
    );
\us_cnt[7]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777777F"
    )
        port map (
      I0 => \us_cnt_reg__0\(5),
      I1 => \us_cnt_reg__0\(4),
      I2 => \us_cnt_reg__0\(2),
      I3 => \us_cnt_reg__0\(3),
      I4 => \us_cnt_reg__0\(0),
      I5 => \us_cnt_reg__0\(1),
      O => \us_cnt[7]_i_3__1_n_0\
    );
\us_cnt[7]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \us_cnt_reg__0\(5),
      I1 => \us_cnt_reg__0\(3),
      I2 => \us_cnt_reg__0\(1),
      I3 => \us_cnt_reg__0\(0),
      I4 => \us_cnt_reg__0\(2),
      I5 => \us_cnt_reg__0\(4),
      O => \us_cnt[7]_i_4__1_n_0\
    );
\us_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \us_cnt[0]_i_1__1_n_0\,
      Q => \us_cnt_reg__0\(0),
      R => \us_cnt[7]_i_1__1_n_0\
    );
\us_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__1\(1),
      Q => \us_cnt_reg__0\(1),
      R => \us_cnt[7]_i_1__1_n_0\
    );
\us_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__1\(2),
      Q => \us_cnt_reg__0\(2),
      R => \us_cnt[7]_i_1__1_n_0\
    );
\us_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__1\(3),
      Q => \us_cnt_reg__0\(3),
      R => \us_cnt[7]_i_1__1_n_0\
    );
\us_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__1\(4),
      Q => \us_cnt_reg__0\(4),
      R => \us_cnt[7]_i_1__1_n_0\
    );
\us_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__1\(5),
      Q => \us_cnt_reg__0\(5),
      R => \us_cnt[7]_i_1__1_n_0\
    );
\us_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__1\(6),
      Q => \us_cnt_reg__0\(6),
      R => \us_cnt[7]_i_1__1_n_0\
    );
\us_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp__1\(7),
      Q => \us_cnt_reg__0\(7),
      R => \us_cnt[7]_i_1__1_n_0\
    );
\us_count[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A5ACA50C"
    )
        port map (
      I0 => s_data_in_reg_n_0,
      I1 => \us_count[7]_i_4__1_n_0\,
      I2 => \^state_am2302_reg[0]_0\,
      I3 => \^state_am2302_reg[2]_0\,
      I4 => \us_count[7]_i_5__1_n_0\,
      I5 => \us_count_reg_n_0_[0]\,
      O => \us_count[0]_i_1__1_n_0\
    );
\us_count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \us_count_reg_n_0_[0]\,
      I1 => \us_count_reg_n_0_[1]\,
      O => \us_count[1]_i_1__1_n_0\
    );
\us_count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \us_count_reg_n_0_[1]\,
      I1 => \us_count_reg_n_0_[0]\,
      I2 => \us_count_reg_n_0_[2]\,
      O => \us_count[2]_i_1__1_n_0\
    );
\us_count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \us_count_reg_n_0_[0]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[2]\,
      I3 => \us_count_reg_n_0_[3]\,
      O => \us_count[3]_i_1__1_n_0\
    );
\us_count[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \us_count_reg_n_0_[2]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[0]\,
      I3 => \us_count_reg_n_0_[3]\,
      I4 => \us_count_reg_n_0_[4]\,
      O => \us_count[4]_i_1__1_n_0\
    );
\us_count[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \us_count_reg_n_0_[3]\,
      I1 => \us_count_reg_n_0_[0]\,
      I2 => \us_count_reg_n_0_[1]\,
      I3 => \us_count_reg_n_0_[2]\,
      I4 => \us_count_reg_n_0_[4]\,
      I5 => \us_count_reg_n_0_[5]\,
      O => \us_count[5]_i_1__1_n_0\
    );
\us_count[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \us_count_reg_n_0_[4]\,
      I1 => \us_count_reg_n_0_[2]\,
      I2 => \us_count[6]_i_2__1_n_0\,
      I3 => \us_count_reg_n_0_[3]\,
      I4 => \us_count_reg_n_0_[5]\,
      I5 => \us_count_reg_n_0_[6]\,
      O => \us_count[6]_i_1__1_n_0\
    );
\us_count[6]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \us_count_reg_n_0_[0]\,
      I1 => \us_count_reg_n_0_[1]\,
      O => \us_count[6]_i_2__1_n_0\
    );
\us_count[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2288220A2288AA0A"
    )
        port map (
      I0 => us_count,
      I1 => s_data_in_reg_n_0,
      I2 => \us_count[7]_i_4__1_n_0\,
      I3 => \^state_am2302_reg[0]_0\,
      I4 => \^state_am2302_reg[2]_0\,
      I5 => \us_count[7]_i_5__1_n_0\,
      O => \us_count[7]_i_1__1_n_0\
    );
\us_count[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545400545000"
    )
        port map (
      I0 => \^state_am2302_reg[3]_0\,
      I1 => \^state_am2302_reg[1]_0\,
      I2 => \^state_am2302_reg[2]_0\,
      I3 => s_data_in_reg_n_0,
      I4 => \^state_am2302_reg[0]_0\,
      I5 => \us_count[7]_i_6__1_n_0\,
      O => us_count
    );
\us_count[7]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \us_count_reg_n_0_[5]\,
      I1 => \us_count_reg_n_0_[3]\,
      I2 => \us_count[7]_i_7__1_n_0\,
      I3 => \us_count_reg_n_0_[4]\,
      I4 => \us_count_reg_n_0_[6]\,
      I5 => \us_count_reg_n_0_[7]\,
      O => \us_count[7]_i_3__1_n_0\
    );
\us_count[7]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => \us_count[7]_i_8__1_n_0\,
      I1 => \us_count_reg_n_0_[4]\,
      I2 => \us_count_reg_n_0_[5]\,
      I3 => \us_count_reg_n_0_[6]\,
      I4 => \us_count_reg_n_0_[7]\,
      O => \us_count[7]_i_4__1_n_0\
    );
\us_count[7]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFFCFDF"
    )
        port map (
      I0 => \us_count_reg_n_0_[4]\,
      I1 => \us_count_reg_n_0_[7]\,
      I2 => \us_count_reg_n_0_[6]\,
      I3 => \us_count_reg_n_0_[5]\,
      I4 => \us_count[7]_i_8__1_n_0\,
      O => \us_count[7]_i_5__1_n_0\
    );
\us_count[7]_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_1us_reg_n_0,
      I1 => clk_1ust_reg_n_0,
      O => \us_count[7]_i_6__1_n_0\
    );
\us_count[7]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \us_count_reg_n_0_[2]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[0]\,
      O => \us_count[7]_i_7__1_n_0\
    );
\us_count[7]_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001F"
    )
        port map (
      I0 => \us_count_reg_n_0_[0]\,
      I1 => \us_count_reg_n_0_[1]\,
      I2 => \us_count_reg_n_0_[2]\,
      I3 => \us_count_reg_n_0_[3]\,
      O => \us_count[7]_i_8__1_n_0\
    );
\us_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[0]_i_1__1_n_0\,
      Q => \us_count_reg_n_0_[0]\,
      R => '0'
    );
\us_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[1]_i_1__1_n_0\,
      Q => \us_count_reg_n_0_[1]\,
      R => \us_count[7]_i_1__1_n_0\
    );
\us_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[2]_i_1__1_n_0\,
      Q => \us_count_reg_n_0_[2]\,
      R => \us_count[7]_i_1__1_n_0\
    );
\us_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[3]_i_1__1_n_0\,
      Q => \us_count_reg_n_0_[3]\,
      R => \us_count[7]_i_1__1_n_0\
    );
\us_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[4]_i_1__1_n_0\,
      Q => \us_count_reg_n_0_[4]\,
      R => \us_count[7]_i_1__1_n_0\
    );
\us_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[5]_i_1__1_n_0\,
      Q => \us_count_reg_n_0_[5]\,
      R => \us_count[7]_i_1__1_n_0\
    );
\us_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[6]_i_1__1_n_0\,
      Q => \us_count_reg_n_0_[6]\,
      R => \us_count[7]_i_1__1_n_0\
    );
\us_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => us_count,
      D => \us_count[7]_i_3__1_n_0\,
      Q => \us_count_reg_n_0_[7]\,
      R => \us_count[7]_i_1__1_n_0\
    );
\work_cnt[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^state_am2302_reg[0]_0\,
      I1 => \^state_am2302_reg[3]_0\,
      I2 => \ltOp_inferred__0/i__carry__2_n_3\,
      I3 => \^state_am2302_reg[1]_0\,
      I4 => \^state_am2302_reg[2]_0\,
      O => \work_cnt[0]_i_1__1_n_0\
    );
\work_cnt[0]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^work_cnt_reg\(0),
      O => \work_cnt[0]_i_3__1_n_0\
    );
\work_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[0]_i_2__1_n_7\,
      Q => \^work_cnt_reg\(0),
      R => '0'
    );
\work_cnt_reg[0]_i_2__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \work_cnt_reg[0]_i_2__1_n_0\,
      CO(2) => \work_cnt_reg[0]_i_2__1_n_1\,
      CO(1) => \work_cnt_reg[0]_i_2__1_n_2\,
      CO(0) => \work_cnt_reg[0]_i_2__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \work_cnt_reg[0]_i_2__1_n_4\,
      O(2) => \work_cnt_reg[0]_i_2__1_n_5\,
      O(1) => \work_cnt_reg[0]_i_2__1_n_6\,
      O(0) => \work_cnt_reg[0]_i_2__1_n_7\,
      S(3 downto 1) => \^work_cnt_reg\(3 downto 1),
      S(0) => \work_cnt[0]_i_3__1_n_0\
    );
\work_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[8]_i_1__1_n_5\,
      Q => \^work_cnt_reg\(10),
      R => '0'
    );
\work_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[8]_i_1__1_n_4\,
      Q => \^work_cnt_reg\(11),
      R => '0'
    );
\work_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[12]_i_1__1_n_7\,
      Q => \^work_cnt_reg\(12),
      R => '0'
    );
\work_cnt_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \work_cnt_reg[8]_i_1__1_n_0\,
      CO(3) => \NLW_work_cnt_reg[12]_i_1__1_CO_UNCONNECTED\(3),
      CO(2) => \work_cnt_reg[12]_i_1__1_n_1\,
      CO(1) => \work_cnt_reg[12]_i_1__1_n_2\,
      CO(0) => \work_cnt_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \work_cnt_reg[12]_i_1__1_n_4\,
      O(2) => \work_cnt_reg[12]_i_1__1_n_5\,
      O(1) => \work_cnt_reg[12]_i_1__1_n_6\,
      O(0) => \work_cnt_reg[12]_i_1__1_n_7\,
      S(3 downto 0) => \^work_cnt_reg\(15 downto 12)
    );
\work_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[12]_i_1__1_n_6\,
      Q => \^work_cnt_reg\(13),
      R => '0'
    );
\work_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[12]_i_1__1_n_5\,
      Q => \^work_cnt_reg\(14),
      R => '0'
    );
\work_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[12]_i_1__1_n_4\,
      Q => \^work_cnt_reg\(15),
      R => '0'
    );
\work_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[0]_i_2__1_n_6\,
      Q => \^work_cnt_reg\(1),
      R => '0'
    );
\work_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[0]_i_2__1_n_5\,
      Q => \^work_cnt_reg\(2),
      R => '0'
    );
\work_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[0]_i_2__1_n_4\,
      Q => \^work_cnt_reg\(3),
      R => '0'
    );
\work_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[4]_i_1__1_n_7\,
      Q => \^work_cnt_reg\(4),
      R => '0'
    );
\work_cnt_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \work_cnt_reg[0]_i_2__1_n_0\,
      CO(3) => \work_cnt_reg[4]_i_1__1_n_0\,
      CO(2) => \work_cnt_reg[4]_i_1__1_n_1\,
      CO(1) => \work_cnt_reg[4]_i_1__1_n_2\,
      CO(0) => \work_cnt_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \work_cnt_reg[4]_i_1__1_n_4\,
      O(2) => \work_cnt_reg[4]_i_1__1_n_5\,
      O(1) => \work_cnt_reg[4]_i_1__1_n_6\,
      O(0) => \work_cnt_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => \^work_cnt_reg\(7 downto 4)
    );
\work_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[4]_i_1__1_n_6\,
      Q => \^work_cnt_reg\(5),
      R => '0'
    );
\work_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[4]_i_1__1_n_5\,
      Q => \^work_cnt_reg\(6),
      R => '0'
    );
\work_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[4]_i_1__1_n_4\,
      Q => \^work_cnt_reg\(7),
      R => '0'
    );
\work_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[8]_i_1__1_n_7\,
      Q => \^work_cnt_reg\(8),
      R => '0'
    );
\work_cnt_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \work_cnt_reg[4]_i_1__1_n_0\,
      CO(3) => \work_cnt_reg[8]_i_1__1_n_0\,
      CO(2) => \work_cnt_reg[8]_i_1__1_n_1\,
      CO(1) => \work_cnt_reg[8]_i_1__1_n_2\,
      CO(0) => \work_cnt_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \work_cnt_reg[8]_i_1__1_n_4\,
      O(2) => \work_cnt_reg[8]_i_1__1_n_5\,
      O(1) => \work_cnt_reg[8]_i_1__1_n_6\,
      O(0) => \work_cnt_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => \^work_cnt_reg\(11 downto 8)
    );
\work_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \work_cnt[0]_i_1__1_n_0\,
      D => \work_cnt_reg[8]_i_1__1_n_6\,
      Q => \^work_cnt_reg\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0_S00_AXI is
  port (
    s_data_ctrl_tristate_oe_reg : out STD_LOGIC;
    s_data_ctrl_tristate_oe_reg_0 : out STD_LOGIC;
    s_data_ctrl_tristate_oe_reg_1 : out STD_LOGIC;
    \state_am2302__0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_am2302__1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_am2302__2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_am2302_reg[1]\ : out STD_LOGIC;
    \state_am2302_reg[1]_0\ : out STD_LOGIC;
    \state_am2302_reg[1]_1\ : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    AM2302_SDA_1_ctrl : out STD_LOGIC;
    AM2302_SDA_2_ctrl : out STD_LOGIC;
    AM2302_SDA_3_ctrl : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    AM2302_SDA_1 : inout STD_LOGIC;
    AM2302_SDA_2 : inout STD_LOGIC;
    AM2302_SDA_3 : inout STD_LOGIC;
    s_data_ctrl_tristate_oe_reg_2 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s_data_ctrl_tristate_oe_reg_3 : in STD_LOGIC;
    s_data_ctrl_tristate_oe_reg_4 : in STD_LOGIC;
    s_data_ctrl1_reg : in STD_LOGIC;
    s_data_ctrl1_reg_0 : in STD_LOGIC;
    s_data_ctrl1_reg_1 : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_wready0__0\ : STD_LOGIC;
  signal data7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data8 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fun_am2302_check_1_n_24 : STD_LOGIC;
  signal fun_am2302_check_1_n_25 : STD_LOGIC;
  signal fun_am2302_check_1_n_26 : STD_LOGIC;
  signal fun_am2302_check_1_n_27 : STD_LOGIC;
  signal fun_am2302_check_1_n_28 : STD_LOGIC;
  signal fun_am2302_check_1_n_29 : STD_LOGIC;
  signal fun_am2302_check_1_n_30 : STD_LOGIC;
  signal fun_am2302_check_1_n_31 : STD_LOGIC;
  signal fun_am2302_check_1_n_32 : STD_LOGIC;
  signal fun_am2302_check_1_n_33 : STD_LOGIC;
  signal fun_am2302_check_1_n_34 : STD_LOGIC;
  signal fun_am2302_check_1_n_35 : STD_LOGIC;
  signal fun_am2302_check_1_n_36 : STD_LOGIC;
  signal fun_am2302_check_2_n_21 : STD_LOGIC;
  signal fun_am2302_check_2_n_22 : STD_LOGIC;
  signal fun_am2302_check_2_n_23 : STD_LOGIC;
  signal fun_am2302_check_2_n_24 : STD_LOGIC;
  signal fun_am2302_check_2_n_25 : STD_LOGIC;
  signal fun_am2302_check_2_n_26 : STD_LOGIC;
  signal fun_am2302_check_2_n_27 : STD_LOGIC;
  signal fun_am2302_check_2_n_28 : STD_LOGIC;
  signal fun_am2302_check_2_n_29 : STD_LOGIC;
  signal fun_am2302_check_2_n_30 : STD_LOGIC;
  signal fun_am2302_check_2_n_31 : STD_LOGIC;
  signal fun_am2302_check_2_n_32 : STD_LOGIC;
  signal fun_am2302_check_2_n_33 : STD_LOGIC;
  signal fun_am2302_check_2_n_34 : STD_LOGIC;
  signal fun_am2302_check_2_n_35 : STD_LOGIC;
  signal fun_am2302_check_2_n_36 : STD_LOGIC;
  signal fun_am2302_check_2_n_38 : STD_LOGIC;
  signal fun_am2302_check_2_n_39 : STD_LOGIC;
  signal fun_am2302_check_2_n_40 : STD_LOGIC;
  signal fun_am2302_check_3_n_38 : STD_LOGIC;
  signal fun_am2302_check_3_n_39 : STD_LOGIC;
  signal fun_am2302_check_3_n_40 : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slv_reg_rden : STD_LOGIC;
  signal work_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal work_cnt_reg_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_awready0 : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of axi_wready0 : label is "soft_lutpair113";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88888888"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => aw_en_reg_n_0,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
axi_awready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \axi_awready0__0\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awready0__0\,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => \^s00_axi_wready\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(3),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^s00_axi_rvalid\,
      I2 => s00_axi_arvalid,
      I3 => \^s_axi_arready\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \axi_wready0__0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_wready0__0\,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
fun_am2302_check_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check
     port map (
      AM2302_SDA_1 => AM2302_SDA_1,
      AM2302_SDA_1_ctrl => AM2302_SDA_1_ctrl,
      D(18 downto 3) => reg_data_out(31 downto 16),
      D(2 downto 0) => reg_data_out(2 downto 0),
      Q(3 downto 0) => sel0(3 downto 0),
      \axi_araddr_reg[4]\ => fun_am2302_check_1_n_24,
      \axi_araddr_reg[4]_0\ => fun_am2302_check_1_n_25,
      \axi_araddr_reg[4]_1\ => fun_am2302_check_1_n_26,
      \axi_araddr_reg[4]_10\ => fun_am2302_check_1_n_35,
      \axi_araddr_reg[4]_11\ => fun_am2302_check_1_n_36,
      \axi_araddr_reg[4]_2\ => fun_am2302_check_1_n_27,
      \axi_araddr_reg[4]_3\ => fun_am2302_check_1_n_28,
      \axi_araddr_reg[4]_4\ => fun_am2302_check_1_n_29,
      \axi_araddr_reg[4]_5\ => fun_am2302_check_1_n_30,
      \axi_araddr_reg[4]_6\ => fun_am2302_check_1_n_31,
      \axi_araddr_reg[4]_7\ => fun_am2302_check_1_n_32,
      \axi_araddr_reg[4]_8\ => fun_am2302_check_1_n_33,
      \axi_araddr_reg[4]_9\ => fun_am2302_check_1_n_34,
      \axi_rdata_reg[0]\ => fun_am2302_check_2_n_21,
      \axi_rdata_reg[0]_0\ => \axi_rdata[2]_i_4_n_0\,
      \axi_rdata_reg[0]_1\ => fun_am2302_check_2_n_40,
      \axi_rdata_reg[10]\ => fun_am2302_check_2_n_31,
      \axi_rdata_reg[11]\ => fun_am2302_check_2_n_32,
      \axi_rdata_reg[12]\ => fun_am2302_check_2_n_33,
      \axi_rdata_reg[13]\ => fun_am2302_check_2_n_34,
      \axi_rdata_reg[14]\ => fun_am2302_check_2_n_35,
      \axi_rdata_reg[15]\ => fun_am2302_check_2_n_36,
      \axi_rdata_reg[1]\ => fun_am2302_check_2_n_22,
      \axi_rdata_reg[1]_0\ => fun_am2302_check_2_n_39,
      \axi_rdata_reg[2]\(2 downto 0) => data8(2 downto 0),
      \axi_rdata_reg[2]_0\ => fun_am2302_check_2_n_23,
      \axi_rdata_reg[2]_1\ => fun_am2302_check_2_n_38,
      \axi_rdata_reg[3]\ => fun_am2302_check_2_n_24,
      \axi_rdata_reg[4]\ => fun_am2302_check_2_n_25,
      \axi_rdata_reg[5]\ => fun_am2302_check_2_n_26,
      \axi_rdata_reg[6]\ => fun_am2302_check_2_n_27,
      \axi_rdata_reg[7]\ => fun_am2302_check_2_n_28,
      \axi_rdata_reg[8]\ => fun_am2302_check_2_n_29,
      \axi_rdata_reg[9]\ => fun_am2302_check_2_n_30,
      s00_axi_aclk => s00_axi_aclk,
      s_data_ctrl1_reg_0 => s_data_ctrl1_reg,
      s_data_ctrl_tristate_oe_reg_0 => s_data_ctrl_tristate_oe_reg,
      s_data_ctrl_tristate_oe_reg_1 => s_data_ctrl_tristate_oe_reg_2,
      \state_am2302_reg[0]_0\ => \state_am2302__0\(0),
      \state_am2302_reg[1]_0\ => \state_am2302_reg[1]\,
      \state_am2302_reg[2]_0\ => \state_am2302__0\(1),
      \state_am2302_reg[3]_0\ => \state_am2302__0\(2),
      work_cnt_reg(15 downto 0) => work_cnt_reg_0(15 downto 0),
      work_cnt_reg_0(15 downto 0) => work_cnt_reg(15 downto 0)
    );
fun_am2302_check_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_0
     port map (
      AM2302_SDA_2 => AM2302_SDA_2,
      AM2302_SDA_2_ctrl => AM2302_SDA_2_ctrl,
      Q(15 downto 0) => data7(15 downto 0),
      \am2302_humi_reg[0]_0\ => fun_am2302_check_2_n_21,
      \am2302_humi_reg[1]_0\ => fun_am2302_check_2_n_22,
      \am2302_humi_reg[2]_0\ => fun_am2302_check_2_n_23,
      \axi_araddr_reg[2]\ => fun_am2302_check_2_n_24,
      \axi_araddr_reg[2]_0\ => fun_am2302_check_2_n_25,
      \axi_araddr_reg[2]_1\ => fun_am2302_check_2_n_26,
      \axi_araddr_reg[2]_10\ => fun_am2302_check_2_n_35,
      \axi_araddr_reg[2]_11\ => fun_am2302_check_2_n_36,
      \axi_araddr_reg[2]_2\ => fun_am2302_check_2_n_27,
      \axi_araddr_reg[2]_3\ => fun_am2302_check_2_n_28,
      \axi_araddr_reg[2]_4\ => fun_am2302_check_2_n_29,
      \axi_araddr_reg[2]_5\ => fun_am2302_check_2_n_30,
      \axi_araddr_reg[2]_6\ => fun_am2302_check_2_n_31,
      \axi_araddr_reg[2]_7\ => fun_am2302_check_2_n_32,
      \axi_araddr_reg[2]_8\ => fun_am2302_check_2_n_33,
      \axi_araddr_reg[2]_9\ => fun_am2302_check_2_n_34,
      \axi_rdata[15]_i_2\(2 downto 0) => sel0(2 downto 0),
      \axi_rdata_reg[0]\ => fun_am2302_check_3_n_40,
      \axi_rdata_reg[1]\ => fun_am2302_check_3_n_39,
      \axi_rdata_reg[2]\ => fun_am2302_check_3_n_38,
      s00_axi_aclk => s00_axi_aclk,
      s_data_ctrl1_reg_0 => s_data_ctrl1_reg_0,
      s_data_ctrl_tristate_oe_reg_0 => s_data_ctrl_tristate_oe_reg_0,
      s_data_ctrl_tristate_oe_reg_1 => s_data_ctrl_tristate_oe_reg_3,
      \state_am2302_reg[0]_0\ => \state_am2302__1\(0),
      \state_am2302_reg[1]_0\ => \state_am2302_reg[1]_0\,
      \state_am2302_reg[2]_0\ => \state_am2302__1\(1),
      \state_am2302_reg[3]_0\ => \state_am2302__1\(2),
      \status_reg[0]_0\ => fun_am2302_check_2_n_40,
      \status_reg[1]_0\ => fun_am2302_check_2_n_39,
      \status_reg[2]_0\ => fun_am2302_check_2_n_38,
      work_cnt_reg(15 downto 0) => work_cnt_reg(15 downto 0)
    );
fun_am2302_check_3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_1
     port map (
      AM2302_SDA_3 => AM2302_SDA_3,
      AM2302_SDA_3_ctrl => AM2302_SDA_3_ctrl,
      D(12 downto 0) => reg_data_out(15 downto 3),
      Q(2 downto 0) => data8(2 downto 0),
      \am2302_temp_reg[15]_0\(15 downto 0) => data7(15 downto 0),
      \axi_rdata_reg[10]\ => fun_am2302_check_1_n_31,
      \axi_rdata_reg[11]\ => fun_am2302_check_1_n_32,
      \axi_rdata_reg[12]\ => fun_am2302_check_1_n_33,
      \axi_rdata_reg[13]\ => fun_am2302_check_1_n_34,
      \axi_rdata_reg[14]\ => fun_am2302_check_1_n_35,
      \axi_rdata_reg[15]\ => fun_am2302_check_1_n_36,
      \axi_rdata_reg[3]\(3 downto 0) => sel0(3 downto 0),
      \axi_rdata_reg[3]_0\ => fun_am2302_check_1_n_24,
      \axi_rdata_reg[4]\ => fun_am2302_check_1_n_25,
      \axi_rdata_reg[5]\ => fun_am2302_check_1_n_26,
      \axi_rdata_reg[6]\ => fun_am2302_check_1_n_27,
      \axi_rdata_reg[7]\ => fun_am2302_check_1_n_28,
      \axi_rdata_reg[8]\ => fun_am2302_check_1_n_29,
      \axi_rdata_reg[9]\ => fun_am2302_check_1_n_30,
      s00_axi_aclk => s00_axi_aclk,
      s_data_ctrl1_reg_0 => s_data_ctrl1_reg_1,
      s_data_ctrl_tristate_oe_reg_0 => s_data_ctrl_tristate_oe_reg_1,
      s_data_ctrl_tristate_oe_reg_1 => s_data_ctrl_tristate_oe_reg_4,
      \state_am2302_reg[0]_0\ => \state_am2302__2\(0),
      \state_am2302_reg[1]_0\ => \state_am2302_reg[1]_1\,
      \state_am2302_reg[2]_0\ => \state_am2302__2\(1),
      \state_am2302_reg[3]_0\ => \state_am2302__2\(2),
      \status_reg[0]_0\ => fun_am2302_check_3_n_40,
      \status_reg[1]_0\ => fun_am2302_check_3_n_39,
      \status_reg[2]_0\ => fun_am2302_check_3_n_38,
      work_cnt_reg(15 downto 0) => work_cnt_reg_0(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    AM2302_SDA_1_ctrl : out STD_LOGIC;
    AM2302_SDA_2_ctrl : out STD_LOGIC;
    AM2302_SDA_3_ctrl : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    AM2302_SDA_1 : inout STD_LOGIC;
    AM2302_SDA_2 : inout STD_LOGIC;
    AM2302_SDA_3 : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0 is
  signal AM2302_v1_0_S00_AXI_inst_n_0 : STD_LOGIC;
  signal AM2302_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal AM2302_v1_0_S00_AXI_inst_n_12 : STD_LOGIC;
  signal AM2302_v1_0_S00_AXI_inst_n_13 : STD_LOGIC;
  signal AM2302_v1_0_S00_AXI_inst_n_14 : STD_LOGIC;
  signal AM2302_v1_0_S00_AXI_inst_n_2 : STD_LOGIC;
  signal \s_data_ctrl1_i_3__0_n_0\ : STD_LOGIC;
  signal \s_data_ctrl1_i_3__1_n_0\ : STD_LOGIC;
  signal s_data_ctrl1_i_3_n_0 : STD_LOGIC;
  signal \s_data_ctrl1_reg_i_2__0_n_0\ : STD_LOGIC;
  signal \s_data_ctrl1_reg_i_2__1_n_0\ : STD_LOGIC;
  signal s_data_ctrl1_reg_i_2_n_0 : STD_LOGIC;
  signal \s_data_ctrl_tristate_oe_i_1__0_n_0\ : STD_LOGIC;
  signal \s_data_ctrl_tristate_oe_i_1__1_n_0\ : STD_LOGIC;
  signal s_data_ctrl_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal \state_am2302__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state_am2302__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state_am2302__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
AM2302_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0_S00_AXI
     port map (
      AM2302_SDA_1 => AM2302_SDA_1,
      AM2302_SDA_1_ctrl => AM2302_SDA_1_ctrl,
      AM2302_SDA_2 => AM2302_SDA_2,
      AM2302_SDA_2_ctrl => AM2302_SDA_2_ctrl,
      AM2302_SDA_3 => AM2302_SDA_3,
      AM2302_SDA_3_ctrl => AM2302_SDA_3_ctrl,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(3 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid,
      s_data_ctrl1_reg => s_data_ctrl1_reg_i_2_n_0,
      s_data_ctrl1_reg_0 => \s_data_ctrl1_reg_i_2__0_n_0\,
      s_data_ctrl1_reg_1 => \s_data_ctrl1_reg_i_2__1_n_0\,
      s_data_ctrl_tristate_oe_reg => AM2302_v1_0_S00_AXI_inst_n_0,
      s_data_ctrl_tristate_oe_reg_0 => AM2302_v1_0_S00_AXI_inst_n_1,
      s_data_ctrl_tristate_oe_reg_1 => AM2302_v1_0_S00_AXI_inst_n_2,
      s_data_ctrl_tristate_oe_reg_2 => s_data_ctrl_tristate_oe_i_1_n_0,
      s_data_ctrl_tristate_oe_reg_3 => \s_data_ctrl_tristate_oe_i_1__0_n_0\,
      s_data_ctrl_tristate_oe_reg_4 => \s_data_ctrl_tristate_oe_i_1__1_n_0\,
      \state_am2302__0\(2 downto 1) => \state_am2302__0\(3 downto 2),
      \state_am2302__0\(0) => \state_am2302__0\(0),
      \state_am2302__1\(2 downto 1) => \state_am2302__1\(3 downto 2),
      \state_am2302__1\(0) => \state_am2302__1\(0),
      \state_am2302__2\(2 downto 1) => \state_am2302__2\(3 downto 2),
      \state_am2302__2\(0) => \state_am2302__2\(0),
      \state_am2302_reg[1]\ => AM2302_v1_0_S00_AXI_inst_n_12,
      \state_am2302_reg[1]_0\ => AM2302_v1_0_S00_AXI_inst_n_13,
      \state_am2302_reg[1]_1\ => AM2302_v1_0_S00_AXI_inst_n_14
    );
s_data_ctrl1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0110"
    )
        port map (
      I0 => \state_am2302__0\(3),
      I1 => \state_am2302__0\(2),
      I2 => \state_am2302__0\(0),
      I3 => AM2302_v1_0_S00_AXI_inst_n_12,
      I4 => s_data_ctrl1_reg_i_2_n_0,
      O => s_data_ctrl1_i_3_n_0
    );
\s_data_ctrl1_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0110"
    )
        port map (
      I0 => \state_am2302__1\(3),
      I1 => \state_am2302__1\(2),
      I2 => \state_am2302__1\(0),
      I3 => AM2302_v1_0_S00_AXI_inst_n_13,
      I4 => \s_data_ctrl1_reg_i_2__0_n_0\,
      O => \s_data_ctrl1_i_3__0_n_0\
    );
\s_data_ctrl1_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0110"
    )
        port map (
      I0 => \state_am2302__2\(3),
      I1 => \state_am2302__2\(2),
      I2 => \state_am2302__2\(0),
      I3 => AM2302_v1_0_S00_AXI_inst_n_14,
      I4 => \s_data_ctrl1_reg_i_2__1_n_0\,
      O => \s_data_ctrl1_i_3__1_n_0\
    );
s_data_ctrl1_reg_i_2: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s_data_ctrl1_i_3_n_0,
      Q => s_data_ctrl1_reg_i_2_n_0,
      R => '0'
    );
\s_data_ctrl1_reg_i_2__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_data_ctrl1_i_3__0_n_0\,
      Q => \s_data_ctrl1_reg_i_2__0_n_0\,
      R => '0'
    );
\s_data_ctrl1_reg_i_2__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \s_data_ctrl1_i_3__1_n_0\,
      Q => \s_data_ctrl1_reg_i_2__1_n_0\,
      R => '0'
    );
s_data_ctrl_tristate_oe_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEE0100"
    )
        port map (
      I0 => \state_am2302__0\(3),
      I1 => \state_am2302__0\(2),
      I2 => \state_am2302__0\(0),
      I3 => AM2302_v1_0_S00_AXI_inst_n_12,
      I4 => AM2302_v1_0_S00_AXI_inst_n_0,
      O => s_data_ctrl_tristate_oe_i_1_n_0
    );
\s_data_ctrl_tristate_oe_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEE0100"
    )
        port map (
      I0 => \state_am2302__1\(3),
      I1 => \state_am2302__1\(2),
      I2 => \state_am2302__1\(0),
      I3 => AM2302_v1_0_S00_AXI_inst_n_13,
      I4 => AM2302_v1_0_S00_AXI_inst_n_1,
      O => \s_data_ctrl_tristate_oe_i_1__0_n_0\
    );
\s_data_ctrl_tristate_oe_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEE0100"
    )
        port map (
      I0 => \state_am2302__2\(3),
      I1 => \state_am2302__2\(2),
      I2 => \state_am2302__2\(0),
      I3 => AM2302_v1_0_S00_AXI_inst_n_14,
      I4 => AM2302_v1_0_S00_AXI_inst_n_2,
      O => \s_data_ctrl_tristate_oe_i_1__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    AM2302_SDA_1 : inout STD_LOGIC;
    AM2302_SDA_2 : inout STD_LOGIC;
    AM2302_SDA_3 : inout STD_LOGIC;
    AM2302_SDA_1_ctrl : out STD_LOGIC;
    AM2302_SDA_2_ctrl : out STD_LOGIC;
    AM2302_SDA_3_ctrl : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_AM2302_0_0,AM2302_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "AM2302_v1_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 9, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0
     port map (
      AM2302_SDA_1 => AM2302_SDA_1,
      AM2302_SDA_1_ctrl => AM2302_SDA_1_ctrl,
      AM2302_SDA_2 => AM2302_SDA_2,
      AM2302_SDA_2_ctrl => AM2302_SDA_2_ctrl,
      AM2302_SDA_3 => AM2302_SDA_3,
      AM2302_SDA_3_ctrl => AM2302_SDA_3_ctrl,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
