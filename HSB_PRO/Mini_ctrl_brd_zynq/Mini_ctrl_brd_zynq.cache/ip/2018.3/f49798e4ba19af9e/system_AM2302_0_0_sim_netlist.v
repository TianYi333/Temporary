// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu May 15 14:54:03 2025
// Host        : FXT333 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_AM2302_0_0_sim_netlist.v
// Design      : system_AM2302_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0
   (S_AXI_AWREADY,
    s00_axi_wready,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    AM2302_SDA_1_ctrl,
    AM2302_SDA_2_ctrl,
    AM2302_SDA_3_ctrl,
    s00_axi_bvalid,
    AM2302_SDA_1,
    AM2302_SDA_2,
    AM2302_SDA_3,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output s00_axi_wready;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output AM2302_SDA_1_ctrl;
  output AM2302_SDA_2_ctrl;
  output AM2302_SDA_3_ctrl;
  output s00_axi_bvalid;
  inout AM2302_SDA_1;
  inout AM2302_SDA_2;
  inout AM2302_SDA_3;
  input s00_axi_aclk;
  input [3:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire AM2302_SDA_1;
  wire AM2302_SDA_1_ctrl;
  wire AM2302_SDA_2;
  wire AM2302_SDA_2_ctrl;
  wire AM2302_SDA_3;
  wire AM2302_SDA_3_ctrl;
  wire AM2302_v1_0_S00_AXI_inst_n_0;
  wire AM2302_v1_0_S00_AXI_inst_n_1;
  wire AM2302_v1_0_S00_AXI_inst_n_12;
  wire AM2302_v1_0_S00_AXI_inst_n_13;
  wire AM2302_v1_0_S00_AXI_inst_n_14;
  wire AM2302_v1_0_S00_AXI_inst_n_2;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire s_data_ctrl1_i_3__0_n_0;
  wire s_data_ctrl1_i_3__1_n_0;
  wire s_data_ctrl1_i_3_n_0;
  wire s_data_ctrl1_reg_i_2__0_n_0;
  wire s_data_ctrl1_reg_i_2__1_n_0;
  wire s_data_ctrl1_reg_i_2_n_0;
  wire s_data_ctrl_tristate_oe_i_1__0_n_0;
  wire s_data_ctrl_tristate_oe_i_1__1_n_0;
  wire s_data_ctrl_tristate_oe_i_1_n_0;
  wire [3:0]state_am2302__0;
  wire [3:0]state_am2302__1;
  wire [3:0]state_am2302__2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0_S00_AXI AM2302_v1_0_S00_AXI_inst
       (.AM2302_SDA_1(AM2302_SDA_1),
        .AM2302_SDA_1_ctrl(AM2302_SDA_1_ctrl),
        .AM2302_SDA_2(AM2302_SDA_2),
        .AM2302_SDA_2_ctrl(AM2302_SDA_2_ctrl),
        .AM2302_SDA_3(AM2302_SDA_3),
        .AM2302_SDA_3_ctrl(AM2302_SDA_3_ctrl),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_data_ctrl1_reg(s_data_ctrl1_reg_i_2_n_0),
        .s_data_ctrl1_reg_0(s_data_ctrl1_reg_i_2__0_n_0),
        .s_data_ctrl1_reg_1(s_data_ctrl1_reg_i_2__1_n_0),
        .s_data_ctrl_tristate_oe_reg(AM2302_v1_0_S00_AXI_inst_n_0),
        .s_data_ctrl_tristate_oe_reg_0(AM2302_v1_0_S00_AXI_inst_n_1),
        .s_data_ctrl_tristate_oe_reg_1(AM2302_v1_0_S00_AXI_inst_n_2),
        .s_data_ctrl_tristate_oe_reg_2(s_data_ctrl_tristate_oe_i_1_n_0),
        .s_data_ctrl_tristate_oe_reg_3(s_data_ctrl_tristate_oe_i_1__0_n_0),
        .s_data_ctrl_tristate_oe_reg_4(s_data_ctrl_tristate_oe_i_1__1_n_0),
        .state_am2302__0({state_am2302__0[3:2],state_am2302__0[0]}),
        .state_am2302__1({state_am2302__1[3:2],state_am2302__1[0]}),
        .state_am2302__2({state_am2302__2[3:2],state_am2302__2[0]}),
        .\state_am2302_reg[1] (AM2302_v1_0_S00_AXI_inst_n_12),
        .\state_am2302_reg[1]_0 (AM2302_v1_0_S00_AXI_inst_n_13),
        .\state_am2302_reg[1]_1 (AM2302_v1_0_S00_AXI_inst_n_14));
  LUT5 #(
    .INIT(32'hFFFE0110)) 
    s_data_ctrl1_i_3
       (.I0(state_am2302__0[3]),
        .I1(state_am2302__0[2]),
        .I2(state_am2302__0[0]),
        .I3(AM2302_v1_0_S00_AXI_inst_n_12),
        .I4(s_data_ctrl1_reg_i_2_n_0),
        .O(s_data_ctrl1_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFE0110)) 
    s_data_ctrl1_i_3__0
       (.I0(state_am2302__1[3]),
        .I1(state_am2302__1[2]),
        .I2(state_am2302__1[0]),
        .I3(AM2302_v1_0_S00_AXI_inst_n_13),
        .I4(s_data_ctrl1_reg_i_2__0_n_0),
        .O(s_data_ctrl1_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hFFFE0110)) 
    s_data_ctrl1_i_3__1
       (.I0(state_am2302__2[3]),
        .I1(state_am2302__2[2]),
        .I2(state_am2302__2[0]),
        .I3(AM2302_v1_0_S00_AXI_inst_n_14),
        .I4(s_data_ctrl1_reg_i_2__1_n_0),
        .O(s_data_ctrl1_i_3__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    s_data_ctrl1_reg_i_2
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_ctrl1_i_3_n_0),
        .Q(s_data_ctrl1_reg_i_2_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    s_data_ctrl1_reg_i_2__0
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_ctrl1_i_3__0_n_0),
        .Q(s_data_ctrl1_reg_i_2__0_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    s_data_ctrl1_reg_i_2__1
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_ctrl1_i_3__1_n_0),
        .Q(s_data_ctrl1_reg_i_2__1_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEE0100)) 
    s_data_ctrl_tristate_oe_i_1
       (.I0(state_am2302__0[3]),
        .I1(state_am2302__0[2]),
        .I2(state_am2302__0[0]),
        .I3(AM2302_v1_0_S00_AXI_inst_n_12),
        .I4(AM2302_v1_0_S00_AXI_inst_n_0),
        .O(s_data_ctrl_tristate_oe_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFEE0100)) 
    s_data_ctrl_tristate_oe_i_1__0
       (.I0(state_am2302__1[3]),
        .I1(state_am2302__1[2]),
        .I2(state_am2302__1[0]),
        .I3(AM2302_v1_0_S00_AXI_inst_n_13),
        .I4(AM2302_v1_0_S00_AXI_inst_n_1),
        .O(s_data_ctrl_tristate_oe_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFEE0100)) 
    s_data_ctrl_tristate_oe_i_1__1
       (.I0(state_am2302__2[3]),
        .I1(state_am2302__2[2]),
        .I2(state_am2302__2[0]),
        .I3(AM2302_v1_0_S00_AXI_inst_n_14),
        .I4(AM2302_v1_0_S00_AXI_inst_n_2),
        .O(s_data_ctrl_tristate_oe_i_1__1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0_S00_AXI
   (s_data_ctrl_tristate_oe_reg,
    s_data_ctrl_tristate_oe_reg_0,
    s_data_ctrl_tristate_oe_reg_1,
    state_am2302__0,
    state_am2302__1,
    state_am2302__2,
    \state_am2302_reg[1] ,
    \state_am2302_reg[1]_0 ,
    \state_am2302_reg[1]_1 ,
    S_AXI_AWREADY,
    s00_axi_wready,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    AM2302_SDA_1_ctrl,
    AM2302_SDA_2_ctrl,
    AM2302_SDA_3_ctrl,
    s00_axi_bvalid,
    AM2302_SDA_1,
    AM2302_SDA_2,
    AM2302_SDA_3,
    s_data_ctrl_tristate_oe_reg_2,
    s00_axi_aclk,
    s_data_ctrl_tristate_oe_reg_3,
    s_data_ctrl_tristate_oe_reg_4,
    s_data_ctrl1_reg,
    s_data_ctrl1_reg_0,
    s_data_ctrl1_reg_1,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s_data_ctrl_tristate_oe_reg;
  output s_data_ctrl_tristate_oe_reg_0;
  output s_data_ctrl_tristate_oe_reg_1;
  output [2:0]state_am2302__0;
  output [2:0]state_am2302__1;
  output [2:0]state_am2302__2;
  output \state_am2302_reg[1] ;
  output \state_am2302_reg[1]_0 ;
  output \state_am2302_reg[1]_1 ;
  output S_AXI_AWREADY;
  output s00_axi_wready;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output AM2302_SDA_1_ctrl;
  output AM2302_SDA_2_ctrl;
  output AM2302_SDA_3_ctrl;
  output s00_axi_bvalid;
  inout AM2302_SDA_1;
  inout AM2302_SDA_2;
  inout AM2302_SDA_3;
  input s_data_ctrl_tristate_oe_reg_2;
  input s00_axi_aclk;
  input s_data_ctrl_tristate_oe_reg_3;
  input s_data_ctrl_tristate_oe_reg_4;
  input s_data_ctrl1_reg;
  input s_data_ctrl1_reg_0;
  input s_data_ctrl1_reg_1;
  input [3:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire AM2302_SDA_1;
  wire AM2302_SDA_1_ctrl;
  wire AM2302_SDA_2;
  wire AM2302_SDA_2_ctrl;
  wire AM2302_SDA_3;
  wire AM2302_SDA_3_ctrl;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0__0;
  wire [15:0]data7;
  wire [2:0]data8;
  wire fun_am2302_check_1_n_24;
  wire fun_am2302_check_1_n_25;
  wire fun_am2302_check_1_n_26;
  wire fun_am2302_check_1_n_27;
  wire fun_am2302_check_1_n_28;
  wire fun_am2302_check_1_n_29;
  wire fun_am2302_check_1_n_30;
  wire fun_am2302_check_1_n_31;
  wire fun_am2302_check_1_n_32;
  wire fun_am2302_check_1_n_33;
  wire fun_am2302_check_1_n_34;
  wire fun_am2302_check_1_n_35;
  wire fun_am2302_check_1_n_36;
  wire fun_am2302_check_2_n_21;
  wire fun_am2302_check_2_n_22;
  wire fun_am2302_check_2_n_23;
  wire fun_am2302_check_2_n_24;
  wire fun_am2302_check_2_n_25;
  wire fun_am2302_check_2_n_26;
  wire fun_am2302_check_2_n_27;
  wire fun_am2302_check_2_n_28;
  wire fun_am2302_check_2_n_29;
  wire fun_am2302_check_2_n_30;
  wire fun_am2302_check_2_n_31;
  wire fun_am2302_check_2_n_32;
  wire fun_am2302_check_2_n_33;
  wire fun_am2302_check_2_n_34;
  wire fun_am2302_check_2_n_35;
  wire fun_am2302_check_2_n_36;
  wire fun_am2302_check_2_n_38;
  wire fun_am2302_check_2_n_39;
  wire fun_am2302_check_2_n_40;
  wire fun_am2302_check_3_n_38;
  wire fun_am2302_check_3_n_39;
  wire fun_am2302_check_3_n_40;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire s_data_ctrl1_reg;
  wire s_data_ctrl1_reg_0;
  wire s_data_ctrl1_reg_1;
  wire s_data_ctrl_tristate_oe_reg;
  wire s_data_ctrl_tristate_oe_reg_0;
  wire s_data_ctrl_tristate_oe_reg_1;
  wire s_data_ctrl_tristate_oe_reg_2;
  wire s_data_ctrl_tristate_oe_reg_3;
  wire s_data_ctrl_tristate_oe_reg_4;
  wire [3:0]sel0;
  wire slv_reg_rden;
  wire [2:0]state_am2302__0;
  wire [2:0]state_am2302__1;
  wire [2:0]state_am2302__2;
  wire \state_am2302_reg[1] ;
  wire \state_am2302_reg[1]_0 ;
  wire \state_am2302_reg[1]_1 ;
  wire [15:0]work_cnt_reg;
  wire [15:0]work_cnt_reg_0;

  LUT6 #(
    .INIT(64'hFFFF0FFF88888888)) 
    aw_en_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .S(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready0
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_awready0__0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0__0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wready),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[2]_i_4 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h7444)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arvalid),
        .I3(S_AXI_ARREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_wready0
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_wready0__0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0__0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check fun_am2302_check_1
       (.AM2302_SDA_1(AM2302_SDA_1),
        .AM2302_SDA_1_ctrl(AM2302_SDA_1_ctrl),
        .D({reg_data_out[31:16],reg_data_out[2:0]}),
        .Q(sel0),
        .\axi_araddr_reg[4] (fun_am2302_check_1_n_24),
        .\axi_araddr_reg[4]_0 (fun_am2302_check_1_n_25),
        .\axi_araddr_reg[4]_1 (fun_am2302_check_1_n_26),
        .\axi_araddr_reg[4]_10 (fun_am2302_check_1_n_35),
        .\axi_araddr_reg[4]_11 (fun_am2302_check_1_n_36),
        .\axi_araddr_reg[4]_2 (fun_am2302_check_1_n_27),
        .\axi_araddr_reg[4]_3 (fun_am2302_check_1_n_28),
        .\axi_araddr_reg[4]_4 (fun_am2302_check_1_n_29),
        .\axi_araddr_reg[4]_5 (fun_am2302_check_1_n_30),
        .\axi_araddr_reg[4]_6 (fun_am2302_check_1_n_31),
        .\axi_araddr_reg[4]_7 (fun_am2302_check_1_n_32),
        .\axi_araddr_reg[4]_8 (fun_am2302_check_1_n_33),
        .\axi_araddr_reg[4]_9 (fun_am2302_check_1_n_34),
        .\axi_rdata_reg[0] (fun_am2302_check_2_n_21),
        .\axi_rdata_reg[0]_0 (\axi_rdata[2]_i_4_n_0 ),
        .\axi_rdata_reg[0]_1 (fun_am2302_check_2_n_40),
        .\axi_rdata_reg[10] (fun_am2302_check_2_n_31),
        .\axi_rdata_reg[11] (fun_am2302_check_2_n_32),
        .\axi_rdata_reg[12] (fun_am2302_check_2_n_33),
        .\axi_rdata_reg[13] (fun_am2302_check_2_n_34),
        .\axi_rdata_reg[14] (fun_am2302_check_2_n_35),
        .\axi_rdata_reg[15] (fun_am2302_check_2_n_36),
        .\axi_rdata_reg[1] (fun_am2302_check_2_n_22),
        .\axi_rdata_reg[1]_0 (fun_am2302_check_2_n_39),
        .\axi_rdata_reg[2] (data8),
        .\axi_rdata_reg[2]_0 (fun_am2302_check_2_n_23),
        .\axi_rdata_reg[2]_1 (fun_am2302_check_2_n_38),
        .\axi_rdata_reg[3] (fun_am2302_check_2_n_24),
        .\axi_rdata_reg[4] (fun_am2302_check_2_n_25),
        .\axi_rdata_reg[5] (fun_am2302_check_2_n_26),
        .\axi_rdata_reg[6] (fun_am2302_check_2_n_27),
        .\axi_rdata_reg[7] (fun_am2302_check_2_n_28),
        .\axi_rdata_reg[8] (fun_am2302_check_2_n_29),
        .\axi_rdata_reg[9] (fun_am2302_check_2_n_30),
        .s00_axi_aclk(s00_axi_aclk),
        .s_data_ctrl1_reg_0(s_data_ctrl1_reg),
        .s_data_ctrl_tristate_oe_reg_0(s_data_ctrl_tristate_oe_reg),
        .s_data_ctrl_tristate_oe_reg_1(s_data_ctrl_tristate_oe_reg_2),
        .\state_am2302_reg[0]_0 (state_am2302__0[0]),
        .\state_am2302_reg[1]_0 (\state_am2302_reg[1] ),
        .\state_am2302_reg[2]_0 (state_am2302__0[1]),
        .\state_am2302_reg[3]_0 (state_am2302__0[2]),
        .work_cnt_reg(work_cnt_reg_0),
        .work_cnt_reg_0(work_cnt_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_0 fun_am2302_check_2
       (.AM2302_SDA_2(AM2302_SDA_2),
        .AM2302_SDA_2_ctrl(AM2302_SDA_2_ctrl),
        .Q(data7),
        .\am2302_humi_reg[0]_0 (fun_am2302_check_2_n_21),
        .\am2302_humi_reg[1]_0 (fun_am2302_check_2_n_22),
        .\am2302_humi_reg[2]_0 (fun_am2302_check_2_n_23),
        .\axi_araddr_reg[2] (fun_am2302_check_2_n_24),
        .\axi_araddr_reg[2]_0 (fun_am2302_check_2_n_25),
        .\axi_araddr_reg[2]_1 (fun_am2302_check_2_n_26),
        .\axi_araddr_reg[2]_10 (fun_am2302_check_2_n_35),
        .\axi_araddr_reg[2]_11 (fun_am2302_check_2_n_36),
        .\axi_araddr_reg[2]_2 (fun_am2302_check_2_n_27),
        .\axi_araddr_reg[2]_3 (fun_am2302_check_2_n_28),
        .\axi_araddr_reg[2]_4 (fun_am2302_check_2_n_29),
        .\axi_araddr_reg[2]_5 (fun_am2302_check_2_n_30),
        .\axi_araddr_reg[2]_6 (fun_am2302_check_2_n_31),
        .\axi_araddr_reg[2]_7 (fun_am2302_check_2_n_32),
        .\axi_araddr_reg[2]_8 (fun_am2302_check_2_n_33),
        .\axi_araddr_reg[2]_9 (fun_am2302_check_2_n_34),
        .\axi_rdata[15]_i_2 (sel0[2:0]),
        .\axi_rdata_reg[0] (fun_am2302_check_3_n_40),
        .\axi_rdata_reg[1] (fun_am2302_check_3_n_39),
        .\axi_rdata_reg[2] (fun_am2302_check_3_n_38),
        .s00_axi_aclk(s00_axi_aclk),
        .s_data_ctrl1_reg_0(s_data_ctrl1_reg_0),
        .s_data_ctrl_tristate_oe_reg_0(s_data_ctrl_tristate_oe_reg_0),
        .s_data_ctrl_tristate_oe_reg_1(s_data_ctrl_tristate_oe_reg_3),
        .\state_am2302_reg[0]_0 (state_am2302__1[0]),
        .\state_am2302_reg[1]_0 (\state_am2302_reg[1]_0 ),
        .\state_am2302_reg[2]_0 (state_am2302__1[1]),
        .\state_am2302_reg[3]_0 (state_am2302__1[2]),
        .\status_reg[0]_0 (fun_am2302_check_2_n_40),
        .\status_reg[1]_0 (fun_am2302_check_2_n_39),
        .\status_reg[2]_0 (fun_am2302_check_2_n_38),
        .work_cnt_reg(work_cnt_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_1 fun_am2302_check_3
       (.AM2302_SDA_3(AM2302_SDA_3),
        .AM2302_SDA_3_ctrl(AM2302_SDA_3_ctrl),
        .D(reg_data_out[15:3]),
        .Q(data8),
        .\am2302_temp_reg[15]_0 (data7),
        .\axi_rdata_reg[10] (fun_am2302_check_1_n_31),
        .\axi_rdata_reg[11] (fun_am2302_check_1_n_32),
        .\axi_rdata_reg[12] (fun_am2302_check_1_n_33),
        .\axi_rdata_reg[13] (fun_am2302_check_1_n_34),
        .\axi_rdata_reg[14] (fun_am2302_check_1_n_35),
        .\axi_rdata_reg[15] (fun_am2302_check_1_n_36),
        .\axi_rdata_reg[3] (sel0),
        .\axi_rdata_reg[3]_0 (fun_am2302_check_1_n_24),
        .\axi_rdata_reg[4] (fun_am2302_check_1_n_25),
        .\axi_rdata_reg[5] (fun_am2302_check_1_n_26),
        .\axi_rdata_reg[6] (fun_am2302_check_1_n_27),
        .\axi_rdata_reg[7] (fun_am2302_check_1_n_28),
        .\axi_rdata_reg[8] (fun_am2302_check_1_n_29),
        .\axi_rdata_reg[9] (fun_am2302_check_1_n_30),
        .s00_axi_aclk(s00_axi_aclk),
        .s_data_ctrl1_reg_0(s_data_ctrl1_reg_1),
        .s_data_ctrl_tristate_oe_reg_0(s_data_ctrl_tristate_oe_reg_1),
        .s_data_ctrl_tristate_oe_reg_1(s_data_ctrl_tristate_oe_reg_4),
        .\state_am2302_reg[0]_0 (state_am2302__2[0]),
        .\state_am2302_reg[1]_0 (\state_am2302_reg[1]_1 ),
        .\state_am2302_reg[2]_0 (state_am2302__2[1]),
        .\state_am2302_reg[3]_0 (state_am2302__2[2]),
        .\status_reg[0]_0 (fun_am2302_check_3_n_40),
        .\status_reg[1]_0 (fun_am2302_check_3_n_39),
        .\status_reg[2]_0 (fun_am2302_check_3_n_38),
        .work_cnt_reg(work_cnt_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check
   (s_data_ctrl_tristate_oe_reg_0,
    \state_am2302_reg[0]_0 ,
    \state_am2302_reg[2]_0 ,
    \state_am2302_reg[3]_0 ,
    \state_am2302_reg[1]_0 ,
    D,
    \axi_araddr_reg[4] ,
    \axi_araddr_reg[4]_0 ,
    \axi_araddr_reg[4]_1 ,
    \axi_araddr_reg[4]_2 ,
    \axi_araddr_reg[4]_3 ,
    \axi_araddr_reg[4]_4 ,
    \axi_araddr_reg[4]_5 ,
    \axi_araddr_reg[4]_6 ,
    \axi_araddr_reg[4]_7 ,
    \axi_araddr_reg[4]_8 ,
    \axi_araddr_reg[4]_9 ,
    \axi_araddr_reg[4]_10 ,
    \axi_araddr_reg[4]_11 ,
    AM2302_SDA_1_ctrl,
    AM2302_SDA_1,
    s_data_ctrl_tristate_oe_reg_1,
    s00_axi_aclk,
    s_data_ctrl1_reg_0,
    Q,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[0]_1 ,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[1]_0 ,
    \axi_rdata_reg[2]_0 ,
    \axi_rdata_reg[2]_1 ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[15] ,
    work_cnt_reg,
    work_cnt_reg_0);
  output s_data_ctrl_tristate_oe_reg_0;
  output \state_am2302_reg[0]_0 ;
  output \state_am2302_reg[2]_0 ;
  output \state_am2302_reg[3]_0 ;
  output \state_am2302_reg[1]_0 ;
  output [18:0]D;
  output \axi_araddr_reg[4] ;
  output \axi_araddr_reg[4]_0 ;
  output \axi_araddr_reg[4]_1 ;
  output \axi_araddr_reg[4]_2 ;
  output \axi_araddr_reg[4]_3 ;
  output \axi_araddr_reg[4]_4 ;
  output \axi_araddr_reg[4]_5 ;
  output \axi_araddr_reg[4]_6 ;
  output \axi_araddr_reg[4]_7 ;
  output \axi_araddr_reg[4]_8 ;
  output \axi_araddr_reg[4]_9 ;
  output \axi_araddr_reg[4]_10 ;
  output \axi_araddr_reg[4]_11 ;
  output AM2302_SDA_1_ctrl;
  inout AM2302_SDA_1;
  input s_data_ctrl_tristate_oe_reg_1;
  input s00_axi_aclk;
  input s_data_ctrl1_reg_0;
  input [3:0]Q;
  input \axi_rdata_reg[0] ;
  input [2:0]\axi_rdata_reg[2] ;
  input \axi_rdata_reg[0]_0 ;
  input \axi_rdata_reg[0]_1 ;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[1]_0 ;
  input \axi_rdata_reg[2]_0 ;
  input \axi_rdata_reg[2]_1 ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[7] ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[12] ;
  input \axi_rdata_reg[13] ;
  input \axi_rdata_reg[14] ;
  input \axi_rdata_reg[15] ;
  input [15:0]work_cnt_reg;
  input [15:0]work_cnt_reg_0;

  wire AM2302_SDA_1;
  wire AM2302_SDA_1_ctrl;
  wire [18:0]D;
  wire I;
  wire [39:32]L;
  wire [3:0]Q;
  wire [31:24]R;
  wire [23:16]R0_in;
  wire [15:8]R1_in;
  wire T;
  wire am2302_humi;
  wire [15:0]am2302_humi1;
  wire \am2302_humi_reg_n_0_[0] ;
  wire \am2302_humi_reg_n_0_[10] ;
  wire \am2302_humi_reg_n_0_[11] ;
  wire \am2302_humi_reg_n_0_[12] ;
  wire \am2302_humi_reg_n_0_[13] ;
  wire \am2302_humi_reg_n_0_[14] ;
  wire \am2302_humi_reg_n_0_[15] ;
  wire \am2302_humi_reg_n_0_[1] ;
  wire \am2302_humi_reg_n_0_[2] ;
  wire \am2302_humi_reg_n_0_[3] ;
  wire \am2302_humi_reg_n_0_[4] ;
  wire \am2302_humi_reg_n_0_[5] ;
  wire \am2302_humi_reg_n_0_[6] ;
  wire \am2302_humi_reg_n_0_[7] ;
  wire \am2302_humi_reg_n_0_[8] ;
  wire \am2302_humi_reg_n_0_[9] ;
  wire [15:0]am2302_temp;
  wire am2302_temp1;
  wire \am2302_temp1_reg_n_0_[0] ;
  wire \am2302_temp1_reg_n_0_[10] ;
  wire \am2302_temp1_reg_n_0_[11] ;
  wire \am2302_temp1_reg_n_0_[12] ;
  wire \am2302_temp1_reg_n_0_[13] ;
  wire \am2302_temp1_reg_n_0_[14] ;
  wire \am2302_temp1_reg_n_0_[15] ;
  wire \am2302_temp1_reg_n_0_[1] ;
  wire \am2302_temp1_reg_n_0_[2] ;
  wire \am2302_temp1_reg_n_0_[3] ;
  wire \am2302_temp1_reg_n_0_[4] ;
  wire \am2302_temp1_reg_n_0_[5] ;
  wire \am2302_temp1_reg_n_0_[6] ;
  wire \am2302_temp1_reg_n_0_[7] ;
  wire \am2302_temp1_reg_n_0_[8] ;
  wire \am2302_temp1_reg_n_0_[9] ;
  wire \am2302_temp[0]_i_1_n_0 ;
  wire \am2302_temp[10]_i_1_n_0 ;
  wire \am2302_temp[11]_i_1_n_0 ;
  wire \am2302_temp[12]_i_1_n_0 ;
  wire \am2302_temp[13]_i_1_n_0 ;
  wire \am2302_temp[14]_i_1_n_0 ;
  wire \am2302_temp[1]_i_1_n_0 ;
  wire \am2302_temp[2]_i_1_n_0 ;
  wire \am2302_temp[3]_i_1_n_0 ;
  wire \am2302_temp[4]_i_1_n_0 ;
  wire \am2302_temp[5]_i_1_n_0 ;
  wire \am2302_temp[6]_i_1_n_0 ;
  wire \am2302_temp[7]_i_1_n_0 ;
  wire \am2302_temp[8]_i_1_n_0 ;
  wire \am2302_temp[9]_i_1_n_0 ;
  wire \axi_araddr_reg[4] ;
  wire \axi_araddr_reg[4]_0 ;
  wire \axi_araddr_reg[4]_1 ;
  wire \axi_araddr_reg[4]_10 ;
  wire \axi_araddr_reg[4]_11 ;
  wire \axi_araddr_reg[4]_2 ;
  wire \axi_araddr_reg[4]_3 ;
  wire \axi_araddr_reg[4]_4 ;
  wire \axi_araddr_reg[4]_5 ;
  wire \axi_araddr_reg[4]_6 ;
  wire \axi_araddr_reg[4]_7 ;
  wire \axi_araddr_reg[4]_8 ;
  wire \axi_araddr_reg[4]_9 ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[15] ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[1]_0 ;
  wire [2:0]\axi_rdata_reg[2] ;
  wire \axi_rdata_reg[2]_0 ;
  wire \axi_rdata_reg[2]_1 ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[9] ;
  wire clear;
  wire clk_1us;
  wire clk_1us_i_1_n_0;
  wire clk_1ust;
  wire [3:1]data0;
  wire eqOp;
  wire i___2_carry__0_i_10_n_0;
  wire i___2_carry__0_i_11_n_0;
  wire i___2_carry__0_i_12_n_0;
  wire i___2_carry__0_i_1_n_0;
  wire i___2_carry__0_i_2_n_0;
  wire i___2_carry__0_i_3_n_0;
  wire i___2_carry__0_i_4_n_0;
  wire i___2_carry__0_i_5_n_0;
  wire i___2_carry__0_i_6_n_0;
  wire i___2_carry__0_i_7_n_0;
  wire i___2_carry__0_i_8_n_0;
  wire i___2_carry__0_i_9_n_0;
  wire i___2_carry_i_1_n_0;
  wire i___2_carry_i_2_n_0;
  wire i___2_carry_i_3_n_0;
  wire i___2_carry_i_4_n_0;
  wire i___2_carry_i_5_n_0;
  wire i___2_carry_i_6_n_0;
  wire i___2_carry_i_7_n_0;
  wire i___2_carry_i_8_n_0;
  wire i___2_carry_i_9_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire ltOp;
  wire ltOp_carry__0_i_1_n_0;
  wire ltOp_carry__0_i_2_n_0;
  wire ltOp_carry__0_i_3_n_0;
  wire ltOp_carry__0_i_4_n_0;
  wire ltOp_carry__0_i_5_n_0;
  wire ltOp_carry__0_n_0;
  wire ltOp_carry__0_n_1;
  wire ltOp_carry__0_n_2;
  wire ltOp_carry__0_n_3;
  wire ltOp_carry__1_i_1_n_0;
  wire ltOp_carry__1_i_2_n_0;
  wire ltOp_carry__1_i_3_n_0;
  wire ltOp_carry__1_i_4_n_0;
  wire ltOp_carry__1_n_0;
  wire ltOp_carry__1_n_1;
  wire ltOp_carry__1_n_2;
  wire ltOp_carry__1_n_3;
  wire ltOp_carry__2_i_1_n_0;
  wire ltOp_carry__2_i_2_n_0;
  wire ltOp_carry__2_n_2;
  wire ltOp_carry__2_n_3;
  wire ltOp_carry_i_1_n_0;
  wire ltOp_carry_i_2_n_0;
  wire ltOp_carry_i_3_n_0;
  wire ltOp_carry_i_4_n_0;
  wire ltOp_carry_i_5_n_0;
  wire ltOp_carry_i_6_n_0;
  wire ltOp_carry_i_7_n_0;
  wire ltOp_carry_n_0;
  wire ltOp_carry_n_1;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire \ltOp_inferred__0/i__carry__0_n_0 ;
  wire \ltOp_inferred__0/i__carry__0_n_1 ;
  wire \ltOp_inferred__0/i__carry__0_n_2 ;
  wire \ltOp_inferred__0/i__carry__0_n_3 ;
  wire \ltOp_inferred__0/i__carry__1_n_0 ;
  wire \ltOp_inferred__0/i__carry__1_n_1 ;
  wire \ltOp_inferred__0/i__carry__1_n_2 ;
  wire \ltOp_inferred__0/i__carry__1_n_3 ;
  wire \ltOp_inferred__0/i__carry_n_0 ;
  wire \ltOp_inferred__0/i__carry_n_1 ;
  wire \ltOp_inferred__0/i__carry_n_2 ;
  wire \ltOp_inferred__0/i__carry_n_3 ;
  wire [14:0]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire [31:0]period_cnt;
  wire \period_cnt[0]_i_1_n_0 ;
  wire \period_cnt[31]_i_1_n_0 ;
  wire [7:1]plusOp;
  wire [7:0]plusOp43;
  wire [31:1]plusOp_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \plusOp_inferred__3/i___2_carry__0_n_1 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_2 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_3 ;
  wire \plusOp_inferred__3/i___2_carry_n_0 ;
  wire \plusOp_inferred__3/i___2_carry_n_1 ;
  wire \plusOp_inferred__3/i___2_carry_n_2 ;
  wire \plusOp_inferred__3/i___2_carry_n_3 ;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[10]_i_1_n_0 ;
  wire \rx_data[11]_i_1_n_0 ;
  wire \rx_data[12]_i_1_n_0 ;
  wire \rx_data[13]_i_1_n_0 ;
  wire \rx_data[14]_i_1_n_0 ;
  wire \rx_data[15]_i_1_n_0 ;
  wire \rx_data[15]_i_2_n_0 ;
  wire \rx_data[16]_i_1_n_0 ;
  wire \rx_data[17]_i_1_n_0 ;
  wire \rx_data[18]_i_1_n_0 ;
  wire \rx_data[19]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[20]_i_1_n_0 ;
  wire \rx_data[21]_i_1_n_0 ;
  wire \rx_data[22]_i_1_n_0 ;
  wire \rx_data[23]_i_1_n_0 ;
  wire \rx_data[23]_i_2_n_0 ;
  wire \rx_data[24]_i_1_n_0 ;
  wire \rx_data[25]_i_1_n_0 ;
  wire \rx_data[26]_i_1_n_0 ;
  wire \rx_data[27]_i_1_n_0 ;
  wire \rx_data[28]_i_1_n_0 ;
  wire \rx_data[29]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[30]_i_1_n_0 ;
  wire \rx_data[31]_i_1_n_0 ;
  wire \rx_data[31]_i_2_n_0 ;
  wire \rx_data[31]_i_3_n_0 ;
  wire \rx_data[31]_i_5_n_0 ;
  wire \rx_data[31]_i_6_n_0 ;
  wire \rx_data[32]_i_1_n_0 ;
  wire \rx_data[32]_i_2_n_0 ;
  wire \rx_data[33]_i_1_n_0 ;
  wire \rx_data[33]_i_2_n_0 ;
  wire \rx_data[34]_i_1_n_0 ;
  wire \rx_data[34]_i_2_n_0 ;
  wire \rx_data[35]_i_1_n_0 ;
  wire \rx_data[35]_i_2_n_0 ;
  wire \rx_data[36]_i_1_n_0 ;
  wire \rx_data[36]_i_2_n_0 ;
  wire \rx_data[37]_i_1_n_0 ;
  wire \rx_data[37]_i_2_n_0 ;
  wire \rx_data[38]_i_1_n_0 ;
  wire \rx_data[38]_i_2_n_0 ;
  wire \rx_data[39]_i_10_n_0 ;
  wire \rx_data[39]_i_11_n_0 ;
  wire \rx_data[39]_i_12_n_0 ;
  wire \rx_data[39]_i_1_n_0 ;
  wire \rx_data[39]_i_3_n_0 ;
  wire \rx_data[39]_i_4_n_0 ;
  wire \rx_data[39]_i_5_n_0 ;
  wire \rx_data[39]_i_6_n_0 ;
  wire \rx_data[39]_i_7_n_0 ;
  wire \rx_data[39]_i_8_n_0 ;
  wire \rx_data[39]_i_9_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_2_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data_reg_n_0_[0] ;
  wire \rx_data_reg_n_0_[1] ;
  wire \rx_data_reg_n_0_[2] ;
  wire \rx_data_reg_n_0_[3] ;
  wire \rx_data_reg_n_0_[4] ;
  wire \rx_data_reg_n_0_[5] ;
  wire \rx_data_reg_n_0_[6] ;
  wire \rx_data_reg_n_0_[7] ;
  wire [31:0]rx_index;
  wire rx_index0;
  wire rx_index0_carry__0_i_1_n_0;
  wire rx_index0_carry__0_i_2_n_0;
  wire rx_index0_carry__0_i_3_n_0;
  wire rx_index0_carry__0_i_4_n_0;
  wire rx_index0_carry__0_n_0;
  wire rx_index0_carry__0_n_1;
  wire rx_index0_carry__0_n_2;
  wire rx_index0_carry__0_n_3;
  wire rx_index0_carry__0_n_4;
  wire rx_index0_carry__0_n_5;
  wire rx_index0_carry__0_n_6;
  wire rx_index0_carry__0_n_7;
  wire rx_index0_carry__1_i_1_n_0;
  wire rx_index0_carry__1_i_2_n_0;
  wire rx_index0_carry__1_i_3_n_0;
  wire rx_index0_carry__1_i_4_n_0;
  wire rx_index0_carry__1_n_0;
  wire rx_index0_carry__1_n_1;
  wire rx_index0_carry__1_n_2;
  wire rx_index0_carry__1_n_3;
  wire rx_index0_carry__1_n_4;
  wire rx_index0_carry__1_n_5;
  wire rx_index0_carry__1_n_6;
  wire rx_index0_carry__1_n_7;
  wire rx_index0_carry__2_i_1_n_0;
  wire rx_index0_carry__2_i_2_n_0;
  wire rx_index0_carry__2_i_3_n_0;
  wire rx_index0_carry__2_i_4_n_0;
  wire rx_index0_carry__2_n_0;
  wire rx_index0_carry__2_n_1;
  wire rx_index0_carry__2_n_2;
  wire rx_index0_carry__2_n_3;
  wire rx_index0_carry__2_n_4;
  wire rx_index0_carry__2_n_5;
  wire rx_index0_carry__2_n_6;
  wire rx_index0_carry__2_n_7;
  wire rx_index0_carry__3_i_1_n_0;
  wire rx_index0_carry__3_i_2_n_0;
  wire rx_index0_carry__3_i_3_n_0;
  wire rx_index0_carry__3_i_4_n_0;
  wire rx_index0_carry__3_n_0;
  wire rx_index0_carry__3_n_1;
  wire rx_index0_carry__3_n_2;
  wire rx_index0_carry__3_n_3;
  wire rx_index0_carry__3_n_4;
  wire rx_index0_carry__3_n_5;
  wire rx_index0_carry__3_n_6;
  wire rx_index0_carry__3_n_7;
  wire rx_index0_carry__4_i_1_n_0;
  wire rx_index0_carry__4_i_2_n_0;
  wire rx_index0_carry__4_i_3_n_0;
  wire rx_index0_carry__4_i_4_n_0;
  wire rx_index0_carry__4_n_0;
  wire rx_index0_carry__4_n_1;
  wire rx_index0_carry__4_n_2;
  wire rx_index0_carry__4_n_3;
  wire rx_index0_carry__4_n_4;
  wire rx_index0_carry__4_n_5;
  wire rx_index0_carry__4_n_6;
  wire rx_index0_carry__4_n_7;
  wire rx_index0_carry__5_i_1_n_0;
  wire rx_index0_carry__5_i_2_n_0;
  wire rx_index0_carry__5_i_3_n_0;
  wire rx_index0_carry__5_i_4_n_0;
  wire rx_index0_carry__5_n_0;
  wire rx_index0_carry__5_n_1;
  wire rx_index0_carry__5_n_2;
  wire rx_index0_carry__5_n_3;
  wire rx_index0_carry__5_n_4;
  wire rx_index0_carry__5_n_5;
  wire rx_index0_carry__5_n_6;
  wire rx_index0_carry__5_n_7;
  wire rx_index0_carry__6_i_1_n_0;
  wire rx_index0_carry__6_i_2_n_0;
  wire rx_index0_carry__6_i_3_n_0;
  wire rx_index0_carry__6_n_2;
  wire rx_index0_carry__6_n_3;
  wire rx_index0_carry__6_n_5;
  wire rx_index0_carry__6_n_6;
  wire rx_index0_carry__6_n_7;
  wire rx_index0_carry_i_1_n_0;
  wire rx_index0_carry_i_2_n_0;
  wire rx_index0_carry_i_3_n_0;
  wire rx_index0_carry_i_4_n_0;
  wire rx_index0_carry_n_0;
  wire rx_index0_carry_n_1;
  wire rx_index0_carry_n_2;
  wire rx_index0_carry_n_3;
  wire rx_index0_carry_n_4;
  wire rx_index0_carry_n_5;
  wire rx_index0_carry_n_6;
  wire rx_index0_carry_n_7;
  wire \rx_index[0]_i_1_n_0 ;
  wire \rx_index[31]_i_10_n_0 ;
  wire \rx_index[31]_i_1_n_0 ;
  wire \rx_index[31]_i_3_n_0 ;
  wire \rx_index[31]_i_4_n_0 ;
  wire \rx_index[31]_i_5_n_0 ;
  wire \rx_index[31]_i_6_n_0 ;
  wire \rx_index[31]_i_7_n_0 ;
  wire \rx_index[31]_i_8_n_0 ;
  wire \rx_index[31]_i_9_n_0 ;
  wire s00_axi_aclk;
  wire s_data_ctrl;
  wire s_data_ctrl1_reg_0;
  wire s_data_ctrl_tristate_oe_reg_0;
  wire s_data_ctrl_tristate_oe_reg_1;
  wire s_data_in;
  wire s_data_in1;
  wire s_data_out;
  wire s_data_out2_out;
  wire s_data_out_i_1_n_0;
  wire sel;
  wire state_am23021;
  wire state_am2302111_out;
  wire state_am230215_out;
  wire state_am230218_out;
  wire \state_am2302[0]_i_1_n_0 ;
  wire \state_am2302[0]_i_2_n_0 ;
  wire \state_am2302[1]_i_1_n_0 ;
  wire \state_am2302[1]_i_2_n_0 ;
  wire \state_am2302[1]_i_3_n_0 ;
  wire \state_am2302[2]_i_1_n_0 ;
  wire \state_am2302[2]_i_2_n_0 ;
  wire \state_am2302[2]_i_3_n_0 ;
  wire \state_am2302[3]_i_10_n_0 ;
  wire \state_am2302[3]_i_11_n_0 ;
  wire \state_am2302[3]_i_12_n_0 ;
  wire \state_am2302[3]_i_13_n_0 ;
  wire \state_am2302[3]_i_14_n_0 ;
  wire \state_am2302[3]_i_15_n_0 ;
  wire \state_am2302[3]_i_16_n_0 ;
  wire \state_am2302[3]_i_17_n_0 ;
  wire \state_am2302[3]_i_18_n_0 ;
  wire \state_am2302[3]_i_1_n_0 ;
  wire \state_am2302[3]_i_20_n_0 ;
  wire \state_am2302[3]_i_21_n_0 ;
  wire \state_am2302[3]_i_22_n_0 ;
  wire \state_am2302[3]_i_24_n_0 ;
  wire \state_am2302[3]_i_25_n_0 ;
  wire \state_am2302[3]_i_26_n_0 ;
  wire \state_am2302[3]_i_27_n_0 ;
  wire \state_am2302[3]_i_28_n_0 ;
  wire \state_am2302[3]_i_29_n_0 ;
  wire \state_am2302[3]_i_2_n_0 ;
  wire \state_am2302[3]_i_30_n_0 ;
  wire \state_am2302[3]_i_31_n_0 ;
  wire \state_am2302[3]_i_3_n_0 ;
  wire \state_am2302[3]_i_4_n_0 ;
  wire \state_am2302[3]_i_5_n_0 ;
  wire \state_am2302[3]_i_6_n_0 ;
  wire \state_am2302[3]_i_7_n_0 ;
  wire \state_am2302[3]_i_8_n_0 ;
  wire \state_am2302_reg[0]_0 ;
  wire \state_am2302_reg[1]_0 ;
  wire \state_am2302_reg[2]_0 ;
  wire \state_am2302_reg[3]_0 ;
  wire [2:0]status;
  wire \status[0]_i_1_n_0 ;
  wire \status[0]_i_2_n_0 ;
  wire \status[0]_i_3_n_0 ;
  wire \status[0]_i_4_n_0 ;
  wire \status[0]_i_5_n_0 ;
  wire \status[1]_i_1_n_0 ;
  wire \status[2]_i_1_n_0 ;
  wire \status[2]_i_3_n_0 ;
  wire \status[2]_i_4_n_0 ;
  wire \status[2]_i_5_n_0 ;
  wire \status[2]_i_6_n_0 ;
  wire \status[2]_i_7_n_0 ;
  wire \us_cnt[0]_i_1_n_0 ;
  wire \us_cnt[7]_i_3_n_0 ;
  wire \us_cnt[7]_i_4_n_0 ;
  wire [7:0]us_cnt_reg__0;
  wire [7:0]us_count;
  wire \us_count[0]_i_1_n_0 ;
  wire \us_count[1]_i_1_n_0 ;
  wire \us_count[2]_i_1_n_0 ;
  wire \us_count[3]_i_1_n_0 ;
  wire \us_count[4]_i_1_n_0 ;
  wire \us_count[5]_i_1_n_0 ;
  wire \us_count[6]_i_1_n_0 ;
  wire \us_count[6]_i_2_n_0 ;
  wire \us_count[7]_i_1_n_0 ;
  wire \us_count[7]_i_3_n_0 ;
  wire \us_count[7]_i_4_n_0 ;
  wire \us_count[7]_i_5_n_0 ;
  wire \us_count[7]_i_6_n_0 ;
  wire \us_count[7]_i_7_n_0 ;
  wire \us_count[7]_i_8_n_0 ;
  wire us_count_2;
  wire \work_cnt[0]_i_3_n_0 ;
  wire [15:0]work_cnt_reg;
  wire \work_cnt_reg[0]_i_2_n_0 ;
  wire \work_cnt_reg[0]_i_2_n_1 ;
  wire \work_cnt_reg[0]_i_2_n_2 ;
  wire \work_cnt_reg[0]_i_2_n_3 ;
  wire \work_cnt_reg[0]_i_2_n_4 ;
  wire \work_cnt_reg[0]_i_2_n_5 ;
  wire \work_cnt_reg[0]_i_2_n_6 ;
  wire \work_cnt_reg[0]_i_2_n_7 ;
  wire \work_cnt_reg[12]_i_1_n_1 ;
  wire \work_cnt_reg[12]_i_1_n_2 ;
  wire \work_cnt_reg[12]_i_1_n_3 ;
  wire \work_cnt_reg[12]_i_1_n_4 ;
  wire \work_cnt_reg[12]_i_1_n_5 ;
  wire \work_cnt_reg[12]_i_1_n_6 ;
  wire \work_cnt_reg[12]_i_1_n_7 ;
  wire \work_cnt_reg[4]_i_1_n_0 ;
  wire \work_cnt_reg[4]_i_1_n_1 ;
  wire \work_cnt_reg[4]_i_1_n_2 ;
  wire \work_cnt_reg[4]_i_1_n_3 ;
  wire \work_cnt_reg[4]_i_1_n_4 ;
  wire \work_cnt_reg[4]_i_1_n_5 ;
  wire \work_cnt_reg[4]_i_1_n_6 ;
  wire \work_cnt_reg[4]_i_1_n_7 ;
  wire \work_cnt_reg[8]_i_1_n_0 ;
  wire \work_cnt_reg[8]_i_1_n_1 ;
  wire \work_cnt_reg[8]_i_1_n_2 ;
  wire \work_cnt_reg[8]_i_1_n_3 ;
  wire \work_cnt_reg[8]_i_1_n_4 ;
  wire \work_cnt_reg[8]_i_1_n_5 ;
  wire \work_cnt_reg[8]_i_1_n_6 ;
  wire \work_cnt_reg[8]_i_1_n_7 ;
  wire [15:0]work_cnt_reg_0;
  wire [15:0]work_cnt_reg_1;
  wire [3:0]NLW_ltOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_ltOp_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED ;
  wire [3:2]NLW_rx_index0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_rx_index0_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_work_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    AM2302_SDA_1_ctrl_INST_0
       (.I0(T),
        .O(AM2302_SDA_1_ctrl));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R[24]),
        .Q(am2302_humi1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(L[34]),
        .Q(am2302_humi1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(L[35]),
        .Q(am2302_humi1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(L[36]),
        .Q(am2302_humi1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(L[37]),
        .Q(am2302_humi1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(L[38]),
        .Q(am2302_humi1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(L[39]),
        .Q(am2302_humi1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R[25]),
        .Q(am2302_humi1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R[26]),
        .Q(am2302_humi1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R[27]),
        .Q(am2302_humi1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R[28]),
        .Q(am2302_humi1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R[29]),
        .Q(am2302_humi1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R[30]),
        .Q(am2302_humi1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R[31]),
        .Q(am2302_humi1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(L[32]),
        .Q(am2302_humi1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(L[33]),
        .Q(am2302_humi1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[0] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[0]),
        .Q(\am2302_humi_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[10] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[10]),
        .Q(\am2302_humi_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[11] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[11]),
        .Q(\am2302_humi_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[12] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[12]),
        .Q(\am2302_humi_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[13] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[13]),
        .Q(\am2302_humi_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[14] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[14]),
        .Q(\am2302_humi_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[15] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[15]),
        .Q(\am2302_humi_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[1] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[1]),
        .Q(\am2302_humi_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[2] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[2]),
        .Q(\am2302_humi_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[3] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[3]),
        .Q(\am2302_humi_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[4] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[4]),
        .Q(\am2302_humi_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[5] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[5]),
        .Q(\am2302_humi_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[6] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[6]),
        .Q(\am2302_humi_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[7] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[7]),
        .Q(\am2302_humi_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[8] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[8]),
        .Q(\am2302_humi_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[9] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(am2302_humi1[9]),
        .Q(\am2302_humi_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    \am2302_temp1[15]_i_1 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .O(am2302_temp1));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R1_in[8]),
        .Q(\am2302_temp1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R0_in[18]),
        .Q(\am2302_temp1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R0_in[19]),
        .Q(\am2302_temp1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R0_in[20]),
        .Q(\am2302_temp1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R0_in[21]),
        .Q(\am2302_temp1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R0_in[22]),
        .Q(\am2302_temp1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R0_in[23]),
        .Q(\am2302_temp1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R1_in[9]),
        .Q(\am2302_temp1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R1_in[10]),
        .Q(\am2302_temp1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R1_in[11]),
        .Q(\am2302_temp1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R1_in[12]),
        .Q(\am2302_temp1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R1_in[13]),
        .Q(\am2302_temp1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R1_in[14]),
        .Q(\am2302_temp1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R1_in[15]),
        .Q(\am2302_temp1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R0_in[16]),
        .Q(\am2302_temp1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(am2302_temp1),
        .D(R0_in[17]),
        .Q(\am2302_temp1_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[0]_i_1 
       (.I0(minusOp[0]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[0] ),
        .O(\am2302_temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[10]_i_1 
       (.I0(minusOp[10]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[10] ),
        .O(\am2302_temp[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[11]_i_1 
       (.I0(minusOp[11]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[11] ),
        .O(\am2302_temp[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[12]_i_1 
       (.I0(minusOp[12]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[12] ),
        .O(\am2302_temp[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[13]_i_1 
       (.I0(minusOp[13]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[13] ),
        .O(\am2302_temp[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[14]_i_1 
       (.I0(minusOp[14]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[14] ),
        .O(\am2302_temp[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \am2302_temp[15]_i_1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .O(am2302_humi));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[1]_i_1 
       (.I0(minusOp[1]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[1] ),
        .O(\am2302_temp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[2]_i_1 
       (.I0(minusOp[2]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[2] ),
        .O(\am2302_temp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[3]_i_1 
       (.I0(minusOp[3]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[3] ),
        .O(\am2302_temp[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[4]_i_1 
       (.I0(minusOp[4]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[4] ),
        .O(\am2302_temp[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[5]_i_1 
       (.I0(minusOp[5]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[5] ),
        .O(\am2302_temp[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[6]_i_1 
       (.I0(minusOp[6]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[6] ),
        .O(\am2302_temp[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[7]_i_1 
       (.I0(minusOp[7]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[7] ),
        .O(\am2302_temp[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[8]_i_1 
       (.I0(minusOp[8]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[8] ),
        .O(\am2302_temp[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[9]_i_1 
       (.I0(minusOp[9]),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[9] ),
        .O(\am2302_temp[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[0] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[0]_i_1_n_0 ),
        .Q(am2302_temp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[10] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[10]_i_1_n_0 ),
        .Q(am2302_temp[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[11] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[11]_i_1_n_0 ),
        .Q(am2302_temp[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[12] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[12]_i_1_n_0 ),
        .Q(am2302_temp[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[13] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[13]_i_1_n_0 ),
        .Q(am2302_temp[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[14] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[14]_i_1_n_0 ),
        .Q(am2302_temp[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[15] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp1_reg_n_0_[15] ),
        .Q(am2302_temp[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[1] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[1]_i_1_n_0 ),
        .Q(am2302_temp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[2] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[2]_i_1_n_0 ),
        .Q(am2302_temp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[3] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[3]_i_1_n_0 ),
        .Q(am2302_temp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[4] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[4]_i_1_n_0 ),
        .Q(am2302_temp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[5] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[5]_i_1_n_0 ),
        .Q(am2302_temp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[6] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[6]_i_1_n_0 ),
        .Q(am2302_temp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[7] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[7]_i_1_n_0 ),
        .Q(am2302_temp[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[8] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[8]_i_1_n_0 ),
        .Q(am2302_temp[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[9] 
       (.C(s00_axi_aclk),
        .CE(am2302_humi),
        .D(\am2302_temp[9]_i_1_n_0 ),
        .Q(am2302_temp[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\axi_rdata[0]_i_2_n_0 ),
        .I3(\axi_rdata_reg[0] ),
        .I4(\axi_rdata_reg[2] [0]),
        .I5(\axi_rdata_reg[0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_2 
       (.I0(am2302_temp[0]),
        .I1(\axi_rdata_reg[0]_1 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(status[0]),
        .I5(\am2302_humi_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[10]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[10] ),
        .I4(am2302_temp[10]),
        .I5(\axi_rdata_reg[10] ),
        .O(\axi_araddr_reg[4]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[11]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[11] ),
        .I4(am2302_temp[11]),
        .I5(\axi_rdata_reg[11] ),
        .O(\axi_araddr_reg[4]_7 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[12]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[12] ),
        .I4(am2302_temp[12]),
        .I5(\axi_rdata_reg[12] ),
        .O(\axi_araddr_reg[4]_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[13]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[13] ),
        .I4(am2302_temp[13]),
        .I5(\axi_rdata_reg[13] ),
        .O(\axi_araddr_reg[4]_9 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[14]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[14] ),
        .I4(am2302_temp[14]),
        .I5(\axi_rdata_reg[14] ),
        .O(\axi_araddr_reg[4]_10 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[15]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[15] ),
        .I4(am2302_temp[15]),
        .I5(\axi_rdata_reg[15] ),
        .O(\axi_araddr_reg[4]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[16]_i_2 
       (.I0(work_cnt_reg_1[0]),
        .I1(work_cnt_reg[0]),
        .I2(work_cnt_reg_0[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[17]_i_2 
       (.I0(work_cnt_reg_1[1]),
        .I1(work_cnt_reg[1]),
        .I2(work_cnt_reg_0[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[18]_i_2 
       (.I0(work_cnt_reg_1[2]),
        .I1(work_cnt_reg[2]),
        .I2(work_cnt_reg_0[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[19]_i_2 
       (.I0(work_cnt_reg_1[3]),
        .I1(work_cnt_reg[3]),
        .I2(work_cnt_reg_0[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\axi_rdata[1]_i_2_n_0 ),
        .I3(\axi_rdata_reg[1] ),
        .I4(\axi_rdata_reg[2] [1]),
        .I5(\axi_rdata_reg[0]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_2 
       (.I0(am2302_temp[1]),
        .I1(\axi_rdata_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(status[1]),
        .I5(\am2302_humi_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[20]_i_2 
       (.I0(work_cnt_reg_1[4]),
        .I1(work_cnt_reg[4]),
        .I2(work_cnt_reg_0[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[21]_i_2 
       (.I0(work_cnt_reg_1[5]),
        .I1(work_cnt_reg[5]),
        .I2(work_cnt_reg_0[5]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[22]_i_2 
       (.I0(work_cnt_reg_1[6]),
        .I1(work_cnt_reg[6]),
        .I2(work_cnt_reg_0[6]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[23]_i_2 
       (.I0(work_cnt_reg_1[7]),
        .I1(work_cnt_reg[7]),
        .I2(work_cnt_reg_0[7]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[24]_i_2 
       (.I0(work_cnt_reg_1[8]),
        .I1(work_cnt_reg[8]),
        .I2(work_cnt_reg_0[8]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[25]_i_2 
       (.I0(work_cnt_reg_1[9]),
        .I1(work_cnt_reg[9]),
        .I2(work_cnt_reg_0[9]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[26]_i_2 
       (.I0(work_cnt_reg_1[10]),
        .I1(work_cnt_reg[10]),
        .I2(work_cnt_reg_0[10]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[27]_i_2 
       (.I0(work_cnt_reg_1[11]),
        .I1(work_cnt_reg[11]),
        .I2(work_cnt_reg_0[11]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[28]_i_2 
       (.I0(work_cnt_reg_1[12]),
        .I1(work_cnt_reg[12]),
        .I2(work_cnt_reg_0[12]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[29]_i_2 
       (.I0(work_cnt_reg_1[13]),
        .I1(work_cnt_reg[13]),
        .I2(work_cnt_reg_0[13]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\axi_rdata[2]_i_2_n_0 ),
        .I3(\axi_rdata_reg[2]_0 ),
        .I4(\axi_rdata_reg[2] [2]),
        .I5(\axi_rdata_reg[0]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[2]_i_2 
       (.I0(am2302_temp[2]),
        .I1(\axi_rdata_reg[2]_1 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(status[2]),
        .I5(\am2302_humi_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(Q[3]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[30]_i_2 
       (.I0(work_cnt_reg_1[14]),
        .I1(work_cnt_reg[14]),
        .I2(work_cnt_reg_0[14]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(Q[3]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h00CC0000F00000AA)) 
    \axi_rdata[31]_i_3 
       (.I0(work_cnt_reg_1[15]),
        .I1(work_cnt_reg[15]),
        .I2(work_cnt_reg_0[15]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[3] ),
        .I4(am2302_temp[3]),
        .I5(\axi_rdata_reg[3] ),
        .O(\axi_araddr_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[4] ),
        .I4(am2302_temp[4]),
        .I5(\axi_rdata_reg[4] ),
        .O(\axi_araddr_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[5]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[5] ),
        .I4(am2302_temp[5]),
        .I5(\axi_rdata_reg[5] ),
        .O(\axi_araddr_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[6]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[6] ),
        .I4(am2302_temp[6]),
        .I5(\axi_rdata_reg[6] ),
        .O(\axi_araddr_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[7] ),
        .I4(am2302_temp[7]),
        .I5(\axi_rdata_reg[7] ),
        .O(\axi_araddr_reg[4]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[8]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[8] ),
        .I4(am2302_temp[8]),
        .I5(\axi_rdata_reg[8] ),
        .O(\axi_araddr_reg[4]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14100400)) 
    \axi_rdata[9]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\am2302_humi_reg_n_0_[9] ),
        .I4(am2302_temp[9]),
        .I5(\axi_rdata_reg[9] ),
        .O(\axi_araddr_reg[4]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hCE31)) 
    clk_1us_i_1
       (.I0(\us_cnt[7]_i_3_n_0 ),
        .I1(us_cnt_reg__0[7]),
        .I2(us_cnt_reg__0[6]),
        .I3(clk_1us),
        .O(clk_1us_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_1us_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_1us_i_1_n_0),
        .Q(clk_1us),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    clk_1ust_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_1us),
        .Q(clk_1ust),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry__0_i_1
       (.I0(R0_in[20]),
        .I1(R[28]),
        .I2(R1_in[12]),
        .I3(L[37]),
        .I4(i___2_carry__0_i_8_n_0),
        .O(i___2_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___2_carry__0_i_10
       (.I0(R1_in[13]),
        .I1(R[29]),
        .I2(R0_in[21]),
        .O(i___2_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___2_carry__0_i_11
       (.I0(R0_in[23]),
        .I1(R[31]),
        .I2(R1_in[15]),
        .I3(L[39]),
        .O(i___2_carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry__0_i_12
       (.I0(R1_in[14]),
        .I1(R[30]),
        .I2(R0_in[22]),
        .O(i___2_carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry__0_i_2
       (.I0(R0_in[19]),
        .I1(R[27]),
        .I2(R1_in[11]),
        .I3(L[36]),
        .I4(i___2_carry__0_i_9_n_0),
        .O(i___2_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry__0_i_3
       (.I0(R0_in[18]),
        .I1(R[26]),
        .I2(R1_in[10]),
        .I3(L[35]),
        .I4(i___2_carry_i_9_n_0),
        .O(i___2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    i___2_carry__0_i_4
       (.I0(L[38]),
        .I1(i___2_carry__0_i_10_n_0),
        .I2(i___2_carry__0_i_11_n_0),
        .I3(R1_in[14]),
        .I4(R[30]),
        .I5(R0_in[22]),
        .O(i___2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry__0_i_5
       (.I0(i___2_carry__0_i_1_n_0),
        .I1(i___2_carry__0_i_12_n_0),
        .I2(L[38]),
        .I3(R1_in[13]),
        .I4(R[29]),
        .I5(R0_in[21]),
        .O(i___2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry__0_i_6
       (.I0(i___2_carry__0_i_2_n_0),
        .I1(i___2_carry__0_i_8_n_0),
        .I2(L[37]),
        .I3(R1_in[12]),
        .I4(R[28]),
        .I5(R0_in[20]),
        .O(i___2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry__0_i_7
       (.I0(i___2_carry__0_i_3_n_0),
        .I1(i___2_carry__0_i_9_n_0),
        .I2(L[36]),
        .I3(R1_in[11]),
        .I4(R[27]),
        .I5(R0_in[19]),
        .O(i___2_carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry__0_i_8
       (.I0(R1_in[13]),
        .I1(R[29]),
        .I2(R0_in[21]),
        .O(i___2_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry__0_i_9
       (.I0(R1_in[12]),
        .I1(R[28]),
        .I2(R0_in[20]),
        .O(i___2_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry_i_1
       (.I0(R0_in[17]),
        .I1(R[25]),
        .I2(R1_in[9]),
        .I3(L[34]),
        .I4(i___2_carry_i_8_n_0),
        .O(i___2_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    i___2_carry_i_2
       (.I0(R0_in[17]),
        .I1(R[25]),
        .I2(R1_in[9]),
        .I3(L[34]),
        .I4(i___2_carry_i_8_n_0),
        .O(i___2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___2_carry_i_3
       (.I0(R0_in[17]),
        .I1(R[25]),
        .I2(R1_in[9]),
        .I3(L[33]),
        .O(i___2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry_i_4
       (.I0(i___2_carry_i_1_n_0),
        .I1(i___2_carry_i_9_n_0),
        .I2(L[35]),
        .I3(R1_in[10]),
        .I4(R[26]),
        .I5(R0_in[18]),
        .O(i___2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    i___2_carry_i_5
       (.I0(i___2_carry_i_8_n_0),
        .I1(L[34]),
        .I2(R1_in[9]),
        .I3(R[25]),
        .I4(R0_in[17]),
        .I5(L[33]),
        .O(i___2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    i___2_carry_i_6
       (.I0(i___2_carry_i_3_n_0),
        .I1(R0_in[16]),
        .I2(R[24]),
        .I3(R1_in[8]),
        .O(i___2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___2_carry_i_7
       (.I0(R0_in[16]),
        .I1(R[24]),
        .I2(R1_in[8]),
        .I3(L[32]),
        .O(i___2_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry_i_8
       (.I0(R1_in[10]),
        .I1(R[26]),
        .I2(R0_in[18]),
        .O(i___2_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry_i_9
       (.I0(R1_in[11]),
        .I1(R[27]),
        .I2(R0_in[19]),
        .O(i___2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__0_i_1
       (.I0(period_cnt[21]),
        .I1(period_cnt[20]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__0_i_2
       (.I0(period_cnt[17]),
        .I1(period_cnt[16]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(period_cnt[15]),
        .I1(period_cnt[14]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_4
       (.I0(period_cnt[20]),
        .I1(period_cnt[21]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(period_cnt[19]),
        .I1(period_cnt[18]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_6
       (.I0(period_cnt[16]),
        .I1(period_cnt[17]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_7
       (.I0(period_cnt[14]),
        .I1(period_cnt[15]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(period_cnt[27]),
        .I1(period_cnt[26]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__1_i_2
       (.I0(period_cnt[25]),
        .I1(period_cnt[24]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3
       (.I0(period_cnt[23]),
        .I1(period_cnt[22]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4
       (.I0(period_cnt[29]),
        .I1(period_cnt[28]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_5
       (.I0(period_cnt[26]),
        .I1(period_cnt[27]),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_6
       (.I0(period_cnt[24]),
        .I1(period_cnt[25]),
        .O(i__carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_7
       (.I0(period_cnt[22]),
        .I1(period_cnt[23]),
        .O(i__carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1
       (.I0(period_cnt[31]),
        .I1(period_cnt[30]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1
       (.I0(period_cnt[13]),
        .I1(period_cnt[12]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(period_cnt[11]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(period_cnt[9]),
        .I1(period_cnt[8]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(period_cnt[7]),
        .I1(period_cnt[6]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(period_cnt[12]),
        .I1(period_cnt[13]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(period_cnt[11]),
        .I1(period_cnt[10]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7
       (.I0(period_cnt[8]),
        .I1(period_cnt[9]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8
       (.I0(period_cnt[6]),
        .I1(period_cnt[7]),
        .O(i__carry_i_8_n_0));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    inst_am2302_io
       (.I(I),
        .IO(AM2302_SDA_1),
        .O(s_data_in1),
        .T(T));
  CARRY4 ltOp_carry
       (.CI(1'b0),
        .CO({ltOp_carry_n_0,ltOp_carry_n_1,ltOp_carry_n_2,ltOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ltOp_carry_i_1_n_0,ltOp_carry_i_2_n_0,ltOp_carry_i_3_n_0}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_4_n_0,ltOp_carry_i_5_n_0,ltOp_carry_i_6_n_0,ltOp_carry_i_7_n_0}));
  CARRY4 ltOp_carry__0
       (.CI(ltOp_carry_n_0),
        .CO({ltOp_carry__0_n_0,ltOp_carry__0_n_1,ltOp_carry__0_n_2,ltOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ltOp_carry__0_i_1_n_0,1'b0}),
        .O(NLW_ltOp_carry__0_O_UNCONNECTED[3:0]),
        .S({ltOp_carry__0_i_2_n_0,ltOp_carry__0_i_3_n_0,ltOp_carry__0_i_4_n_0,ltOp_carry__0_i_5_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry__0_i_1
       (.I0(period_cnt[15]),
        .I1(period_cnt[14]),
        .O(ltOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_2
       (.I0(period_cnt[19]),
        .I1(period_cnt[18]),
        .O(ltOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_3
       (.I0(period_cnt[17]),
        .I1(period_cnt[16]),
        .O(ltOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry__0_i_4
       (.I0(period_cnt[14]),
        .I1(period_cnt[15]),
        .O(ltOp_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_5
       (.I0(period_cnt[13]),
        .I1(period_cnt[12]),
        .O(ltOp_carry__0_i_5_n_0));
  CARRY4 ltOp_carry__1
       (.CI(ltOp_carry__0_n_0),
        .CO({ltOp_carry__1_n_0,ltOp_carry__1_n_1,ltOp_carry__1_n_2,ltOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ltOp_carry__1_O_UNCONNECTED[3:0]),
        .S({ltOp_carry__1_i_1_n_0,ltOp_carry__1_i_2_n_0,ltOp_carry__1_i_3_n_0,ltOp_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_1
       (.I0(period_cnt[27]),
        .I1(period_cnt[26]),
        .O(ltOp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_2
       (.I0(period_cnt[25]),
        .I1(period_cnt[24]),
        .O(ltOp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_3
       (.I0(period_cnt[23]),
        .I1(period_cnt[22]),
        .O(ltOp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_4
       (.I0(period_cnt[21]),
        .I1(period_cnt[20]),
        .O(ltOp_carry__1_i_4_n_0));
  CARRY4 ltOp_carry__2
       (.CI(ltOp_carry__1_n_0),
        .CO({NLW_ltOp_carry__2_CO_UNCONNECTED[3:2],ltOp_carry__2_n_2,ltOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,period_cnt[31],1'b0}),
        .O(NLW_ltOp_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ltOp_carry__2_i_1_n_0,ltOp_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__2_i_1
       (.I0(period_cnt[31]),
        .I1(period_cnt[30]),
        .O(ltOp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__2_i_2
       (.I0(period_cnt[29]),
        .I1(period_cnt[28]),
        .O(ltOp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry_i_1
       (.I0(period_cnt[9]),
        .I1(period_cnt[8]),
        .O(ltOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_2
       (.I0(period_cnt[7]),
        .I1(period_cnt[6]),
        .O(ltOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_3
       (.I0(period_cnt[5]),
        .I1(period_cnt[4]),
        .O(ltOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_4
       (.I0(period_cnt[11]),
        .I1(period_cnt[10]),
        .O(ltOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry_i_5
       (.I0(period_cnt[8]),
        .I1(period_cnt[9]),
        .O(ltOp_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_6
       (.I0(period_cnt[6]),
        .I1(period_cnt[7]),
        .O(ltOp_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_7
       (.I0(period_cnt[4]),
        .I1(period_cnt[5]),
        .O(ltOp_carry_i_7_n_0));
  CARRY4 \ltOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ltOp_inferred__0/i__carry_n_0 ,\ltOp_inferred__0/i__carry_n_1 ,\ltOp_inferred__0/i__carry_n_2 ,\ltOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \ltOp_inferred__0/i__carry__0 
       (.CI(\ltOp_inferred__0/i__carry_n_0 ),
        .CO({\ltOp_inferred__0/i__carry__0_n_0 ,\ltOp_inferred__0/i__carry__0_n_1 ,\ltOp_inferred__0/i__carry__0_n_2 ,\ltOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,1'b0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}),
        .O(\NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0}));
  CARRY4 \ltOp_inferred__0/i__carry__1 
       (.CI(\ltOp_inferred__0/i__carry__0_n_0 ),
        .CO({\ltOp_inferred__0/i__carry__1_n_0 ,\ltOp_inferred__0/i__carry__1_n_1 ,\ltOp_inferred__0/i__carry__1_n_2 ,\ltOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}),
        .O(\NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_4_n_0,i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0}));
  CARRY4 \ltOp_inferred__0/i__carry__2 
       (.CI(\ltOp_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED [3:1],ltOp}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,period_cnt[31]}),
        .O(\NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__2_i_1_n_0}));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(minusOp[3:0]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,\am2302_temp1_reg_n_0_[0] }));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(minusOp[7:4]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(\am2302_temp1_reg_n_0_[7] ),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(\am2302_temp1_reg_n_0_[6] ),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(\am2302_temp1_reg_n_0_[5] ),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(\am2302_temp1_reg_n_0_[4] ),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(minusOp[11:8]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(\am2302_temp1_reg_n_0_[11] ),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(\am2302_temp1_reg_n_0_[10] ),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(\am2302_temp1_reg_n_0_[9] ),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(\am2302_temp1_reg_n_0_[8] ),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp[14:12]}),
        .S({1'b0,minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(\am2302_temp1_reg_n_0_[14] ),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(\am2302_temp1_reg_n_0_[13] ),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(\am2302_temp1_reg_n_0_[12] ),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(\am2302_temp1_reg_n_0_[3] ),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(\am2302_temp1_reg_n_0_[2] ),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(\am2302_temp1_reg_n_0_[1] ),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \period_cnt[0]_i_1 
       (.I0(period_cnt[0]),
        .O(\period_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    \period_cnt[31]_i_1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(ltOp),
        .I4(\state_am2302_reg[0]_0 ),
        .I5(ltOp_carry__2_n_2),
        .O(\period_cnt[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \period_cnt[31]_i_2 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302_reg[3]_0 ),
        .O(s_data_out2_out));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(\period_cnt[0]_i_1_n_0 ),
        .Q(period_cnt[0]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[10]),
        .Q(period_cnt[10]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[11]),
        .Q(period_cnt[11]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[12]),
        .Q(period_cnt[12]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[13]),
        .Q(period_cnt[13]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[14]),
        .Q(period_cnt[14]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[15]),
        .Q(period_cnt[15]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[16]),
        .Q(period_cnt[16]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[17]),
        .Q(period_cnt[17]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[18]),
        .Q(period_cnt[18]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[19]),
        .Q(period_cnt[19]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[1]),
        .Q(period_cnt[1]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[20]),
        .Q(period_cnt[20]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[21]),
        .Q(period_cnt[21]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[22]),
        .Q(period_cnt[22]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[23]),
        .Q(period_cnt[23]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[24]),
        .Q(period_cnt[24]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[25]),
        .Q(period_cnt[25]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[26] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[26]),
        .Q(period_cnt[26]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[27] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[27]),
        .Q(period_cnt[27]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[28] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[28]),
        .Q(period_cnt[28]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[29] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[29]),
        .Q(period_cnt[29]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[2]),
        .Q(period_cnt[2]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[30] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[30]),
        .Q(period_cnt[30]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[31] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[31]),
        .Q(period_cnt[31]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[3]),
        .Q(period_cnt[3]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[4]),
        .Q(period_cnt[4]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[5]),
        .Q(period_cnt[5]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[6]),
        .Q(period_cnt[6]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[7]),
        .Q(period_cnt[7]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[8]),
        .Q(period_cnt[8]),
        .R(\period_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(s_data_out2_out),
        .D(plusOp_0[9]),
        .Q(period_cnt[9]),
        .R(\period_cnt[31]_i_1_n_0 ));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(period_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[4:1]),
        .S(period_cnt[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[8:5]),
        .S(period_cnt[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[12:9]),
        .S(period_cnt[12:9]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[16:13]),
        .S(period_cnt[16:13]));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[20:17]),
        .S(period_cnt[20:17]));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[24:21]),
        .S(period_cnt[24:21]));
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[28:25]),
        .S(period_cnt[28:25]));
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],plusOp_0[31:29]}),
        .S({1'b0,period_cnt[31:29]}));
  CARRY4 \plusOp_inferred__3/i___2_carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__3/i___2_carry_n_0 ,\plusOp_inferred__3/i___2_carry_n_1 ,\plusOp_inferred__3/i___2_carry_n_2 ,\plusOp_inferred__3/i___2_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___2_carry_i_1_n_0,i___2_carry_i_2_n_0,i___2_carry_i_3_n_0,L[32]}),
        .O(plusOp43[3:0]),
        .S({i___2_carry_i_4_n_0,i___2_carry_i_5_n_0,i___2_carry_i_6_n_0,i___2_carry_i_7_n_0}));
  CARRY4 \plusOp_inferred__3/i___2_carry__0 
       (.CI(\plusOp_inferred__3/i___2_carry_n_0 ),
        .CO({\NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED [3],\plusOp_inferred__3/i___2_carry__0_n_1 ,\plusOp_inferred__3/i___2_carry__0_n_2 ,\plusOp_inferred__3/i___2_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i___2_carry__0_i_1_n_0,i___2_carry__0_i_2_n_0,i___2_carry__0_i_3_n_0}),
        .O(plusOp43[7:4]),
        .S({i___2_carry__0_i_4_n_0,i___2_carry__0_i_5_n_0,i___2_carry__0_i_6_n_0,i___2_carry__0_i_7_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[0]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(\rx_data_reg_n_0_[0] ),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[10]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[15]_i_2_n_0 ),
        .I5(R1_in[10]),
        .O(\rx_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[11]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[15]_i_2_n_0 ),
        .I5(R1_in[11]),
        .O(\rx_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[12]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[15]_i_2_n_0 ),
        .I5(R1_in[12]),
        .O(\rx_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[13]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[15]_i_2_n_0 ),
        .I5(R1_in[13]),
        .O(\rx_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[14]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[15]_i_2_n_0 ),
        .I5(R1_in[14]),
        .O(\rx_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[15]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[15]_i_2_n_0 ),
        .I5(R1_in[15]),
        .O(\rx_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \rx_data[15]_i_2 
       (.I0(rx_index[4]),
        .I1(rx_index[3]),
        .I2(rx_index[5]),
        .I3(\rx_data[39]_i_7_n_0 ),
        .O(\rx_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[16]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[23]_i_2_n_0 ),
        .I5(R0_in[16]),
        .O(\rx_data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[17]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[23]_i_2_n_0 ),
        .I5(R0_in[17]),
        .O(\rx_data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[18]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[23]_i_2_n_0 ),
        .I5(R0_in[18]),
        .O(\rx_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[19]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[23]_i_2_n_0 ),
        .I5(R0_in[19]),
        .O(\rx_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[1]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(\rx_data_reg_n_0_[1] ),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[20]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[23]_i_2_n_0 ),
        .I5(R0_in[20]),
        .O(\rx_data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[21]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[23]_i_2_n_0 ),
        .I5(R0_in[21]),
        .O(\rx_data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[22]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[23]_i_2_n_0 ),
        .I5(R0_in[22]),
        .O(\rx_data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[23]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[23]_i_2_n_0 ),
        .I5(R0_in[23]),
        .O(\rx_data[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rx_data[23]_i_2 
       (.I0(rx_index[4]),
        .I1(rx_index[3]),
        .I2(rx_index[5]),
        .I3(\rx_data[39]_i_7_n_0 ),
        .O(\rx_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[24]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[31]_i_3_n_0 ),
        .I5(R[24]),
        .O(\rx_data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[25]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[31]_i_3_n_0 ),
        .I5(R[25]),
        .O(\rx_data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[26]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[31]_i_3_n_0 ),
        .I5(R[26]),
        .O(\rx_data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[27]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[31]_i_3_n_0 ),
        .I5(R[27]),
        .O(\rx_data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[28]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[31]_i_3_n_0 ),
        .I5(R[28]),
        .O(\rx_data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[29]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[31]_i_3_n_0 ),
        .I5(R[29]),
        .O(\rx_data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[2]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(\rx_data_reg_n_0_[2] ),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[30]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[31]_i_3_n_0 ),
        .I5(R[30]),
        .O(\rx_data[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[31]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[31]_i_3_n_0 ),
        .I5(R[31]),
        .O(\rx_data[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBFFFBFFFFFFF)) 
    \rx_data[31]_i_2 
       (.I0(s_data_in),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(state_am23021),
        .I5(state_am230215_out),
        .O(\rx_data[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \rx_data[31]_i_3 
       (.I0(rx_index[3]),
        .I1(rx_index[4]),
        .I2(rx_index[5]),
        .I3(\rx_data[39]_i_7_n_0 ),
        .O(\rx_data[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2223222000000000)) 
    \rx_data[31]_i_4 
       (.I0(\rx_data[31]_i_5_n_0 ),
        .I1(us_count[7]),
        .I2(\rx_data[31]_i_6_n_0 ),
        .I3(us_count[3]),
        .I4(\state_am2302[3]_i_25_n_0 ),
        .I5(us_count[6]),
        .O(state_am23021));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    \rx_data[31]_i_5 
       (.I0(us_count[2]),
        .I1(us_count[5]),
        .I2(us_count[4]),
        .I3(us_count[1]),
        .I4(us_count[0]),
        .O(\rx_data[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[31]_i_6 
       (.I0(us_count[5]),
        .I1(us_count[4]),
        .O(\rx_data[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[32]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2_n_0 ),
        .I3(\rx_data[39]_i_4_n_0 ),
        .I4(L[32]),
        .O(\rx_data[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_data[32]_i_2 
       (.I0(rx_index[2]),
        .I1(rx_index[0]),
        .I2(rx_index[1]),
        .O(\rx_data[32]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[33]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2_n_0 ),
        .I3(\rx_data[39]_i_4_n_0 ),
        .I4(L[33]),
        .O(\rx_data[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rx_data[33]_i_2 
       (.I0(rx_index[0]),
        .I1(rx_index[1]),
        .I2(rx_index[2]),
        .O(\rx_data[33]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[34]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2_n_0 ),
        .I3(\rx_data[39]_i_4_n_0 ),
        .I4(L[34]),
        .O(\rx_data[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rx_data[34]_i_2 
       (.I0(rx_index[1]),
        .I1(rx_index[0]),
        .I2(rx_index[2]),
        .O(\rx_data[34]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[35]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2_n_0 ),
        .I3(\rx_data[39]_i_4_n_0 ),
        .I4(L[35]),
        .O(\rx_data[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \rx_data[35]_i_2 
       (.I0(rx_index[0]),
        .I1(rx_index[1]),
        .I2(rx_index[2]),
        .O(\rx_data[35]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[36]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2_n_0 ),
        .I3(\rx_data[39]_i_4_n_0 ),
        .I4(L[36]),
        .O(\rx_data[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rx_data[36]_i_2 
       (.I0(rx_index[2]),
        .I1(rx_index[0]),
        .I2(rx_index[1]),
        .O(\rx_data[36]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[37]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2_n_0 ),
        .I3(\rx_data[39]_i_4_n_0 ),
        .I4(L[37]),
        .O(\rx_data[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rx_data[37]_i_2 
       (.I0(rx_index[0]),
        .I1(rx_index[1]),
        .I2(rx_index[2]),
        .O(\rx_data[37]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[38]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2_n_0 ),
        .I3(\rx_data[39]_i_4_n_0 ),
        .I4(L[38]),
        .O(\rx_data[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rx_data[38]_i_2 
       (.I0(rx_index[1]),
        .I1(rx_index[0]),
        .I2(rx_index[2]),
        .O(\rx_data[38]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[39]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3_n_0 ),
        .I3(\rx_data[39]_i_4_n_0 ),
        .I4(L[39]),
        .O(\rx_data[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[39]_i_10 
       (.I0(rx_index[25]),
        .I1(rx_index[26]),
        .O(\rx_data[39]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_data[39]_i_11 
       (.I0(rx_index[30]),
        .I1(rx_index[31]),
        .I2(rx_index[29]),
        .I3(rx_index[28]),
        .O(\rx_data[39]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[39]_i_12 
       (.I0(rx_index[7]),
        .I1(rx_index[8]),
        .O(\rx_data[39]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4444444044404440)) 
    \rx_data[39]_i_2 
       (.I0(us_count[7]),
        .I1(\rx_data[39]_i_5_n_0 ),
        .I2(us_count[6]),
        .I3(us_count[5]),
        .I4(\rx_data[39]_i_6_n_0 ),
        .I5(us_count[4]),
        .O(state_am230215_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rx_data[39]_i_3 
       (.I0(rx_index[0]),
        .I1(rx_index[1]),
        .I2(rx_index[2]),
        .O(\rx_data[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \rx_data[39]_i_4 
       (.I0(\rx_data[31]_i_2_n_0 ),
        .I1(\rx_data[39]_i_7_n_0 ),
        .I2(rx_index[4]),
        .I3(rx_index[3]),
        .I4(rx_index[5]),
        .O(\rx_data[39]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000007F)) 
    \rx_data[39]_i_5 
       (.I0(us_count[2]),
        .I1(us_count[1]),
        .I2(us_count[3]),
        .I3(us_count[5]),
        .I4(us_count[6]),
        .O(\rx_data[39]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \rx_data[39]_i_6 
       (.I0(us_count[0]),
        .I1(us_count[1]),
        .I2(us_count[2]),
        .I3(us_count[3]),
        .O(\rx_data[39]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_data[39]_i_7 
       (.I0(\rx_data[39]_i_8_n_0 ),
        .I1(\rx_data[39]_i_9_n_0 ),
        .I2(rx_index[15]),
        .I3(rx_index[12]),
        .I4(rx_index[9]),
        .I5(\rx_index[31]_i_10_n_0 ),
        .O(\rx_data[39]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_data[39]_i_8 
       (.I0(rx_index[21]),
        .I1(\state_am2302[3]_i_26_n_0 ),
        .I2(rx_index[24]),
        .I3(\rx_data[39]_i_10_n_0 ),
        .I4(rx_index[27]),
        .I5(\rx_data[39]_i_11_n_0 ),
        .O(\rx_data[39]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_data[39]_i_9 
       (.I0(rx_index[10]),
        .I1(rx_index[11]),
        .I2(rx_index[13]),
        .I3(rx_index[14]),
        .I4(\rx_data[39]_i_12_n_0 ),
        .I5(rx_index[6]),
        .O(\rx_data[39]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[3]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(\rx_data_reg_n_0_[3] ),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[4]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(\rx_data_reg_n_0_[4] ),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[5]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(\rx_data_reg_n_0_[5] ),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[6]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(\rx_data_reg_n_0_[6] ),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[7]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(\rx_data_reg_n_0_[7] ),
        .O(\rx_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_data[7]_i_2 
       (.I0(rx_index[4]),
        .I1(rx_index[3]),
        .I2(rx_index[5]),
        .I3(\rx_data[39]_i_7_n_0 ),
        .O(\rx_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[8]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[15]_i_2_n_0 ),
        .I5(R1_in[8]),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[9]_i_1 
       (.I0(state_am230215_out),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2_n_0 ),
        .I3(\rx_data[31]_i_2_n_0 ),
        .I4(\rx_data[15]_i_2_n_0 ),
        .I5(R1_in[9]),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[10]_i_1_n_0 ),
        .Q(R1_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[11]_i_1_n_0 ),
        .Q(R1_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[12]_i_1_n_0 ),
        .Q(R1_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[13]_i_1_n_0 ),
        .Q(R1_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[14]_i_1_n_0 ),
        .Q(R1_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[15]_i_1_n_0 ),
        .Q(R1_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[16]_i_1_n_0 ),
        .Q(R0_in[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[17]_i_1_n_0 ),
        .Q(R0_in[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[18]_i_1_n_0 ),
        .Q(R0_in[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[19]_i_1_n_0 ),
        .Q(R0_in[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[20]_i_1_n_0 ),
        .Q(R0_in[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[21]_i_1_n_0 ),
        .Q(R0_in[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[22]_i_1_n_0 ),
        .Q(R0_in[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[23]_i_1_n_0 ),
        .Q(R0_in[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[24]_i_1_n_0 ),
        .Q(R[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[25]_i_1_n_0 ),
        .Q(R[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[26]_i_1_n_0 ),
        .Q(R[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[27]_i_1_n_0 ),
        .Q(R[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[28]_i_1_n_0 ),
        .Q(R[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[29]_i_1_n_0 ),
        .Q(R[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[30]_i_1_n_0 ),
        .Q(R[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[31]_i_1_n_0 ),
        .Q(R[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[32] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[32]_i_1_n_0 ),
        .Q(L[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[33] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[33]_i_1_n_0 ),
        .Q(L[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[34] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[34]_i_1_n_0 ),
        .Q(L[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[35] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[35]_i_1_n_0 ),
        .Q(L[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[36] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[36]_i_1_n_0 ),
        .Q(L[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[37] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[37]_i_1_n_0 ),
        .Q(L[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[38] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[38]_i_1_n_0 ),
        .Q(L[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[39] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[39]_i_1_n_0 ),
        .Q(L[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(\rx_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(R1_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[9]_i_1_n_0 ),
        .Q(R1_in[9]),
        .R(1'b0));
  CARRY4 rx_index0_carry
       (.CI(1'b0),
        .CO({rx_index0_carry_n_0,rx_index0_carry_n_1,rx_index0_carry_n_2,rx_index0_carry_n_3}),
        .CYINIT(rx_index[0]),
        .DI(rx_index[4:1]),
        .O({rx_index0_carry_n_4,rx_index0_carry_n_5,rx_index0_carry_n_6,rx_index0_carry_n_7}),
        .S({rx_index0_carry_i_1_n_0,rx_index0_carry_i_2_n_0,rx_index0_carry_i_3_n_0,rx_index0_carry_i_4_n_0}));
  CARRY4 rx_index0_carry__0
       (.CI(rx_index0_carry_n_0),
        .CO({rx_index0_carry__0_n_0,rx_index0_carry__0_n_1,rx_index0_carry__0_n_2,rx_index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rx_index[8:5]),
        .O({rx_index0_carry__0_n_4,rx_index0_carry__0_n_5,rx_index0_carry__0_n_6,rx_index0_carry__0_n_7}),
        .S({rx_index0_carry__0_i_1_n_0,rx_index0_carry__0_i_2_n_0,rx_index0_carry__0_i_3_n_0,rx_index0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_1
       (.I0(rx_index[8]),
        .O(rx_index0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_2
       (.I0(rx_index[7]),
        .O(rx_index0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_3
       (.I0(rx_index[6]),
        .O(rx_index0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_4
       (.I0(rx_index[5]),
        .O(rx_index0_carry__0_i_4_n_0));
  CARRY4 rx_index0_carry__1
       (.CI(rx_index0_carry__0_n_0),
        .CO({rx_index0_carry__1_n_0,rx_index0_carry__1_n_1,rx_index0_carry__1_n_2,rx_index0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(rx_index[12:9]),
        .O({rx_index0_carry__1_n_4,rx_index0_carry__1_n_5,rx_index0_carry__1_n_6,rx_index0_carry__1_n_7}),
        .S({rx_index0_carry__1_i_1_n_0,rx_index0_carry__1_i_2_n_0,rx_index0_carry__1_i_3_n_0,rx_index0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_1
       (.I0(rx_index[12]),
        .O(rx_index0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_2
       (.I0(rx_index[11]),
        .O(rx_index0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_3
       (.I0(rx_index[10]),
        .O(rx_index0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_4
       (.I0(rx_index[9]),
        .O(rx_index0_carry__1_i_4_n_0));
  CARRY4 rx_index0_carry__2
       (.CI(rx_index0_carry__1_n_0),
        .CO({rx_index0_carry__2_n_0,rx_index0_carry__2_n_1,rx_index0_carry__2_n_2,rx_index0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(rx_index[16:13]),
        .O({rx_index0_carry__2_n_4,rx_index0_carry__2_n_5,rx_index0_carry__2_n_6,rx_index0_carry__2_n_7}),
        .S({rx_index0_carry__2_i_1_n_0,rx_index0_carry__2_i_2_n_0,rx_index0_carry__2_i_3_n_0,rx_index0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_1
       (.I0(rx_index[16]),
        .O(rx_index0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_2
       (.I0(rx_index[15]),
        .O(rx_index0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_3
       (.I0(rx_index[14]),
        .O(rx_index0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_4
       (.I0(rx_index[13]),
        .O(rx_index0_carry__2_i_4_n_0));
  CARRY4 rx_index0_carry__3
       (.CI(rx_index0_carry__2_n_0),
        .CO({rx_index0_carry__3_n_0,rx_index0_carry__3_n_1,rx_index0_carry__3_n_2,rx_index0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(rx_index[20:17]),
        .O({rx_index0_carry__3_n_4,rx_index0_carry__3_n_5,rx_index0_carry__3_n_6,rx_index0_carry__3_n_7}),
        .S({rx_index0_carry__3_i_1_n_0,rx_index0_carry__3_i_2_n_0,rx_index0_carry__3_i_3_n_0,rx_index0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_1
       (.I0(rx_index[20]),
        .O(rx_index0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_2
       (.I0(rx_index[19]),
        .O(rx_index0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_3
       (.I0(rx_index[18]),
        .O(rx_index0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_4
       (.I0(rx_index[17]),
        .O(rx_index0_carry__3_i_4_n_0));
  CARRY4 rx_index0_carry__4
       (.CI(rx_index0_carry__3_n_0),
        .CO({rx_index0_carry__4_n_0,rx_index0_carry__4_n_1,rx_index0_carry__4_n_2,rx_index0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(rx_index[24:21]),
        .O({rx_index0_carry__4_n_4,rx_index0_carry__4_n_5,rx_index0_carry__4_n_6,rx_index0_carry__4_n_7}),
        .S({rx_index0_carry__4_i_1_n_0,rx_index0_carry__4_i_2_n_0,rx_index0_carry__4_i_3_n_0,rx_index0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_1
       (.I0(rx_index[24]),
        .O(rx_index0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_2
       (.I0(rx_index[23]),
        .O(rx_index0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_3
       (.I0(rx_index[22]),
        .O(rx_index0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_4
       (.I0(rx_index[21]),
        .O(rx_index0_carry__4_i_4_n_0));
  CARRY4 rx_index0_carry__5
       (.CI(rx_index0_carry__4_n_0),
        .CO({rx_index0_carry__5_n_0,rx_index0_carry__5_n_1,rx_index0_carry__5_n_2,rx_index0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(rx_index[28:25]),
        .O({rx_index0_carry__5_n_4,rx_index0_carry__5_n_5,rx_index0_carry__5_n_6,rx_index0_carry__5_n_7}),
        .S({rx_index0_carry__5_i_1_n_0,rx_index0_carry__5_i_2_n_0,rx_index0_carry__5_i_3_n_0,rx_index0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_1
       (.I0(rx_index[28]),
        .O(rx_index0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_2
       (.I0(rx_index[27]),
        .O(rx_index0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_3
       (.I0(rx_index[26]),
        .O(rx_index0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_4
       (.I0(rx_index[25]),
        .O(rx_index0_carry__5_i_4_n_0));
  CARRY4 rx_index0_carry__6
       (.CI(rx_index0_carry__5_n_0),
        .CO({NLW_rx_index0_carry__6_CO_UNCONNECTED[3:2],rx_index0_carry__6_n_2,rx_index0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rx_index[30:29]}),
        .O({NLW_rx_index0_carry__6_O_UNCONNECTED[3],rx_index0_carry__6_n_5,rx_index0_carry__6_n_6,rx_index0_carry__6_n_7}),
        .S({1'b0,rx_index0_carry__6_i_1_n_0,rx_index0_carry__6_i_2_n_0,rx_index0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__6_i_1
       (.I0(rx_index[31]),
        .O(rx_index0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__6_i_2
       (.I0(rx_index[30]),
        .O(rx_index0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__6_i_3
       (.I0(rx_index[29]),
        .O(rx_index0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_1
       (.I0(rx_index[4]),
        .O(rx_index0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_2
       (.I0(rx_index[3]),
        .O(rx_index0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_3
       (.I0(rx_index[2]),
        .O(rx_index0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_4
       (.I0(rx_index[1]),
        .O(rx_index0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rx_index[0]_i_1 
       (.I0(rx_index[0]),
        .O(\rx_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040004000000040)) 
    \rx_index[31]_i_1 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(\rx_index[31]_i_3_n_0 ),
        .I5(\rx_index[31]_i_4_n_0 ),
        .O(\rx_index[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_index[31]_i_10 
       (.I0(rx_index[18]),
        .I1(rx_index[20]),
        .I2(rx_index[19]),
        .O(\rx_index[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0140014000000140)) 
    \rx_index[31]_i_2 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(\rx_index[31]_i_3_n_0 ),
        .I5(\rx_index[31]_i_4_n_0 ),
        .O(rx_index0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \rx_index[31]_i_3 
       (.I0(rx_index[6]),
        .I1(rx_index[5]),
        .I2(rx_index[2]),
        .I3(\rx_index[31]_i_5_n_0 ),
        .I4(\rx_index[31]_i_6_n_0 ),
        .I5(\rx_index[31]_i_7_n_0 ),
        .O(\rx_index[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_index[31]_i_4 
       (.I0(\rx_index[31]_i_8_n_0 ),
        .I1(rx_index[16]),
        .I2(rx_index[17]),
        .I3(rx_index[23]),
        .I4(rx_index[21]),
        .I5(\rx_index[31]_i_9_n_0 ),
        .O(\rx_index[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_index[31]_i_5 
       (.I0(rx_index[12]),
        .I1(rx_index[11]),
        .I2(rx_index[10]),
        .I3(rx_index[9]),
        .O(\rx_index[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_index[31]_i_6 
       (.I0(rx_index[0]),
        .I1(rx_index[1]),
        .I2(rx_index[31]),
        .I3(rx_index[15]),
        .O(\rx_index[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rx_index[31]_i_7 
       (.I0(rx_index[13]),
        .I1(rx_index[14]),
        .I2(rx_index[7]),
        .I3(rx_index[8]),
        .I4(rx_index[4]),
        .I5(rx_index[3]),
        .O(\rx_index[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_index[31]_i_8 
       (.I0(rx_index[24]),
        .I1(rx_index[22]),
        .I2(rx_index[25]),
        .I3(rx_index[26]),
        .I4(rx_index[27]),
        .O(\rx_index[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_index[31]_i_9 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(rx_index[30]),
        .I2(rx_index[29]),
        .I3(rx_index[28]),
        .I4(\rx_index[31]_i_10_n_0 ),
        .O(\rx_index[31]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(\rx_index[0]_i_1_n_0 ),
        .Q(rx_index[0]),
        .S(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__1_n_6),
        .Q(rx_index[10]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__1_n_5),
        .Q(rx_index[11]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__1_n_4),
        .Q(rx_index[12]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__2_n_7),
        .Q(rx_index[13]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__2_n_6),
        .Q(rx_index[14]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__2_n_5),
        .Q(rx_index[15]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[16] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__2_n_4),
        .Q(rx_index[16]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[17] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__3_n_7),
        .Q(rx_index[17]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[18] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__3_n_6),
        .Q(rx_index[18]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[19] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__3_n_5),
        .Q(rx_index[19]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry_n_7),
        .Q(rx_index[1]),
        .S(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[20] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__3_n_4),
        .Q(rx_index[20]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[21] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__4_n_7),
        .Q(rx_index[21]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[22] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__4_n_6),
        .Q(rx_index[22]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[23] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__4_n_5),
        .Q(rx_index[23]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[24] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__4_n_4),
        .Q(rx_index[24]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[25] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__5_n_7),
        .Q(rx_index[25]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[26] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__5_n_6),
        .Q(rx_index[26]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[27] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__5_n_5),
        .Q(rx_index[27]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[28] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__5_n_4),
        .Q(rx_index[28]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[29] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__6_n_7),
        .Q(rx_index[29]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry_n_6),
        .Q(rx_index[2]),
        .S(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[30] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__6_n_6),
        .Q(rx_index[30]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[31] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__6_n_5),
        .Q(rx_index[31]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry_n_5),
        .Q(rx_index[3]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry_n_4),
        .Q(rx_index[4]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__0_n_7),
        .Q(rx_index[5]),
        .S(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__0_n_6),
        .Q(rx_index[6]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__0_n_5),
        .Q(rx_index[7]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__0_n_4),
        .Q(rx_index[8]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rx_index0),
        .D(rx_index0_carry__1_n_7),
        .Q(rx_index[9]),
        .R(\rx_index[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    s_data_ctrl1_i_1
       (.I0(s_data_ctrl_tristate_oe_reg_0),
        .I1(s_data_ctrl1_reg_0),
        .O(s_data_ctrl));
  FDRE s_data_ctrl1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_ctrl),
        .Q(T),
        .R(1'b0));
  FDRE s_data_ctrl_tristate_oe_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_ctrl_tristate_oe_reg_1),
        .Q(s_data_ctrl_tristate_oe_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    s_data_in_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_in1),
        .Q(s_data_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_data_out1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_out),
        .Q(I),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    s_data_out_i_1
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(s_data_out),
        .O(s_data_out_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    s_data_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_out_i_1_n_0),
        .Q(s_data_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA0A0EFE0)) 
    \state_am2302[0]_i_1 
       (.I0(\state_am2302[0]_i_2_n_0 ),
        .I1(\state_am2302[3]_i_6_n_0 ),
        .I2(\state_am2302[3]_i_7_n_0 ),
        .I3(\state_am2302[3]_i_8_n_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001FF0100)) 
    \state_am2302[0]_i_2 
       (.I0(\state_am2302[3]_i_10_n_0 ),
        .I1(\state_am2302[3]_i_11_n_0 ),
        .I2(\state_am2302[3]_i_12_n_0 ),
        .I3(\state_am2302[3]_i_13_n_0 ),
        .I4(\state_am2302[3]_i_14_n_0 ),
        .I5(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFE00FA00FA00)) 
    \state_am2302[1]_i_1 
       (.I0(\state_am2302[1]_i_2_n_0 ),
        .I1(\state_am2302[3]_i_6_n_0 ),
        .I2(\state_am2302[1]_i_3_n_0 ),
        .I3(\state_am2302[3]_i_7_n_0 ),
        .I4(\state_am2302[3]_i_8_n_0 ),
        .I5(data0[1]),
        .O(\state_am2302[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0802A0A0)) 
    \state_am2302[1]_i_2 
       (.I0(\state_am2302[3]_i_14_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1100002210000020)) 
    \state_am2302[1]_i_3 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302[3]_i_10_n_0 ),
        .I3(\state_am2302_reg[1]_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .I5(\state_am2302[3]_i_12_n_0 ),
        .O(\state_am2302[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state_am2302[1]_i_4 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .O(data0[1]));
  LUT6 #(
    .INIT(64'hFEFFFE00FA00FA00)) 
    \state_am2302[2]_i_1 
       (.I0(\state_am2302[2]_i_2_n_0 ),
        .I1(\state_am2302[3]_i_6_n_0 ),
        .I2(\state_am2302[2]_i_3_n_0 ),
        .I3(\state_am2302[3]_i_7_n_0 ),
        .I4(\state_am2302[3]_i_8_n_0 ),
        .I5(data0[2]),
        .O(\state_am2302[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0880A800)) 
    \state_am2302[2]_i_2 
       (.I0(\state_am2302[3]_i_14_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000500A00005008)) 
    \state_am2302[2]_i_3 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302[3]_i_10_n_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[0]_0 ),
        .I4(\state_am2302_reg[2]_0 ),
        .I5(\state_am2302[3]_i_12_n_0 ),
        .O(\state_am2302[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \state_am2302[2]_i_4 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .O(data0[2]));
  LUT6 #(
    .INIT(64'hAAFAFAFAEEEEAAEE)) 
    \state_am2302[3]_i_1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302[3]_i_3_n_0 ),
        .I2(\state_am2302[3]_i_4_n_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(s_data_in),
        .I5(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_am2302[3]_i_10 
       (.I0(\state_am2302[3]_i_20_n_0 ),
        .I1(\state_am2302[3]_i_21_n_0 ),
        .I2(rx_index[1]),
        .I3(rx_index[2]),
        .I4(rx_index[0]),
        .I5(\state_am2302[3]_i_22_n_0 ),
        .O(\state_am2302[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h453D)) 
    \state_am2302[3]_i_11 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .O(\state_am2302[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state_am2302[3]_i_12 
       (.I0(rx_index[31]),
        .I1(rx_index[30]),
        .I2(rx_index[29]),
        .I3(rx_index[27]),
        .I4(rx_index[28]),
        .O(\state_am2302[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h032C)) 
    \state_am2302[3]_i_13 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .O(\state_am2302[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFCAC)) 
    \state_am2302[3]_i_14 
       (.I0(state_am23021),
        .I1(state_am230218_out),
        .I2(\state_am2302[3]_i_11_n_0 ),
        .I3(state_am230215_out),
        .O(\state_am2302[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_15 
       (.I0(\rx_data_reg_n_0_[7] ),
        .I1(plusOp43[7]),
        .I2(\rx_data_reg_n_0_[6] ),
        .I3(plusOp43[6]),
        .O(\state_am2302[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_16 
       (.I0(\rx_data_reg_n_0_[5] ),
        .I1(plusOp43[5]),
        .I2(\rx_data_reg_n_0_[2] ),
        .I3(plusOp43[2]),
        .O(\state_am2302[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_17 
       (.I0(\rx_data_reg_n_0_[1] ),
        .I1(plusOp43[1]),
        .I2(\rx_data_reg_n_0_[0] ),
        .I3(plusOp43[0]),
        .O(\state_am2302[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_18 
       (.I0(\rx_data_reg_n_0_[4] ),
        .I1(plusOp43[4]),
        .I2(\rx_data_reg_n_0_[3] ),
        .I3(plusOp43[3]),
        .O(\state_am2302[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003333322)) 
    \state_am2302[3]_i_19 
       (.I0(\us_count[7]_i_7_n_0 ),
        .I1(\state_am2302[3]_i_24_n_0 ),
        .I2(\state_am2302[3]_i_25_n_0 ),
        .I3(us_count[3]),
        .I4(us_count[4]),
        .I5(us_count[5]),
        .O(state_am2302111_out));
  LUT5 #(
    .INIT(32'hEFE0A0A0)) 
    \state_am2302[3]_i_2 
       (.I0(\state_am2302[3]_i_5_n_0 ),
        .I1(\state_am2302[3]_i_6_n_0 ),
        .I2(\state_am2302[3]_i_7_n_0 ),
        .I3(\state_am2302[3]_i_8_n_0 ),
        .I4(data0[3]),
        .O(\state_am2302[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_am2302[3]_i_20 
       (.I0(rx_index[4]),
        .I1(rx_index[5]),
        .I2(rx_index[3]),
        .I3(rx_index[7]),
        .I4(rx_index[8]),
        .I5(rx_index[6]),
        .O(\state_am2302[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_am2302[3]_i_21 
       (.I0(rx_index[25]),
        .I1(rx_index[26]),
        .I2(rx_index[24]),
        .I3(\state_am2302[3]_i_26_n_0 ),
        .O(\state_am2302[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \state_am2302[3]_i_22 
       (.I0(\state_am2302[3]_i_27_n_0 ),
        .I1(\state_am2302[3]_i_28_n_0 ),
        .I2(rx_index[23]),
        .I3(rx_index[21]),
        .I4(rx_index[22]),
        .I5(\state_am2302[3]_i_29_n_0 ),
        .O(\state_am2302[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0C0C080A)) 
    \state_am2302[3]_i_23 
       (.I0(\state_am2302[3]_i_30_n_0 ),
        .I1(\state_am2302[3]_i_31_n_0 ),
        .I2(us_count[7]),
        .I3(us_count[5]),
        .I4(us_count[6]),
        .O(state_am230218_out));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state_am2302[3]_i_24 
       (.I0(us_count[7]),
        .I1(us_count[6]),
        .O(\state_am2302[3]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state_am2302[3]_i_25 
       (.I0(us_count[2]),
        .I1(us_count[1]),
        .O(\state_am2302[3]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_am2302[3]_i_26 
       (.I0(rx_index[17]),
        .I1(rx_index[16]),
        .I2(rx_index[23]),
        .I3(rx_index[22]),
        .O(\state_am2302[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_am2302[3]_i_27 
       (.I0(rx_index[10]),
        .I1(rx_index[11]),
        .I2(rx_index[9]),
        .I3(rx_index[13]),
        .I4(rx_index[14]),
        .I5(rx_index[12]),
        .O(\state_am2302[3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state_am2302[3]_i_28 
       (.I0(rx_index[19]),
        .I1(rx_index[20]),
        .O(\state_am2302[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \state_am2302[3]_i_29 
       (.I0(rx_index[17]),
        .I1(rx_index[15]),
        .I2(rx_index[16]),
        .I3(rx_index[20]),
        .I4(rx_index[18]),
        .I5(rx_index[19]),
        .O(\state_am2302[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAFAABBBBBBBB)) 
    \state_am2302[3]_i_3 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(ltOp),
        .I2(\us_count[7]_i_4_n_0 ),
        .I3(clk_1ust),
        .I4(clk_1us),
        .I5(\state_am2302_reg[1]_0 ),
        .O(\state_am2302[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \state_am2302[3]_i_30 
       (.I0(us_count[5]),
        .I1(us_count[4]),
        .I2(us_count[3]),
        .I3(us_count[1]),
        .I4(us_count[2]),
        .I5(us_count[0]),
        .O(\state_am2302[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000000070FFFFF)) 
    \state_am2302[3]_i_31 
       (.I0(us_count[1]),
        .I1(us_count[0]),
        .I2(us_count[3]),
        .I3(us_count[2]),
        .I4(us_count[4]),
        .I5(us_count[6]),
        .O(\state_am2302[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFF5F5F3F3F3F3)) 
    \state_am2302[3]_i_4 
       (.I0(s_data_in),
        .I1(ltOp_carry__2_n_2),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\us_count[7]_i_5_n_0 ),
        .I4(\us_count[7]_i_6_n_0 ),
        .I5(\state_am2302_reg[1]_0 ),
        .O(\state_am2302[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h01FF010000000000)) 
    \state_am2302[3]_i_5 
       (.I0(\state_am2302[3]_i_10_n_0 ),
        .I1(\state_am2302[3]_i_11_n_0 ),
        .I2(\state_am2302[3]_i_12_n_0 ),
        .I3(\state_am2302[3]_i_13_n_0 ),
        .I4(\state_am2302[3]_i_14_n_0 ),
        .I5(data0[3]),
        .O(\state_am2302[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \state_am2302[3]_i_6 
       (.I0(\state_am2302[3]_i_13_n_0 ),
        .I1(\state_am2302[3]_i_15_n_0 ),
        .I2(\state_am2302[3]_i_16_n_0 ),
        .I3(\state_am2302[3]_i_17_n_0 ),
        .I4(\state_am2302[3]_i_18_n_0 ),
        .I5(\state_am2302[3]_i_11_n_0 ),
        .O(\state_am2302[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h42)) 
    \state_am2302[3]_i_7 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .O(\state_am2302[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h14B7049515F705D5)) 
    \state_am2302[3]_i_8 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(state_am2302111_out),
        .I5(s_data_in),
        .O(\state_am2302[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \state_am2302[3]_i_9 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .O(data0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1_n_0 ),
        .D(\state_am2302[0]_i_1_n_0 ),
        .Q(\state_am2302_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1_n_0 ),
        .D(\state_am2302[1]_i_1_n_0 ),
        .Q(\state_am2302_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1_n_0 ),
        .D(\state_am2302[2]_i_1_n_0 ),
        .Q(\state_am2302_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1_n_0 ),
        .D(\state_am2302[3]_i_2_n_0 ),
        .Q(\state_am2302_reg[3]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h307F7F7F30000000)) 
    \status[0]_i_1 
       (.I0(\status[0]_i_2_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\status[0]_i_3_n_0 ),
        .I4(\status[0]_i_4_n_0 ),
        .I5(status[0]),
        .O(\status[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \status[0]_i_2 
       (.I0(\state_am2302[3]_i_15_n_0 ),
        .I1(\state_am2302[3]_i_16_n_0 ),
        .I2(\state_am2302[3]_i_17_n_0 ),
        .I3(\state_am2302[3]_i_18_n_0 ),
        .I4(\state_am2302_reg[1]_0 ),
        .I5(\state_am2302_reg[2]_0 ),
        .O(\status[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0040404040)) 
    \status[0]_i_3 
       (.I0(\us_count[7]_i_5_n_0 ),
        .I1(s_data_in),
        .I2(\us_count[7]_i_6_n_0 ),
        .I3(\status[2]_i_6_n_0 ),
        .I4(\status[2]_i_5_n_0 ),
        .I5(\status[0]_i_5_n_0 ),
        .O(\status[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    \status[0]_i_4 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .O(\status[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \status[0]_i_5 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .O(\status[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3333F3FF33330100)) 
    \status[1]_i_1 
       (.I0(eqOp),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\status[2]_i_3_n_0 ),
        .I4(\status[2]_i_4_n_0 ),
        .I5(status[1]),
        .O(\status[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3F3FFC3C30100)) 
    \status[2]_i_1 
       (.I0(eqOp),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\status[2]_i_3_n_0 ),
        .I4(\status[2]_i_4_n_0 ),
        .I5(status[2]),
        .O(\status[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \status[2]_i_2 
       (.I0(\state_am2302[3]_i_15_n_0 ),
        .I1(\state_am2302[3]_i_16_n_0 ),
        .I2(\state_am2302[3]_i_17_n_0 ),
        .I3(\state_am2302[3]_i_18_n_0 ),
        .O(eqOp));
  LUT2 #(
    .INIT(4'h8)) 
    \status[2]_i_3 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .O(\status[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2A2A200)) 
    \status[2]_i_4 
       (.I0(\status[0]_i_4_n_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\status[2]_i_5_n_0 ),
        .I4(\status[2]_i_6_n_0 ),
        .I5(\status[2]_i_7_n_0 ),
        .O(\status[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \status[2]_i_5 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(s_data_in),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(state_am230218_out),
        .O(\status[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00001100000F0F00)) 
    \status[2]_i_6 
       (.I0(state_am23021),
        .I1(state_am230215_out),
        .I2(state_am2302111_out),
        .I3(\state_am2302_reg[0]_0 ),
        .I4(s_data_in),
        .I5(\state_am2302_reg[1]_0 ),
        .O(\status[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004400000)) 
    \status[2]_i_7 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(clk_1ust),
        .I3(clk_1us),
        .I4(s_data_in),
        .I5(\us_count[7]_i_5_n_0 ),
        .O(\status[2]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\status[0]_i_1_n_0 ),
        .Q(status[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\status[1]_i_1_n_0 ),
        .Q(status[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\status[2]_i_1_n_0 ),
        .Q(status[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \us_cnt[0]_i_1 
       (.I0(us_cnt_reg__0[0]),
        .O(\us_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \us_cnt[1]_i_1 
       (.I0(us_cnt_reg__0[0]),
        .I1(us_cnt_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \us_cnt[2]_i_1 
       (.I0(us_cnt_reg__0[0]),
        .I1(us_cnt_reg__0[1]),
        .I2(us_cnt_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \us_cnt[3]_i_1 
       (.I0(us_cnt_reg__0[1]),
        .I1(us_cnt_reg__0[0]),
        .I2(us_cnt_reg__0[2]),
        .I3(us_cnt_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \us_cnt[4]_i_1 
       (.I0(us_cnt_reg__0[2]),
        .I1(us_cnt_reg__0[0]),
        .I2(us_cnt_reg__0[1]),
        .I3(us_cnt_reg__0[3]),
        .I4(us_cnt_reg__0[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \us_cnt[5]_i_1 
       (.I0(us_cnt_reg__0[3]),
        .I1(us_cnt_reg__0[1]),
        .I2(us_cnt_reg__0[0]),
        .I3(us_cnt_reg__0[2]),
        .I4(us_cnt_reg__0[4]),
        .I5(us_cnt_reg__0[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \us_cnt[6]_i_1 
       (.I0(\us_cnt[7]_i_4_n_0 ),
        .I1(us_cnt_reg__0[6]),
        .O(plusOp[6]));
  LUT3 #(
    .INIT(8'h31)) 
    \us_cnt[7]_i_1 
       (.I0(\us_cnt[7]_i_3_n_0 ),
        .I1(us_cnt_reg__0[7]),
        .I2(us_cnt_reg__0[6]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \us_cnt[7]_i_2 
       (.I0(\us_cnt[7]_i_4_n_0 ),
        .I1(us_cnt_reg__0[6]),
        .I2(us_cnt_reg__0[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \us_cnt[7]_i_3 
       (.I0(us_cnt_reg__0[5]),
        .I1(us_cnt_reg__0[4]),
        .I2(us_cnt_reg__0[2]),
        .I3(us_cnt_reg__0[3]),
        .I4(us_cnt_reg__0[0]),
        .I5(us_cnt_reg__0[1]),
        .O(\us_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \us_cnt[7]_i_4 
       (.I0(us_cnt_reg__0[5]),
        .I1(us_cnt_reg__0[3]),
        .I2(us_cnt_reg__0[1]),
        .I3(us_cnt_reg__0[0]),
        .I4(us_cnt_reg__0[2]),
        .I5(us_cnt_reg__0[4]),
        .O(\us_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\us_cnt[0]_i_1_n_0 ),
        .Q(us_cnt_reg__0[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(us_cnt_reg__0[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(us_cnt_reg__0[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(us_cnt_reg__0[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(us_cnt_reg__0[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(us_cnt_reg__0[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(us_cnt_reg__0[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(us_cnt_reg__0[7]),
        .R(clear));
  LUT6 #(
    .INIT(64'h00000000A5ACA50C)) 
    \us_count[0]_i_1 
       (.I0(s_data_in),
        .I1(\us_count[7]_i_4_n_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\us_count[7]_i_5_n_0 ),
        .I5(us_count[0]),
        .O(\us_count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \us_count[1]_i_1 
       (.I0(us_count[0]),
        .I1(us_count[1]),
        .O(\us_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \us_count[2]_i_1 
       (.I0(us_count[1]),
        .I1(us_count[0]),
        .I2(us_count[2]),
        .O(\us_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \us_count[3]_i_1 
       (.I0(us_count[0]),
        .I1(us_count[1]),
        .I2(us_count[2]),
        .I3(us_count[3]),
        .O(\us_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \us_count[4]_i_1 
       (.I0(us_count[2]),
        .I1(us_count[1]),
        .I2(us_count[0]),
        .I3(us_count[3]),
        .I4(us_count[4]),
        .O(\us_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \us_count[5]_i_1 
       (.I0(us_count[3]),
        .I1(us_count[0]),
        .I2(us_count[1]),
        .I3(us_count[2]),
        .I4(us_count[4]),
        .I5(us_count[5]),
        .O(\us_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \us_count[6]_i_1 
       (.I0(us_count[4]),
        .I1(us_count[2]),
        .I2(\us_count[6]_i_2_n_0 ),
        .I3(us_count[3]),
        .I4(us_count[5]),
        .I5(us_count[6]),
        .O(\us_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \us_count[6]_i_2 
       (.I0(us_count[0]),
        .I1(us_count[1]),
        .O(\us_count[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2288220A2288AA0A)) 
    \us_count[7]_i_1 
       (.I0(us_count_2),
        .I1(s_data_in),
        .I2(\us_count[7]_i_4_n_0 ),
        .I3(\state_am2302_reg[0]_0 ),
        .I4(\state_am2302_reg[2]_0 ),
        .I5(\us_count[7]_i_5_n_0 ),
        .O(\us_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5454545400545000)) 
    \us_count[7]_i_2 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(s_data_in),
        .I4(\state_am2302_reg[0]_0 ),
        .I5(\us_count[7]_i_6_n_0 ),
        .O(us_count_2));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \us_count[7]_i_3 
       (.I0(us_count[5]),
        .I1(us_count[3]),
        .I2(\us_count[7]_i_7_n_0 ),
        .I3(us_count[4]),
        .I4(us_count[6]),
        .I5(us_count[7]),
        .O(\us_count[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFF0002)) 
    \us_count[7]_i_4 
       (.I0(\us_count[7]_i_8_n_0 ),
        .I1(us_count[4]),
        .I2(us_count[5]),
        .I3(us_count[6]),
        .I4(us_count[7]),
        .O(\us_count[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hCFFFCFDF)) 
    \us_count[7]_i_5 
       (.I0(us_count[4]),
        .I1(us_count[7]),
        .I2(us_count[6]),
        .I3(us_count[5]),
        .I4(\us_count[7]_i_8_n_0 ),
        .O(\us_count[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \us_count[7]_i_6 
       (.I0(clk_1us),
        .I1(clk_1ust),
        .O(\us_count[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \us_count[7]_i_7 
       (.I0(us_count[2]),
        .I1(us_count[1]),
        .I2(us_count[0]),
        .O(\us_count[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h001F)) 
    \us_count[7]_i_8 
       (.I0(us_count[0]),
        .I1(us_count[1]),
        .I2(us_count[2]),
        .I3(us_count[3]),
        .O(\us_count[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(us_count_2),
        .D(\us_count[0]_i_1_n_0 ),
        .Q(us_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(us_count_2),
        .D(\us_count[1]_i_1_n_0 ),
        .Q(us_count[1]),
        .R(\us_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(us_count_2),
        .D(\us_count[2]_i_1_n_0 ),
        .Q(us_count[2]),
        .R(\us_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(us_count_2),
        .D(\us_count[3]_i_1_n_0 ),
        .Q(us_count[3]),
        .R(\us_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(us_count_2),
        .D(\us_count[4]_i_1_n_0 ),
        .Q(us_count[4]),
        .R(\us_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(us_count_2),
        .D(\us_count[5]_i_1_n_0 ),
        .Q(us_count[5]),
        .R(\us_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(us_count_2),
        .D(\us_count[6]_i_1_n_0 ),
        .Q(us_count[6]),
        .R(\us_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(us_count_2),
        .D(\us_count[7]_i_3_n_0 ),
        .Q(us_count[7]),
        .R(\us_count[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \work_cnt[0]_i_1 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(ltOp),
        .I3(\state_am2302_reg[1]_0 ),
        .I4(\state_am2302_reg[2]_0 ),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \work_cnt[0]_i_3 
       (.I0(work_cnt_reg_1[0]),
        .O(\work_cnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[0]_i_2_n_7 ),
        .Q(work_cnt_reg_1[0]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\work_cnt_reg[0]_i_2_n_0 ,\work_cnt_reg[0]_i_2_n_1 ,\work_cnt_reg[0]_i_2_n_2 ,\work_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\work_cnt_reg[0]_i_2_n_4 ,\work_cnt_reg[0]_i_2_n_5 ,\work_cnt_reg[0]_i_2_n_6 ,\work_cnt_reg[0]_i_2_n_7 }),
        .S({work_cnt_reg_1[3:1],\work_cnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[8]_i_1_n_5 ),
        .Q(work_cnt_reg_1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[8]_i_1_n_4 ),
        .Q(work_cnt_reg_1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[12]_i_1_n_7 ),
        .Q(work_cnt_reg_1[12]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[12]_i_1 
       (.CI(\work_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_work_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\work_cnt_reg[12]_i_1_n_1 ,\work_cnt_reg[12]_i_1_n_2 ,\work_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\work_cnt_reg[12]_i_1_n_4 ,\work_cnt_reg[12]_i_1_n_5 ,\work_cnt_reg[12]_i_1_n_6 ,\work_cnt_reg[12]_i_1_n_7 }),
        .S(work_cnt_reg_1[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[12]_i_1_n_6 ),
        .Q(work_cnt_reg_1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[12]_i_1_n_5 ),
        .Q(work_cnt_reg_1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[12]_i_1_n_4 ),
        .Q(work_cnt_reg_1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[0]_i_2_n_6 ),
        .Q(work_cnt_reg_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[0]_i_2_n_5 ),
        .Q(work_cnt_reg_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[0]_i_2_n_4 ),
        .Q(work_cnt_reg_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[4]_i_1_n_7 ),
        .Q(work_cnt_reg_1[4]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[4]_i_1 
       (.CI(\work_cnt_reg[0]_i_2_n_0 ),
        .CO({\work_cnt_reg[4]_i_1_n_0 ,\work_cnt_reg[4]_i_1_n_1 ,\work_cnt_reg[4]_i_1_n_2 ,\work_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\work_cnt_reg[4]_i_1_n_4 ,\work_cnt_reg[4]_i_1_n_5 ,\work_cnt_reg[4]_i_1_n_6 ,\work_cnt_reg[4]_i_1_n_7 }),
        .S(work_cnt_reg_1[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[4]_i_1_n_6 ),
        .Q(work_cnt_reg_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[4]_i_1_n_5 ),
        .Q(work_cnt_reg_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[4]_i_1_n_4 ),
        .Q(work_cnt_reg_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[8]_i_1_n_7 ),
        .Q(work_cnt_reg_1[8]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[8]_i_1 
       (.CI(\work_cnt_reg[4]_i_1_n_0 ),
        .CO({\work_cnt_reg[8]_i_1_n_0 ,\work_cnt_reg[8]_i_1_n_1 ,\work_cnt_reg[8]_i_1_n_2 ,\work_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\work_cnt_reg[8]_i_1_n_4 ,\work_cnt_reg[8]_i_1_n_5 ,\work_cnt_reg[8]_i_1_n_6 ,\work_cnt_reg[8]_i_1_n_7 }),
        .S(work_cnt_reg_1[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\work_cnt_reg[8]_i_1_n_6 ),
        .Q(work_cnt_reg_1[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fun_am2302_check" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_0
   (s_data_ctrl_tristate_oe_reg_0,
    work_cnt_reg,
    \state_am2302_reg[0]_0 ,
    \state_am2302_reg[2]_0 ,
    \state_am2302_reg[3]_0 ,
    \state_am2302_reg[1]_0 ,
    \am2302_humi_reg[0]_0 ,
    \am2302_humi_reg[1]_0 ,
    \am2302_humi_reg[2]_0 ,
    \axi_araddr_reg[2] ,
    \axi_araddr_reg[2]_0 ,
    \axi_araddr_reg[2]_1 ,
    \axi_araddr_reg[2]_2 ,
    \axi_araddr_reg[2]_3 ,
    \axi_araddr_reg[2]_4 ,
    \axi_araddr_reg[2]_5 ,
    \axi_araddr_reg[2]_6 ,
    \axi_araddr_reg[2]_7 ,
    \axi_araddr_reg[2]_8 ,
    \axi_araddr_reg[2]_9 ,
    \axi_araddr_reg[2]_10 ,
    \axi_araddr_reg[2]_11 ,
    AM2302_SDA_2_ctrl,
    \status_reg[2]_0 ,
    \status_reg[1]_0 ,
    \status_reg[0]_0 ,
    AM2302_SDA_2,
    s_data_ctrl_tristate_oe_reg_1,
    s00_axi_aclk,
    s_data_ctrl1_reg_0,
    Q,
    \axi_rdata[15]_i_2 ,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[2] );
  output s_data_ctrl_tristate_oe_reg_0;
  output [15:0]work_cnt_reg;
  output \state_am2302_reg[0]_0 ;
  output \state_am2302_reg[2]_0 ;
  output \state_am2302_reg[3]_0 ;
  output \state_am2302_reg[1]_0 ;
  output \am2302_humi_reg[0]_0 ;
  output \am2302_humi_reg[1]_0 ;
  output \am2302_humi_reg[2]_0 ;
  output \axi_araddr_reg[2] ;
  output \axi_araddr_reg[2]_0 ;
  output \axi_araddr_reg[2]_1 ;
  output \axi_araddr_reg[2]_2 ;
  output \axi_araddr_reg[2]_3 ;
  output \axi_araddr_reg[2]_4 ;
  output \axi_araddr_reg[2]_5 ;
  output \axi_araddr_reg[2]_6 ;
  output \axi_araddr_reg[2]_7 ;
  output \axi_araddr_reg[2]_8 ;
  output \axi_araddr_reg[2]_9 ;
  output \axi_araddr_reg[2]_10 ;
  output \axi_araddr_reg[2]_11 ;
  output AM2302_SDA_2_ctrl;
  output \status_reg[2]_0 ;
  output \status_reg[1]_0 ;
  output \status_reg[0]_0 ;
  inout AM2302_SDA_2;
  input s_data_ctrl_tristate_oe_reg_1;
  input s00_axi_aclk;
  input s_data_ctrl1_reg_0;
  input [15:0]Q;
  input [2:0]\axi_rdata[15]_i_2 ;
  input \axi_rdata_reg[0] ;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[2] ;

  wire AM2302_SDA_2;
  wire AM2302_SDA_2_ctrl;
  wire I;
  wire [15:0]Q;
  wire T;
  wire \am2302_humi1_reg_n_0_[0] ;
  wire \am2302_humi1_reg_n_0_[10] ;
  wire \am2302_humi1_reg_n_0_[11] ;
  wire \am2302_humi1_reg_n_0_[12] ;
  wire \am2302_humi1_reg_n_0_[13] ;
  wire \am2302_humi1_reg_n_0_[14] ;
  wire \am2302_humi1_reg_n_0_[15] ;
  wire \am2302_humi1_reg_n_0_[1] ;
  wire \am2302_humi1_reg_n_0_[2] ;
  wire \am2302_humi1_reg_n_0_[3] ;
  wire \am2302_humi1_reg_n_0_[4] ;
  wire \am2302_humi1_reg_n_0_[5] ;
  wire \am2302_humi1_reg_n_0_[6] ;
  wire \am2302_humi1_reg_n_0_[7] ;
  wire \am2302_humi1_reg_n_0_[8] ;
  wire \am2302_humi1_reg_n_0_[9] ;
  wire \am2302_humi_reg[0]_0 ;
  wire \am2302_humi_reg[1]_0 ;
  wire \am2302_humi_reg[2]_0 ;
  wire \am2302_humi_reg_n_0_[0] ;
  wire \am2302_humi_reg_n_0_[10] ;
  wire \am2302_humi_reg_n_0_[11] ;
  wire \am2302_humi_reg_n_0_[12] ;
  wire \am2302_humi_reg_n_0_[13] ;
  wire \am2302_humi_reg_n_0_[14] ;
  wire \am2302_humi_reg_n_0_[15] ;
  wire \am2302_humi_reg_n_0_[1] ;
  wire \am2302_humi_reg_n_0_[2] ;
  wire \am2302_humi_reg_n_0_[3] ;
  wire \am2302_humi_reg_n_0_[4] ;
  wire \am2302_humi_reg_n_0_[5] ;
  wire \am2302_humi_reg_n_0_[6] ;
  wire \am2302_humi_reg_n_0_[7] ;
  wire \am2302_humi_reg_n_0_[8] ;
  wire \am2302_humi_reg_n_0_[9] ;
  wire \am2302_temp1[15]_i_1__0_n_0 ;
  wire \am2302_temp1_reg_n_0_[0] ;
  wire \am2302_temp1_reg_n_0_[10] ;
  wire \am2302_temp1_reg_n_0_[11] ;
  wire \am2302_temp1_reg_n_0_[12] ;
  wire \am2302_temp1_reg_n_0_[13] ;
  wire \am2302_temp1_reg_n_0_[14] ;
  wire \am2302_temp1_reg_n_0_[15] ;
  wire \am2302_temp1_reg_n_0_[1] ;
  wire \am2302_temp1_reg_n_0_[2] ;
  wire \am2302_temp1_reg_n_0_[3] ;
  wire \am2302_temp1_reg_n_0_[4] ;
  wire \am2302_temp1_reg_n_0_[5] ;
  wire \am2302_temp1_reg_n_0_[6] ;
  wire \am2302_temp1_reg_n_0_[7] ;
  wire \am2302_temp1_reg_n_0_[8] ;
  wire \am2302_temp1_reg_n_0_[9] ;
  wire \am2302_temp[0]_i_1_n_0 ;
  wire \am2302_temp[10]_i_1_n_0 ;
  wire \am2302_temp[11]_i_1_n_0 ;
  wire \am2302_temp[12]_i_1_n_0 ;
  wire \am2302_temp[13]_i_1_n_0 ;
  wire \am2302_temp[14]_i_1_n_0 ;
  wire \am2302_temp[15]_i_1__0_n_0 ;
  wire \am2302_temp[1]_i_1_n_0 ;
  wire \am2302_temp[2]_i_1_n_0 ;
  wire \am2302_temp[3]_i_1_n_0 ;
  wire \am2302_temp[4]_i_1_n_0 ;
  wire \am2302_temp[5]_i_1_n_0 ;
  wire \am2302_temp[6]_i_1_n_0 ;
  wire \am2302_temp[7]_i_1_n_0 ;
  wire \am2302_temp[8]_i_1_n_0 ;
  wire \am2302_temp[9]_i_1_n_0 ;
  wire \am2302_temp_reg_n_0_[0] ;
  wire \am2302_temp_reg_n_0_[10] ;
  wire \am2302_temp_reg_n_0_[11] ;
  wire \am2302_temp_reg_n_0_[12] ;
  wire \am2302_temp_reg_n_0_[13] ;
  wire \am2302_temp_reg_n_0_[14] ;
  wire \am2302_temp_reg_n_0_[15] ;
  wire \am2302_temp_reg_n_0_[1] ;
  wire \am2302_temp_reg_n_0_[2] ;
  wire \am2302_temp_reg_n_0_[3] ;
  wire \am2302_temp_reg_n_0_[4] ;
  wire \am2302_temp_reg_n_0_[5] ;
  wire \am2302_temp_reg_n_0_[6] ;
  wire \am2302_temp_reg_n_0_[7] ;
  wire \am2302_temp_reg_n_0_[8] ;
  wire \am2302_temp_reg_n_0_[9] ;
  wire \axi_araddr_reg[2] ;
  wire \axi_araddr_reg[2]_0 ;
  wire \axi_araddr_reg[2]_1 ;
  wire \axi_araddr_reg[2]_10 ;
  wire \axi_araddr_reg[2]_11 ;
  wire \axi_araddr_reg[2]_2 ;
  wire \axi_araddr_reg[2]_3 ;
  wire \axi_araddr_reg[2]_4 ;
  wire \axi_araddr_reg[2]_5 ;
  wire \axi_araddr_reg[2]_6 ;
  wire \axi_araddr_reg[2]_7 ;
  wire \axi_araddr_reg[2]_8 ;
  wire \axi_araddr_reg[2]_9 ;
  wire [2:0]\axi_rdata[15]_i_2 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[2] ;
  wire clk_1us_i_1__0_n_0;
  wire clk_1us_reg_n_0;
  wire clk_1ust_reg_n_0;
  wire i___2_carry__0_i_10__0_n_0;
  wire i___2_carry__0_i_11__0_n_0;
  wire i___2_carry__0_i_12__0_n_0;
  wire i___2_carry__0_i_1__0_n_0;
  wire i___2_carry__0_i_2__0_n_0;
  wire i___2_carry__0_i_3__0_n_0;
  wire i___2_carry__0_i_4__0_n_0;
  wire i___2_carry__0_i_5__0_n_0;
  wire i___2_carry__0_i_6__0_n_0;
  wire i___2_carry__0_i_7__0_n_0;
  wire i___2_carry__0_i_8__0_n_0;
  wire i___2_carry__0_i_9__0_n_0;
  wire i___2_carry_i_1__0_n_0;
  wire i___2_carry_i_2__0_n_0;
  wire i___2_carry_i_3__0_n_0;
  wire i___2_carry_i_4__0_n_0;
  wire i___2_carry_i_5__0_n_0;
  wire i___2_carry_i_6__0_n_0;
  wire i___2_carry_i_7__0_n_0;
  wire i___2_carry_i_8__0_n_0;
  wire i___2_carry_i_9__0_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_6__0_n_0;
  wire i__carry__1_i_7__0_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_8__0_n_0;
  wire ltOp_carry__0_i_1__0_n_0;
  wire ltOp_carry__0_i_2__0_n_0;
  wire ltOp_carry__0_i_3__0_n_0;
  wire ltOp_carry__0_i_4__0_n_0;
  wire ltOp_carry__0_i_5__0_n_0;
  wire ltOp_carry__0_n_0;
  wire ltOp_carry__0_n_1;
  wire ltOp_carry__0_n_2;
  wire ltOp_carry__0_n_3;
  wire ltOp_carry__1_i_1__0_n_0;
  wire ltOp_carry__1_i_2__0_n_0;
  wire ltOp_carry__1_i_3__0_n_0;
  wire ltOp_carry__1_i_4__0_n_0;
  wire ltOp_carry__1_n_0;
  wire ltOp_carry__1_n_1;
  wire ltOp_carry__1_n_2;
  wire ltOp_carry__1_n_3;
  wire ltOp_carry__2_i_1__0_n_0;
  wire ltOp_carry__2_i_2__0_n_0;
  wire ltOp_carry__2_n_2;
  wire ltOp_carry__2_n_3;
  wire ltOp_carry_i_1__0_n_0;
  wire ltOp_carry_i_2__0_n_0;
  wire ltOp_carry_i_3__0_n_0;
  wire ltOp_carry_i_4__0_n_0;
  wire ltOp_carry_i_5__0_n_0;
  wire ltOp_carry_i_6__0_n_0;
  wire ltOp_carry_i_7__0_n_0;
  wire ltOp_carry_n_0;
  wire ltOp_carry_n_1;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire \ltOp_inferred__0/i__carry__0_n_0 ;
  wire \ltOp_inferred__0/i__carry__0_n_1 ;
  wire \ltOp_inferred__0/i__carry__0_n_2 ;
  wire \ltOp_inferred__0/i__carry__0_n_3 ;
  wire \ltOp_inferred__0/i__carry__1_n_0 ;
  wire \ltOp_inferred__0/i__carry__1_n_1 ;
  wire \ltOp_inferred__0/i__carry__1_n_2 ;
  wire \ltOp_inferred__0/i__carry__1_n_3 ;
  wire \ltOp_inferred__0/i__carry__2_n_3 ;
  wire \ltOp_inferred__0/i__carry_n_0 ;
  wire \ltOp_inferred__0/i__carry_n_1 ;
  wire \ltOp_inferred__0/i__carry_n_2 ;
  wire \ltOp_inferred__0/i__carry_n_3 ;
  wire minusOp_carry__0_i_1__0_n_0;
  wire minusOp_carry__0_i_2__0_n_0;
  wire minusOp_carry__0_i_3__0_n_0;
  wire minusOp_carry__0_i_4__0_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_i_1__0_n_0;
  wire minusOp_carry__1_i_2__0_n_0;
  wire minusOp_carry__1_i_3__0_n_0;
  wire minusOp_carry__1_i_4__0_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_i_1__0_n_0;
  wire minusOp_carry__2_i_2__0_n_0;
  wire minusOp_carry__2_i_3__0_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry_i_1__0_n_0;
  wire minusOp_carry_i_2__0_n_0;
  wire minusOp_carry_i_3__0_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire \period_cnt[0]_i_1__0_n_0 ;
  wire \period_cnt[31]_i_1__0_n_0 ;
  wire \period_cnt[31]_i_2__0_n_0 ;
  wire \period_cnt_reg_n_0_[0] ;
  wire \period_cnt_reg_n_0_[10] ;
  wire \period_cnt_reg_n_0_[11] ;
  wire \period_cnt_reg_n_0_[12] ;
  wire \period_cnt_reg_n_0_[13] ;
  wire \period_cnt_reg_n_0_[14] ;
  wire \period_cnt_reg_n_0_[15] ;
  wire \period_cnt_reg_n_0_[16] ;
  wire \period_cnt_reg_n_0_[17] ;
  wire \period_cnt_reg_n_0_[18] ;
  wire \period_cnt_reg_n_0_[19] ;
  wire \period_cnt_reg_n_0_[1] ;
  wire \period_cnt_reg_n_0_[20] ;
  wire \period_cnt_reg_n_0_[21] ;
  wire \period_cnt_reg_n_0_[22] ;
  wire \period_cnt_reg_n_0_[23] ;
  wire \period_cnt_reg_n_0_[24] ;
  wire \period_cnt_reg_n_0_[25] ;
  wire \period_cnt_reg_n_0_[26] ;
  wire \period_cnt_reg_n_0_[27] ;
  wire \period_cnt_reg_n_0_[28] ;
  wire \period_cnt_reg_n_0_[29] ;
  wire \period_cnt_reg_n_0_[2] ;
  wire \period_cnt_reg_n_0_[30] ;
  wire \period_cnt_reg_n_0_[31] ;
  wire \period_cnt_reg_n_0_[3] ;
  wire \period_cnt_reg_n_0_[4] ;
  wire \period_cnt_reg_n_0_[5] ;
  wire \period_cnt_reg_n_0_[6] ;
  wire \period_cnt_reg_n_0_[7] ;
  wire \period_cnt_reg_n_0_[8] ;
  wire \period_cnt_reg_n_0_[9] ;
  wire [7:1]plusOp__0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__3_n_4;
  wire plusOp_carry__3_n_5;
  wire plusOp_carry__3_n_6;
  wire plusOp_carry__3_n_7;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__4_n_4;
  wire plusOp_carry__4_n_5;
  wire plusOp_carry__4_n_6;
  wire plusOp_carry__4_n_7;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__5_n_4;
  wire plusOp_carry__5_n_5;
  wire plusOp_carry__5_n_6;
  wire plusOp_carry__5_n_7;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry__6_n_5;
  wire plusOp_carry__6_n_6;
  wire plusOp_carry__6_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire \plusOp_inferred__3/i___2_carry__0_n_1 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_2 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_3 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_4 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_5 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_6 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_7 ;
  wire \plusOp_inferred__3/i___2_carry_n_0 ;
  wire \plusOp_inferred__3/i___2_carry_n_1 ;
  wire \plusOp_inferred__3/i___2_carry_n_2 ;
  wire \plusOp_inferred__3/i___2_carry_n_3 ;
  wire \plusOp_inferred__3/i___2_carry_n_4 ;
  wire \plusOp_inferred__3/i___2_carry_n_5 ;
  wire \plusOp_inferred__3/i___2_carry_n_6 ;
  wire \plusOp_inferred__3/i___2_carry_n_7 ;
  wire \rx_data[0]_i_1__0_n_0 ;
  wire \rx_data[10]_i_1__0_n_0 ;
  wire \rx_data[11]_i_1__0_n_0 ;
  wire \rx_data[12]_i_1__0_n_0 ;
  wire \rx_data[13]_i_1__0_n_0 ;
  wire \rx_data[14]_i_1__0_n_0 ;
  wire \rx_data[15]_i_1__0_n_0 ;
  wire \rx_data[15]_i_2__0_n_0 ;
  wire \rx_data[16]_i_1__0_n_0 ;
  wire \rx_data[17]_i_1__0_n_0 ;
  wire \rx_data[18]_i_1__0_n_0 ;
  wire \rx_data[19]_i_1__0_n_0 ;
  wire \rx_data[1]_i_1__0_n_0 ;
  wire \rx_data[20]_i_1__0_n_0 ;
  wire \rx_data[21]_i_1__0_n_0 ;
  wire \rx_data[22]_i_1__0_n_0 ;
  wire \rx_data[23]_i_1__0_n_0 ;
  wire \rx_data[23]_i_2__0_n_0 ;
  wire \rx_data[24]_i_1__0_n_0 ;
  wire \rx_data[25]_i_1__0_n_0 ;
  wire \rx_data[26]_i_1__0_n_0 ;
  wire \rx_data[27]_i_1__0_n_0 ;
  wire \rx_data[28]_i_1__0_n_0 ;
  wire \rx_data[29]_i_1__0_n_0 ;
  wire \rx_data[2]_i_1__0_n_0 ;
  wire \rx_data[30]_i_1__0_n_0 ;
  wire \rx_data[31]_i_1__0_n_0 ;
  wire \rx_data[31]_i_2__0_n_0 ;
  wire \rx_data[31]_i_3__0_n_0 ;
  wire \rx_data[31]_i_4__0_n_0 ;
  wire \rx_data[31]_i_5__0_n_0 ;
  wire \rx_data[31]_i_6__0_n_0 ;
  wire \rx_data[32]_i_1__0_n_0 ;
  wire \rx_data[32]_i_2__0_n_0 ;
  wire \rx_data[33]_i_1__0_n_0 ;
  wire \rx_data[33]_i_2__0_n_0 ;
  wire \rx_data[34]_i_1__0_n_0 ;
  wire \rx_data[34]_i_2__0_n_0 ;
  wire \rx_data[35]_i_1__0_n_0 ;
  wire \rx_data[35]_i_2__0_n_0 ;
  wire \rx_data[36]_i_1__0_n_0 ;
  wire \rx_data[36]_i_2__0_n_0 ;
  wire \rx_data[37]_i_1__0_n_0 ;
  wire \rx_data[37]_i_2__0_n_0 ;
  wire \rx_data[38]_i_1__0_n_0 ;
  wire \rx_data[38]_i_2__0_n_0 ;
  wire \rx_data[39]_i_10__0_n_0 ;
  wire \rx_data[39]_i_11__0_n_0 ;
  wire \rx_data[39]_i_12__0_n_0 ;
  wire \rx_data[39]_i_1__0_n_0 ;
  wire \rx_data[39]_i_2__0_n_0 ;
  wire \rx_data[39]_i_3__0_n_0 ;
  wire \rx_data[39]_i_4__0_n_0 ;
  wire \rx_data[39]_i_5__0_n_0 ;
  wire \rx_data[39]_i_6__0_n_0 ;
  wire \rx_data[39]_i_7__0_n_0 ;
  wire \rx_data[39]_i_8__0_n_0 ;
  wire \rx_data[39]_i_9__0_n_0 ;
  wire \rx_data[3]_i_1__0_n_0 ;
  wire \rx_data[4]_i_1__0_n_0 ;
  wire \rx_data[5]_i_1__0_n_0 ;
  wire \rx_data[6]_i_1__0_n_0 ;
  wire \rx_data[7]_i_1__0_n_0 ;
  wire \rx_data[7]_i_2__0_n_0 ;
  wire \rx_data[8]_i_1__0_n_0 ;
  wire \rx_data[9]_i_1__0_n_0 ;
  wire \rx_data_reg_n_0_[0] ;
  wire \rx_data_reg_n_0_[10] ;
  wire \rx_data_reg_n_0_[11] ;
  wire \rx_data_reg_n_0_[12] ;
  wire \rx_data_reg_n_0_[13] ;
  wire \rx_data_reg_n_0_[14] ;
  wire \rx_data_reg_n_0_[15] ;
  wire \rx_data_reg_n_0_[16] ;
  wire \rx_data_reg_n_0_[17] ;
  wire \rx_data_reg_n_0_[18] ;
  wire \rx_data_reg_n_0_[19] ;
  wire \rx_data_reg_n_0_[1] ;
  wire \rx_data_reg_n_0_[20] ;
  wire \rx_data_reg_n_0_[21] ;
  wire \rx_data_reg_n_0_[22] ;
  wire \rx_data_reg_n_0_[23] ;
  wire \rx_data_reg_n_0_[24] ;
  wire \rx_data_reg_n_0_[25] ;
  wire \rx_data_reg_n_0_[26] ;
  wire \rx_data_reg_n_0_[27] ;
  wire \rx_data_reg_n_0_[28] ;
  wire \rx_data_reg_n_0_[29] ;
  wire \rx_data_reg_n_0_[2] ;
  wire \rx_data_reg_n_0_[30] ;
  wire \rx_data_reg_n_0_[31] ;
  wire \rx_data_reg_n_0_[32] ;
  wire \rx_data_reg_n_0_[33] ;
  wire \rx_data_reg_n_0_[34] ;
  wire \rx_data_reg_n_0_[35] ;
  wire \rx_data_reg_n_0_[36] ;
  wire \rx_data_reg_n_0_[37] ;
  wire \rx_data_reg_n_0_[38] ;
  wire \rx_data_reg_n_0_[39] ;
  wire \rx_data_reg_n_0_[3] ;
  wire \rx_data_reg_n_0_[4] ;
  wire \rx_data_reg_n_0_[5] ;
  wire \rx_data_reg_n_0_[6] ;
  wire \rx_data_reg_n_0_[7] ;
  wire \rx_data_reg_n_0_[8] ;
  wire \rx_data_reg_n_0_[9] ;
  wire rx_index0_carry__0_i_1__0_n_0;
  wire rx_index0_carry__0_i_2__0_n_0;
  wire rx_index0_carry__0_i_3__0_n_0;
  wire rx_index0_carry__0_i_4__0_n_0;
  wire rx_index0_carry__0_n_0;
  wire rx_index0_carry__0_n_1;
  wire rx_index0_carry__0_n_2;
  wire rx_index0_carry__0_n_3;
  wire rx_index0_carry__0_n_4;
  wire rx_index0_carry__0_n_5;
  wire rx_index0_carry__0_n_6;
  wire rx_index0_carry__0_n_7;
  wire rx_index0_carry__1_i_1__0_n_0;
  wire rx_index0_carry__1_i_2__0_n_0;
  wire rx_index0_carry__1_i_3__0_n_0;
  wire rx_index0_carry__1_i_4__0_n_0;
  wire rx_index0_carry__1_n_0;
  wire rx_index0_carry__1_n_1;
  wire rx_index0_carry__1_n_2;
  wire rx_index0_carry__1_n_3;
  wire rx_index0_carry__1_n_4;
  wire rx_index0_carry__1_n_5;
  wire rx_index0_carry__1_n_6;
  wire rx_index0_carry__1_n_7;
  wire rx_index0_carry__2_i_1__0_n_0;
  wire rx_index0_carry__2_i_2__0_n_0;
  wire rx_index0_carry__2_i_3__0_n_0;
  wire rx_index0_carry__2_i_4__0_n_0;
  wire rx_index0_carry__2_n_0;
  wire rx_index0_carry__2_n_1;
  wire rx_index0_carry__2_n_2;
  wire rx_index0_carry__2_n_3;
  wire rx_index0_carry__2_n_4;
  wire rx_index0_carry__2_n_5;
  wire rx_index0_carry__2_n_6;
  wire rx_index0_carry__2_n_7;
  wire rx_index0_carry__3_i_1__0_n_0;
  wire rx_index0_carry__3_i_2__0_n_0;
  wire rx_index0_carry__3_i_3__0_n_0;
  wire rx_index0_carry__3_i_4__0_n_0;
  wire rx_index0_carry__3_n_0;
  wire rx_index0_carry__3_n_1;
  wire rx_index0_carry__3_n_2;
  wire rx_index0_carry__3_n_3;
  wire rx_index0_carry__3_n_4;
  wire rx_index0_carry__3_n_5;
  wire rx_index0_carry__3_n_6;
  wire rx_index0_carry__3_n_7;
  wire rx_index0_carry__4_i_1__0_n_0;
  wire rx_index0_carry__4_i_2__0_n_0;
  wire rx_index0_carry__4_i_3__0_n_0;
  wire rx_index0_carry__4_i_4__0_n_0;
  wire rx_index0_carry__4_n_0;
  wire rx_index0_carry__4_n_1;
  wire rx_index0_carry__4_n_2;
  wire rx_index0_carry__4_n_3;
  wire rx_index0_carry__4_n_4;
  wire rx_index0_carry__4_n_5;
  wire rx_index0_carry__4_n_6;
  wire rx_index0_carry__4_n_7;
  wire rx_index0_carry__5_i_1__0_n_0;
  wire rx_index0_carry__5_i_2__0_n_0;
  wire rx_index0_carry__5_i_3__0_n_0;
  wire rx_index0_carry__5_i_4__0_n_0;
  wire rx_index0_carry__5_n_0;
  wire rx_index0_carry__5_n_1;
  wire rx_index0_carry__5_n_2;
  wire rx_index0_carry__5_n_3;
  wire rx_index0_carry__5_n_4;
  wire rx_index0_carry__5_n_5;
  wire rx_index0_carry__5_n_6;
  wire rx_index0_carry__5_n_7;
  wire rx_index0_carry__6_i_1__0_n_0;
  wire rx_index0_carry__6_i_2__0_n_0;
  wire rx_index0_carry__6_i_3__0_n_0;
  wire rx_index0_carry__6_n_2;
  wire rx_index0_carry__6_n_3;
  wire rx_index0_carry__6_n_5;
  wire rx_index0_carry__6_n_6;
  wire rx_index0_carry__6_n_7;
  wire rx_index0_carry_i_1__0_n_0;
  wire rx_index0_carry_i_2__0_n_0;
  wire rx_index0_carry_i_3__0_n_0;
  wire rx_index0_carry_i_4__0_n_0;
  wire rx_index0_carry_n_0;
  wire rx_index0_carry_n_1;
  wire rx_index0_carry_n_2;
  wire rx_index0_carry_n_3;
  wire rx_index0_carry_n_4;
  wire rx_index0_carry_n_5;
  wire rx_index0_carry_n_6;
  wire rx_index0_carry_n_7;
  wire \rx_index[0]_i_1__0_n_0 ;
  wire \rx_index[31]_i_10__0_n_0 ;
  wire \rx_index[31]_i_1__0_n_0 ;
  wire \rx_index[31]_i_2__0_n_0 ;
  wire \rx_index[31]_i_3__0_n_0 ;
  wire \rx_index[31]_i_4__0_n_0 ;
  wire \rx_index[31]_i_5__0_n_0 ;
  wire \rx_index[31]_i_6__0_n_0 ;
  wire \rx_index[31]_i_7__0_n_0 ;
  wire \rx_index[31]_i_8__0_n_0 ;
  wire \rx_index[31]_i_9__0_n_0 ;
  wire \rx_index_reg_n_0_[0] ;
  wire \rx_index_reg_n_0_[10] ;
  wire \rx_index_reg_n_0_[11] ;
  wire \rx_index_reg_n_0_[12] ;
  wire \rx_index_reg_n_0_[13] ;
  wire \rx_index_reg_n_0_[14] ;
  wire \rx_index_reg_n_0_[15] ;
  wire \rx_index_reg_n_0_[16] ;
  wire \rx_index_reg_n_0_[17] ;
  wire \rx_index_reg_n_0_[18] ;
  wire \rx_index_reg_n_0_[19] ;
  wire \rx_index_reg_n_0_[1] ;
  wire \rx_index_reg_n_0_[20] ;
  wire \rx_index_reg_n_0_[21] ;
  wire \rx_index_reg_n_0_[22] ;
  wire \rx_index_reg_n_0_[23] ;
  wire \rx_index_reg_n_0_[24] ;
  wire \rx_index_reg_n_0_[25] ;
  wire \rx_index_reg_n_0_[26] ;
  wire \rx_index_reg_n_0_[27] ;
  wire \rx_index_reg_n_0_[28] ;
  wire \rx_index_reg_n_0_[29] ;
  wire \rx_index_reg_n_0_[2] ;
  wire \rx_index_reg_n_0_[30] ;
  wire \rx_index_reg_n_0_[31] ;
  wire \rx_index_reg_n_0_[3] ;
  wire \rx_index_reg_n_0_[4] ;
  wire \rx_index_reg_n_0_[5] ;
  wire \rx_index_reg_n_0_[6] ;
  wire \rx_index_reg_n_0_[7] ;
  wire \rx_index_reg_n_0_[8] ;
  wire \rx_index_reg_n_0_[9] ;
  wire s00_axi_aclk;
  wire s_data_ctrl;
  wire s_data_ctrl1_reg_0;
  wire s_data_ctrl_tristate_oe_reg_0;
  wire s_data_ctrl_tristate_oe_reg_1;
  wire s_data_in1;
  wire s_data_in_reg_n_0;
  wire s_data_out_i_1__0_n_0;
  wire s_data_out_reg_n_0;
  wire \state_am2302[0]_i_1__0_n_0 ;
  wire \state_am2302[0]_i_2__0_n_0 ;
  wire \state_am2302[1]_i_1__0_n_0 ;
  wire \state_am2302[1]_i_2__0_n_0 ;
  wire \state_am2302[1]_i_3__0_n_0 ;
  wire \state_am2302[1]_i_4__0_n_0 ;
  wire \state_am2302[2]_i_1__0_n_0 ;
  wire \state_am2302[2]_i_2__0_n_0 ;
  wire \state_am2302[2]_i_3__0_n_0 ;
  wire \state_am2302[2]_i_4__0_n_0 ;
  wire \state_am2302[3]_i_10__0_n_0 ;
  wire \state_am2302[3]_i_11__0_n_0 ;
  wire \state_am2302[3]_i_12__0_n_0 ;
  wire \state_am2302[3]_i_13__0_n_0 ;
  wire \state_am2302[3]_i_14__0_n_0 ;
  wire \state_am2302[3]_i_15__0_n_0 ;
  wire \state_am2302[3]_i_16__0_n_0 ;
  wire \state_am2302[3]_i_17__0_n_0 ;
  wire \state_am2302[3]_i_18__0_n_0 ;
  wire \state_am2302[3]_i_19__0_n_0 ;
  wire \state_am2302[3]_i_1__0_n_0 ;
  wire \state_am2302[3]_i_20__0_n_0 ;
  wire \state_am2302[3]_i_21__0_n_0 ;
  wire \state_am2302[3]_i_22__0_n_0 ;
  wire \state_am2302[3]_i_23__0_n_0 ;
  wire \state_am2302[3]_i_24__0_n_0 ;
  wire \state_am2302[3]_i_25__0_n_0 ;
  wire \state_am2302[3]_i_26__0_n_0 ;
  wire \state_am2302[3]_i_27__0_n_0 ;
  wire \state_am2302[3]_i_28__0_n_0 ;
  wire \state_am2302[3]_i_29__0_n_0 ;
  wire \state_am2302[3]_i_2__0_n_0 ;
  wire \state_am2302[3]_i_30__0_n_0 ;
  wire \state_am2302[3]_i_31__0_n_0 ;
  wire \state_am2302[3]_i_3__0_n_0 ;
  wire \state_am2302[3]_i_4__0_n_0 ;
  wire \state_am2302[3]_i_5__0_n_0 ;
  wire \state_am2302[3]_i_6__0_n_0 ;
  wire \state_am2302[3]_i_7__0_n_0 ;
  wire \state_am2302[3]_i_8__0_n_0 ;
  wire \state_am2302[3]_i_9__0_n_0 ;
  wire \state_am2302_reg[0]_0 ;
  wire \state_am2302_reg[1]_0 ;
  wire \state_am2302_reg[2]_0 ;
  wire \state_am2302_reg[3]_0 ;
  wire \status[0]_i_1_n_0 ;
  wire \status[0]_i_2__0_n_0 ;
  wire \status[0]_i_3__0_n_0 ;
  wire \status[0]_i_4__0_n_0 ;
  wire \status[0]_i_5__0_n_0 ;
  wire \status[1]_i_1_n_0 ;
  wire \status[2]_i_1_n_0 ;
  wire \status[2]_i_2__0_n_0 ;
  wire \status[2]_i_3__0_n_0 ;
  wire \status[2]_i_4__0_n_0 ;
  wire \status[2]_i_5__0_n_0 ;
  wire \status[2]_i_6__0_n_0 ;
  wire \status[2]_i_7__0_n_0 ;
  wire \status_reg[0]_0 ;
  wire \status_reg[1]_0 ;
  wire \status_reg[2]_0 ;
  wire \us_cnt[0]_i_1__0_n_0 ;
  wire \us_cnt[7]_i_1__0_n_0 ;
  wire \us_cnt[7]_i_3__0_n_0 ;
  wire \us_cnt[7]_i_4__0_n_0 ;
  wire [7:0]us_cnt_reg__0;
  wire us_count;
  wire \us_count[0]_i_1__0_n_0 ;
  wire \us_count[1]_i_1__0_n_0 ;
  wire \us_count[2]_i_1__0_n_0 ;
  wire \us_count[3]_i_1__0_n_0 ;
  wire \us_count[4]_i_1__0_n_0 ;
  wire \us_count[5]_i_1__0_n_0 ;
  wire \us_count[6]_i_1__0_n_0 ;
  wire \us_count[6]_i_2__0_n_0 ;
  wire \us_count[7]_i_1__0_n_0 ;
  wire \us_count[7]_i_3__0_n_0 ;
  wire \us_count[7]_i_4__0_n_0 ;
  wire \us_count[7]_i_5__0_n_0 ;
  wire \us_count[7]_i_6__0_n_0 ;
  wire \us_count[7]_i_7__0_n_0 ;
  wire \us_count[7]_i_8__0_n_0 ;
  wire \us_count_reg_n_0_[0] ;
  wire \us_count_reg_n_0_[1] ;
  wire \us_count_reg_n_0_[2] ;
  wire \us_count_reg_n_0_[3] ;
  wire \us_count_reg_n_0_[4] ;
  wire \us_count_reg_n_0_[5] ;
  wire \us_count_reg_n_0_[6] ;
  wire \us_count_reg_n_0_[7] ;
  wire \work_cnt[0]_i_1__0_n_0 ;
  wire \work_cnt[0]_i_3__0_n_0 ;
  wire [15:0]work_cnt_reg;
  wire \work_cnt_reg[0]_i_2__0_n_0 ;
  wire \work_cnt_reg[0]_i_2__0_n_1 ;
  wire \work_cnt_reg[0]_i_2__0_n_2 ;
  wire \work_cnt_reg[0]_i_2__0_n_3 ;
  wire \work_cnt_reg[0]_i_2__0_n_4 ;
  wire \work_cnt_reg[0]_i_2__0_n_5 ;
  wire \work_cnt_reg[0]_i_2__0_n_6 ;
  wire \work_cnt_reg[0]_i_2__0_n_7 ;
  wire \work_cnt_reg[12]_i_1__0_n_1 ;
  wire \work_cnt_reg[12]_i_1__0_n_2 ;
  wire \work_cnt_reg[12]_i_1__0_n_3 ;
  wire \work_cnt_reg[12]_i_1__0_n_4 ;
  wire \work_cnt_reg[12]_i_1__0_n_5 ;
  wire \work_cnt_reg[12]_i_1__0_n_6 ;
  wire \work_cnt_reg[12]_i_1__0_n_7 ;
  wire \work_cnt_reg[4]_i_1__0_n_0 ;
  wire \work_cnt_reg[4]_i_1__0_n_1 ;
  wire \work_cnt_reg[4]_i_1__0_n_2 ;
  wire \work_cnt_reg[4]_i_1__0_n_3 ;
  wire \work_cnt_reg[4]_i_1__0_n_4 ;
  wire \work_cnt_reg[4]_i_1__0_n_5 ;
  wire \work_cnt_reg[4]_i_1__0_n_6 ;
  wire \work_cnt_reg[4]_i_1__0_n_7 ;
  wire \work_cnt_reg[8]_i_1__0_n_0 ;
  wire \work_cnt_reg[8]_i_1__0_n_1 ;
  wire \work_cnt_reg[8]_i_1__0_n_2 ;
  wire \work_cnt_reg[8]_i_1__0_n_3 ;
  wire \work_cnt_reg[8]_i_1__0_n_4 ;
  wire \work_cnt_reg[8]_i_1__0_n_5 ;
  wire \work_cnt_reg[8]_i_1__0_n_6 ;
  wire \work_cnt_reg[8]_i_1__0_n_7 ;
  wire [3:0]NLW_ltOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_ltOp_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED ;
  wire [3:2]NLW_rx_index0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_rx_index0_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_work_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    AM2302_SDA_2_ctrl_INST_0
       (.I0(T),
        .O(AM2302_SDA_2_ctrl));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[24] ),
        .Q(\am2302_humi1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[34] ),
        .Q(\am2302_humi1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[35] ),
        .Q(\am2302_humi1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[36] ),
        .Q(\am2302_humi1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[37] ),
        .Q(\am2302_humi1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[38] ),
        .Q(\am2302_humi1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[39] ),
        .Q(\am2302_humi1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[25] ),
        .Q(\am2302_humi1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[26] ),
        .Q(\am2302_humi1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[27] ),
        .Q(\am2302_humi1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[28] ),
        .Q(\am2302_humi1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[29] ),
        .Q(\am2302_humi1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[30] ),
        .Q(\am2302_humi1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[31] ),
        .Q(\am2302_humi1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[32] ),
        .Q(\am2302_humi1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[33] ),
        .Q(\am2302_humi1_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[0] ),
        .Q(\am2302_humi_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[10] ),
        .Q(\am2302_humi_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[11] ),
        .Q(\am2302_humi_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[12] ),
        .Q(\am2302_humi_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[13] ),
        .Q(\am2302_humi_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[14] ),
        .Q(\am2302_humi_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[15] ),
        .Q(\am2302_humi_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[1] ),
        .Q(\am2302_humi_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[2] ),
        .Q(\am2302_humi_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[3] ),
        .Q(\am2302_humi_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[4] ),
        .Q(\am2302_humi_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[5] ),
        .Q(\am2302_humi_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[6] ),
        .Q(\am2302_humi_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[7] ),
        .Q(\am2302_humi_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[8] ),
        .Q(\am2302_humi_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_humi1_reg_n_0_[9] ),
        .Q(\am2302_humi_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    \am2302_temp1[15]_i_1__0 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .O(\am2302_temp1[15]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[8] ),
        .Q(\am2302_temp1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[18] ),
        .Q(\am2302_temp1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[19] ),
        .Q(\am2302_temp1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[20] ),
        .Q(\am2302_temp1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[21] ),
        .Q(\am2302_temp1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[22] ),
        .Q(\am2302_temp1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[23] ),
        .Q(\am2302_temp1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[9] ),
        .Q(\am2302_temp1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[10] ),
        .Q(\am2302_temp1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[11] ),
        .Q(\am2302_temp1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[12] ),
        .Q(\am2302_temp1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[13] ),
        .Q(\am2302_temp1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[14] ),
        .Q(\am2302_temp1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[15] ),
        .Q(\am2302_temp1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[16] ),
        .Q(\am2302_temp1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__0_n_0 ),
        .D(\rx_data_reg_n_0_[17] ),
        .Q(\am2302_temp1_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[0]_i_1 
       (.I0(minusOp_carry_n_7),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[0] ),
        .O(\am2302_temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[10]_i_1 
       (.I0(minusOp_carry__1_n_5),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[10] ),
        .O(\am2302_temp[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[11]_i_1 
       (.I0(minusOp_carry__1_n_4),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[11] ),
        .O(\am2302_temp[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[12]_i_1 
       (.I0(minusOp_carry__2_n_7),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[12] ),
        .O(\am2302_temp[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[13]_i_1 
       (.I0(minusOp_carry__2_n_6),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[13] ),
        .O(\am2302_temp[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[14]_i_1 
       (.I0(minusOp_carry__2_n_5),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[14] ),
        .O(\am2302_temp[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \am2302_temp[15]_i_1__0 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .O(\am2302_temp[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[1]_i_1 
       (.I0(minusOp_carry_n_6),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[1] ),
        .O(\am2302_temp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[2]_i_1 
       (.I0(minusOp_carry_n_5),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[2] ),
        .O(\am2302_temp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[3]_i_1 
       (.I0(minusOp_carry_n_4),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[3] ),
        .O(\am2302_temp[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[4]_i_1 
       (.I0(minusOp_carry__0_n_7),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[4] ),
        .O(\am2302_temp[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[5]_i_1 
       (.I0(minusOp_carry__0_n_6),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[5] ),
        .O(\am2302_temp[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[6]_i_1 
       (.I0(minusOp_carry__0_n_5),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[6] ),
        .O(\am2302_temp[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[7]_i_1 
       (.I0(minusOp_carry__0_n_4),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[7] ),
        .O(\am2302_temp[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[8]_i_1 
       (.I0(minusOp_carry__1_n_7),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[8] ),
        .O(\am2302_temp[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[9]_i_1 
       (.I0(minusOp_carry__1_n_6),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[9] ),
        .O(\am2302_temp[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[0]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[10]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[11]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[12]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[13]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[14]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp1_reg_n_0_[15] ),
        .Q(\am2302_temp_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[1]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[2]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[3]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[4]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[5]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[6]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[7]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[8]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__0_n_0 ),
        .D(\am2302_temp[9]_i_1_n_0 ),
        .Q(\am2302_temp_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_3 
       (.I0(\am2302_humi_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\axi_rdata[15]_i_2 [0]),
        .I3(\axi_rdata[15]_i_2 [1]),
        .I4(\am2302_temp_reg_n_0_[0] ),
        .I5(\axi_rdata_reg[0] ),
        .O(\am2302_humi_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[10]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[10]),
        .I3(\am2302_humi_reg_n_0_[10] ),
        .I4(\am2302_temp_reg_n_0_[10] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_6 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[11]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[11]),
        .I3(\am2302_humi_reg_n_0_[11] ),
        .I4(\am2302_temp_reg_n_0_[11] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_7 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[12]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[12]),
        .I3(\am2302_humi_reg_n_0_[12] ),
        .I4(\am2302_temp_reg_n_0_[12] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_8 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[13]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[13]),
        .I3(\am2302_humi_reg_n_0_[13] ),
        .I4(\am2302_temp_reg_n_0_[13] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_9 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[14]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[14]),
        .I3(\am2302_humi_reg_n_0_[14] ),
        .I4(\am2302_temp_reg_n_0_[14] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_10 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[15]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[15]),
        .I3(\am2302_humi_reg_n_0_[15] ),
        .I4(\am2302_temp_reg_n_0_[15] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_11 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_3 
       (.I0(\am2302_humi_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\axi_rdata[15]_i_2 [0]),
        .I3(\axi_rdata[15]_i_2 [1]),
        .I4(\am2302_temp_reg_n_0_[1] ),
        .I5(\axi_rdata_reg[1] ),
        .O(\am2302_humi_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[2]_i_3 
       (.I0(\am2302_humi_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\axi_rdata[15]_i_2 [0]),
        .I3(\axi_rdata[15]_i_2 [1]),
        .I4(\am2302_temp_reg_n_0_[2] ),
        .I5(\axi_rdata_reg[2] ),
        .O(\am2302_humi_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[3]),
        .I3(\am2302_humi_reg_n_0_[3] ),
        .I4(\am2302_temp_reg_n_0_[3] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2] ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[4]),
        .I3(\am2302_humi_reg_n_0_[4] ),
        .I4(\am2302_temp_reg_n_0_[4] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[5]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[5]),
        .I3(\am2302_humi_reg_n_0_[5] ),
        .I4(\am2302_temp_reg_n_0_[5] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[6]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[6]),
        .I3(\am2302_humi_reg_n_0_[6] ),
        .I4(\am2302_temp_reg_n_0_[6] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[7]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[7]),
        .I3(\am2302_humi_reg_n_0_[7] ),
        .I4(\am2302_temp_reg_n_0_[7] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[8]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[8]),
        .I3(\am2302_humi_reg_n_0_[8] ),
        .I4(\am2302_temp_reg_n_0_[8] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_4 ));
  LUT6 #(
    .INIT(64'hB391A28000000000)) 
    \axi_rdata[9]_i_3 
       (.I0(\axi_rdata[15]_i_2 [0]),
        .I1(\axi_rdata[15]_i_2 [1]),
        .I2(Q[9]),
        .I3(\am2302_humi_reg_n_0_[9] ),
        .I4(\am2302_temp_reg_n_0_[9] ),
        .I5(\axi_rdata[15]_i_2 [2]),
        .O(\axi_araddr_reg[2]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hCE31)) 
    clk_1us_i_1__0
       (.I0(\us_cnt[7]_i_3__0_n_0 ),
        .I1(us_cnt_reg__0[7]),
        .I2(us_cnt_reg__0[6]),
        .I3(clk_1us_reg_n_0),
        .O(clk_1us_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_1us_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_1us_i_1__0_n_0),
        .Q(clk_1us_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    clk_1ust_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_1us_reg_n_0),
        .Q(clk_1ust_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___2_carry__0_i_10__0
       (.I0(\rx_data_reg_n_0_[13] ),
        .I1(\rx_data_reg_n_0_[29] ),
        .I2(\rx_data_reg_n_0_[21] ),
        .O(i___2_carry__0_i_10__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___2_carry__0_i_11__0
       (.I0(\rx_data_reg_n_0_[23] ),
        .I1(\rx_data_reg_n_0_[31] ),
        .I2(\rx_data_reg_n_0_[15] ),
        .I3(\rx_data_reg_n_0_[39] ),
        .O(i___2_carry__0_i_11__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry__0_i_12__0
       (.I0(\rx_data_reg_n_0_[14] ),
        .I1(\rx_data_reg_n_0_[30] ),
        .I2(\rx_data_reg_n_0_[22] ),
        .O(i___2_carry__0_i_12__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry__0_i_1__0
       (.I0(\rx_data_reg_n_0_[20] ),
        .I1(\rx_data_reg_n_0_[28] ),
        .I2(\rx_data_reg_n_0_[12] ),
        .I3(\rx_data_reg_n_0_[37] ),
        .I4(i___2_carry__0_i_8__0_n_0),
        .O(i___2_carry__0_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry__0_i_2__0
       (.I0(\rx_data_reg_n_0_[19] ),
        .I1(\rx_data_reg_n_0_[27] ),
        .I2(\rx_data_reg_n_0_[11] ),
        .I3(\rx_data_reg_n_0_[36] ),
        .I4(i___2_carry__0_i_9__0_n_0),
        .O(i___2_carry__0_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry__0_i_3__0
       (.I0(\rx_data_reg_n_0_[18] ),
        .I1(\rx_data_reg_n_0_[26] ),
        .I2(\rx_data_reg_n_0_[10] ),
        .I3(\rx_data_reg_n_0_[35] ),
        .I4(i___2_carry_i_9__0_n_0),
        .O(i___2_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    i___2_carry__0_i_4__0
       (.I0(\rx_data_reg_n_0_[38] ),
        .I1(i___2_carry__0_i_10__0_n_0),
        .I2(i___2_carry__0_i_11__0_n_0),
        .I3(\rx_data_reg_n_0_[14] ),
        .I4(\rx_data_reg_n_0_[30] ),
        .I5(\rx_data_reg_n_0_[22] ),
        .O(i___2_carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry__0_i_5__0
       (.I0(i___2_carry__0_i_1__0_n_0),
        .I1(i___2_carry__0_i_12__0_n_0),
        .I2(\rx_data_reg_n_0_[38] ),
        .I3(\rx_data_reg_n_0_[13] ),
        .I4(\rx_data_reg_n_0_[29] ),
        .I5(\rx_data_reg_n_0_[21] ),
        .O(i___2_carry__0_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry__0_i_6__0
       (.I0(i___2_carry__0_i_2__0_n_0),
        .I1(i___2_carry__0_i_8__0_n_0),
        .I2(\rx_data_reg_n_0_[37] ),
        .I3(\rx_data_reg_n_0_[12] ),
        .I4(\rx_data_reg_n_0_[28] ),
        .I5(\rx_data_reg_n_0_[20] ),
        .O(i___2_carry__0_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry__0_i_7__0
       (.I0(i___2_carry__0_i_3__0_n_0),
        .I1(i___2_carry__0_i_9__0_n_0),
        .I2(\rx_data_reg_n_0_[36] ),
        .I3(\rx_data_reg_n_0_[11] ),
        .I4(\rx_data_reg_n_0_[27] ),
        .I5(\rx_data_reg_n_0_[19] ),
        .O(i___2_carry__0_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry__0_i_8__0
       (.I0(\rx_data_reg_n_0_[13] ),
        .I1(\rx_data_reg_n_0_[29] ),
        .I2(\rx_data_reg_n_0_[21] ),
        .O(i___2_carry__0_i_8__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry__0_i_9__0
       (.I0(\rx_data_reg_n_0_[12] ),
        .I1(\rx_data_reg_n_0_[28] ),
        .I2(\rx_data_reg_n_0_[20] ),
        .O(i___2_carry__0_i_9__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry_i_1__0
       (.I0(\rx_data_reg_n_0_[17] ),
        .I1(\rx_data_reg_n_0_[25] ),
        .I2(\rx_data_reg_n_0_[9] ),
        .I3(\rx_data_reg_n_0_[34] ),
        .I4(i___2_carry_i_8__0_n_0),
        .O(i___2_carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    i___2_carry_i_2__0
       (.I0(\rx_data_reg_n_0_[17] ),
        .I1(\rx_data_reg_n_0_[25] ),
        .I2(\rx_data_reg_n_0_[9] ),
        .I3(\rx_data_reg_n_0_[34] ),
        .I4(i___2_carry_i_8__0_n_0),
        .O(i___2_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___2_carry_i_3__0
       (.I0(\rx_data_reg_n_0_[17] ),
        .I1(\rx_data_reg_n_0_[25] ),
        .I2(\rx_data_reg_n_0_[9] ),
        .I3(\rx_data_reg_n_0_[33] ),
        .O(i___2_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry_i_4__0
       (.I0(i___2_carry_i_1__0_n_0),
        .I1(i___2_carry_i_9__0_n_0),
        .I2(\rx_data_reg_n_0_[35] ),
        .I3(\rx_data_reg_n_0_[10] ),
        .I4(\rx_data_reg_n_0_[26] ),
        .I5(\rx_data_reg_n_0_[18] ),
        .O(i___2_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    i___2_carry_i_5__0
       (.I0(i___2_carry_i_8__0_n_0),
        .I1(\rx_data_reg_n_0_[34] ),
        .I2(\rx_data_reg_n_0_[9] ),
        .I3(\rx_data_reg_n_0_[25] ),
        .I4(\rx_data_reg_n_0_[17] ),
        .I5(\rx_data_reg_n_0_[33] ),
        .O(i___2_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    i___2_carry_i_6__0
       (.I0(i___2_carry_i_3__0_n_0),
        .I1(\rx_data_reg_n_0_[16] ),
        .I2(\rx_data_reg_n_0_[24] ),
        .I3(\rx_data_reg_n_0_[8] ),
        .O(i___2_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___2_carry_i_7__0
       (.I0(\rx_data_reg_n_0_[16] ),
        .I1(\rx_data_reg_n_0_[24] ),
        .I2(\rx_data_reg_n_0_[8] ),
        .I3(\rx_data_reg_n_0_[32] ),
        .O(i___2_carry_i_7__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry_i_8__0
       (.I0(\rx_data_reg_n_0_[10] ),
        .I1(\rx_data_reg_n_0_[26] ),
        .I2(\rx_data_reg_n_0_[18] ),
        .O(i___2_carry_i_8__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry_i_9__0
       (.I0(\rx_data_reg_n_0_[11] ),
        .I1(\rx_data_reg_n_0_[27] ),
        .I2(\rx_data_reg_n_0_[19] ),
        .O(i___2_carry_i_9__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__0_i_1__0
       (.I0(\period_cnt_reg_n_0_[21] ),
        .I1(\period_cnt_reg_n_0_[20] ),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__0_i_2__0
       (.I0(\period_cnt_reg_n_0_[17] ),
        .I1(\period_cnt_reg_n_0_[16] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3__0
       (.I0(\period_cnt_reg_n_0_[15] ),
        .I1(\period_cnt_reg_n_0_[14] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_4__0
       (.I0(\period_cnt_reg_n_0_[20] ),
        .I1(\period_cnt_reg_n_0_[21] ),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5__0
       (.I0(\period_cnt_reg_n_0_[19] ),
        .I1(\period_cnt_reg_n_0_[18] ),
        .O(i__carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_6__0
       (.I0(\period_cnt_reg_n_0_[16] ),
        .I1(\period_cnt_reg_n_0_[17] ),
        .O(i__carry__0_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_7__0
       (.I0(\period_cnt_reg_n_0_[14] ),
        .I1(\period_cnt_reg_n_0_[15] ),
        .O(i__carry__0_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1__0
       (.I0(\period_cnt_reg_n_0_[27] ),
        .I1(\period_cnt_reg_n_0_[26] ),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__1_i_2__0
       (.I0(\period_cnt_reg_n_0_[25] ),
        .I1(\period_cnt_reg_n_0_[24] ),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3__0
       (.I0(\period_cnt_reg_n_0_[23] ),
        .I1(\period_cnt_reg_n_0_[22] ),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4__0
       (.I0(\period_cnt_reg_n_0_[29] ),
        .I1(\period_cnt_reg_n_0_[28] ),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_5__0
       (.I0(\period_cnt_reg_n_0_[26] ),
        .I1(\period_cnt_reg_n_0_[27] ),
        .O(i__carry__1_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_6__0
       (.I0(\period_cnt_reg_n_0_[24] ),
        .I1(\period_cnt_reg_n_0_[25] ),
        .O(i__carry__1_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_7__0
       (.I0(\period_cnt_reg_n_0_[22] ),
        .I1(\period_cnt_reg_n_0_[23] ),
        .O(i__carry__1_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1__0
       (.I0(\period_cnt_reg_n_0_[31] ),
        .I1(\period_cnt_reg_n_0_[30] ),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1__0
       (.I0(\period_cnt_reg_n_0_[13] ),
        .I1(\period_cnt_reg_n_0_[12] ),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(\period_cnt_reg_n_0_[11] ),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__0
       (.I0(\period_cnt_reg_n_0_[9] ),
        .I1(\period_cnt_reg_n_0_[8] ),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__0
       (.I0(\period_cnt_reg_n_0_[7] ),
        .I1(\period_cnt_reg_n_0_[6] ),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5__0
       (.I0(\period_cnt_reg_n_0_[12] ),
        .I1(\period_cnt_reg_n_0_[13] ),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6__0
       (.I0(\period_cnt_reg_n_0_[11] ),
        .I1(\period_cnt_reg_n_0_[10] ),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7__0
       (.I0(\period_cnt_reg_n_0_[8] ),
        .I1(\period_cnt_reg_n_0_[9] ),
        .O(i__carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8__0
       (.I0(\period_cnt_reg_n_0_[6] ),
        .I1(\period_cnt_reg_n_0_[7] ),
        .O(i__carry_i_8__0_n_0));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    inst_am2302_io
       (.I(I),
        .IO(AM2302_SDA_2),
        .O(s_data_in1),
        .T(T));
  CARRY4 ltOp_carry
       (.CI(1'b0),
        .CO({ltOp_carry_n_0,ltOp_carry_n_1,ltOp_carry_n_2,ltOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ltOp_carry_i_1__0_n_0,ltOp_carry_i_2__0_n_0,ltOp_carry_i_3__0_n_0}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_4__0_n_0,ltOp_carry_i_5__0_n_0,ltOp_carry_i_6__0_n_0,ltOp_carry_i_7__0_n_0}));
  CARRY4 ltOp_carry__0
       (.CI(ltOp_carry_n_0),
        .CO({ltOp_carry__0_n_0,ltOp_carry__0_n_1,ltOp_carry__0_n_2,ltOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ltOp_carry__0_i_1__0_n_0,1'b0}),
        .O(NLW_ltOp_carry__0_O_UNCONNECTED[3:0]),
        .S({ltOp_carry__0_i_2__0_n_0,ltOp_carry__0_i_3__0_n_0,ltOp_carry__0_i_4__0_n_0,ltOp_carry__0_i_5__0_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry__0_i_1__0
       (.I0(\period_cnt_reg_n_0_[15] ),
        .I1(\period_cnt_reg_n_0_[14] ),
        .O(ltOp_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_2__0
       (.I0(\period_cnt_reg_n_0_[19] ),
        .I1(\period_cnt_reg_n_0_[18] ),
        .O(ltOp_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_3__0
       (.I0(\period_cnt_reg_n_0_[17] ),
        .I1(\period_cnt_reg_n_0_[16] ),
        .O(ltOp_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry__0_i_4__0
       (.I0(\period_cnt_reg_n_0_[14] ),
        .I1(\period_cnt_reg_n_0_[15] ),
        .O(ltOp_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_5__0
       (.I0(\period_cnt_reg_n_0_[13] ),
        .I1(\period_cnt_reg_n_0_[12] ),
        .O(ltOp_carry__0_i_5__0_n_0));
  CARRY4 ltOp_carry__1
       (.CI(ltOp_carry__0_n_0),
        .CO({ltOp_carry__1_n_0,ltOp_carry__1_n_1,ltOp_carry__1_n_2,ltOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ltOp_carry__1_O_UNCONNECTED[3:0]),
        .S({ltOp_carry__1_i_1__0_n_0,ltOp_carry__1_i_2__0_n_0,ltOp_carry__1_i_3__0_n_0,ltOp_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_1__0
       (.I0(\period_cnt_reg_n_0_[27] ),
        .I1(\period_cnt_reg_n_0_[26] ),
        .O(ltOp_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_2__0
       (.I0(\period_cnt_reg_n_0_[25] ),
        .I1(\period_cnt_reg_n_0_[24] ),
        .O(ltOp_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_3__0
       (.I0(\period_cnt_reg_n_0_[23] ),
        .I1(\period_cnt_reg_n_0_[22] ),
        .O(ltOp_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_4__0
       (.I0(\period_cnt_reg_n_0_[21] ),
        .I1(\period_cnt_reg_n_0_[20] ),
        .O(ltOp_carry__1_i_4__0_n_0));
  CARRY4 ltOp_carry__2
       (.CI(ltOp_carry__1_n_0),
        .CO({NLW_ltOp_carry__2_CO_UNCONNECTED[3:2],ltOp_carry__2_n_2,ltOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\period_cnt_reg_n_0_[31] ,1'b0}),
        .O(NLW_ltOp_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ltOp_carry__2_i_1__0_n_0,ltOp_carry__2_i_2__0_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__2_i_1__0
       (.I0(\period_cnt_reg_n_0_[31] ),
        .I1(\period_cnt_reg_n_0_[30] ),
        .O(ltOp_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__2_i_2__0
       (.I0(\period_cnt_reg_n_0_[29] ),
        .I1(\period_cnt_reg_n_0_[28] ),
        .O(ltOp_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry_i_1__0
       (.I0(\period_cnt_reg_n_0_[9] ),
        .I1(\period_cnt_reg_n_0_[8] ),
        .O(ltOp_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_2__0
       (.I0(\period_cnt_reg_n_0_[7] ),
        .I1(\period_cnt_reg_n_0_[6] ),
        .O(ltOp_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_3__0
       (.I0(\period_cnt_reg_n_0_[5] ),
        .I1(\period_cnt_reg_n_0_[4] ),
        .O(ltOp_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_4__0
       (.I0(\period_cnt_reg_n_0_[11] ),
        .I1(\period_cnt_reg_n_0_[10] ),
        .O(ltOp_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry_i_5__0
       (.I0(\period_cnt_reg_n_0_[8] ),
        .I1(\period_cnt_reg_n_0_[9] ),
        .O(ltOp_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_6__0
       (.I0(\period_cnt_reg_n_0_[6] ),
        .I1(\period_cnt_reg_n_0_[7] ),
        .O(ltOp_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_7__0
       (.I0(\period_cnt_reg_n_0_[4] ),
        .I1(\period_cnt_reg_n_0_[5] ),
        .O(ltOp_carry_i_7__0_n_0));
  CARRY4 \ltOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ltOp_inferred__0/i__carry_n_0 ,\ltOp_inferred__0/i__carry_n_1 ,\ltOp_inferred__0/i__carry_n_2 ,\ltOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  CARRY4 \ltOp_inferred__0/i__carry__0 
       (.CI(\ltOp_inferred__0/i__carry_n_0 ),
        .CO({\ltOp_inferred__0/i__carry__0_n_0 ,\ltOp_inferred__0/i__carry__0_n_1 ,\ltOp_inferred__0/i__carry__0_n_2 ,\ltOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,1'b0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0}),
        .O(\NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_4__0_n_0,i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0}));
  CARRY4 \ltOp_inferred__0/i__carry__1 
       (.CI(\ltOp_inferred__0/i__carry__0_n_0 ),
        .CO({\ltOp_inferred__0/i__carry__1_n_0 ,\ltOp_inferred__0/i__carry__1_n_1 ,\ltOp_inferred__0/i__carry__1_n_2 ,\ltOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0}),
        .O(\NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_4__0_n_0,i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0}));
  CARRY4 \ltOp_inferred__0/i__carry__2 
       (.CI(\ltOp_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED [3:1],\ltOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\period_cnt_reg_n_0_[31] }),
        .O(\NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__2_i_1__0_n_0}));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({minusOp_carry_i_1__0_n_0,minusOp_carry_i_2__0_n_0,minusOp_carry_i_3__0_n_0,\am2302_temp1_reg_n_0_[0] }));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry__0_i_1__0_n_0,minusOp_carry__0_i_2__0_n_0,minusOp_carry__0_i_3__0_n_0,minusOp_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1__0
       (.I0(\am2302_temp1_reg_n_0_[7] ),
        .O(minusOp_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2__0
       (.I0(\am2302_temp1_reg_n_0_[6] ),
        .O(minusOp_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3__0
       (.I0(\am2302_temp1_reg_n_0_[5] ),
        .O(minusOp_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4__0
       (.I0(\am2302_temp1_reg_n_0_[4] ),
        .O(minusOp_carry__0_i_4__0_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry__1_i_1__0_n_0,minusOp_carry__1_i_2__0_n_0,minusOp_carry__1_i_3__0_n_0,minusOp_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1__0
       (.I0(\am2302_temp1_reg_n_0_[11] ),
        .O(minusOp_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2__0
       (.I0(\am2302_temp1_reg_n_0_[10] ),
        .O(minusOp_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3__0
       (.I0(\am2302_temp1_reg_n_0_[9] ),
        .O(minusOp_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4__0
       (.I0(\am2302_temp1_reg_n_0_[8] ),
        .O(minusOp_carry__1_i_4__0_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({1'b0,minusOp_carry__2_i_1__0_n_0,minusOp_carry__2_i_2__0_n_0,minusOp_carry__2_i_3__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1__0
       (.I0(\am2302_temp1_reg_n_0_[14] ),
        .O(minusOp_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2__0
       (.I0(\am2302_temp1_reg_n_0_[13] ),
        .O(minusOp_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3__0
       (.I0(\am2302_temp1_reg_n_0_[12] ),
        .O(minusOp_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1__0
       (.I0(\am2302_temp1_reg_n_0_[3] ),
        .O(minusOp_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2__0
       (.I0(\am2302_temp1_reg_n_0_[2] ),
        .O(minusOp_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3__0
       (.I0(\am2302_temp1_reg_n_0_[1] ),
        .O(minusOp_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \period_cnt[0]_i_1__0 
       (.I0(\period_cnt_reg_n_0_[0] ),
        .O(\period_cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    \period_cnt[31]_i_1__0 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\ltOp_inferred__0/i__carry__2_n_3 ),
        .I4(\state_am2302_reg[0]_0 ),
        .I5(ltOp_carry__2_n_2),
        .O(\period_cnt[31]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \period_cnt[31]_i_2__0 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302_reg[3]_0 ),
        .O(\period_cnt[31]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(\period_cnt[0]_i_1__0_n_0 ),
        .Q(\period_cnt_reg_n_0_[0] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__1_n_6),
        .Q(\period_cnt_reg_n_0_[10] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__1_n_5),
        .Q(\period_cnt_reg_n_0_[11] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__1_n_4),
        .Q(\period_cnt_reg_n_0_[12] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__2_n_7),
        .Q(\period_cnt_reg_n_0_[13] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__2_n_6),
        .Q(\period_cnt_reg_n_0_[14] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__2_n_5),
        .Q(\period_cnt_reg_n_0_[15] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__2_n_4),
        .Q(\period_cnt_reg_n_0_[16] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__3_n_7),
        .Q(\period_cnt_reg_n_0_[17] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__3_n_6),
        .Q(\period_cnt_reg_n_0_[18] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__3_n_5),
        .Q(\period_cnt_reg_n_0_[19] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry_n_7),
        .Q(\period_cnt_reg_n_0_[1] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__3_n_4),
        .Q(\period_cnt_reg_n_0_[20] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__4_n_7),
        .Q(\period_cnt_reg_n_0_[21] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__4_n_6),
        .Q(\period_cnt_reg_n_0_[22] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__4_n_5),
        .Q(\period_cnt_reg_n_0_[23] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__4_n_4),
        .Q(\period_cnt_reg_n_0_[24] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__5_n_7),
        .Q(\period_cnt_reg_n_0_[25] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__5_n_6),
        .Q(\period_cnt_reg_n_0_[26] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__5_n_5),
        .Q(\period_cnt_reg_n_0_[27] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__5_n_4),
        .Q(\period_cnt_reg_n_0_[28] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__6_n_7),
        .Q(\period_cnt_reg_n_0_[29] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry_n_6),
        .Q(\period_cnt_reg_n_0_[2] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__6_n_6),
        .Q(\period_cnt_reg_n_0_[30] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__6_n_5),
        .Q(\period_cnt_reg_n_0_[31] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry_n_5),
        .Q(\period_cnt_reg_n_0_[3] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry_n_4),
        .Q(\period_cnt_reg_n_0_[4] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__0_n_7),
        .Q(\period_cnt_reg_n_0_[5] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__0_n_6),
        .Q(\period_cnt_reg_n_0_[6] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__0_n_5),
        .Q(\period_cnt_reg_n_0_[7] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__0_n_4),
        .Q(\period_cnt_reg_n_0_[8] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__0_n_0 ),
        .D(plusOp_carry__1_n_7),
        .Q(\period_cnt_reg_n_0_[9] ),
        .R(\period_cnt[31]_i_1__0_n_0 ));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\period_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({\period_cnt_reg_n_0_[4] ,\period_cnt_reg_n_0_[3] ,\period_cnt_reg_n_0_[2] ,\period_cnt_reg_n_0_[1] }));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S({\period_cnt_reg_n_0_[8] ,\period_cnt_reg_n_0_[7] ,\period_cnt_reg_n_0_[6] ,\period_cnt_reg_n_0_[5] }));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S({\period_cnt_reg_n_0_[12] ,\period_cnt_reg_n_0_[11] ,\period_cnt_reg_n_0_[10] ,\period_cnt_reg_n_0_[9] }));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S({\period_cnt_reg_n_0_[16] ,\period_cnt_reg_n_0_[15] ,\period_cnt_reg_n_0_[14] ,\period_cnt_reg_n_0_[13] }));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__3_n_4,plusOp_carry__3_n_5,plusOp_carry__3_n_6,plusOp_carry__3_n_7}),
        .S({\period_cnt_reg_n_0_[20] ,\period_cnt_reg_n_0_[19] ,\period_cnt_reg_n_0_[18] ,\period_cnt_reg_n_0_[17] }));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__4_n_4,plusOp_carry__4_n_5,plusOp_carry__4_n_6,plusOp_carry__4_n_7}),
        .S({\period_cnt_reg_n_0_[24] ,\period_cnt_reg_n_0_[23] ,\period_cnt_reg_n_0_[22] ,\period_cnt_reg_n_0_[21] }));
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__5_n_4,plusOp_carry__5_n_5,plusOp_carry__5_n_6,plusOp_carry__5_n_7}),
        .S({\period_cnt_reg_n_0_[28] ,\period_cnt_reg_n_0_[27] ,\period_cnt_reg_n_0_[26] ,\period_cnt_reg_n_0_[25] }));
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],plusOp_carry__6_n_5,plusOp_carry__6_n_6,plusOp_carry__6_n_7}),
        .S({1'b0,\period_cnt_reg_n_0_[31] ,\period_cnt_reg_n_0_[30] ,\period_cnt_reg_n_0_[29] }));
  CARRY4 \plusOp_inferred__3/i___2_carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__3/i___2_carry_n_0 ,\plusOp_inferred__3/i___2_carry_n_1 ,\plusOp_inferred__3/i___2_carry_n_2 ,\plusOp_inferred__3/i___2_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___2_carry_i_1__0_n_0,i___2_carry_i_2__0_n_0,i___2_carry_i_3__0_n_0,\rx_data_reg_n_0_[32] }),
        .O({\plusOp_inferred__3/i___2_carry_n_4 ,\plusOp_inferred__3/i___2_carry_n_5 ,\plusOp_inferred__3/i___2_carry_n_6 ,\plusOp_inferred__3/i___2_carry_n_7 }),
        .S({i___2_carry_i_4__0_n_0,i___2_carry_i_5__0_n_0,i___2_carry_i_6__0_n_0,i___2_carry_i_7__0_n_0}));
  CARRY4 \plusOp_inferred__3/i___2_carry__0 
       (.CI(\plusOp_inferred__3/i___2_carry_n_0 ),
        .CO({\NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED [3],\plusOp_inferred__3/i___2_carry__0_n_1 ,\plusOp_inferred__3/i___2_carry__0_n_2 ,\plusOp_inferred__3/i___2_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i___2_carry__0_i_1__0_n_0,i___2_carry__0_i_2__0_n_0,i___2_carry__0_i_3__0_n_0}),
        .O({\plusOp_inferred__3/i___2_carry__0_n_4 ,\plusOp_inferred__3/i___2_carry__0_n_5 ,\plusOp_inferred__3/i___2_carry__0_n_6 ,\plusOp_inferred__3/i___2_carry__0_n_7 }),
        .S({i___2_carry__0_i_4__0_n_0,i___2_carry__0_i_5__0_n_0,i___2_carry__0_i_6__0_n_0,i___2_carry__0_i_7__0_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[0]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[7]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[0] ),
        .O(\rx_data[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[10]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[15]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[10] ),
        .O(\rx_data[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[11]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[15]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[11] ),
        .O(\rx_data[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[12]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[15]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[12] ),
        .O(\rx_data[12]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[13]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[15]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[13] ),
        .O(\rx_data[13]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[14]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[15]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[14] ),
        .O(\rx_data[14]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[15]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[15]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[15] ),
        .O(\rx_data[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \rx_data[15]_i_2__0 
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(\rx_index_reg_n_0_[3] ),
        .I2(\rx_index_reg_n_0_[5] ),
        .I3(\rx_data[39]_i_7__0_n_0 ),
        .O(\rx_data[15]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[16]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[23]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[16] ),
        .O(\rx_data[16]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[17]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[23]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[17] ),
        .O(\rx_data[17]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[18]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[23]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[18] ),
        .O(\rx_data[18]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[19]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[23]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[19] ),
        .O(\rx_data[19]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[1]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[7]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[1] ),
        .O(\rx_data[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[20]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[23]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[20] ),
        .O(\rx_data[20]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[21]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[23]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[21] ),
        .O(\rx_data[21]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[22]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[23]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[22] ),
        .O(\rx_data[22]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[23]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[23]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[23] ),
        .O(\rx_data[23]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rx_data[23]_i_2__0 
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(\rx_index_reg_n_0_[3] ),
        .I2(\rx_index_reg_n_0_[5] ),
        .I3(\rx_data[39]_i_7__0_n_0 ),
        .O(\rx_data[23]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[24]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[31]_i_3__0_n_0 ),
        .I5(\rx_data_reg_n_0_[24] ),
        .O(\rx_data[24]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[25]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[31]_i_3__0_n_0 ),
        .I5(\rx_data_reg_n_0_[25] ),
        .O(\rx_data[25]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[26]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[31]_i_3__0_n_0 ),
        .I5(\rx_data_reg_n_0_[26] ),
        .O(\rx_data[26]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[27]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[31]_i_3__0_n_0 ),
        .I5(\rx_data_reg_n_0_[27] ),
        .O(\rx_data[27]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[28]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[31]_i_3__0_n_0 ),
        .I5(\rx_data_reg_n_0_[28] ),
        .O(\rx_data[28]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[29]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[31]_i_3__0_n_0 ),
        .I5(\rx_data_reg_n_0_[29] ),
        .O(\rx_data[29]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[2]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[7]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[2] ),
        .O(\rx_data[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[30]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[31]_i_3__0_n_0 ),
        .I5(\rx_data_reg_n_0_[30] ),
        .O(\rx_data[30]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[31]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[31]_i_3__0_n_0 ),
        .I5(\rx_data_reg_n_0_[31] ),
        .O(\rx_data[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBFFFBFFFFFFF)) 
    \rx_data[31]_i_2__0 
       (.I0(s_data_in_reg_n_0),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\rx_data[31]_i_4__0_n_0 ),
        .I5(\rx_data[39]_i_2__0_n_0 ),
        .O(\rx_data[31]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \rx_data[31]_i_3__0 
       (.I0(\rx_index_reg_n_0_[3] ),
        .I1(\rx_index_reg_n_0_[4] ),
        .I2(\rx_index_reg_n_0_[5] ),
        .I3(\rx_data[39]_i_7__0_n_0 ),
        .O(\rx_data[31]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h2223222000000000)) 
    \rx_data[31]_i_4__0 
       (.I0(\rx_data[31]_i_5__0_n_0 ),
        .I1(\us_count_reg_n_0_[7] ),
        .I2(\rx_data[31]_i_6__0_n_0 ),
        .I3(\us_count_reg_n_0_[3] ),
        .I4(\state_am2302[3]_i_25__0_n_0 ),
        .I5(\us_count_reg_n_0_[6] ),
        .O(\rx_data[31]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    \rx_data[31]_i_5__0 
       (.I0(\us_count_reg_n_0_[2] ),
        .I1(\us_count_reg_n_0_[5] ),
        .I2(\us_count_reg_n_0_[4] ),
        .I3(\us_count_reg_n_0_[1] ),
        .I4(\us_count_reg_n_0_[0] ),
        .O(\rx_data[31]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[31]_i_6__0 
       (.I0(\us_count_reg_n_0_[5] ),
        .I1(\us_count_reg_n_0_[4] ),
        .O(\rx_data[31]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[32]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2__0_n_0 ),
        .I3(\rx_data[39]_i_4__0_n_0 ),
        .I4(\rx_data_reg_n_0_[32] ),
        .O(\rx_data[32]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_data[32]_i_2__0 
       (.I0(\rx_index_reg_n_0_[2] ),
        .I1(\rx_index_reg_n_0_[0] ),
        .I2(\rx_index_reg_n_0_[1] ),
        .O(\rx_data[32]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[33]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2__0_n_0 ),
        .I3(\rx_data[39]_i_4__0_n_0 ),
        .I4(\rx_data_reg_n_0_[33] ),
        .O(\rx_data[33]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rx_data[33]_i_2__0 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[33]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[34]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2__0_n_0 ),
        .I3(\rx_data[39]_i_4__0_n_0 ),
        .I4(\rx_data_reg_n_0_[34] ),
        .O(\rx_data[34]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rx_data[34]_i_2__0 
       (.I0(\rx_index_reg_n_0_[1] ),
        .I1(\rx_index_reg_n_0_[0] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[34]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[35]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2__0_n_0 ),
        .I3(\rx_data[39]_i_4__0_n_0 ),
        .I4(\rx_data_reg_n_0_[35] ),
        .O(\rx_data[35]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \rx_data[35]_i_2__0 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[35]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[36]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2__0_n_0 ),
        .I3(\rx_data[39]_i_4__0_n_0 ),
        .I4(\rx_data_reg_n_0_[36] ),
        .O(\rx_data[36]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rx_data[36]_i_2__0 
       (.I0(\rx_index_reg_n_0_[2] ),
        .I1(\rx_index_reg_n_0_[0] ),
        .I2(\rx_index_reg_n_0_[1] ),
        .O(\rx_data[36]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[37]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2__0_n_0 ),
        .I3(\rx_data[39]_i_4__0_n_0 ),
        .I4(\rx_data_reg_n_0_[37] ),
        .O(\rx_data[37]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rx_data[37]_i_2__0 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[37]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[38]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2__0_n_0 ),
        .I3(\rx_data[39]_i_4__0_n_0 ),
        .I4(\rx_data_reg_n_0_[38] ),
        .O(\rx_data[38]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rx_data[38]_i_2__0 
       (.I0(\rx_index_reg_n_0_[1] ),
        .I1(\rx_index_reg_n_0_[0] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[38]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[39]_i_10__0 
       (.I0(\rx_index_reg_n_0_[25] ),
        .I1(\rx_index_reg_n_0_[26] ),
        .O(\rx_data[39]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_data[39]_i_11__0 
       (.I0(\rx_index_reg_n_0_[30] ),
        .I1(\rx_index_reg_n_0_[31] ),
        .I2(\rx_index_reg_n_0_[29] ),
        .I3(\rx_index_reg_n_0_[28] ),
        .O(\rx_data[39]_i_11__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[39]_i_12__0 
       (.I0(\rx_index_reg_n_0_[7] ),
        .I1(\rx_index_reg_n_0_[8] ),
        .O(\rx_data[39]_i_12__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[39]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3__0_n_0 ),
        .I3(\rx_data[39]_i_4__0_n_0 ),
        .I4(\rx_data_reg_n_0_[39] ),
        .O(\rx_data[39]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4444444044404440)) 
    \rx_data[39]_i_2__0 
       (.I0(\us_count_reg_n_0_[7] ),
        .I1(\rx_data[39]_i_5__0_n_0 ),
        .I2(\us_count_reg_n_0_[6] ),
        .I3(\us_count_reg_n_0_[5] ),
        .I4(\rx_data[39]_i_6__0_n_0 ),
        .I5(\us_count_reg_n_0_[4] ),
        .O(\rx_data[39]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rx_data[39]_i_3__0 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[39]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \rx_data[39]_i_4__0 
       (.I0(\rx_data[31]_i_2__0_n_0 ),
        .I1(\rx_data[39]_i_7__0_n_0 ),
        .I2(\rx_index_reg_n_0_[4] ),
        .I3(\rx_index_reg_n_0_[3] ),
        .I4(\rx_index_reg_n_0_[5] ),
        .O(\rx_data[39]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h0000007F)) 
    \rx_data[39]_i_5__0 
       (.I0(\us_count_reg_n_0_[2] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[3] ),
        .I3(\us_count_reg_n_0_[5] ),
        .I4(\us_count_reg_n_0_[6] ),
        .O(\rx_data[39]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \rx_data[39]_i_6__0 
       (.I0(\us_count_reg_n_0_[0] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[2] ),
        .I3(\us_count_reg_n_0_[3] ),
        .O(\rx_data[39]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_data[39]_i_7__0 
       (.I0(\rx_data[39]_i_8__0_n_0 ),
        .I1(\rx_data[39]_i_9__0_n_0 ),
        .I2(\rx_index_reg_n_0_[15] ),
        .I3(\rx_index_reg_n_0_[12] ),
        .I4(\rx_index_reg_n_0_[9] ),
        .I5(\rx_index[31]_i_10__0_n_0 ),
        .O(\rx_data[39]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_data[39]_i_8__0 
       (.I0(\rx_index_reg_n_0_[21] ),
        .I1(\state_am2302[3]_i_26__0_n_0 ),
        .I2(\rx_index_reg_n_0_[24] ),
        .I3(\rx_data[39]_i_10__0_n_0 ),
        .I4(\rx_index_reg_n_0_[27] ),
        .I5(\rx_data[39]_i_11__0_n_0 ),
        .O(\rx_data[39]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_data[39]_i_9__0 
       (.I0(\rx_index_reg_n_0_[10] ),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[13] ),
        .I3(\rx_index_reg_n_0_[14] ),
        .I4(\rx_data[39]_i_12__0_n_0 ),
        .I5(\rx_index_reg_n_0_[6] ),
        .O(\rx_data[39]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[3]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[7]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[3] ),
        .O(\rx_data[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[4]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[7]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[4] ),
        .O(\rx_data[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[5]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[7]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[5] ),
        .O(\rx_data[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[6]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[7]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[6] ),
        .O(\rx_data[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[7]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[7]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[7] ),
        .O(\rx_data[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_data[7]_i_2__0 
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(\rx_index_reg_n_0_[3] ),
        .I2(\rx_index_reg_n_0_[5] ),
        .I3(\rx_data[39]_i_7__0_n_0 ),
        .O(\rx_data[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[8]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[15]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[8] ),
        .O(\rx_data[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[9]_i_1__0 
       (.I0(\rx_data[39]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2__0_n_0 ),
        .I3(\rx_data[31]_i_2__0_n_0 ),
        .I4(\rx_data[15]_i_2__0_n_0 ),
        .I5(\rx_data_reg_n_0_[9] ),
        .O(\rx_data[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[0]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[10]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[11]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[12]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[13]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[14]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[15]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[16]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[17]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[18]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[19]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[1]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[20]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[21]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[22]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[23]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[24]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[25]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[26]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[27]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[28]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[29]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[2]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[30]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[31]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[32] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[32]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[33] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[33]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[34] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[34]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[35] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[35]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[36] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[36]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[37] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[37]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[38] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[38]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[39] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[39]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[3]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[4]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[5]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[6]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[7]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[8]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[9]_i_1__0_n_0 ),
        .Q(\rx_data_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 rx_index0_carry
       (.CI(1'b0),
        .CO({rx_index0_carry_n_0,rx_index0_carry_n_1,rx_index0_carry_n_2,rx_index0_carry_n_3}),
        .CYINIT(\rx_index_reg_n_0_[0] ),
        .DI({\rx_index_reg_n_0_[4] ,\rx_index_reg_n_0_[3] ,\rx_index_reg_n_0_[2] ,\rx_index_reg_n_0_[1] }),
        .O({rx_index0_carry_n_4,rx_index0_carry_n_5,rx_index0_carry_n_6,rx_index0_carry_n_7}),
        .S({rx_index0_carry_i_1__0_n_0,rx_index0_carry_i_2__0_n_0,rx_index0_carry_i_3__0_n_0,rx_index0_carry_i_4__0_n_0}));
  CARRY4 rx_index0_carry__0
       (.CI(rx_index0_carry_n_0),
        .CO({rx_index0_carry__0_n_0,rx_index0_carry__0_n_1,rx_index0_carry__0_n_2,rx_index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[8] ,\rx_index_reg_n_0_[7] ,\rx_index_reg_n_0_[6] ,\rx_index_reg_n_0_[5] }),
        .O({rx_index0_carry__0_n_4,rx_index0_carry__0_n_5,rx_index0_carry__0_n_6,rx_index0_carry__0_n_7}),
        .S({rx_index0_carry__0_i_1__0_n_0,rx_index0_carry__0_i_2__0_n_0,rx_index0_carry__0_i_3__0_n_0,rx_index0_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_1__0
       (.I0(\rx_index_reg_n_0_[8] ),
        .O(rx_index0_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_2__0
       (.I0(\rx_index_reg_n_0_[7] ),
        .O(rx_index0_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_3__0
       (.I0(\rx_index_reg_n_0_[6] ),
        .O(rx_index0_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_4__0
       (.I0(\rx_index_reg_n_0_[5] ),
        .O(rx_index0_carry__0_i_4__0_n_0));
  CARRY4 rx_index0_carry__1
       (.CI(rx_index0_carry__0_n_0),
        .CO({rx_index0_carry__1_n_0,rx_index0_carry__1_n_1,rx_index0_carry__1_n_2,rx_index0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[12] ,\rx_index_reg_n_0_[11] ,\rx_index_reg_n_0_[10] ,\rx_index_reg_n_0_[9] }),
        .O({rx_index0_carry__1_n_4,rx_index0_carry__1_n_5,rx_index0_carry__1_n_6,rx_index0_carry__1_n_7}),
        .S({rx_index0_carry__1_i_1__0_n_0,rx_index0_carry__1_i_2__0_n_0,rx_index0_carry__1_i_3__0_n_0,rx_index0_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_1__0
       (.I0(\rx_index_reg_n_0_[12] ),
        .O(rx_index0_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_2__0
       (.I0(\rx_index_reg_n_0_[11] ),
        .O(rx_index0_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_3__0
       (.I0(\rx_index_reg_n_0_[10] ),
        .O(rx_index0_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_4__0
       (.I0(\rx_index_reg_n_0_[9] ),
        .O(rx_index0_carry__1_i_4__0_n_0));
  CARRY4 rx_index0_carry__2
       (.CI(rx_index0_carry__1_n_0),
        .CO({rx_index0_carry__2_n_0,rx_index0_carry__2_n_1,rx_index0_carry__2_n_2,rx_index0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[16] ,\rx_index_reg_n_0_[15] ,\rx_index_reg_n_0_[14] ,\rx_index_reg_n_0_[13] }),
        .O({rx_index0_carry__2_n_4,rx_index0_carry__2_n_5,rx_index0_carry__2_n_6,rx_index0_carry__2_n_7}),
        .S({rx_index0_carry__2_i_1__0_n_0,rx_index0_carry__2_i_2__0_n_0,rx_index0_carry__2_i_3__0_n_0,rx_index0_carry__2_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_1__0
       (.I0(\rx_index_reg_n_0_[16] ),
        .O(rx_index0_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_2__0
       (.I0(\rx_index_reg_n_0_[15] ),
        .O(rx_index0_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_3__0
       (.I0(\rx_index_reg_n_0_[14] ),
        .O(rx_index0_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_4__0
       (.I0(\rx_index_reg_n_0_[13] ),
        .O(rx_index0_carry__2_i_4__0_n_0));
  CARRY4 rx_index0_carry__3
       (.CI(rx_index0_carry__2_n_0),
        .CO({rx_index0_carry__3_n_0,rx_index0_carry__3_n_1,rx_index0_carry__3_n_2,rx_index0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[20] ,\rx_index_reg_n_0_[19] ,\rx_index_reg_n_0_[18] ,\rx_index_reg_n_0_[17] }),
        .O({rx_index0_carry__3_n_4,rx_index0_carry__3_n_5,rx_index0_carry__3_n_6,rx_index0_carry__3_n_7}),
        .S({rx_index0_carry__3_i_1__0_n_0,rx_index0_carry__3_i_2__0_n_0,rx_index0_carry__3_i_3__0_n_0,rx_index0_carry__3_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_1__0
       (.I0(\rx_index_reg_n_0_[20] ),
        .O(rx_index0_carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_2__0
       (.I0(\rx_index_reg_n_0_[19] ),
        .O(rx_index0_carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_3__0
       (.I0(\rx_index_reg_n_0_[18] ),
        .O(rx_index0_carry__3_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_4__0
       (.I0(\rx_index_reg_n_0_[17] ),
        .O(rx_index0_carry__3_i_4__0_n_0));
  CARRY4 rx_index0_carry__4
       (.CI(rx_index0_carry__3_n_0),
        .CO({rx_index0_carry__4_n_0,rx_index0_carry__4_n_1,rx_index0_carry__4_n_2,rx_index0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[24] ,\rx_index_reg_n_0_[23] ,\rx_index_reg_n_0_[22] ,\rx_index_reg_n_0_[21] }),
        .O({rx_index0_carry__4_n_4,rx_index0_carry__4_n_5,rx_index0_carry__4_n_6,rx_index0_carry__4_n_7}),
        .S({rx_index0_carry__4_i_1__0_n_0,rx_index0_carry__4_i_2__0_n_0,rx_index0_carry__4_i_3__0_n_0,rx_index0_carry__4_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_1__0
       (.I0(\rx_index_reg_n_0_[24] ),
        .O(rx_index0_carry__4_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_2__0
       (.I0(\rx_index_reg_n_0_[23] ),
        .O(rx_index0_carry__4_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_3__0
       (.I0(\rx_index_reg_n_0_[22] ),
        .O(rx_index0_carry__4_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_4__0
       (.I0(\rx_index_reg_n_0_[21] ),
        .O(rx_index0_carry__4_i_4__0_n_0));
  CARRY4 rx_index0_carry__5
       (.CI(rx_index0_carry__4_n_0),
        .CO({rx_index0_carry__5_n_0,rx_index0_carry__5_n_1,rx_index0_carry__5_n_2,rx_index0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[28] ,\rx_index_reg_n_0_[27] ,\rx_index_reg_n_0_[26] ,\rx_index_reg_n_0_[25] }),
        .O({rx_index0_carry__5_n_4,rx_index0_carry__5_n_5,rx_index0_carry__5_n_6,rx_index0_carry__5_n_7}),
        .S({rx_index0_carry__5_i_1__0_n_0,rx_index0_carry__5_i_2__0_n_0,rx_index0_carry__5_i_3__0_n_0,rx_index0_carry__5_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_1__0
       (.I0(\rx_index_reg_n_0_[28] ),
        .O(rx_index0_carry__5_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_2__0
       (.I0(\rx_index_reg_n_0_[27] ),
        .O(rx_index0_carry__5_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_3__0
       (.I0(\rx_index_reg_n_0_[26] ),
        .O(rx_index0_carry__5_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_4__0
       (.I0(\rx_index_reg_n_0_[25] ),
        .O(rx_index0_carry__5_i_4__0_n_0));
  CARRY4 rx_index0_carry__6
       (.CI(rx_index0_carry__5_n_0),
        .CO({NLW_rx_index0_carry__6_CO_UNCONNECTED[3:2],rx_index0_carry__6_n_2,rx_index0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rx_index_reg_n_0_[30] ,\rx_index_reg_n_0_[29] }),
        .O({NLW_rx_index0_carry__6_O_UNCONNECTED[3],rx_index0_carry__6_n_5,rx_index0_carry__6_n_6,rx_index0_carry__6_n_7}),
        .S({1'b0,rx_index0_carry__6_i_1__0_n_0,rx_index0_carry__6_i_2__0_n_0,rx_index0_carry__6_i_3__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__6_i_1__0
       (.I0(\rx_index_reg_n_0_[31] ),
        .O(rx_index0_carry__6_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__6_i_2__0
       (.I0(\rx_index_reg_n_0_[30] ),
        .O(rx_index0_carry__6_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__6_i_3__0
       (.I0(\rx_index_reg_n_0_[29] ),
        .O(rx_index0_carry__6_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_1__0
       (.I0(\rx_index_reg_n_0_[4] ),
        .O(rx_index0_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_2__0
       (.I0(\rx_index_reg_n_0_[3] ),
        .O(rx_index0_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_3__0
       (.I0(\rx_index_reg_n_0_[2] ),
        .O(rx_index0_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_4__0
       (.I0(\rx_index_reg_n_0_[1] ),
        .O(rx_index0_carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rx_index[0]_i_1__0 
       (.I0(\rx_index_reg_n_0_[0] ),
        .O(\rx_index[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_index[31]_i_10__0 
       (.I0(\rx_index_reg_n_0_[18] ),
        .I1(\rx_index_reg_n_0_[20] ),
        .I2(\rx_index_reg_n_0_[19] ),
        .O(\rx_index[31]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h0040004000000040)) 
    \rx_index[31]_i_1__0 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(\rx_index[31]_i_3__0_n_0 ),
        .I5(\rx_index[31]_i_4__0_n_0 ),
        .O(\rx_index[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0140014000000140)) 
    \rx_index[31]_i_2__0 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(\rx_index[31]_i_3__0_n_0 ),
        .I5(\rx_index[31]_i_4__0_n_0 ),
        .O(\rx_index[31]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \rx_index[31]_i_3__0 
       (.I0(\rx_index_reg_n_0_[6] ),
        .I1(\rx_index_reg_n_0_[5] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .I3(\rx_index[31]_i_5__0_n_0 ),
        .I4(\rx_index[31]_i_6__0_n_0 ),
        .I5(\rx_index[31]_i_7__0_n_0 ),
        .O(\rx_index[31]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_index[31]_i_4__0 
       (.I0(\rx_index[31]_i_8__0_n_0 ),
        .I1(\rx_index_reg_n_0_[16] ),
        .I2(\rx_index_reg_n_0_[17] ),
        .I3(\rx_index_reg_n_0_[23] ),
        .I4(\rx_index_reg_n_0_[21] ),
        .I5(\rx_index[31]_i_9__0_n_0 ),
        .O(\rx_index[31]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_index[31]_i_5__0 
       (.I0(\rx_index_reg_n_0_[12] ),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[10] ),
        .I3(\rx_index_reg_n_0_[9] ),
        .O(\rx_index[31]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_index[31]_i_6__0 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .I2(\rx_index_reg_n_0_[31] ),
        .I3(\rx_index_reg_n_0_[15] ),
        .O(\rx_index[31]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rx_index[31]_i_7__0 
       (.I0(\rx_index_reg_n_0_[13] ),
        .I1(\rx_index_reg_n_0_[14] ),
        .I2(\rx_index_reg_n_0_[7] ),
        .I3(\rx_index_reg_n_0_[8] ),
        .I4(\rx_index_reg_n_0_[4] ),
        .I5(\rx_index_reg_n_0_[3] ),
        .O(\rx_index[31]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_index[31]_i_8__0 
       (.I0(\rx_index_reg_n_0_[24] ),
        .I1(\rx_index_reg_n_0_[22] ),
        .I2(\rx_index_reg_n_0_[25] ),
        .I3(\rx_index_reg_n_0_[26] ),
        .I4(\rx_index_reg_n_0_[27] ),
        .O(\rx_index[31]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_index[31]_i_9__0 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\rx_index_reg_n_0_[30] ),
        .I2(\rx_index_reg_n_0_[29] ),
        .I3(\rx_index_reg_n_0_[28] ),
        .I4(\rx_index[31]_i_10__0_n_0 ),
        .O(\rx_index[31]_i_9__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(\rx_index[0]_i_1__0_n_0 ),
        .Q(\rx_index_reg_n_0_[0] ),
        .S(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__1_n_6),
        .Q(\rx_index_reg_n_0_[10] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__1_n_5),
        .Q(\rx_index_reg_n_0_[11] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__1_n_4),
        .Q(\rx_index_reg_n_0_[12] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__2_n_7),
        .Q(\rx_index_reg_n_0_[13] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__2_n_6),
        .Q(\rx_index_reg_n_0_[14] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__2_n_5),
        .Q(\rx_index_reg_n_0_[15] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__2_n_4),
        .Q(\rx_index_reg_n_0_[16] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__3_n_7),
        .Q(\rx_index_reg_n_0_[17] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__3_n_6),
        .Q(\rx_index_reg_n_0_[18] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__3_n_5),
        .Q(\rx_index_reg_n_0_[19] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry_n_7),
        .Q(\rx_index_reg_n_0_[1] ),
        .S(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__3_n_4),
        .Q(\rx_index_reg_n_0_[20] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__4_n_7),
        .Q(\rx_index_reg_n_0_[21] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__4_n_6),
        .Q(\rx_index_reg_n_0_[22] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__4_n_5),
        .Q(\rx_index_reg_n_0_[23] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__4_n_4),
        .Q(\rx_index_reg_n_0_[24] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__5_n_7),
        .Q(\rx_index_reg_n_0_[25] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__5_n_6),
        .Q(\rx_index_reg_n_0_[26] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__5_n_5),
        .Q(\rx_index_reg_n_0_[27] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__5_n_4),
        .Q(\rx_index_reg_n_0_[28] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__6_n_7),
        .Q(\rx_index_reg_n_0_[29] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry_n_6),
        .Q(\rx_index_reg_n_0_[2] ),
        .S(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__6_n_6),
        .Q(\rx_index_reg_n_0_[30] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__6_n_5),
        .Q(\rx_index_reg_n_0_[31] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry_n_5),
        .Q(\rx_index_reg_n_0_[3] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry_n_4),
        .Q(\rx_index_reg_n_0_[4] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__0_n_7),
        .Q(\rx_index_reg_n_0_[5] ),
        .S(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__0_n_6),
        .Q(\rx_index_reg_n_0_[6] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__0_n_5),
        .Q(\rx_index_reg_n_0_[7] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__0_n_4),
        .Q(\rx_index_reg_n_0_[8] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__0_n_0 ),
        .D(rx_index0_carry__1_n_7),
        .Q(\rx_index_reg_n_0_[9] ),
        .R(\rx_index[31]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    s_data_ctrl1_i_1__0
       (.I0(s_data_ctrl_tristate_oe_reg_0),
        .I1(s_data_ctrl1_reg_0),
        .O(s_data_ctrl));
  FDRE s_data_ctrl1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_ctrl),
        .Q(T),
        .R(1'b0));
  FDRE s_data_ctrl_tristate_oe_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_ctrl_tristate_oe_reg_1),
        .Q(s_data_ctrl_tristate_oe_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    s_data_in_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_in1),
        .Q(s_data_in_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_data_out1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_out_reg_n_0),
        .Q(I),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    s_data_out_i_1__0
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(s_data_out_reg_n_0),
        .O(s_data_out_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    s_data_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_out_i_1__0_n_0),
        .Q(s_data_out_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA0A0EFE0)) 
    \state_am2302[0]_i_1__0 
       (.I0(\state_am2302[0]_i_2__0_n_0 ),
        .I1(\state_am2302[3]_i_6__0_n_0 ),
        .I2(\state_am2302[3]_i_7__0_n_0 ),
        .I3(\state_am2302[3]_i_8__0_n_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001FF0100)) 
    \state_am2302[0]_i_2__0 
       (.I0(\state_am2302[3]_i_10__0_n_0 ),
        .I1(\state_am2302[3]_i_11__0_n_0 ),
        .I2(\state_am2302[3]_i_12__0_n_0 ),
        .I3(\state_am2302[3]_i_13__0_n_0 ),
        .I4(\state_am2302[3]_i_14__0_n_0 ),
        .I5(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFE00FA00FA00)) 
    \state_am2302[1]_i_1__0 
       (.I0(\state_am2302[1]_i_2__0_n_0 ),
        .I1(\state_am2302[3]_i_6__0_n_0 ),
        .I2(\state_am2302[1]_i_3__0_n_0 ),
        .I3(\state_am2302[3]_i_7__0_n_0 ),
        .I4(\state_am2302[3]_i_8__0_n_0 ),
        .I5(\state_am2302[1]_i_4__0_n_0 ),
        .O(\state_am2302[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h0802A0A0)) 
    \state_am2302[1]_i_2__0 
       (.I0(\state_am2302[3]_i_14__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h1100002210000020)) 
    \state_am2302[1]_i_3__0 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302[3]_i_10__0_n_0 ),
        .I3(\state_am2302_reg[1]_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .I5(\state_am2302[3]_i_12__0_n_0 ),
        .O(\state_am2302[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state_am2302[1]_i_4__0 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .O(\state_am2302[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFE00FA00FA00)) 
    \state_am2302[2]_i_1__0 
       (.I0(\state_am2302[2]_i_2__0_n_0 ),
        .I1(\state_am2302[3]_i_6__0_n_0 ),
        .I2(\state_am2302[2]_i_3__0_n_0 ),
        .I3(\state_am2302[3]_i_7__0_n_0 ),
        .I4(\state_am2302[3]_i_8__0_n_0 ),
        .I5(\state_am2302[2]_i_4__0_n_0 ),
        .O(\state_am2302[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h0880A800)) 
    \state_am2302[2]_i_2__0 
       (.I0(\state_am2302[3]_i_14__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000500A00005008)) 
    \state_am2302[2]_i_3__0 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302[3]_i_10__0_n_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[0]_0 ),
        .I4(\state_am2302_reg[2]_0 ),
        .I5(\state_am2302[3]_i_12__0_n_0 ),
        .O(\state_am2302[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \state_am2302[2]_i_4__0 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .O(\state_am2302[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_am2302[3]_i_10__0 
       (.I0(\state_am2302[3]_i_20__0_n_0 ),
        .I1(\state_am2302[3]_i_21__0_n_0 ),
        .I2(\rx_index_reg_n_0_[1] ),
        .I3(\rx_index_reg_n_0_[2] ),
        .I4(\rx_index_reg_n_0_[0] ),
        .I5(\state_am2302[3]_i_22__0_n_0 ),
        .O(\state_am2302[3]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h453D)) 
    \state_am2302[3]_i_11__0 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .O(\state_am2302[3]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state_am2302[3]_i_12__0 
       (.I0(\rx_index_reg_n_0_[31] ),
        .I1(\rx_index_reg_n_0_[30] ),
        .I2(\rx_index_reg_n_0_[29] ),
        .I3(\rx_index_reg_n_0_[27] ),
        .I4(\rx_index_reg_n_0_[28] ),
        .O(\state_am2302[3]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h032C)) 
    \state_am2302[3]_i_13__0 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .O(\state_am2302[3]_i_13__0_n_0 ));
  LUT4 #(
    .INIT(16'hFCAC)) 
    \state_am2302[3]_i_14__0 
       (.I0(\rx_data[31]_i_4__0_n_0 ),
        .I1(\state_am2302[3]_i_23__0_n_0 ),
        .I2(\state_am2302[3]_i_11__0_n_0 ),
        .I3(\rx_data[39]_i_2__0_n_0 ),
        .O(\state_am2302[3]_i_14__0_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_15__0 
       (.I0(\rx_data_reg_n_0_[7] ),
        .I1(\plusOp_inferred__3/i___2_carry__0_n_4 ),
        .I2(\rx_data_reg_n_0_[6] ),
        .I3(\plusOp_inferred__3/i___2_carry__0_n_5 ),
        .O(\state_am2302[3]_i_15__0_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_16__0 
       (.I0(\rx_data_reg_n_0_[5] ),
        .I1(\plusOp_inferred__3/i___2_carry__0_n_6 ),
        .I2(\rx_data_reg_n_0_[2] ),
        .I3(\plusOp_inferred__3/i___2_carry_n_5 ),
        .O(\state_am2302[3]_i_16__0_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_17__0 
       (.I0(\rx_data_reg_n_0_[1] ),
        .I1(\plusOp_inferred__3/i___2_carry_n_6 ),
        .I2(\rx_data_reg_n_0_[0] ),
        .I3(\plusOp_inferred__3/i___2_carry_n_7 ),
        .O(\state_am2302[3]_i_17__0_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_18__0 
       (.I0(\rx_data_reg_n_0_[4] ),
        .I1(\plusOp_inferred__3/i___2_carry__0_n_7 ),
        .I2(\rx_data_reg_n_0_[3] ),
        .I3(\plusOp_inferred__3/i___2_carry_n_4 ),
        .O(\state_am2302[3]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003333322)) 
    \state_am2302[3]_i_19__0 
       (.I0(\us_count[7]_i_7__0_n_0 ),
        .I1(\state_am2302[3]_i_24__0_n_0 ),
        .I2(\state_am2302[3]_i_25__0_n_0 ),
        .I3(\us_count_reg_n_0_[3] ),
        .I4(\us_count_reg_n_0_[4] ),
        .I5(\us_count_reg_n_0_[5] ),
        .O(\state_am2302[3]_i_19__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAFAFAEEEEAAEE)) 
    \state_am2302[3]_i_1__0 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302[3]_i_3__0_n_0 ),
        .I2(\state_am2302[3]_i_4__0_n_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(s_data_in_reg_n_0),
        .I5(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_am2302[3]_i_20__0 
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(\rx_index_reg_n_0_[5] ),
        .I2(\rx_index_reg_n_0_[3] ),
        .I3(\rx_index_reg_n_0_[7] ),
        .I4(\rx_index_reg_n_0_[8] ),
        .I5(\rx_index_reg_n_0_[6] ),
        .O(\state_am2302[3]_i_20__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_am2302[3]_i_21__0 
       (.I0(\rx_index_reg_n_0_[25] ),
        .I1(\rx_index_reg_n_0_[26] ),
        .I2(\rx_index_reg_n_0_[24] ),
        .I3(\state_am2302[3]_i_26__0_n_0 ),
        .O(\state_am2302[3]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \state_am2302[3]_i_22__0 
       (.I0(\state_am2302[3]_i_27__0_n_0 ),
        .I1(\state_am2302[3]_i_28__0_n_0 ),
        .I2(\rx_index_reg_n_0_[23] ),
        .I3(\rx_index_reg_n_0_[21] ),
        .I4(\rx_index_reg_n_0_[22] ),
        .I5(\state_am2302[3]_i_29__0_n_0 ),
        .O(\state_am2302[3]_i_22__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h0C0C080A)) 
    \state_am2302[3]_i_23__0 
       (.I0(\state_am2302[3]_i_30__0_n_0 ),
        .I1(\state_am2302[3]_i_31__0_n_0 ),
        .I2(\us_count_reg_n_0_[7] ),
        .I3(\us_count_reg_n_0_[5] ),
        .I4(\us_count_reg_n_0_[6] ),
        .O(\state_am2302[3]_i_23__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state_am2302[3]_i_24__0 
       (.I0(\us_count_reg_n_0_[7] ),
        .I1(\us_count_reg_n_0_[6] ),
        .O(\state_am2302[3]_i_24__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state_am2302[3]_i_25__0 
       (.I0(\us_count_reg_n_0_[2] ),
        .I1(\us_count_reg_n_0_[1] ),
        .O(\state_am2302[3]_i_25__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_am2302[3]_i_26__0 
       (.I0(\rx_index_reg_n_0_[17] ),
        .I1(\rx_index_reg_n_0_[16] ),
        .I2(\rx_index_reg_n_0_[23] ),
        .I3(\rx_index_reg_n_0_[22] ),
        .O(\state_am2302[3]_i_26__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_am2302[3]_i_27__0 
       (.I0(\rx_index_reg_n_0_[10] ),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[9] ),
        .I3(\rx_index_reg_n_0_[13] ),
        .I4(\rx_index_reg_n_0_[14] ),
        .I5(\rx_index_reg_n_0_[12] ),
        .O(\state_am2302[3]_i_27__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state_am2302[3]_i_28__0 
       (.I0(\rx_index_reg_n_0_[19] ),
        .I1(\rx_index_reg_n_0_[20] ),
        .O(\state_am2302[3]_i_28__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \state_am2302[3]_i_29__0 
       (.I0(\rx_index_reg_n_0_[17] ),
        .I1(\rx_index_reg_n_0_[15] ),
        .I2(\rx_index_reg_n_0_[16] ),
        .I3(\rx_index_reg_n_0_[20] ),
        .I4(\rx_index_reg_n_0_[18] ),
        .I5(\rx_index_reg_n_0_[19] ),
        .O(\state_am2302[3]_i_29__0_n_0 ));
  LUT5 #(
    .INIT(32'hEFE0A0A0)) 
    \state_am2302[3]_i_2__0 
       (.I0(\state_am2302[3]_i_5__0_n_0 ),
        .I1(\state_am2302[3]_i_6__0_n_0 ),
        .I2(\state_am2302[3]_i_7__0_n_0 ),
        .I3(\state_am2302[3]_i_8__0_n_0 ),
        .I4(\state_am2302[3]_i_9__0_n_0 ),
        .O(\state_am2302[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \state_am2302[3]_i_30__0 
       (.I0(\us_count_reg_n_0_[5] ),
        .I1(\us_count_reg_n_0_[4] ),
        .I2(\us_count_reg_n_0_[3] ),
        .I3(\us_count_reg_n_0_[1] ),
        .I4(\us_count_reg_n_0_[2] ),
        .I5(\us_count_reg_n_0_[0] ),
        .O(\state_am2302[3]_i_30__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000070FFFFF)) 
    \state_am2302[3]_i_31__0 
       (.I0(\us_count_reg_n_0_[1] ),
        .I1(\us_count_reg_n_0_[0] ),
        .I2(\us_count_reg_n_0_[3] ),
        .I3(\us_count_reg_n_0_[2] ),
        .I4(\us_count_reg_n_0_[4] ),
        .I5(\us_count_reg_n_0_[6] ),
        .O(\state_am2302[3]_i_31__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAFAABBBBBBBB)) 
    \state_am2302[3]_i_3__0 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\ltOp_inferred__0/i__carry__2_n_3 ),
        .I2(\us_count[7]_i_4__0_n_0 ),
        .I3(clk_1ust_reg_n_0),
        .I4(clk_1us_reg_n_0),
        .I5(\state_am2302_reg[1]_0 ),
        .O(\state_am2302[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFF5F5F3F3F3F3)) 
    \state_am2302[3]_i_4__0 
       (.I0(s_data_in_reg_n_0),
        .I1(ltOp_carry__2_n_2),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\us_count[7]_i_5__0_n_0 ),
        .I4(\us_count[7]_i_6__0_n_0 ),
        .I5(\state_am2302_reg[1]_0 ),
        .O(\state_am2302[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h01FF010000000000)) 
    \state_am2302[3]_i_5__0 
       (.I0(\state_am2302[3]_i_10__0_n_0 ),
        .I1(\state_am2302[3]_i_11__0_n_0 ),
        .I2(\state_am2302[3]_i_12__0_n_0 ),
        .I3(\state_am2302[3]_i_13__0_n_0 ),
        .I4(\state_am2302[3]_i_14__0_n_0 ),
        .I5(\state_am2302[3]_i_9__0_n_0 ),
        .O(\state_am2302[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \state_am2302[3]_i_6__0 
       (.I0(\state_am2302[3]_i_13__0_n_0 ),
        .I1(\state_am2302[3]_i_15__0_n_0 ),
        .I2(\state_am2302[3]_i_16__0_n_0 ),
        .I3(\state_am2302[3]_i_17__0_n_0 ),
        .I4(\state_am2302[3]_i_18__0_n_0 ),
        .I5(\state_am2302[3]_i_11__0_n_0 ),
        .O(\state_am2302[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h42)) 
    \state_am2302[3]_i_7__0 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .O(\state_am2302[3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h14B7049515F705D5)) 
    \state_am2302[3]_i_8__0 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(\state_am2302[3]_i_19__0_n_0 ),
        .I5(s_data_in_reg_n_0),
        .O(\state_am2302[3]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \state_am2302[3]_i_9__0 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .O(\state_am2302[3]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1__0_n_0 ),
        .D(\state_am2302[0]_i_1__0_n_0 ),
        .Q(\state_am2302_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1__0_n_0 ),
        .D(\state_am2302[1]_i_1__0_n_0 ),
        .Q(\state_am2302_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1__0_n_0 ),
        .D(\state_am2302[2]_i_1__0_n_0 ),
        .Q(\state_am2302_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1__0_n_0 ),
        .D(\state_am2302[3]_i_2__0_n_0 ),
        .Q(\state_am2302_reg[3]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h307F7F7F30000000)) 
    \status[0]_i_1 
       (.I0(\status[0]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\status[0]_i_3__0_n_0 ),
        .I4(\status[0]_i_4__0_n_0 ),
        .I5(\status_reg[0]_0 ),
        .O(\status[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \status[0]_i_2__0 
       (.I0(\state_am2302[3]_i_15__0_n_0 ),
        .I1(\state_am2302[3]_i_16__0_n_0 ),
        .I2(\state_am2302[3]_i_17__0_n_0 ),
        .I3(\state_am2302[3]_i_18__0_n_0 ),
        .I4(\state_am2302_reg[1]_0 ),
        .I5(\state_am2302_reg[2]_0 ),
        .O(\status[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0040404040)) 
    \status[0]_i_3__0 
       (.I0(\us_count[7]_i_5__0_n_0 ),
        .I1(s_data_in_reg_n_0),
        .I2(\us_count[7]_i_6__0_n_0 ),
        .I3(\status[2]_i_6__0_n_0 ),
        .I4(\status[2]_i_5__0_n_0 ),
        .I5(\status[0]_i_5__0_n_0 ),
        .O(\status[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    \status[0]_i_4__0 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .O(\status[0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \status[0]_i_5__0 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .O(\status[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h3333F3FF33330100)) 
    \status[1]_i_1 
       (.I0(\status[2]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\status[2]_i_3__0_n_0 ),
        .I4(\status[2]_i_4__0_n_0 ),
        .I5(\status_reg[1]_0 ),
        .O(\status[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3F3FFC3C30100)) 
    \status[2]_i_1 
       (.I0(\status[2]_i_2__0_n_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\status[2]_i_3__0_n_0 ),
        .I4(\status[2]_i_4__0_n_0 ),
        .I5(\status_reg[2]_0 ),
        .O(\status[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \status[2]_i_2__0 
       (.I0(\state_am2302[3]_i_15__0_n_0 ),
        .I1(\state_am2302[3]_i_16__0_n_0 ),
        .I2(\state_am2302[3]_i_17__0_n_0 ),
        .I3(\state_am2302[3]_i_18__0_n_0 ),
        .O(\status[2]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \status[2]_i_3__0 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .O(\status[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2A2A200)) 
    \status[2]_i_4__0 
       (.I0(\status[0]_i_4__0_n_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\status[2]_i_5__0_n_0 ),
        .I4(\status[2]_i_6__0_n_0 ),
        .I5(\status[2]_i_7__0_n_0 ),
        .O(\status[2]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \status[2]_i_5__0 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(s_data_in_reg_n_0),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302[3]_i_23__0_n_0 ),
        .O(\status[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h00001100000F0F00)) 
    \status[2]_i_6__0 
       (.I0(\rx_data[31]_i_4__0_n_0 ),
        .I1(\rx_data[39]_i_2__0_n_0 ),
        .I2(\state_am2302[3]_i_19__0_n_0 ),
        .I3(\state_am2302_reg[0]_0 ),
        .I4(s_data_in_reg_n_0),
        .I5(\state_am2302_reg[1]_0 ),
        .O(\status[2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004400000)) 
    \status[2]_i_7__0 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(clk_1ust_reg_n_0),
        .I3(clk_1us_reg_n_0),
        .I4(s_data_in_reg_n_0),
        .I5(\us_count[7]_i_5__0_n_0 ),
        .O(\status[2]_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\status[0]_i_1_n_0 ),
        .Q(\status_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\status[1]_i_1_n_0 ),
        .Q(\status_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\status[2]_i_1_n_0 ),
        .Q(\status_reg[2]_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \us_cnt[0]_i_1__0 
       (.I0(us_cnt_reg__0[0]),
        .O(\us_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \us_cnt[1]_i_1__0 
       (.I0(us_cnt_reg__0[0]),
        .I1(us_cnt_reg__0[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \us_cnt[2]_i_1__0 
       (.I0(us_cnt_reg__0[0]),
        .I1(us_cnt_reg__0[1]),
        .I2(us_cnt_reg__0[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \us_cnt[3]_i_1__0 
       (.I0(us_cnt_reg__0[1]),
        .I1(us_cnt_reg__0[0]),
        .I2(us_cnt_reg__0[2]),
        .I3(us_cnt_reg__0[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \us_cnt[4]_i_1__0 
       (.I0(us_cnt_reg__0[2]),
        .I1(us_cnt_reg__0[0]),
        .I2(us_cnt_reg__0[1]),
        .I3(us_cnt_reg__0[3]),
        .I4(us_cnt_reg__0[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \us_cnt[5]_i_1__0 
       (.I0(us_cnt_reg__0[3]),
        .I1(us_cnt_reg__0[1]),
        .I2(us_cnt_reg__0[0]),
        .I3(us_cnt_reg__0[2]),
        .I4(us_cnt_reg__0[4]),
        .I5(us_cnt_reg__0[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \us_cnt[6]_i_1__0 
       (.I0(\us_cnt[7]_i_4__0_n_0 ),
        .I1(us_cnt_reg__0[6]),
        .O(plusOp__0[6]));
  LUT3 #(
    .INIT(8'h31)) 
    \us_cnt[7]_i_1__0 
       (.I0(\us_cnt[7]_i_3__0_n_0 ),
        .I1(us_cnt_reg__0[7]),
        .I2(us_cnt_reg__0[6]),
        .O(\us_cnt[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \us_cnt[7]_i_2__0 
       (.I0(\us_cnt[7]_i_4__0_n_0 ),
        .I1(us_cnt_reg__0[6]),
        .I2(us_cnt_reg__0[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \us_cnt[7]_i_3__0 
       (.I0(us_cnt_reg__0[5]),
        .I1(us_cnt_reg__0[4]),
        .I2(us_cnt_reg__0[2]),
        .I3(us_cnt_reg__0[3]),
        .I4(us_cnt_reg__0[0]),
        .I5(us_cnt_reg__0[1]),
        .O(\us_cnt[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \us_cnt[7]_i_4__0 
       (.I0(us_cnt_reg__0[5]),
        .I1(us_cnt_reg__0[3]),
        .I2(us_cnt_reg__0[1]),
        .I3(us_cnt_reg__0[0]),
        .I4(us_cnt_reg__0[2]),
        .I5(us_cnt_reg__0[4]),
        .O(\us_cnt[7]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\us_cnt[0]_i_1__0_n_0 ),
        .Q(us_cnt_reg__0[0]),
        .R(\us_cnt[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(us_cnt_reg__0[1]),
        .R(\us_cnt[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(us_cnt_reg__0[2]),
        .R(\us_cnt[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(us_cnt_reg__0[3]),
        .R(\us_cnt[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(us_cnt_reg__0[4]),
        .R(\us_cnt[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__0[5]),
        .Q(us_cnt_reg__0[5]),
        .R(\us_cnt[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__0[6]),
        .Q(us_cnt_reg__0[6]),
        .R(\us_cnt[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__0[7]),
        .Q(us_cnt_reg__0[7]),
        .R(\us_cnt[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A5ACA50C)) 
    \us_count[0]_i_1__0 
       (.I0(s_data_in_reg_n_0),
        .I1(\us_count[7]_i_4__0_n_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\us_count[7]_i_5__0_n_0 ),
        .I5(\us_count_reg_n_0_[0] ),
        .O(\us_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \us_count[1]_i_1__0 
       (.I0(\us_count_reg_n_0_[0] ),
        .I1(\us_count_reg_n_0_[1] ),
        .O(\us_count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \us_count[2]_i_1__0 
       (.I0(\us_count_reg_n_0_[1] ),
        .I1(\us_count_reg_n_0_[0] ),
        .I2(\us_count_reg_n_0_[2] ),
        .O(\us_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \us_count[3]_i_1__0 
       (.I0(\us_count_reg_n_0_[0] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[2] ),
        .I3(\us_count_reg_n_0_[3] ),
        .O(\us_count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \us_count[4]_i_1__0 
       (.I0(\us_count_reg_n_0_[2] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[0] ),
        .I3(\us_count_reg_n_0_[3] ),
        .I4(\us_count_reg_n_0_[4] ),
        .O(\us_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \us_count[5]_i_1__0 
       (.I0(\us_count_reg_n_0_[3] ),
        .I1(\us_count_reg_n_0_[0] ),
        .I2(\us_count_reg_n_0_[1] ),
        .I3(\us_count_reg_n_0_[2] ),
        .I4(\us_count_reg_n_0_[4] ),
        .I5(\us_count_reg_n_0_[5] ),
        .O(\us_count[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \us_count[6]_i_1__0 
       (.I0(\us_count_reg_n_0_[4] ),
        .I1(\us_count_reg_n_0_[2] ),
        .I2(\us_count[6]_i_2__0_n_0 ),
        .I3(\us_count_reg_n_0_[3] ),
        .I4(\us_count_reg_n_0_[5] ),
        .I5(\us_count_reg_n_0_[6] ),
        .O(\us_count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \us_count[6]_i_2__0 
       (.I0(\us_count_reg_n_0_[0] ),
        .I1(\us_count_reg_n_0_[1] ),
        .O(\us_count[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h2288220A2288AA0A)) 
    \us_count[7]_i_1__0 
       (.I0(us_count),
        .I1(s_data_in_reg_n_0),
        .I2(\us_count[7]_i_4__0_n_0 ),
        .I3(\state_am2302_reg[0]_0 ),
        .I4(\state_am2302_reg[2]_0 ),
        .I5(\us_count[7]_i_5__0_n_0 ),
        .O(\us_count[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5454545400545000)) 
    \us_count[7]_i_2__0 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(s_data_in_reg_n_0),
        .I4(\state_am2302_reg[0]_0 ),
        .I5(\us_count[7]_i_6__0_n_0 ),
        .O(us_count));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \us_count[7]_i_3__0 
       (.I0(\us_count_reg_n_0_[5] ),
        .I1(\us_count_reg_n_0_[3] ),
        .I2(\us_count[7]_i_7__0_n_0 ),
        .I3(\us_count_reg_n_0_[4] ),
        .I4(\us_count_reg_n_0_[6] ),
        .I5(\us_count_reg_n_0_[7] ),
        .O(\us_count[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFFF0002)) 
    \us_count[7]_i_4__0 
       (.I0(\us_count[7]_i_8__0_n_0 ),
        .I1(\us_count_reg_n_0_[4] ),
        .I2(\us_count_reg_n_0_[5] ),
        .I3(\us_count_reg_n_0_[6] ),
        .I4(\us_count_reg_n_0_[7] ),
        .O(\us_count[7]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hCFFFCFDF)) 
    \us_count[7]_i_5__0 
       (.I0(\us_count_reg_n_0_[4] ),
        .I1(\us_count_reg_n_0_[7] ),
        .I2(\us_count_reg_n_0_[6] ),
        .I3(\us_count_reg_n_0_[5] ),
        .I4(\us_count[7]_i_8__0_n_0 ),
        .O(\us_count[7]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \us_count[7]_i_6__0 
       (.I0(clk_1us_reg_n_0),
        .I1(clk_1ust_reg_n_0),
        .O(\us_count[7]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \us_count[7]_i_7__0 
       (.I0(\us_count_reg_n_0_[2] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[0] ),
        .O(\us_count[7]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h001F)) 
    \us_count[7]_i_8__0 
       (.I0(\us_count_reg_n_0_[0] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[2] ),
        .I3(\us_count_reg_n_0_[3] ),
        .O(\us_count[7]_i_8__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[0]_i_1__0_n_0 ),
        .Q(\us_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[1]_i_1__0_n_0 ),
        .Q(\us_count_reg_n_0_[1] ),
        .R(\us_count[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[2]_i_1__0_n_0 ),
        .Q(\us_count_reg_n_0_[2] ),
        .R(\us_count[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[3]_i_1__0_n_0 ),
        .Q(\us_count_reg_n_0_[3] ),
        .R(\us_count[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[4]_i_1__0_n_0 ),
        .Q(\us_count_reg_n_0_[4] ),
        .R(\us_count[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[5]_i_1__0_n_0 ),
        .Q(\us_count_reg_n_0_[5] ),
        .R(\us_count[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[6]_i_1__0_n_0 ),
        .Q(\us_count_reg_n_0_[6] ),
        .R(\us_count[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[7]_i_3__0_n_0 ),
        .Q(\us_count_reg_n_0_[7] ),
        .R(\us_count[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \work_cnt[0]_i_1__0 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\ltOp_inferred__0/i__carry__2_n_3 ),
        .I3(\state_am2302_reg[1]_0 ),
        .I4(\state_am2302_reg[2]_0 ),
        .O(\work_cnt[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \work_cnt[0]_i_3__0 
       (.I0(work_cnt_reg[0]),
        .O(\work_cnt[0]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[0]_i_2__0_n_7 ),
        .Q(work_cnt_reg[0]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\work_cnt_reg[0]_i_2__0_n_0 ,\work_cnt_reg[0]_i_2__0_n_1 ,\work_cnt_reg[0]_i_2__0_n_2 ,\work_cnt_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\work_cnt_reg[0]_i_2__0_n_4 ,\work_cnt_reg[0]_i_2__0_n_5 ,\work_cnt_reg[0]_i_2__0_n_6 ,\work_cnt_reg[0]_i_2__0_n_7 }),
        .S({work_cnt_reg[3:1],\work_cnt[0]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[8]_i_1__0_n_5 ),
        .Q(work_cnt_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[8]_i_1__0_n_4 ),
        .Q(work_cnt_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[12]_i_1__0_n_7 ),
        .Q(work_cnt_reg[12]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[12]_i_1__0 
       (.CI(\work_cnt_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_work_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\work_cnt_reg[12]_i_1__0_n_1 ,\work_cnt_reg[12]_i_1__0_n_2 ,\work_cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\work_cnt_reg[12]_i_1__0_n_4 ,\work_cnt_reg[12]_i_1__0_n_5 ,\work_cnt_reg[12]_i_1__0_n_6 ,\work_cnt_reg[12]_i_1__0_n_7 }),
        .S(work_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[12]_i_1__0_n_6 ),
        .Q(work_cnt_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[12]_i_1__0_n_5 ),
        .Q(work_cnt_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[12]_i_1__0_n_4 ),
        .Q(work_cnt_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[0]_i_2__0_n_6 ),
        .Q(work_cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[0]_i_2__0_n_5 ),
        .Q(work_cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[0]_i_2__0_n_4 ),
        .Q(work_cnt_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[4]_i_1__0_n_7 ),
        .Q(work_cnt_reg[4]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[4]_i_1__0 
       (.CI(\work_cnt_reg[0]_i_2__0_n_0 ),
        .CO({\work_cnt_reg[4]_i_1__0_n_0 ,\work_cnt_reg[4]_i_1__0_n_1 ,\work_cnt_reg[4]_i_1__0_n_2 ,\work_cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\work_cnt_reg[4]_i_1__0_n_4 ,\work_cnt_reg[4]_i_1__0_n_5 ,\work_cnt_reg[4]_i_1__0_n_6 ,\work_cnt_reg[4]_i_1__0_n_7 }),
        .S(work_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[4]_i_1__0_n_6 ),
        .Q(work_cnt_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[4]_i_1__0_n_5 ),
        .Q(work_cnt_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[4]_i_1__0_n_4 ),
        .Q(work_cnt_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[8]_i_1__0_n_7 ),
        .Q(work_cnt_reg[8]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[8]_i_1__0 
       (.CI(\work_cnt_reg[4]_i_1__0_n_0 ),
        .CO({\work_cnt_reg[8]_i_1__0_n_0 ,\work_cnt_reg[8]_i_1__0_n_1 ,\work_cnt_reg[8]_i_1__0_n_2 ,\work_cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\work_cnt_reg[8]_i_1__0_n_4 ,\work_cnt_reg[8]_i_1__0_n_5 ,\work_cnt_reg[8]_i_1__0_n_6 ,\work_cnt_reg[8]_i_1__0_n_7 }),
        .S(work_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__0_n_0 ),
        .D(\work_cnt_reg[8]_i_1__0_n_6 ),
        .Q(work_cnt_reg[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fun_am2302_check" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fun_am2302_check_1
   (s_data_ctrl_tristate_oe_reg_0,
    work_cnt_reg,
    \state_am2302_reg[0]_0 ,
    \state_am2302_reg[2]_0 ,
    \state_am2302_reg[3]_0 ,
    \state_am2302_reg[1]_0 ,
    D,
    Q,
    AM2302_SDA_3_ctrl,
    \status_reg[2]_0 ,
    \status_reg[1]_0 ,
    \status_reg[0]_0 ,
    \am2302_temp_reg[15]_0 ,
    AM2302_SDA_3,
    s_data_ctrl_tristate_oe_reg_1,
    s00_axi_aclk,
    s_data_ctrl1_reg_0,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[3]_0 ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[15] );
  output s_data_ctrl_tristate_oe_reg_0;
  output [15:0]work_cnt_reg;
  output \state_am2302_reg[0]_0 ;
  output \state_am2302_reg[2]_0 ;
  output \state_am2302_reg[3]_0 ;
  output \state_am2302_reg[1]_0 ;
  output [12:0]D;
  output [2:0]Q;
  output AM2302_SDA_3_ctrl;
  output \status_reg[2]_0 ;
  output \status_reg[1]_0 ;
  output \status_reg[0]_0 ;
  output [15:0]\am2302_temp_reg[15]_0 ;
  inout AM2302_SDA_3;
  input s_data_ctrl_tristate_oe_reg_1;
  input s00_axi_aclk;
  input s_data_ctrl1_reg_0;
  input [3:0]\axi_rdata_reg[3] ;
  input \axi_rdata_reg[3]_0 ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[7] ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[12] ;
  input \axi_rdata_reg[13] ;
  input \axi_rdata_reg[14] ;
  input \axi_rdata_reg[15] ;

  wire AM2302_SDA_3;
  wire AM2302_SDA_3_ctrl;
  wire [12:0]D;
  wire I;
  wire [2:0]Q;
  wire T;
  wire \am2302_humi1_reg_n_0_[0] ;
  wire \am2302_humi1_reg_n_0_[10] ;
  wire \am2302_humi1_reg_n_0_[11] ;
  wire \am2302_humi1_reg_n_0_[12] ;
  wire \am2302_humi1_reg_n_0_[13] ;
  wire \am2302_humi1_reg_n_0_[14] ;
  wire \am2302_humi1_reg_n_0_[15] ;
  wire \am2302_humi1_reg_n_0_[1] ;
  wire \am2302_humi1_reg_n_0_[2] ;
  wire \am2302_humi1_reg_n_0_[3] ;
  wire \am2302_humi1_reg_n_0_[4] ;
  wire \am2302_humi1_reg_n_0_[5] ;
  wire \am2302_humi1_reg_n_0_[6] ;
  wire \am2302_humi1_reg_n_0_[7] ;
  wire \am2302_humi1_reg_n_0_[8] ;
  wire \am2302_humi1_reg_n_0_[9] ;
  wire \am2302_temp1[15]_i_1__1_n_0 ;
  wire \am2302_temp1_reg_n_0_[0] ;
  wire \am2302_temp1_reg_n_0_[10] ;
  wire \am2302_temp1_reg_n_0_[11] ;
  wire \am2302_temp1_reg_n_0_[12] ;
  wire \am2302_temp1_reg_n_0_[13] ;
  wire \am2302_temp1_reg_n_0_[14] ;
  wire \am2302_temp1_reg_n_0_[15] ;
  wire \am2302_temp1_reg_n_0_[1] ;
  wire \am2302_temp1_reg_n_0_[2] ;
  wire \am2302_temp1_reg_n_0_[3] ;
  wire \am2302_temp1_reg_n_0_[4] ;
  wire \am2302_temp1_reg_n_0_[5] ;
  wire \am2302_temp1_reg_n_0_[6] ;
  wire \am2302_temp1_reg_n_0_[7] ;
  wire \am2302_temp1_reg_n_0_[8] ;
  wire \am2302_temp1_reg_n_0_[9] ;
  wire \am2302_temp[0]_i_1_n_0 ;
  wire \am2302_temp[10]_i_1_n_0 ;
  wire \am2302_temp[11]_i_1_n_0 ;
  wire \am2302_temp[12]_i_1_n_0 ;
  wire \am2302_temp[13]_i_1_n_0 ;
  wire \am2302_temp[14]_i_1_n_0 ;
  wire \am2302_temp[15]_i_1__1_n_0 ;
  wire \am2302_temp[1]_i_1_n_0 ;
  wire \am2302_temp[2]_i_1_n_0 ;
  wire \am2302_temp[3]_i_1_n_0 ;
  wire \am2302_temp[4]_i_1_n_0 ;
  wire \am2302_temp[5]_i_1_n_0 ;
  wire \am2302_temp[6]_i_1_n_0 ;
  wire \am2302_temp[7]_i_1_n_0 ;
  wire \am2302_temp[8]_i_1_n_0 ;
  wire \am2302_temp[9]_i_1_n_0 ;
  wire [15:0]\am2302_temp_reg[15]_0 ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[15] ;
  wire [3:0]\axi_rdata_reg[3] ;
  wire \axi_rdata_reg[3]_0 ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[9] ;
  wire clk_1us_i_1__1_n_0;
  wire clk_1us_reg_n_0;
  wire clk_1ust_reg_n_0;
  wire [15:3]data8;
  wire i___2_carry__0_i_10__1_n_0;
  wire i___2_carry__0_i_11__1_n_0;
  wire i___2_carry__0_i_12__1_n_0;
  wire i___2_carry__0_i_1__1_n_0;
  wire i___2_carry__0_i_2__1_n_0;
  wire i___2_carry__0_i_3__1_n_0;
  wire i___2_carry__0_i_4__1_n_0;
  wire i___2_carry__0_i_5__1_n_0;
  wire i___2_carry__0_i_6__1_n_0;
  wire i___2_carry__0_i_7__1_n_0;
  wire i___2_carry__0_i_8__1_n_0;
  wire i___2_carry__0_i_9__1_n_0;
  wire i___2_carry_i_1__1_n_0;
  wire i___2_carry_i_2__1_n_0;
  wire i___2_carry_i_3__1_n_0;
  wire i___2_carry_i_4__1_n_0;
  wire i___2_carry_i_5__1_n_0;
  wire i___2_carry_i_6__1_n_0;
  wire i___2_carry_i_7__1_n_0;
  wire i___2_carry_i_8__1_n_0;
  wire i___2_carry_i_9__1_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_7__1_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry__1_i_3__1_n_0;
  wire i__carry__1_i_4__1_n_0;
  wire i__carry__1_i_5__1_n_0;
  wire i__carry__1_i_6__1_n_0;
  wire i__carry__1_i_7__1_n_0;
  wire i__carry__2_i_1__1_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_8__1_n_0;
  wire ltOp_carry__0_i_1__1_n_0;
  wire ltOp_carry__0_i_2__1_n_0;
  wire ltOp_carry__0_i_3__1_n_0;
  wire ltOp_carry__0_i_4__1_n_0;
  wire ltOp_carry__0_i_5__1_n_0;
  wire ltOp_carry__0_n_0;
  wire ltOp_carry__0_n_1;
  wire ltOp_carry__0_n_2;
  wire ltOp_carry__0_n_3;
  wire ltOp_carry__1_i_1__1_n_0;
  wire ltOp_carry__1_i_2__1_n_0;
  wire ltOp_carry__1_i_3__1_n_0;
  wire ltOp_carry__1_i_4__1_n_0;
  wire ltOp_carry__1_n_0;
  wire ltOp_carry__1_n_1;
  wire ltOp_carry__1_n_2;
  wire ltOp_carry__1_n_3;
  wire ltOp_carry__2_i_1__1_n_0;
  wire ltOp_carry__2_i_2__1_n_0;
  wire ltOp_carry__2_n_2;
  wire ltOp_carry__2_n_3;
  wire ltOp_carry_i_1__1_n_0;
  wire ltOp_carry_i_2__1_n_0;
  wire ltOp_carry_i_3__1_n_0;
  wire ltOp_carry_i_4__1_n_0;
  wire ltOp_carry_i_5__1_n_0;
  wire ltOp_carry_i_6__1_n_0;
  wire ltOp_carry_i_7__1_n_0;
  wire ltOp_carry_n_0;
  wire ltOp_carry_n_1;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire \ltOp_inferred__0/i__carry__0_n_0 ;
  wire \ltOp_inferred__0/i__carry__0_n_1 ;
  wire \ltOp_inferred__0/i__carry__0_n_2 ;
  wire \ltOp_inferred__0/i__carry__0_n_3 ;
  wire \ltOp_inferred__0/i__carry__1_n_0 ;
  wire \ltOp_inferred__0/i__carry__1_n_1 ;
  wire \ltOp_inferred__0/i__carry__1_n_2 ;
  wire \ltOp_inferred__0/i__carry__1_n_3 ;
  wire \ltOp_inferred__0/i__carry__2_n_3 ;
  wire \ltOp_inferred__0/i__carry_n_0 ;
  wire \ltOp_inferred__0/i__carry_n_1 ;
  wire \ltOp_inferred__0/i__carry_n_2 ;
  wire \ltOp_inferred__0/i__carry_n_3 ;
  wire minusOp_carry__0_i_1__1_n_0;
  wire minusOp_carry__0_i_2__1_n_0;
  wire minusOp_carry__0_i_3__1_n_0;
  wire minusOp_carry__0_i_4__1_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_i_1__1_n_0;
  wire minusOp_carry__1_i_2__1_n_0;
  wire minusOp_carry__1_i_3__1_n_0;
  wire minusOp_carry__1_i_4__1_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_i_1__1_n_0;
  wire minusOp_carry__2_i_2__1_n_0;
  wire minusOp_carry__2_i_3__1_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry_i_1__1_n_0;
  wire minusOp_carry_i_2__1_n_0;
  wire minusOp_carry_i_3__1_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire \period_cnt[0]_i_1__1_n_0 ;
  wire \period_cnt[31]_i_1__1_n_0 ;
  wire \period_cnt[31]_i_2__1_n_0 ;
  wire \period_cnt_reg_n_0_[0] ;
  wire \period_cnt_reg_n_0_[10] ;
  wire \period_cnt_reg_n_0_[11] ;
  wire \period_cnt_reg_n_0_[12] ;
  wire \period_cnt_reg_n_0_[13] ;
  wire \period_cnt_reg_n_0_[14] ;
  wire \period_cnt_reg_n_0_[15] ;
  wire \period_cnt_reg_n_0_[16] ;
  wire \period_cnt_reg_n_0_[17] ;
  wire \period_cnt_reg_n_0_[18] ;
  wire \period_cnt_reg_n_0_[19] ;
  wire \period_cnt_reg_n_0_[1] ;
  wire \period_cnt_reg_n_0_[20] ;
  wire \period_cnt_reg_n_0_[21] ;
  wire \period_cnt_reg_n_0_[22] ;
  wire \period_cnt_reg_n_0_[23] ;
  wire \period_cnt_reg_n_0_[24] ;
  wire \period_cnt_reg_n_0_[25] ;
  wire \period_cnt_reg_n_0_[26] ;
  wire \period_cnt_reg_n_0_[27] ;
  wire \period_cnt_reg_n_0_[28] ;
  wire \period_cnt_reg_n_0_[29] ;
  wire \period_cnt_reg_n_0_[2] ;
  wire \period_cnt_reg_n_0_[30] ;
  wire \period_cnt_reg_n_0_[31] ;
  wire \period_cnt_reg_n_0_[3] ;
  wire \period_cnt_reg_n_0_[4] ;
  wire \period_cnt_reg_n_0_[5] ;
  wire \period_cnt_reg_n_0_[6] ;
  wire \period_cnt_reg_n_0_[7] ;
  wire \period_cnt_reg_n_0_[8] ;
  wire \period_cnt_reg_n_0_[9] ;
  wire [7:1]plusOp__1;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__3_n_4;
  wire plusOp_carry__3_n_5;
  wire plusOp_carry__3_n_6;
  wire plusOp_carry__3_n_7;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__4_n_4;
  wire plusOp_carry__4_n_5;
  wire plusOp_carry__4_n_6;
  wire plusOp_carry__4_n_7;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__5_n_4;
  wire plusOp_carry__5_n_5;
  wire plusOp_carry__5_n_6;
  wire plusOp_carry__5_n_7;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry__6_n_5;
  wire plusOp_carry__6_n_6;
  wire plusOp_carry__6_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire \plusOp_inferred__3/i___2_carry__0_n_1 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_2 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_3 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_4 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_5 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_6 ;
  wire \plusOp_inferred__3/i___2_carry__0_n_7 ;
  wire \plusOp_inferred__3/i___2_carry_n_0 ;
  wire \plusOp_inferred__3/i___2_carry_n_1 ;
  wire \plusOp_inferred__3/i___2_carry_n_2 ;
  wire \plusOp_inferred__3/i___2_carry_n_3 ;
  wire \plusOp_inferred__3/i___2_carry_n_4 ;
  wire \plusOp_inferred__3/i___2_carry_n_5 ;
  wire \plusOp_inferred__3/i___2_carry_n_6 ;
  wire \plusOp_inferred__3/i___2_carry_n_7 ;
  wire \rx_data[0]_i_1__1_n_0 ;
  wire \rx_data[10]_i_1__1_n_0 ;
  wire \rx_data[11]_i_1__1_n_0 ;
  wire \rx_data[12]_i_1__1_n_0 ;
  wire \rx_data[13]_i_1__1_n_0 ;
  wire \rx_data[14]_i_1__1_n_0 ;
  wire \rx_data[15]_i_1__1_n_0 ;
  wire \rx_data[15]_i_2__1_n_0 ;
  wire \rx_data[16]_i_1__1_n_0 ;
  wire \rx_data[17]_i_1__1_n_0 ;
  wire \rx_data[18]_i_1__1_n_0 ;
  wire \rx_data[19]_i_1__1_n_0 ;
  wire \rx_data[1]_i_1__1_n_0 ;
  wire \rx_data[20]_i_1__1_n_0 ;
  wire \rx_data[21]_i_1__1_n_0 ;
  wire \rx_data[22]_i_1__1_n_0 ;
  wire \rx_data[23]_i_1__1_n_0 ;
  wire \rx_data[23]_i_2__1_n_0 ;
  wire \rx_data[24]_i_1__1_n_0 ;
  wire \rx_data[25]_i_1__1_n_0 ;
  wire \rx_data[26]_i_1__1_n_0 ;
  wire \rx_data[27]_i_1__1_n_0 ;
  wire \rx_data[28]_i_1__1_n_0 ;
  wire \rx_data[29]_i_1__1_n_0 ;
  wire \rx_data[2]_i_1__1_n_0 ;
  wire \rx_data[30]_i_1__1_n_0 ;
  wire \rx_data[31]_i_1__1_n_0 ;
  wire \rx_data[31]_i_2__1_n_0 ;
  wire \rx_data[31]_i_3__1_n_0 ;
  wire \rx_data[31]_i_4__1_n_0 ;
  wire \rx_data[31]_i_5__1_n_0 ;
  wire \rx_data[31]_i_6__1_n_0 ;
  wire \rx_data[32]_i_1__1_n_0 ;
  wire \rx_data[32]_i_2__1_n_0 ;
  wire \rx_data[33]_i_1__1_n_0 ;
  wire \rx_data[33]_i_2__1_n_0 ;
  wire \rx_data[34]_i_1__1_n_0 ;
  wire \rx_data[34]_i_2__1_n_0 ;
  wire \rx_data[35]_i_1__1_n_0 ;
  wire \rx_data[35]_i_2__1_n_0 ;
  wire \rx_data[36]_i_1__1_n_0 ;
  wire \rx_data[36]_i_2__1_n_0 ;
  wire \rx_data[37]_i_1__1_n_0 ;
  wire \rx_data[37]_i_2__1_n_0 ;
  wire \rx_data[38]_i_1__1_n_0 ;
  wire \rx_data[38]_i_2__1_n_0 ;
  wire \rx_data[39]_i_10__1_n_0 ;
  wire \rx_data[39]_i_11__1_n_0 ;
  wire \rx_data[39]_i_12__1_n_0 ;
  wire \rx_data[39]_i_1__1_n_0 ;
  wire \rx_data[39]_i_2__1_n_0 ;
  wire \rx_data[39]_i_3__1_n_0 ;
  wire \rx_data[39]_i_4__1_n_0 ;
  wire \rx_data[39]_i_5__1_n_0 ;
  wire \rx_data[39]_i_6__1_n_0 ;
  wire \rx_data[39]_i_7__1_n_0 ;
  wire \rx_data[39]_i_8__1_n_0 ;
  wire \rx_data[39]_i_9__1_n_0 ;
  wire \rx_data[3]_i_1__1_n_0 ;
  wire \rx_data[4]_i_1__1_n_0 ;
  wire \rx_data[5]_i_1__1_n_0 ;
  wire \rx_data[6]_i_1__1_n_0 ;
  wire \rx_data[7]_i_1__1_n_0 ;
  wire \rx_data[7]_i_2__1_n_0 ;
  wire \rx_data[8]_i_1__1_n_0 ;
  wire \rx_data[9]_i_1__1_n_0 ;
  wire \rx_data_reg_n_0_[0] ;
  wire \rx_data_reg_n_0_[10] ;
  wire \rx_data_reg_n_0_[11] ;
  wire \rx_data_reg_n_0_[12] ;
  wire \rx_data_reg_n_0_[13] ;
  wire \rx_data_reg_n_0_[14] ;
  wire \rx_data_reg_n_0_[15] ;
  wire \rx_data_reg_n_0_[16] ;
  wire \rx_data_reg_n_0_[17] ;
  wire \rx_data_reg_n_0_[18] ;
  wire \rx_data_reg_n_0_[19] ;
  wire \rx_data_reg_n_0_[1] ;
  wire \rx_data_reg_n_0_[20] ;
  wire \rx_data_reg_n_0_[21] ;
  wire \rx_data_reg_n_0_[22] ;
  wire \rx_data_reg_n_0_[23] ;
  wire \rx_data_reg_n_0_[24] ;
  wire \rx_data_reg_n_0_[25] ;
  wire \rx_data_reg_n_0_[26] ;
  wire \rx_data_reg_n_0_[27] ;
  wire \rx_data_reg_n_0_[28] ;
  wire \rx_data_reg_n_0_[29] ;
  wire \rx_data_reg_n_0_[2] ;
  wire \rx_data_reg_n_0_[30] ;
  wire \rx_data_reg_n_0_[31] ;
  wire \rx_data_reg_n_0_[32] ;
  wire \rx_data_reg_n_0_[33] ;
  wire \rx_data_reg_n_0_[34] ;
  wire \rx_data_reg_n_0_[35] ;
  wire \rx_data_reg_n_0_[36] ;
  wire \rx_data_reg_n_0_[37] ;
  wire \rx_data_reg_n_0_[38] ;
  wire \rx_data_reg_n_0_[39] ;
  wire \rx_data_reg_n_0_[3] ;
  wire \rx_data_reg_n_0_[4] ;
  wire \rx_data_reg_n_0_[5] ;
  wire \rx_data_reg_n_0_[6] ;
  wire \rx_data_reg_n_0_[7] ;
  wire \rx_data_reg_n_0_[8] ;
  wire \rx_data_reg_n_0_[9] ;
  wire rx_index0_carry__0_i_1__1_n_0;
  wire rx_index0_carry__0_i_2__1_n_0;
  wire rx_index0_carry__0_i_3__1_n_0;
  wire rx_index0_carry__0_i_4__1_n_0;
  wire rx_index0_carry__0_n_0;
  wire rx_index0_carry__0_n_1;
  wire rx_index0_carry__0_n_2;
  wire rx_index0_carry__0_n_3;
  wire rx_index0_carry__0_n_4;
  wire rx_index0_carry__0_n_5;
  wire rx_index0_carry__0_n_6;
  wire rx_index0_carry__0_n_7;
  wire rx_index0_carry__1_i_1__1_n_0;
  wire rx_index0_carry__1_i_2__1_n_0;
  wire rx_index0_carry__1_i_3__1_n_0;
  wire rx_index0_carry__1_i_4__1_n_0;
  wire rx_index0_carry__1_n_0;
  wire rx_index0_carry__1_n_1;
  wire rx_index0_carry__1_n_2;
  wire rx_index0_carry__1_n_3;
  wire rx_index0_carry__1_n_4;
  wire rx_index0_carry__1_n_5;
  wire rx_index0_carry__1_n_6;
  wire rx_index0_carry__1_n_7;
  wire rx_index0_carry__2_i_1__1_n_0;
  wire rx_index0_carry__2_i_2__1_n_0;
  wire rx_index0_carry__2_i_3__1_n_0;
  wire rx_index0_carry__2_i_4__1_n_0;
  wire rx_index0_carry__2_n_0;
  wire rx_index0_carry__2_n_1;
  wire rx_index0_carry__2_n_2;
  wire rx_index0_carry__2_n_3;
  wire rx_index0_carry__2_n_4;
  wire rx_index0_carry__2_n_5;
  wire rx_index0_carry__2_n_6;
  wire rx_index0_carry__2_n_7;
  wire rx_index0_carry__3_i_1__1_n_0;
  wire rx_index0_carry__3_i_2__1_n_0;
  wire rx_index0_carry__3_i_3__1_n_0;
  wire rx_index0_carry__3_i_4__1_n_0;
  wire rx_index0_carry__3_n_0;
  wire rx_index0_carry__3_n_1;
  wire rx_index0_carry__3_n_2;
  wire rx_index0_carry__3_n_3;
  wire rx_index0_carry__3_n_4;
  wire rx_index0_carry__3_n_5;
  wire rx_index0_carry__3_n_6;
  wire rx_index0_carry__3_n_7;
  wire rx_index0_carry__4_i_1__1_n_0;
  wire rx_index0_carry__4_i_2__1_n_0;
  wire rx_index0_carry__4_i_3__1_n_0;
  wire rx_index0_carry__4_i_4__1_n_0;
  wire rx_index0_carry__4_n_0;
  wire rx_index0_carry__4_n_1;
  wire rx_index0_carry__4_n_2;
  wire rx_index0_carry__4_n_3;
  wire rx_index0_carry__4_n_4;
  wire rx_index0_carry__4_n_5;
  wire rx_index0_carry__4_n_6;
  wire rx_index0_carry__4_n_7;
  wire rx_index0_carry__5_i_1__1_n_0;
  wire rx_index0_carry__5_i_2__1_n_0;
  wire rx_index0_carry__5_i_3__1_n_0;
  wire rx_index0_carry__5_i_4__1_n_0;
  wire rx_index0_carry__5_n_0;
  wire rx_index0_carry__5_n_1;
  wire rx_index0_carry__5_n_2;
  wire rx_index0_carry__5_n_3;
  wire rx_index0_carry__5_n_4;
  wire rx_index0_carry__5_n_5;
  wire rx_index0_carry__5_n_6;
  wire rx_index0_carry__5_n_7;
  wire rx_index0_carry__6_i_1__1_n_0;
  wire rx_index0_carry__6_i_2__1_n_0;
  wire rx_index0_carry__6_i_3__1_n_0;
  wire rx_index0_carry__6_n_2;
  wire rx_index0_carry__6_n_3;
  wire rx_index0_carry__6_n_5;
  wire rx_index0_carry__6_n_6;
  wire rx_index0_carry__6_n_7;
  wire rx_index0_carry_i_1__1_n_0;
  wire rx_index0_carry_i_2__1_n_0;
  wire rx_index0_carry_i_3__1_n_0;
  wire rx_index0_carry_i_4__1_n_0;
  wire rx_index0_carry_n_0;
  wire rx_index0_carry_n_1;
  wire rx_index0_carry_n_2;
  wire rx_index0_carry_n_3;
  wire rx_index0_carry_n_4;
  wire rx_index0_carry_n_5;
  wire rx_index0_carry_n_6;
  wire rx_index0_carry_n_7;
  wire \rx_index[0]_i_1__1_n_0 ;
  wire \rx_index[31]_i_10__1_n_0 ;
  wire \rx_index[31]_i_1__1_n_0 ;
  wire \rx_index[31]_i_2__1_n_0 ;
  wire \rx_index[31]_i_3__1_n_0 ;
  wire \rx_index[31]_i_4__1_n_0 ;
  wire \rx_index[31]_i_5__1_n_0 ;
  wire \rx_index[31]_i_6__1_n_0 ;
  wire \rx_index[31]_i_7__1_n_0 ;
  wire \rx_index[31]_i_8__1_n_0 ;
  wire \rx_index[31]_i_9__1_n_0 ;
  wire \rx_index_reg_n_0_[0] ;
  wire \rx_index_reg_n_0_[10] ;
  wire \rx_index_reg_n_0_[11] ;
  wire \rx_index_reg_n_0_[12] ;
  wire \rx_index_reg_n_0_[13] ;
  wire \rx_index_reg_n_0_[14] ;
  wire \rx_index_reg_n_0_[15] ;
  wire \rx_index_reg_n_0_[16] ;
  wire \rx_index_reg_n_0_[17] ;
  wire \rx_index_reg_n_0_[18] ;
  wire \rx_index_reg_n_0_[19] ;
  wire \rx_index_reg_n_0_[1] ;
  wire \rx_index_reg_n_0_[20] ;
  wire \rx_index_reg_n_0_[21] ;
  wire \rx_index_reg_n_0_[22] ;
  wire \rx_index_reg_n_0_[23] ;
  wire \rx_index_reg_n_0_[24] ;
  wire \rx_index_reg_n_0_[25] ;
  wire \rx_index_reg_n_0_[26] ;
  wire \rx_index_reg_n_0_[27] ;
  wire \rx_index_reg_n_0_[28] ;
  wire \rx_index_reg_n_0_[29] ;
  wire \rx_index_reg_n_0_[2] ;
  wire \rx_index_reg_n_0_[30] ;
  wire \rx_index_reg_n_0_[31] ;
  wire \rx_index_reg_n_0_[3] ;
  wire \rx_index_reg_n_0_[4] ;
  wire \rx_index_reg_n_0_[5] ;
  wire \rx_index_reg_n_0_[6] ;
  wire \rx_index_reg_n_0_[7] ;
  wire \rx_index_reg_n_0_[8] ;
  wire \rx_index_reg_n_0_[9] ;
  wire s00_axi_aclk;
  wire s_data_ctrl;
  wire s_data_ctrl1_reg_0;
  wire s_data_ctrl_tristate_oe_reg_0;
  wire s_data_ctrl_tristate_oe_reg_1;
  wire s_data_in1;
  wire s_data_in_reg_n_0;
  wire s_data_out_i_1__1_n_0;
  wire s_data_out_reg_n_0;
  wire \state_am2302[0]_i_1__1_n_0 ;
  wire \state_am2302[0]_i_2__1_n_0 ;
  wire \state_am2302[1]_i_1__1_n_0 ;
  wire \state_am2302[1]_i_2__1_n_0 ;
  wire \state_am2302[1]_i_3__1_n_0 ;
  wire \state_am2302[1]_i_4__1_n_0 ;
  wire \state_am2302[2]_i_1__1_n_0 ;
  wire \state_am2302[2]_i_2__1_n_0 ;
  wire \state_am2302[2]_i_3__1_n_0 ;
  wire \state_am2302[2]_i_4__1_n_0 ;
  wire \state_am2302[3]_i_10__1_n_0 ;
  wire \state_am2302[3]_i_11__1_n_0 ;
  wire \state_am2302[3]_i_12__1_n_0 ;
  wire \state_am2302[3]_i_13__1_n_0 ;
  wire \state_am2302[3]_i_14__1_n_0 ;
  wire \state_am2302[3]_i_15__1_n_0 ;
  wire \state_am2302[3]_i_16__1_n_0 ;
  wire \state_am2302[3]_i_17__1_n_0 ;
  wire \state_am2302[3]_i_18__1_n_0 ;
  wire \state_am2302[3]_i_19__1_n_0 ;
  wire \state_am2302[3]_i_1__1_n_0 ;
  wire \state_am2302[3]_i_20__1_n_0 ;
  wire \state_am2302[3]_i_21__1_n_0 ;
  wire \state_am2302[3]_i_22__1_n_0 ;
  wire \state_am2302[3]_i_23__1_n_0 ;
  wire \state_am2302[3]_i_24__1_n_0 ;
  wire \state_am2302[3]_i_25__1_n_0 ;
  wire \state_am2302[3]_i_26__1_n_0 ;
  wire \state_am2302[3]_i_27__1_n_0 ;
  wire \state_am2302[3]_i_28__1_n_0 ;
  wire \state_am2302[3]_i_29__1_n_0 ;
  wire \state_am2302[3]_i_2__1_n_0 ;
  wire \state_am2302[3]_i_30__1_n_0 ;
  wire \state_am2302[3]_i_31__1_n_0 ;
  wire \state_am2302[3]_i_3__1_n_0 ;
  wire \state_am2302[3]_i_4__1_n_0 ;
  wire \state_am2302[3]_i_5__1_n_0 ;
  wire \state_am2302[3]_i_6__1_n_0 ;
  wire \state_am2302[3]_i_7__1_n_0 ;
  wire \state_am2302[3]_i_8__1_n_0 ;
  wire \state_am2302[3]_i_9__1_n_0 ;
  wire \state_am2302_reg[0]_0 ;
  wire \state_am2302_reg[1]_0 ;
  wire \state_am2302_reg[2]_0 ;
  wire \state_am2302_reg[3]_0 ;
  wire \status[0]_i_1_n_0 ;
  wire \status[0]_i_2__1_n_0 ;
  wire \status[0]_i_3__1_n_0 ;
  wire \status[0]_i_4__1_n_0 ;
  wire \status[0]_i_5__1_n_0 ;
  wire \status[1]_i_1_n_0 ;
  wire \status[2]_i_1_n_0 ;
  wire \status[2]_i_2__1_n_0 ;
  wire \status[2]_i_3__1_n_0 ;
  wire \status[2]_i_4__1_n_0 ;
  wire \status[2]_i_5__1_n_0 ;
  wire \status[2]_i_6__1_n_0 ;
  wire \status[2]_i_7__1_n_0 ;
  wire \status_reg[0]_0 ;
  wire \status_reg[1]_0 ;
  wire \status_reg[2]_0 ;
  wire \us_cnt[0]_i_1__1_n_0 ;
  wire \us_cnt[7]_i_1__1_n_0 ;
  wire \us_cnt[7]_i_3__1_n_0 ;
  wire \us_cnt[7]_i_4__1_n_0 ;
  wire [7:0]us_cnt_reg__0;
  wire us_count;
  wire \us_count[0]_i_1__1_n_0 ;
  wire \us_count[1]_i_1__1_n_0 ;
  wire \us_count[2]_i_1__1_n_0 ;
  wire \us_count[3]_i_1__1_n_0 ;
  wire \us_count[4]_i_1__1_n_0 ;
  wire \us_count[5]_i_1__1_n_0 ;
  wire \us_count[6]_i_1__1_n_0 ;
  wire \us_count[6]_i_2__1_n_0 ;
  wire \us_count[7]_i_1__1_n_0 ;
  wire \us_count[7]_i_3__1_n_0 ;
  wire \us_count[7]_i_4__1_n_0 ;
  wire \us_count[7]_i_5__1_n_0 ;
  wire \us_count[7]_i_6__1_n_0 ;
  wire \us_count[7]_i_7__1_n_0 ;
  wire \us_count[7]_i_8__1_n_0 ;
  wire \us_count_reg_n_0_[0] ;
  wire \us_count_reg_n_0_[1] ;
  wire \us_count_reg_n_0_[2] ;
  wire \us_count_reg_n_0_[3] ;
  wire \us_count_reg_n_0_[4] ;
  wire \us_count_reg_n_0_[5] ;
  wire \us_count_reg_n_0_[6] ;
  wire \us_count_reg_n_0_[7] ;
  wire \work_cnt[0]_i_1__1_n_0 ;
  wire \work_cnt[0]_i_3__1_n_0 ;
  wire [15:0]work_cnt_reg;
  wire \work_cnt_reg[0]_i_2__1_n_0 ;
  wire \work_cnt_reg[0]_i_2__1_n_1 ;
  wire \work_cnt_reg[0]_i_2__1_n_2 ;
  wire \work_cnt_reg[0]_i_2__1_n_3 ;
  wire \work_cnt_reg[0]_i_2__1_n_4 ;
  wire \work_cnt_reg[0]_i_2__1_n_5 ;
  wire \work_cnt_reg[0]_i_2__1_n_6 ;
  wire \work_cnt_reg[0]_i_2__1_n_7 ;
  wire \work_cnt_reg[12]_i_1__1_n_1 ;
  wire \work_cnt_reg[12]_i_1__1_n_2 ;
  wire \work_cnt_reg[12]_i_1__1_n_3 ;
  wire \work_cnt_reg[12]_i_1__1_n_4 ;
  wire \work_cnt_reg[12]_i_1__1_n_5 ;
  wire \work_cnt_reg[12]_i_1__1_n_6 ;
  wire \work_cnt_reg[12]_i_1__1_n_7 ;
  wire \work_cnt_reg[4]_i_1__1_n_0 ;
  wire \work_cnt_reg[4]_i_1__1_n_1 ;
  wire \work_cnt_reg[4]_i_1__1_n_2 ;
  wire \work_cnt_reg[4]_i_1__1_n_3 ;
  wire \work_cnt_reg[4]_i_1__1_n_4 ;
  wire \work_cnt_reg[4]_i_1__1_n_5 ;
  wire \work_cnt_reg[4]_i_1__1_n_6 ;
  wire \work_cnt_reg[4]_i_1__1_n_7 ;
  wire \work_cnt_reg[8]_i_1__1_n_0 ;
  wire \work_cnt_reg[8]_i_1__1_n_1 ;
  wire \work_cnt_reg[8]_i_1__1_n_2 ;
  wire \work_cnt_reg[8]_i_1__1_n_3 ;
  wire \work_cnt_reg[8]_i_1__1_n_4 ;
  wire \work_cnt_reg[8]_i_1__1_n_5 ;
  wire \work_cnt_reg[8]_i_1__1_n_6 ;
  wire \work_cnt_reg[8]_i_1__1_n_7 ;
  wire [3:0]NLW_ltOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_ltOp_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED ;
  wire [3:2]NLW_rx_index0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_rx_index0_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_work_cnt_reg[12]_i_1__1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    AM2302_SDA_3_ctrl_INST_0
       (.I0(T),
        .O(AM2302_SDA_3_ctrl));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[24] ),
        .Q(\am2302_humi1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[34] ),
        .Q(\am2302_humi1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[35] ),
        .Q(\am2302_humi1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[36] ),
        .Q(\am2302_humi1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[37] ),
        .Q(\am2302_humi1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[38] ),
        .Q(\am2302_humi1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[39] ),
        .Q(\am2302_humi1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[25] ),
        .Q(\am2302_humi1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[26] ),
        .Q(\am2302_humi1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[27] ),
        .Q(\am2302_humi1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[28] ),
        .Q(\am2302_humi1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[29] ),
        .Q(\am2302_humi1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[30] ),
        .Q(\am2302_humi1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[31] ),
        .Q(\am2302_humi1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[32] ),
        .Q(\am2302_humi1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[33] ),
        .Q(\am2302_humi1_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[10] ),
        .Q(data8[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[11] ),
        .Q(data8[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[12] ),
        .Q(data8[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[13] ),
        .Q(data8[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[14] ),
        .Q(data8[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[15] ),
        .Q(data8[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[3] ),
        .Q(data8[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[4] ),
        .Q(data8[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[5] ),
        .Q(data8[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[6] ),
        .Q(data8[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[7] ),
        .Q(data8[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[8] ),
        .Q(data8[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_humi_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_humi1_reg_n_0_[9] ),
        .Q(data8[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    \am2302_temp1[15]_i_1__1 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .O(\am2302_temp1[15]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[8] ),
        .Q(\am2302_temp1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[18] ),
        .Q(\am2302_temp1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[19] ),
        .Q(\am2302_temp1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[20] ),
        .Q(\am2302_temp1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[21] ),
        .Q(\am2302_temp1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[22] ),
        .Q(\am2302_temp1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[23] ),
        .Q(\am2302_temp1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[9] ),
        .Q(\am2302_temp1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[10] ),
        .Q(\am2302_temp1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[11] ),
        .Q(\am2302_temp1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[12] ),
        .Q(\am2302_temp1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[13] ),
        .Q(\am2302_temp1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[14] ),
        .Q(\am2302_temp1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[15] ),
        .Q(\am2302_temp1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[16] ),
        .Q(\am2302_temp1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp1[15]_i_1__1_n_0 ),
        .D(\rx_data_reg_n_0_[17] ),
        .Q(\am2302_temp1_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[0]_i_1 
       (.I0(minusOp_carry_n_7),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[0] ),
        .O(\am2302_temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[10]_i_1 
       (.I0(minusOp_carry__1_n_5),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[10] ),
        .O(\am2302_temp[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[11]_i_1 
       (.I0(minusOp_carry__1_n_4),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[11] ),
        .O(\am2302_temp[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[12]_i_1 
       (.I0(minusOp_carry__2_n_7),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[12] ),
        .O(\am2302_temp[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[13]_i_1 
       (.I0(minusOp_carry__2_n_6),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[13] ),
        .O(\am2302_temp[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[14]_i_1 
       (.I0(minusOp_carry__2_n_5),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[14] ),
        .O(\am2302_temp[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \am2302_temp[15]_i_1__1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .O(\am2302_temp[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[1]_i_1 
       (.I0(minusOp_carry_n_6),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[1] ),
        .O(\am2302_temp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[2]_i_1 
       (.I0(minusOp_carry_n_5),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[2] ),
        .O(\am2302_temp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[3]_i_1 
       (.I0(minusOp_carry_n_4),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[3] ),
        .O(\am2302_temp[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[4]_i_1 
       (.I0(minusOp_carry__0_n_7),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[4] ),
        .O(\am2302_temp[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[5]_i_1 
       (.I0(minusOp_carry__0_n_6),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[5] ),
        .O(\am2302_temp[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[6]_i_1 
       (.I0(minusOp_carry__0_n_5),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[6] ),
        .O(\am2302_temp[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[7]_i_1 
       (.I0(minusOp_carry__0_n_4),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[7] ),
        .O(\am2302_temp[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[8]_i_1 
       (.I0(minusOp_carry__1_n_7),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[8] ),
        .O(\am2302_temp[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \am2302_temp[9]_i_1 
       (.I0(minusOp_carry__1_n_6),
        .I1(\am2302_temp1_reg_n_0_[15] ),
        .I2(\am2302_temp1_reg_n_0_[9] ),
        .O(\am2302_temp[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[0]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[10]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[11]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[12]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[13]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[14]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp1_reg_n_0_[15] ),
        .Q(\am2302_temp_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[1]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[2]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[3]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[4]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[5]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[6]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[7]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[8]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \am2302_temp_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\am2302_temp[15]_i_1__1_n_0 ),
        .D(\am2302_temp[9]_i_1_n_0 ),
        .Q(\am2302_temp_reg[15]_0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[10]_i_1 
       (.I0(data8[10]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[10] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[11]_i_1 
       (.I0(data8[11]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[11] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[12]_i_1 
       (.I0(data8[12]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[12] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[13]_i_1 
       (.I0(data8[13]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[13] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[14]_i_1 
       (.I0(data8[14]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[14] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[15]_i_1 
       (.I0(data8[15]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[15] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[3]_i_1 
       (.I0(data8[3]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[3]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[4]_i_1 
       (.I0(data8[4]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[4] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[5]_i_1 
       (.I0(data8[5]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[5] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[6]_i_1 
       (.I0(data8[6]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[6] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[7]_i_1 
       (.I0(data8[7]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[7] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[8]_i_1 
       (.I0(data8[8]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[8] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \axi_rdata[9]_i_1 
       (.I0(data8[9]),
        .I1(\axi_rdata_reg[3] [0]),
        .I2(\axi_rdata_reg[3] [1]),
        .I3(\axi_rdata_reg[3] [2]),
        .I4(\axi_rdata_reg[3] [3]),
        .I5(\axi_rdata_reg[9] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hCE31)) 
    clk_1us_i_1__1
       (.I0(\us_cnt[7]_i_3__1_n_0 ),
        .I1(us_cnt_reg__0[7]),
        .I2(us_cnt_reg__0[6]),
        .I3(clk_1us_reg_n_0),
        .O(clk_1us_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_1us_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_1us_i_1__1_n_0),
        .Q(clk_1us_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    clk_1ust_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_1us_reg_n_0),
        .Q(clk_1ust_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___2_carry__0_i_10__1
       (.I0(\rx_data_reg_n_0_[13] ),
        .I1(\rx_data_reg_n_0_[29] ),
        .I2(\rx_data_reg_n_0_[21] ),
        .O(i___2_carry__0_i_10__1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___2_carry__0_i_11__1
       (.I0(\rx_data_reg_n_0_[23] ),
        .I1(\rx_data_reg_n_0_[31] ),
        .I2(\rx_data_reg_n_0_[15] ),
        .I3(\rx_data_reg_n_0_[39] ),
        .O(i___2_carry__0_i_11__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry__0_i_12__1
       (.I0(\rx_data_reg_n_0_[14] ),
        .I1(\rx_data_reg_n_0_[30] ),
        .I2(\rx_data_reg_n_0_[22] ),
        .O(i___2_carry__0_i_12__1_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry__0_i_1__1
       (.I0(\rx_data_reg_n_0_[20] ),
        .I1(\rx_data_reg_n_0_[28] ),
        .I2(\rx_data_reg_n_0_[12] ),
        .I3(\rx_data_reg_n_0_[37] ),
        .I4(i___2_carry__0_i_8__1_n_0),
        .O(i___2_carry__0_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry__0_i_2__1
       (.I0(\rx_data_reg_n_0_[19] ),
        .I1(\rx_data_reg_n_0_[27] ),
        .I2(\rx_data_reg_n_0_[11] ),
        .I3(\rx_data_reg_n_0_[36] ),
        .I4(i___2_carry__0_i_9__1_n_0),
        .O(i___2_carry__0_i_2__1_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry__0_i_3__1
       (.I0(\rx_data_reg_n_0_[18] ),
        .I1(\rx_data_reg_n_0_[26] ),
        .I2(\rx_data_reg_n_0_[10] ),
        .I3(\rx_data_reg_n_0_[35] ),
        .I4(i___2_carry_i_9__1_n_0),
        .O(i___2_carry__0_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    i___2_carry__0_i_4__1
       (.I0(\rx_data_reg_n_0_[38] ),
        .I1(i___2_carry__0_i_10__1_n_0),
        .I2(i___2_carry__0_i_11__1_n_0),
        .I3(\rx_data_reg_n_0_[14] ),
        .I4(\rx_data_reg_n_0_[30] ),
        .I5(\rx_data_reg_n_0_[22] ),
        .O(i___2_carry__0_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry__0_i_5__1
       (.I0(i___2_carry__0_i_1__1_n_0),
        .I1(i___2_carry__0_i_12__1_n_0),
        .I2(\rx_data_reg_n_0_[38] ),
        .I3(\rx_data_reg_n_0_[13] ),
        .I4(\rx_data_reg_n_0_[29] ),
        .I5(\rx_data_reg_n_0_[21] ),
        .O(i___2_carry__0_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry__0_i_6__1
       (.I0(i___2_carry__0_i_2__1_n_0),
        .I1(i___2_carry__0_i_8__1_n_0),
        .I2(\rx_data_reg_n_0_[37] ),
        .I3(\rx_data_reg_n_0_[12] ),
        .I4(\rx_data_reg_n_0_[28] ),
        .I5(\rx_data_reg_n_0_[20] ),
        .O(i___2_carry__0_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry__0_i_7__1
       (.I0(i___2_carry__0_i_3__1_n_0),
        .I1(i___2_carry__0_i_9__1_n_0),
        .I2(\rx_data_reg_n_0_[36] ),
        .I3(\rx_data_reg_n_0_[11] ),
        .I4(\rx_data_reg_n_0_[27] ),
        .I5(\rx_data_reg_n_0_[19] ),
        .O(i___2_carry__0_i_7__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry__0_i_8__1
       (.I0(\rx_data_reg_n_0_[13] ),
        .I1(\rx_data_reg_n_0_[29] ),
        .I2(\rx_data_reg_n_0_[21] ),
        .O(i___2_carry__0_i_8__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry__0_i_9__1
       (.I0(\rx_data_reg_n_0_[12] ),
        .I1(\rx_data_reg_n_0_[28] ),
        .I2(\rx_data_reg_n_0_[20] ),
        .O(i___2_carry__0_i_9__1_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    i___2_carry_i_1__1
       (.I0(\rx_data_reg_n_0_[17] ),
        .I1(\rx_data_reg_n_0_[25] ),
        .I2(\rx_data_reg_n_0_[9] ),
        .I3(\rx_data_reg_n_0_[34] ),
        .I4(i___2_carry_i_8__1_n_0),
        .O(i___2_carry_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    i___2_carry_i_2__1
       (.I0(\rx_data_reg_n_0_[17] ),
        .I1(\rx_data_reg_n_0_[25] ),
        .I2(\rx_data_reg_n_0_[9] ),
        .I3(\rx_data_reg_n_0_[34] ),
        .I4(i___2_carry_i_8__1_n_0),
        .O(i___2_carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___2_carry_i_3__1
       (.I0(\rx_data_reg_n_0_[17] ),
        .I1(\rx_data_reg_n_0_[25] ),
        .I2(\rx_data_reg_n_0_[9] ),
        .I3(\rx_data_reg_n_0_[33] ),
        .O(i___2_carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    i___2_carry_i_4__1
       (.I0(i___2_carry_i_1__1_n_0),
        .I1(i___2_carry_i_9__1_n_0),
        .I2(\rx_data_reg_n_0_[35] ),
        .I3(\rx_data_reg_n_0_[10] ),
        .I4(\rx_data_reg_n_0_[26] ),
        .I5(\rx_data_reg_n_0_[18] ),
        .O(i___2_carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    i___2_carry_i_5__1
       (.I0(i___2_carry_i_8__1_n_0),
        .I1(\rx_data_reg_n_0_[34] ),
        .I2(\rx_data_reg_n_0_[9] ),
        .I3(\rx_data_reg_n_0_[25] ),
        .I4(\rx_data_reg_n_0_[17] ),
        .I5(\rx_data_reg_n_0_[33] ),
        .O(i___2_carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    i___2_carry_i_6__1
       (.I0(i___2_carry_i_3__1_n_0),
        .I1(\rx_data_reg_n_0_[16] ),
        .I2(\rx_data_reg_n_0_[24] ),
        .I3(\rx_data_reg_n_0_[8] ),
        .O(i___2_carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___2_carry_i_7__1
       (.I0(\rx_data_reg_n_0_[16] ),
        .I1(\rx_data_reg_n_0_[24] ),
        .I2(\rx_data_reg_n_0_[8] ),
        .I3(\rx_data_reg_n_0_[32] ),
        .O(i___2_carry_i_7__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry_i_8__1
       (.I0(\rx_data_reg_n_0_[10] ),
        .I1(\rx_data_reg_n_0_[26] ),
        .I2(\rx_data_reg_n_0_[18] ),
        .O(i___2_carry_i_8__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___2_carry_i_9__1
       (.I0(\rx_data_reg_n_0_[11] ),
        .I1(\rx_data_reg_n_0_[27] ),
        .I2(\rx_data_reg_n_0_[19] ),
        .O(i___2_carry_i_9__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__0_i_1__1
       (.I0(\period_cnt_reg_n_0_[21] ),
        .I1(\period_cnt_reg_n_0_[20] ),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__0_i_2__1
       (.I0(\period_cnt_reg_n_0_[17] ),
        .I1(\period_cnt_reg_n_0_[16] ),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3__1
       (.I0(\period_cnt_reg_n_0_[15] ),
        .I1(\period_cnt_reg_n_0_[14] ),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_4__1
       (.I0(\period_cnt_reg_n_0_[20] ),
        .I1(\period_cnt_reg_n_0_[21] ),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5__1
       (.I0(\period_cnt_reg_n_0_[19] ),
        .I1(\period_cnt_reg_n_0_[18] ),
        .O(i__carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_6__1
       (.I0(\period_cnt_reg_n_0_[16] ),
        .I1(\period_cnt_reg_n_0_[17] ),
        .O(i__carry__0_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_7__1
       (.I0(\period_cnt_reg_n_0_[14] ),
        .I1(\period_cnt_reg_n_0_[15] ),
        .O(i__carry__0_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1__1
       (.I0(\period_cnt_reg_n_0_[27] ),
        .I1(\period_cnt_reg_n_0_[26] ),
        .O(i__carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__1_i_2__1
       (.I0(\period_cnt_reg_n_0_[25] ),
        .I1(\period_cnt_reg_n_0_[24] ),
        .O(i__carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3__1
       (.I0(\period_cnt_reg_n_0_[23] ),
        .I1(\period_cnt_reg_n_0_[22] ),
        .O(i__carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4__1
       (.I0(\period_cnt_reg_n_0_[29] ),
        .I1(\period_cnt_reg_n_0_[28] ),
        .O(i__carry__1_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_5__1
       (.I0(\period_cnt_reg_n_0_[26] ),
        .I1(\period_cnt_reg_n_0_[27] ),
        .O(i__carry__1_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_6__1
       (.I0(\period_cnt_reg_n_0_[24] ),
        .I1(\period_cnt_reg_n_0_[25] ),
        .O(i__carry__1_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_7__1
       (.I0(\period_cnt_reg_n_0_[22] ),
        .I1(\period_cnt_reg_n_0_[23] ),
        .O(i__carry__1_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1__1
       (.I0(\period_cnt_reg_n_0_[31] ),
        .I1(\period_cnt_reg_n_0_[30] ),
        .O(i__carry__2_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1__1
       (.I0(\period_cnt_reg_n_0_[13] ),
        .I1(\period_cnt_reg_n_0_[12] ),
        .O(i__carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__1
       (.I0(\period_cnt_reg_n_0_[11] ),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__1
       (.I0(\period_cnt_reg_n_0_[9] ),
        .I1(\period_cnt_reg_n_0_[8] ),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__1
       (.I0(\period_cnt_reg_n_0_[7] ),
        .I1(\period_cnt_reg_n_0_[6] ),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5__1
       (.I0(\period_cnt_reg_n_0_[12] ),
        .I1(\period_cnt_reg_n_0_[13] ),
        .O(i__carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6__1
       (.I0(\period_cnt_reg_n_0_[11] ),
        .I1(\period_cnt_reg_n_0_[10] ),
        .O(i__carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7__1
       (.I0(\period_cnt_reg_n_0_[8] ),
        .I1(\period_cnt_reg_n_0_[9] ),
        .O(i__carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8__1
       (.I0(\period_cnt_reg_n_0_[6] ),
        .I1(\period_cnt_reg_n_0_[7] ),
        .O(i__carry_i_8__1_n_0));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    inst_am2302_io
       (.I(I),
        .IO(AM2302_SDA_3),
        .O(s_data_in1),
        .T(T));
  CARRY4 ltOp_carry
       (.CI(1'b0),
        .CO({ltOp_carry_n_0,ltOp_carry_n_1,ltOp_carry_n_2,ltOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ltOp_carry_i_1__1_n_0,ltOp_carry_i_2__1_n_0,ltOp_carry_i_3__1_n_0}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_4__1_n_0,ltOp_carry_i_5__1_n_0,ltOp_carry_i_6__1_n_0,ltOp_carry_i_7__1_n_0}));
  CARRY4 ltOp_carry__0
       (.CI(ltOp_carry_n_0),
        .CO({ltOp_carry__0_n_0,ltOp_carry__0_n_1,ltOp_carry__0_n_2,ltOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ltOp_carry__0_i_1__1_n_0,1'b0}),
        .O(NLW_ltOp_carry__0_O_UNCONNECTED[3:0]),
        .S({ltOp_carry__0_i_2__1_n_0,ltOp_carry__0_i_3__1_n_0,ltOp_carry__0_i_4__1_n_0,ltOp_carry__0_i_5__1_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry__0_i_1__1
       (.I0(\period_cnt_reg_n_0_[15] ),
        .I1(\period_cnt_reg_n_0_[14] ),
        .O(ltOp_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_2__1
       (.I0(\period_cnt_reg_n_0_[19] ),
        .I1(\period_cnt_reg_n_0_[18] ),
        .O(ltOp_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_3__1
       (.I0(\period_cnt_reg_n_0_[17] ),
        .I1(\period_cnt_reg_n_0_[16] ),
        .O(ltOp_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry__0_i_4__1
       (.I0(\period_cnt_reg_n_0_[14] ),
        .I1(\period_cnt_reg_n_0_[15] ),
        .O(ltOp_carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_5__1
       (.I0(\period_cnt_reg_n_0_[13] ),
        .I1(\period_cnt_reg_n_0_[12] ),
        .O(ltOp_carry__0_i_5__1_n_0));
  CARRY4 ltOp_carry__1
       (.CI(ltOp_carry__0_n_0),
        .CO({ltOp_carry__1_n_0,ltOp_carry__1_n_1,ltOp_carry__1_n_2,ltOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ltOp_carry__1_O_UNCONNECTED[3:0]),
        .S({ltOp_carry__1_i_1__1_n_0,ltOp_carry__1_i_2__1_n_0,ltOp_carry__1_i_3__1_n_0,ltOp_carry__1_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_1__1
       (.I0(\period_cnt_reg_n_0_[27] ),
        .I1(\period_cnt_reg_n_0_[26] ),
        .O(ltOp_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_2__1
       (.I0(\period_cnt_reg_n_0_[25] ),
        .I1(\period_cnt_reg_n_0_[24] ),
        .O(ltOp_carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_3__1
       (.I0(\period_cnt_reg_n_0_[23] ),
        .I1(\period_cnt_reg_n_0_[22] ),
        .O(ltOp_carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__1_i_4__1
       (.I0(\period_cnt_reg_n_0_[21] ),
        .I1(\period_cnt_reg_n_0_[20] ),
        .O(ltOp_carry__1_i_4__1_n_0));
  CARRY4 ltOp_carry__2
       (.CI(ltOp_carry__1_n_0),
        .CO({NLW_ltOp_carry__2_CO_UNCONNECTED[3:2],ltOp_carry__2_n_2,ltOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\period_cnt_reg_n_0_[31] ,1'b0}),
        .O(NLW_ltOp_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ltOp_carry__2_i_1__1_n_0,ltOp_carry__2_i_2__1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__2_i_1__1
       (.I0(\period_cnt_reg_n_0_[31] ),
        .I1(\period_cnt_reg_n_0_[30] ),
        .O(ltOp_carry__2_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__2_i_2__1
       (.I0(\period_cnt_reg_n_0_[29] ),
        .I1(\period_cnt_reg_n_0_[28] ),
        .O(ltOp_carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry_i_1__1
       (.I0(\period_cnt_reg_n_0_[9] ),
        .I1(\period_cnt_reg_n_0_[8] ),
        .O(ltOp_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_2__1
       (.I0(\period_cnt_reg_n_0_[7] ),
        .I1(\period_cnt_reg_n_0_[6] ),
        .O(ltOp_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_3__1
       (.I0(\period_cnt_reg_n_0_[5] ),
        .I1(\period_cnt_reg_n_0_[4] ),
        .O(ltOp_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_4__1
       (.I0(\period_cnt_reg_n_0_[11] ),
        .I1(\period_cnt_reg_n_0_[10] ),
        .O(ltOp_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry_i_5__1
       (.I0(\period_cnt_reg_n_0_[8] ),
        .I1(\period_cnt_reg_n_0_[9] ),
        .O(ltOp_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_6__1
       (.I0(\period_cnt_reg_n_0_[6] ),
        .I1(\period_cnt_reg_n_0_[7] ),
        .O(ltOp_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_7__1
       (.I0(\period_cnt_reg_n_0_[4] ),
        .I1(\period_cnt_reg_n_0_[5] ),
        .O(ltOp_carry_i_7__1_n_0));
  CARRY4 \ltOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ltOp_inferred__0/i__carry_n_0 ,\ltOp_inferred__0/i__carry_n_1 ,\ltOp_inferred__0/i__carry_n_2 ,\ltOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  CARRY4 \ltOp_inferred__0/i__carry__0 
       (.CI(\ltOp_inferred__0/i__carry_n_0 ),
        .CO({\ltOp_inferred__0/i__carry__0_n_0 ,\ltOp_inferred__0/i__carry__0_n_1 ,\ltOp_inferred__0/i__carry__0_n_2 ,\ltOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,1'b0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0}),
        .O(\NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_4__1_n_0,i__carry__0_i_5__1_n_0,i__carry__0_i_6__1_n_0,i__carry__0_i_7__1_n_0}));
  CARRY4 \ltOp_inferred__0/i__carry__1 
       (.CI(\ltOp_inferred__0/i__carry__0_n_0 ),
        .CO({\ltOp_inferred__0/i__carry__1_n_0 ,\ltOp_inferred__0/i__carry__1_n_1 ,\ltOp_inferred__0/i__carry__1_n_2 ,\ltOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0,i__carry__1_i_3__1_n_0}),
        .O(\NLW_ltOp_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_4__1_n_0,i__carry__1_i_5__1_n_0,i__carry__1_i_6__1_n_0,i__carry__1_i_7__1_n_0}));
  CARRY4 \ltOp_inferred__0/i__carry__2 
       (.CI(\ltOp_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_ltOp_inferred__0/i__carry__2_CO_UNCONNECTED [3:1],\ltOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\period_cnt_reg_n_0_[31] }),
        .O(\NLW_ltOp_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__2_i_1__1_n_0}));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({minusOp_carry_i_1__1_n_0,minusOp_carry_i_2__1_n_0,minusOp_carry_i_3__1_n_0,\am2302_temp1_reg_n_0_[0] }));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry__0_i_1__1_n_0,minusOp_carry__0_i_2__1_n_0,minusOp_carry__0_i_3__1_n_0,minusOp_carry__0_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1__1
       (.I0(\am2302_temp1_reg_n_0_[7] ),
        .O(minusOp_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2__1
       (.I0(\am2302_temp1_reg_n_0_[6] ),
        .O(minusOp_carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3__1
       (.I0(\am2302_temp1_reg_n_0_[5] ),
        .O(minusOp_carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4__1
       (.I0(\am2302_temp1_reg_n_0_[4] ),
        .O(minusOp_carry__0_i_4__1_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry__1_i_1__1_n_0,minusOp_carry__1_i_2__1_n_0,minusOp_carry__1_i_3__1_n_0,minusOp_carry__1_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1__1
       (.I0(\am2302_temp1_reg_n_0_[11] ),
        .O(minusOp_carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2__1
       (.I0(\am2302_temp1_reg_n_0_[10] ),
        .O(minusOp_carry__1_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3__1
       (.I0(\am2302_temp1_reg_n_0_[9] ),
        .O(minusOp_carry__1_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4__1
       (.I0(\am2302_temp1_reg_n_0_[8] ),
        .O(minusOp_carry__1_i_4__1_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({1'b0,minusOp_carry__2_i_1__1_n_0,minusOp_carry__2_i_2__1_n_0,minusOp_carry__2_i_3__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1__1
       (.I0(\am2302_temp1_reg_n_0_[14] ),
        .O(minusOp_carry__2_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2__1
       (.I0(\am2302_temp1_reg_n_0_[13] ),
        .O(minusOp_carry__2_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3__1
       (.I0(\am2302_temp1_reg_n_0_[12] ),
        .O(minusOp_carry__2_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1__1
       (.I0(\am2302_temp1_reg_n_0_[3] ),
        .O(minusOp_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2__1
       (.I0(\am2302_temp1_reg_n_0_[2] ),
        .O(minusOp_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3__1
       (.I0(\am2302_temp1_reg_n_0_[1] ),
        .O(minusOp_carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \period_cnt[0]_i_1__1 
       (.I0(\period_cnt_reg_n_0_[0] ),
        .O(\period_cnt[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    \period_cnt[31]_i_1__1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\ltOp_inferred__0/i__carry__2_n_3 ),
        .I4(\state_am2302_reg[0]_0 ),
        .I5(ltOp_carry__2_n_2),
        .O(\period_cnt[31]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \period_cnt[31]_i_2__1 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302_reg[3]_0 ),
        .O(\period_cnt[31]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(\period_cnt[0]_i_1__1_n_0 ),
        .Q(\period_cnt_reg_n_0_[0] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__1_n_6),
        .Q(\period_cnt_reg_n_0_[10] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__1_n_5),
        .Q(\period_cnt_reg_n_0_[11] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__1_n_4),
        .Q(\period_cnt_reg_n_0_[12] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__2_n_7),
        .Q(\period_cnt_reg_n_0_[13] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__2_n_6),
        .Q(\period_cnt_reg_n_0_[14] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__2_n_5),
        .Q(\period_cnt_reg_n_0_[15] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__2_n_4),
        .Q(\period_cnt_reg_n_0_[16] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__3_n_7),
        .Q(\period_cnt_reg_n_0_[17] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__3_n_6),
        .Q(\period_cnt_reg_n_0_[18] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__3_n_5),
        .Q(\period_cnt_reg_n_0_[19] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry_n_7),
        .Q(\period_cnt_reg_n_0_[1] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__3_n_4),
        .Q(\period_cnt_reg_n_0_[20] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__4_n_7),
        .Q(\period_cnt_reg_n_0_[21] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__4_n_6),
        .Q(\period_cnt_reg_n_0_[22] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__4_n_5),
        .Q(\period_cnt_reg_n_0_[23] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__4_n_4),
        .Q(\period_cnt_reg_n_0_[24] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__5_n_7),
        .Q(\period_cnt_reg_n_0_[25] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__5_n_6),
        .Q(\period_cnt_reg_n_0_[26] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__5_n_5),
        .Q(\period_cnt_reg_n_0_[27] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__5_n_4),
        .Q(\period_cnt_reg_n_0_[28] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__6_n_7),
        .Q(\period_cnt_reg_n_0_[29] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry_n_6),
        .Q(\period_cnt_reg_n_0_[2] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__6_n_6),
        .Q(\period_cnt_reg_n_0_[30] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__6_n_5),
        .Q(\period_cnt_reg_n_0_[31] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry_n_5),
        .Q(\period_cnt_reg_n_0_[3] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry_n_4),
        .Q(\period_cnt_reg_n_0_[4] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__0_n_7),
        .Q(\period_cnt_reg_n_0_[5] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__0_n_6),
        .Q(\period_cnt_reg_n_0_[6] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__0_n_5),
        .Q(\period_cnt_reg_n_0_[7] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__0_n_4),
        .Q(\period_cnt_reg_n_0_[8] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\period_cnt[31]_i_2__1_n_0 ),
        .D(plusOp_carry__1_n_7),
        .Q(\period_cnt_reg_n_0_[9] ),
        .R(\period_cnt[31]_i_1__1_n_0 ));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\period_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({\period_cnt_reg_n_0_[4] ,\period_cnt_reg_n_0_[3] ,\period_cnt_reg_n_0_[2] ,\period_cnt_reg_n_0_[1] }));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S({\period_cnt_reg_n_0_[8] ,\period_cnt_reg_n_0_[7] ,\period_cnt_reg_n_0_[6] ,\period_cnt_reg_n_0_[5] }));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S({\period_cnt_reg_n_0_[12] ,\period_cnt_reg_n_0_[11] ,\period_cnt_reg_n_0_[10] ,\period_cnt_reg_n_0_[9] }));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S({\period_cnt_reg_n_0_[16] ,\period_cnt_reg_n_0_[15] ,\period_cnt_reg_n_0_[14] ,\period_cnt_reg_n_0_[13] }));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__3_n_4,plusOp_carry__3_n_5,plusOp_carry__3_n_6,plusOp_carry__3_n_7}),
        .S({\period_cnt_reg_n_0_[20] ,\period_cnt_reg_n_0_[19] ,\period_cnt_reg_n_0_[18] ,\period_cnt_reg_n_0_[17] }));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__4_n_4,plusOp_carry__4_n_5,plusOp_carry__4_n_6,plusOp_carry__4_n_7}),
        .S({\period_cnt_reg_n_0_[24] ,\period_cnt_reg_n_0_[23] ,\period_cnt_reg_n_0_[22] ,\period_cnt_reg_n_0_[21] }));
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__5_n_4,plusOp_carry__5_n_5,plusOp_carry__5_n_6,plusOp_carry__5_n_7}),
        .S({\period_cnt_reg_n_0_[28] ,\period_cnt_reg_n_0_[27] ,\period_cnt_reg_n_0_[26] ,\period_cnt_reg_n_0_[25] }));
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],plusOp_carry__6_n_5,plusOp_carry__6_n_6,plusOp_carry__6_n_7}),
        .S({1'b0,\period_cnt_reg_n_0_[31] ,\period_cnt_reg_n_0_[30] ,\period_cnt_reg_n_0_[29] }));
  CARRY4 \plusOp_inferred__3/i___2_carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__3/i___2_carry_n_0 ,\plusOp_inferred__3/i___2_carry_n_1 ,\plusOp_inferred__3/i___2_carry_n_2 ,\plusOp_inferred__3/i___2_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___2_carry_i_1__1_n_0,i___2_carry_i_2__1_n_0,i___2_carry_i_3__1_n_0,\rx_data_reg_n_0_[32] }),
        .O({\plusOp_inferred__3/i___2_carry_n_4 ,\plusOp_inferred__3/i___2_carry_n_5 ,\plusOp_inferred__3/i___2_carry_n_6 ,\plusOp_inferred__3/i___2_carry_n_7 }),
        .S({i___2_carry_i_4__1_n_0,i___2_carry_i_5__1_n_0,i___2_carry_i_6__1_n_0,i___2_carry_i_7__1_n_0}));
  CARRY4 \plusOp_inferred__3/i___2_carry__0 
       (.CI(\plusOp_inferred__3/i___2_carry_n_0 ),
        .CO({\NLW_plusOp_inferred__3/i___2_carry__0_CO_UNCONNECTED [3],\plusOp_inferred__3/i___2_carry__0_n_1 ,\plusOp_inferred__3/i___2_carry__0_n_2 ,\plusOp_inferred__3/i___2_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i___2_carry__0_i_1__1_n_0,i___2_carry__0_i_2__1_n_0,i___2_carry__0_i_3__1_n_0}),
        .O({\plusOp_inferred__3/i___2_carry__0_n_4 ,\plusOp_inferred__3/i___2_carry__0_n_5 ,\plusOp_inferred__3/i___2_carry__0_n_6 ,\plusOp_inferred__3/i___2_carry__0_n_7 }),
        .S({i___2_carry__0_i_4__1_n_0,i___2_carry__0_i_5__1_n_0,i___2_carry__0_i_6__1_n_0,i___2_carry__0_i_7__1_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[0]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[7]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[0] ),
        .O(\rx_data[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[10]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[15]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[10] ),
        .O(\rx_data[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[11]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[15]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[11] ),
        .O(\rx_data[11]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[12]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[15]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[12] ),
        .O(\rx_data[12]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[13]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[15]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[13] ),
        .O(\rx_data[13]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[14]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[15]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[14] ),
        .O(\rx_data[14]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[15]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[15]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[15] ),
        .O(\rx_data[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \rx_data[15]_i_2__1 
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(\rx_index_reg_n_0_[3] ),
        .I2(\rx_index_reg_n_0_[5] ),
        .I3(\rx_data[39]_i_7__1_n_0 ),
        .O(\rx_data[15]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[16]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[23]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[16] ),
        .O(\rx_data[16]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[17]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[23]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[17] ),
        .O(\rx_data[17]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[18]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[23]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[18] ),
        .O(\rx_data[18]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[19]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[23]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[19] ),
        .O(\rx_data[19]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[1]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[7]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[1] ),
        .O(\rx_data[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[20]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[23]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[20] ),
        .O(\rx_data[20]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[21]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[23]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[21] ),
        .O(\rx_data[21]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[22]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[23]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[22] ),
        .O(\rx_data[22]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[23]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[23]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[23] ),
        .O(\rx_data[23]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rx_data[23]_i_2__1 
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(\rx_index_reg_n_0_[3] ),
        .I2(\rx_index_reg_n_0_[5] ),
        .I3(\rx_data[39]_i_7__1_n_0 ),
        .O(\rx_data[23]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[24]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[31]_i_3__1_n_0 ),
        .I5(\rx_data_reg_n_0_[24] ),
        .O(\rx_data[24]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[25]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[31]_i_3__1_n_0 ),
        .I5(\rx_data_reg_n_0_[25] ),
        .O(\rx_data[25]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[26]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[31]_i_3__1_n_0 ),
        .I5(\rx_data_reg_n_0_[26] ),
        .O(\rx_data[26]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[27]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[31]_i_3__1_n_0 ),
        .I5(\rx_data_reg_n_0_[27] ),
        .O(\rx_data[27]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[28]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[31]_i_3__1_n_0 ),
        .I5(\rx_data_reg_n_0_[28] ),
        .O(\rx_data[28]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[29]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[31]_i_3__1_n_0 ),
        .I5(\rx_data_reg_n_0_[29] ),
        .O(\rx_data[29]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[2]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[7]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[2] ),
        .O(\rx_data[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[30]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[31]_i_3__1_n_0 ),
        .I5(\rx_data_reg_n_0_[30] ),
        .O(\rx_data[30]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[31]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[31]_i_3__1_n_0 ),
        .I5(\rx_data_reg_n_0_[31] ),
        .O(\rx_data[31]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBFFFBFFFFFFF)) 
    \rx_data[31]_i_2__1 
       (.I0(s_data_in_reg_n_0),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\rx_data[31]_i_4__1_n_0 ),
        .I5(\rx_data[39]_i_2__1_n_0 ),
        .O(\rx_data[31]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \rx_data[31]_i_3__1 
       (.I0(\rx_index_reg_n_0_[3] ),
        .I1(\rx_index_reg_n_0_[4] ),
        .I2(\rx_index_reg_n_0_[5] ),
        .I3(\rx_data[39]_i_7__1_n_0 ),
        .O(\rx_data[31]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h2223222000000000)) 
    \rx_data[31]_i_4__1 
       (.I0(\rx_data[31]_i_5__1_n_0 ),
        .I1(\us_count_reg_n_0_[7] ),
        .I2(\rx_data[31]_i_6__1_n_0 ),
        .I3(\us_count_reg_n_0_[3] ),
        .I4(\state_am2302[3]_i_25__1_n_0 ),
        .I5(\us_count_reg_n_0_[6] ),
        .O(\rx_data[31]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    \rx_data[31]_i_5__1 
       (.I0(\us_count_reg_n_0_[2] ),
        .I1(\us_count_reg_n_0_[5] ),
        .I2(\us_count_reg_n_0_[4] ),
        .I3(\us_count_reg_n_0_[1] ),
        .I4(\us_count_reg_n_0_[0] ),
        .O(\rx_data[31]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[31]_i_6__1 
       (.I0(\us_count_reg_n_0_[5] ),
        .I1(\us_count_reg_n_0_[4] ),
        .O(\rx_data[31]_i_6__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[32]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2__1_n_0 ),
        .I3(\rx_data[39]_i_4__1_n_0 ),
        .I4(\rx_data_reg_n_0_[32] ),
        .O(\rx_data[32]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_data[32]_i_2__1 
       (.I0(\rx_index_reg_n_0_[2] ),
        .I1(\rx_index_reg_n_0_[0] ),
        .I2(\rx_index_reg_n_0_[1] ),
        .O(\rx_data[32]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[33]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2__1_n_0 ),
        .I3(\rx_data[39]_i_4__1_n_0 ),
        .I4(\rx_data_reg_n_0_[33] ),
        .O(\rx_data[33]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rx_data[33]_i_2__1 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[33]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[34]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[34]_i_2__1_n_0 ),
        .I3(\rx_data[39]_i_4__1_n_0 ),
        .I4(\rx_data_reg_n_0_[34] ),
        .O(\rx_data[34]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rx_data[34]_i_2__1 
       (.I0(\rx_index_reg_n_0_[1] ),
        .I1(\rx_index_reg_n_0_[0] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[34]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[35]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2__1_n_0 ),
        .I3(\rx_data[39]_i_4__1_n_0 ),
        .I4(\rx_data_reg_n_0_[35] ),
        .O(\rx_data[35]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \rx_data[35]_i_2__1 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[35]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[36]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2__1_n_0 ),
        .I3(\rx_data[39]_i_4__1_n_0 ),
        .I4(\rx_data_reg_n_0_[36] ),
        .O(\rx_data[36]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rx_data[36]_i_2__1 
       (.I0(\rx_index_reg_n_0_[2] ),
        .I1(\rx_index_reg_n_0_[0] ),
        .I2(\rx_index_reg_n_0_[1] ),
        .O(\rx_data[36]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[37]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2__1_n_0 ),
        .I3(\rx_data[39]_i_4__1_n_0 ),
        .I4(\rx_data_reg_n_0_[37] ),
        .O(\rx_data[37]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rx_data[37]_i_2__1 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[37]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[38]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2__1_n_0 ),
        .I3(\rx_data[39]_i_4__1_n_0 ),
        .I4(\rx_data_reg_n_0_[38] ),
        .O(\rx_data[38]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rx_data[38]_i_2__1 
       (.I0(\rx_index_reg_n_0_[1] ),
        .I1(\rx_index_reg_n_0_[0] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[38]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[39]_i_10__1 
       (.I0(\rx_index_reg_n_0_[25] ),
        .I1(\rx_index_reg_n_0_[26] ),
        .O(\rx_data[39]_i_10__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_data[39]_i_11__1 
       (.I0(\rx_index_reg_n_0_[30] ),
        .I1(\rx_index_reg_n_0_[31] ),
        .I2(\rx_index_reg_n_0_[29] ),
        .I3(\rx_index_reg_n_0_[28] ),
        .O(\rx_data[39]_i_11__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[39]_i_12__1 
       (.I0(\rx_index_reg_n_0_[7] ),
        .I1(\rx_index_reg_n_0_[8] ),
        .O(\rx_data[39]_i_12__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \rx_data[39]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3__1_n_0 ),
        .I3(\rx_data[39]_i_4__1_n_0 ),
        .I4(\rx_data_reg_n_0_[39] ),
        .O(\rx_data[39]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444044404440)) 
    \rx_data[39]_i_2__1 
       (.I0(\us_count_reg_n_0_[7] ),
        .I1(\rx_data[39]_i_5__1_n_0 ),
        .I2(\us_count_reg_n_0_[6] ),
        .I3(\us_count_reg_n_0_[5] ),
        .I4(\rx_data[39]_i_6__1_n_0 ),
        .I5(\us_count_reg_n_0_[4] ),
        .O(\rx_data[39]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rx_data[39]_i_3__1 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(\rx_data[39]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \rx_data[39]_i_4__1 
       (.I0(\rx_data[31]_i_2__1_n_0 ),
        .I1(\rx_data[39]_i_7__1_n_0 ),
        .I2(\rx_index_reg_n_0_[4] ),
        .I3(\rx_index_reg_n_0_[3] ),
        .I4(\rx_index_reg_n_0_[5] ),
        .O(\rx_data[39]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h0000007F)) 
    \rx_data[39]_i_5__1 
       (.I0(\us_count_reg_n_0_[2] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[3] ),
        .I3(\us_count_reg_n_0_[5] ),
        .I4(\us_count_reg_n_0_[6] ),
        .O(\rx_data[39]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \rx_data[39]_i_6__1 
       (.I0(\us_count_reg_n_0_[0] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[2] ),
        .I3(\us_count_reg_n_0_[3] ),
        .O(\rx_data[39]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_data[39]_i_7__1 
       (.I0(\rx_data[39]_i_8__1_n_0 ),
        .I1(\rx_data[39]_i_9__1_n_0 ),
        .I2(\rx_index_reg_n_0_[15] ),
        .I3(\rx_index_reg_n_0_[12] ),
        .I4(\rx_index_reg_n_0_[9] ),
        .I5(\rx_index[31]_i_10__1_n_0 ),
        .O(\rx_data[39]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_data[39]_i_8__1 
       (.I0(\rx_index_reg_n_0_[21] ),
        .I1(\state_am2302[3]_i_26__1_n_0 ),
        .I2(\rx_index_reg_n_0_[24] ),
        .I3(\rx_data[39]_i_10__1_n_0 ),
        .I4(\rx_index_reg_n_0_[27] ),
        .I5(\rx_data[39]_i_11__1_n_0 ),
        .O(\rx_data[39]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_data[39]_i_9__1 
       (.I0(\rx_index_reg_n_0_[10] ),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[13] ),
        .I3(\rx_index_reg_n_0_[14] ),
        .I4(\rx_data[39]_i_12__1_n_0 ),
        .I5(\rx_index_reg_n_0_[6] ),
        .O(\rx_data[39]_i_9__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[3]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[35]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[7]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[3] ),
        .O(\rx_data[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[4]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[36]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[7]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[4] ),
        .O(\rx_data[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[5]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[37]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[7]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[5] ),
        .O(\rx_data[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[6]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[38]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[7]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[6] ),
        .O(\rx_data[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[7]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[39]_i_3__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[7]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[7] ),
        .O(\rx_data[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_data[7]_i_2__1 
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(\rx_index_reg_n_0_[3] ),
        .I2(\rx_index_reg_n_0_[5] ),
        .I3(\rx_data[39]_i_7__1_n_0 ),
        .O(\rx_data[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[8]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[32]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[15]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[8] ),
        .O(\rx_data[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \rx_data[9]_i_1__1 
       (.I0(\rx_data[39]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\rx_data[33]_i_2__1_n_0 ),
        .I3(\rx_data[31]_i_2__1_n_0 ),
        .I4(\rx_data[15]_i_2__1_n_0 ),
        .I5(\rx_data_reg_n_0_[9] ),
        .O(\rx_data[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[0]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[10]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[11]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[12]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[13]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[14]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[15]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[16]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[17]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[18]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[19]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[1]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[20]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[21]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[22]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[23]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[24]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[25]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[26]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[27]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[28]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[29]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[2]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[30]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[31]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[32] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[32]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[33] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[33]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[34] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[34]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[35] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[35]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[36] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[36]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[37] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[37]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[38] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[38]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[39] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[39]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[3]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[4]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[5]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[6]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[7]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[8]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\rx_data[9]_i_1__1_n_0 ),
        .Q(\rx_data_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 rx_index0_carry
       (.CI(1'b0),
        .CO({rx_index0_carry_n_0,rx_index0_carry_n_1,rx_index0_carry_n_2,rx_index0_carry_n_3}),
        .CYINIT(\rx_index_reg_n_0_[0] ),
        .DI({\rx_index_reg_n_0_[4] ,\rx_index_reg_n_0_[3] ,\rx_index_reg_n_0_[2] ,\rx_index_reg_n_0_[1] }),
        .O({rx_index0_carry_n_4,rx_index0_carry_n_5,rx_index0_carry_n_6,rx_index0_carry_n_7}),
        .S({rx_index0_carry_i_1__1_n_0,rx_index0_carry_i_2__1_n_0,rx_index0_carry_i_3__1_n_0,rx_index0_carry_i_4__1_n_0}));
  CARRY4 rx_index0_carry__0
       (.CI(rx_index0_carry_n_0),
        .CO({rx_index0_carry__0_n_0,rx_index0_carry__0_n_1,rx_index0_carry__0_n_2,rx_index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[8] ,\rx_index_reg_n_0_[7] ,\rx_index_reg_n_0_[6] ,\rx_index_reg_n_0_[5] }),
        .O({rx_index0_carry__0_n_4,rx_index0_carry__0_n_5,rx_index0_carry__0_n_6,rx_index0_carry__0_n_7}),
        .S({rx_index0_carry__0_i_1__1_n_0,rx_index0_carry__0_i_2__1_n_0,rx_index0_carry__0_i_3__1_n_0,rx_index0_carry__0_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_1__1
       (.I0(\rx_index_reg_n_0_[8] ),
        .O(rx_index0_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_2__1
       (.I0(\rx_index_reg_n_0_[7] ),
        .O(rx_index0_carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_3__1
       (.I0(\rx_index_reg_n_0_[6] ),
        .O(rx_index0_carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__0_i_4__1
       (.I0(\rx_index_reg_n_0_[5] ),
        .O(rx_index0_carry__0_i_4__1_n_0));
  CARRY4 rx_index0_carry__1
       (.CI(rx_index0_carry__0_n_0),
        .CO({rx_index0_carry__1_n_0,rx_index0_carry__1_n_1,rx_index0_carry__1_n_2,rx_index0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[12] ,\rx_index_reg_n_0_[11] ,\rx_index_reg_n_0_[10] ,\rx_index_reg_n_0_[9] }),
        .O({rx_index0_carry__1_n_4,rx_index0_carry__1_n_5,rx_index0_carry__1_n_6,rx_index0_carry__1_n_7}),
        .S({rx_index0_carry__1_i_1__1_n_0,rx_index0_carry__1_i_2__1_n_0,rx_index0_carry__1_i_3__1_n_0,rx_index0_carry__1_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_1__1
       (.I0(\rx_index_reg_n_0_[12] ),
        .O(rx_index0_carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_2__1
       (.I0(\rx_index_reg_n_0_[11] ),
        .O(rx_index0_carry__1_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_3__1
       (.I0(\rx_index_reg_n_0_[10] ),
        .O(rx_index0_carry__1_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__1_i_4__1
       (.I0(\rx_index_reg_n_0_[9] ),
        .O(rx_index0_carry__1_i_4__1_n_0));
  CARRY4 rx_index0_carry__2
       (.CI(rx_index0_carry__1_n_0),
        .CO({rx_index0_carry__2_n_0,rx_index0_carry__2_n_1,rx_index0_carry__2_n_2,rx_index0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[16] ,\rx_index_reg_n_0_[15] ,\rx_index_reg_n_0_[14] ,\rx_index_reg_n_0_[13] }),
        .O({rx_index0_carry__2_n_4,rx_index0_carry__2_n_5,rx_index0_carry__2_n_6,rx_index0_carry__2_n_7}),
        .S({rx_index0_carry__2_i_1__1_n_0,rx_index0_carry__2_i_2__1_n_0,rx_index0_carry__2_i_3__1_n_0,rx_index0_carry__2_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_1__1
       (.I0(\rx_index_reg_n_0_[16] ),
        .O(rx_index0_carry__2_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_2__1
       (.I0(\rx_index_reg_n_0_[15] ),
        .O(rx_index0_carry__2_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_3__1
       (.I0(\rx_index_reg_n_0_[14] ),
        .O(rx_index0_carry__2_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__2_i_4__1
       (.I0(\rx_index_reg_n_0_[13] ),
        .O(rx_index0_carry__2_i_4__1_n_0));
  CARRY4 rx_index0_carry__3
       (.CI(rx_index0_carry__2_n_0),
        .CO({rx_index0_carry__3_n_0,rx_index0_carry__3_n_1,rx_index0_carry__3_n_2,rx_index0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[20] ,\rx_index_reg_n_0_[19] ,\rx_index_reg_n_0_[18] ,\rx_index_reg_n_0_[17] }),
        .O({rx_index0_carry__3_n_4,rx_index0_carry__3_n_5,rx_index0_carry__3_n_6,rx_index0_carry__3_n_7}),
        .S({rx_index0_carry__3_i_1__1_n_0,rx_index0_carry__3_i_2__1_n_0,rx_index0_carry__3_i_3__1_n_0,rx_index0_carry__3_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_1__1
       (.I0(\rx_index_reg_n_0_[20] ),
        .O(rx_index0_carry__3_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_2__1
       (.I0(\rx_index_reg_n_0_[19] ),
        .O(rx_index0_carry__3_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_3__1
       (.I0(\rx_index_reg_n_0_[18] ),
        .O(rx_index0_carry__3_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__3_i_4__1
       (.I0(\rx_index_reg_n_0_[17] ),
        .O(rx_index0_carry__3_i_4__1_n_0));
  CARRY4 rx_index0_carry__4
       (.CI(rx_index0_carry__3_n_0),
        .CO({rx_index0_carry__4_n_0,rx_index0_carry__4_n_1,rx_index0_carry__4_n_2,rx_index0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[24] ,\rx_index_reg_n_0_[23] ,\rx_index_reg_n_0_[22] ,\rx_index_reg_n_0_[21] }),
        .O({rx_index0_carry__4_n_4,rx_index0_carry__4_n_5,rx_index0_carry__4_n_6,rx_index0_carry__4_n_7}),
        .S({rx_index0_carry__4_i_1__1_n_0,rx_index0_carry__4_i_2__1_n_0,rx_index0_carry__4_i_3__1_n_0,rx_index0_carry__4_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_1__1
       (.I0(\rx_index_reg_n_0_[24] ),
        .O(rx_index0_carry__4_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_2__1
       (.I0(\rx_index_reg_n_0_[23] ),
        .O(rx_index0_carry__4_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_3__1
       (.I0(\rx_index_reg_n_0_[22] ),
        .O(rx_index0_carry__4_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__4_i_4__1
       (.I0(\rx_index_reg_n_0_[21] ),
        .O(rx_index0_carry__4_i_4__1_n_0));
  CARRY4 rx_index0_carry__5
       (.CI(rx_index0_carry__4_n_0),
        .CO({rx_index0_carry__5_n_0,rx_index0_carry__5_n_1,rx_index0_carry__5_n_2,rx_index0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\rx_index_reg_n_0_[28] ,\rx_index_reg_n_0_[27] ,\rx_index_reg_n_0_[26] ,\rx_index_reg_n_0_[25] }),
        .O({rx_index0_carry__5_n_4,rx_index0_carry__5_n_5,rx_index0_carry__5_n_6,rx_index0_carry__5_n_7}),
        .S({rx_index0_carry__5_i_1__1_n_0,rx_index0_carry__5_i_2__1_n_0,rx_index0_carry__5_i_3__1_n_0,rx_index0_carry__5_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_1__1
       (.I0(\rx_index_reg_n_0_[28] ),
        .O(rx_index0_carry__5_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_2__1
       (.I0(\rx_index_reg_n_0_[27] ),
        .O(rx_index0_carry__5_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_3__1
       (.I0(\rx_index_reg_n_0_[26] ),
        .O(rx_index0_carry__5_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__5_i_4__1
       (.I0(\rx_index_reg_n_0_[25] ),
        .O(rx_index0_carry__5_i_4__1_n_0));
  CARRY4 rx_index0_carry__6
       (.CI(rx_index0_carry__5_n_0),
        .CO({NLW_rx_index0_carry__6_CO_UNCONNECTED[3:2],rx_index0_carry__6_n_2,rx_index0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rx_index_reg_n_0_[30] ,\rx_index_reg_n_0_[29] }),
        .O({NLW_rx_index0_carry__6_O_UNCONNECTED[3],rx_index0_carry__6_n_5,rx_index0_carry__6_n_6,rx_index0_carry__6_n_7}),
        .S({1'b0,rx_index0_carry__6_i_1__1_n_0,rx_index0_carry__6_i_2__1_n_0,rx_index0_carry__6_i_3__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__6_i_1__1
       (.I0(\rx_index_reg_n_0_[31] ),
        .O(rx_index0_carry__6_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__6_i_2__1
       (.I0(\rx_index_reg_n_0_[30] ),
        .O(rx_index0_carry__6_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry__6_i_3__1
       (.I0(\rx_index_reg_n_0_[29] ),
        .O(rx_index0_carry__6_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_1__1
       (.I0(\rx_index_reg_n_0_[4] ),
        .O(rx_index0_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_2__1
       (.I0(\rx_index_reg_n_0_[3] ),
        .O(rx_index0_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_3__1
       (.I0(\rx_index_reg_n_0_[2] ),
        .O(rx_index0_carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rx_index0_carry_i_4__1
       (.I0(\rx_index_reg_n_0_[1] ),
        .O(rx_index0_carry_i_4__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rx_index[0]_i_1__1 
       (.I0(\rx_index_reg_n_0_[0] ),
        .O(\rx_index[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_index[31]_i_10__1 
       (.I0(\rx_index_reg_n_0_[18] ),
        .I1(\rx_index_reg_n_0_[20] ),
        .I2(\rx_index_reg_n_0_[19] ),
        .O(\rx_index[31]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'h0040004000000040)) 
    \rx_index[31]_i_1__1 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(\rx_index[31]_i_3__1_n_0 ),
        .I5(\rx_index[31]_i_4__1_n_0 ),
        .O(\rx_index[31]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0140014000000140)) 
    \rx_index[31]_i_2__1 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(\rx_index[31]_i_3__1_n_0 ),
        .I5(\rx_index[31]_i_4__1_n_0 ),
        .O(\rx_index[31]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \rx_index[31]_i_3__1 
       (.I0(\rx_index_reg_n_0_[6] ),
        .I1(\rx_index_reg_n_0_[5] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .I3(\rx_index[31]_i_5__1_n_0 ),
        .I4(\rx_index[31]_i_6__1_n_0 ),
        .I5(\rx_index[31]_i_7__1_n_0 ),
        .O(\rx_index[31]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rx_index[31]_i_4__1 
       (.I0(\rx_index[31]_i_8__1_n_0 ),
        .I1(\rx_index_reg_n_0_[16] ),
        .I2(\rx_index_reg_n_0_[17] ),
        .I3(\rx_index_reg_n_0_[23] ),
        .I4(\rx_index_reg_n_0_[21] ),
        .I5(\rx_index[31]_i_9__1_n_0 ),
        .O(\rx_index[31]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_index[31]_i_5__1 
       (.I0(\rx_index_reg_n_0_[12] ),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[10] ),
        .I3(\rx_index_reg_n_0_[9] ),
        .O(\rx_index[31]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_index[31]_i_6__1 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .I2(\rx_index_reg_n_0_[31] ),
        .I3(\rx_index_reg_n_0_[15] ),
        .O(\rx_index[31]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rx_index[31]_i_7__1 
       (.I0(\rx_index_reg_n_0_[13] ),
        .I1(\rx_index_reg_n_0_[14] ),
        .I2(\rx_index_reg_n_0_[7] ),
        .I3(\rx_index_reg_n_0_[8] ),
        .I4(\rx_index_reg_n_0_[4] ),
        .I5(\rx_index_reg_n_0_[3] ),
        .O(\rx_index[31]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_index[31]_i_8__1 
       (.I0(\rx_index_reg_n_0_[24] ),
        .I1(\rx_index_reg_n_0_[22] ),
        .I2(\rx_index_reg_n_0_[25] ),
        .I3(\rx_index_reg_n_0_[26] ),
        .I4(\rx_index_reg_n_0_[27] ),
        .O(\rx_index[31]_i_8__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_index[31]_i_9__1 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\rx_index_reg_n_0_[30] ),
        .I2(\rx_index_reg_n_0_[29] ),
        .I3(\rx_index_reg_n_0_[28] ),
        .I4(\rx_index[31]_i_10__1_n_0 ),
        .O(\rx_index[31]_i_9__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(\rx_index[0]_i_1__1_n_0 ),
        .Q(\rx_index_reg_n_0_[0] ),
        .S(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__1_n_6),
        .Q(\rx_index_reg_n_0_[10] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__1_n_5),
        .Q(\rx_index_reg_n_0_[11] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__1_n_4),
        .Q(\rx_index_reg_n_0_[12] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__2_n_7),
        .Q(\rx_index_reg_n_0_[13] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__2_n_6),
        .Q(\rx_index_reg_n_0_[14] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__2_n_5),
        .Q(\rx_index_reg_n_0_[15] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__2_n_4),
        .Q(\rx_index_reg_n_0_[16] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__3_n_7),
        .Q(\rx_index_reg_n_0_[17] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__3_n_6),
        .Q(\rx_index_reg_n_0_[18] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__3_n_5),
        .Q(\rx_index_reg_n_0_[19] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry_n_7),
        .Q(\rx_index_reg_n_0_[1] ),
        .S(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__3_n_4),
        .Q(\rx_index_reg_n_0_[20] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__4_n_7),
        .Q(\rx_index_reg_n_0_[21] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__4_n_6),
        .Q(\rx_index_reg_n_0_[22] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__4_n_5),
        .Q(\rx_index_reg_n_0_[23] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__4_n_4),
        .Q(\rx_index_reg_n_0_[24] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__5_n_7),
        .Q(\rx_index_reg_n_0_[25] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__5_n_6),
        .Q(\rx_index_reg_n_0_[26] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__5_n_5),
        .Q(\rx_index_reg_n_0_[27] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__5_n_4),
        .Q(\rx_index_reg_n_0_[28] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__6_n_7),
        .Q(\rx_index_reg_n_0_[29] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry_n_6),
        .Q(\rx_index_reg_n_0_[2] ),
        .S(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__6_n_6),
        .Q(\rx_index_reg_n_0_[30] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__6_n_5),
        .Q(\rx_index_reg_n_0_[31] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry_n_5),
        .Q(\rx_index_reg_n_0_[3] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry_n_4),
        .Q(\rx_index_reg_n_0_[4] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rx_index_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__0_n_7),
        .Q(\rx_index_reg_n_0_[5] ),
        .S(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__0_n_6),
        .Q(\rx_index_reg_n_0_[6] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__0_n_5),
        .Q(\rx_index_reg_n_0_[7] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__0_n_4),
        .Q(\rx_index_reg_n_0_[8] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\rx_index[31]_i_2__1_n_0 ),
        .D(rx_index0_carry__1_n_7),
        .Q(\rx_index_reg_n_0_[9] ),
        .R(\rx_index[31]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    s_data_ctrl1_i_1__1
       (.I0(s_data_ctrl_tristate_oe_reg_0),
        .I1(s_data_ctrl1_reg_0),
        .O(s_data_ctrl));
  FDRE s_data_ctrl1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_ctrl),
        .Q(T),
        .R(1'b0));
  FDRE s_data_ctrl_tristate_oe_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_ctrl_tristate_oe_reg_1),
        .Q(s_data_ctrl_tristate_oe_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    s_data_in_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_in1),
        .Q(s_data_in_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_data_out1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_out_reg_n_0),
        .Q(I),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    s_data_out_i_1__1
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(s_data_out_reg_n_0),
        .O(s_data_out_i_1__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    s_data_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s_data_out_i_1__1_n_0),
        .Q(s_data_out_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA0A0EFE0)) 
    \state_am2302[0]_i_1__1 
       (.I0(\state_am2302[0]_i_2__1_n_0 ),
        .I1(\state_am2302[3]_i_6__1_n_0 ),
        .I2(\state_am2302[3]_i_7__1_n_0 ),
        .I3(\state_am2302[3]_i_8__1_n_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001FF0100)) 
    \state_am2302[0]_i_2__1 
       (.I0(\state_am2302[3]_i_10__1_n_0 ),
        .I1(\state_am2302[3]_i_11__1_n_0 ),
        .I2(\state_am2302[3]_i_12__1_n_0 ),
        .I3(\state_am2302[3]_i_13__1_n_0 ),
        .I4(\state_am2302[3]_i_14__1_n_0 ),
        .I5(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFE00FA00FA00)) 
    \state_am2302[1]_i_1__1 
       (.I0(\state_am2302[1]_i_2__1_n_0 ),
        .I1(\state_am2302[3]_i_6__1_n_0 ),
        .I2(\state_am2302[1]_i_3__1_n_0 ),
        .I3(\state_am2302[3]_i_7__1_n_0 ),
        .I4(\state_am2302[3]_i_8__1_n_0 ),
        .I5(\state_am2302[1]_i_4__1_n_0 ),
        .O(\state_am2302[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h0802A0A0)) 
    \state_am2302[1]_i_2__1 
       (.I0(\state_am2302[3]_i_14__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h1100002210000020)) 
    \state_am2302[1]_i_3__1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302[3]_i_10__1_n_0 ),
        .I3(\state_am2302_reg[1]_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .I5(\state_am2302[3]_i_12__1_n_0 ),
        .O(\state_am2302[1]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state_am2302[1]_i_4__1 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .O(\state_am2302[1]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFE00FA00FA00)) 
    \state_am2302[2]_i_1__1 
       (.I0(\state_am2302[2]_i_2__1_n_0 ),
        .I1(\state_am2302[3]_i_6__1_n_0 ),
        .I2(\state_am2302[2]_i_3__1_n_0 ),
        .I3(\state_am2302[3]_i_7__1_n_0 ),
        .I4(\state_am2302[3]_i_8__1_n_0 ),
        .I5(\state_am2302[2]_i_4__1_n_0 ),
        .O(\state_am2302[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h0880A800)) 
    \state_am2302[2]_i_2__1 
       (.I0(\state_am2302[3]_i_14__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000500A00005008)) 
    \state_am2302[2]_i_3__1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302[3]_i_10__1_n_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[0]_0 ),
        .I4(\state_am2302_reg[2]_0 ),
        .I5(\state_am2302[3]_i_12__1_n_0 ),
        .O(\state_am2302[2]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \state_am2302[2]_i_4__1 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .O(\state_am2302[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_am2302[3]_i_10__1 
       (.I0(\state_am2302[3]_i_20__1_n_0 ),
        .I1(\state_am2302[3]_i_21__1_n_0 ),
        .I2(\rx_index_reg_n_0_[1] ),
        .I3(\rx_index_reg_n_0_[2] ),
        .I4(\rx_index_reg_n_0_[0] ),
        .I5(\state_am2302[3]_i_22__1_n_0 ),
        .O(\state_am2302[3]_i_10__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h453D)) 
    \state_am2302[3]_i_11__1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .O(\state_am2302[3]_i_11__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state_am2302[3]_i_12__1 
       (.I0(\rx_index_reg_n_0_[31] ),
        .I1(\rx_index_reg_n_0_[30] ),
        .I2(\rx_index_reg_n_0_[29] ),
        .I3(\rx_index_reg_n_0_[27] ),
        .I4(\rx_index_reg_n_0_[28] ),
        .O(\state_am2302[3]_i_12__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h032C)) 
    \state_am2302[3]_i_13__1 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[2]_0 ),
        .I2(\state_am2302_reg[1]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .O(\state_am2302[3]_i_13__1_n_0 ));
  LUT4 #(
    .INIT(16'hFCAC)) 
    \state_am2302[3]_i_14__1 
       (.I0(\rx_data[31]_i_4__1_n_0 ),
        .I1(\state_am2302[3]_i_23__1_n_0 ),
        .I2(\state_am2302[3]_i_11__1_n_0 ),
        .I3(\rx_data[39]_i_2__1_n_0 ),
        .O(\state_am2302[3]_i_14__1_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_15__1 
       (.I0(\rx_data_reg_n_0_[7] ),
        .I1(\plusOp_inferred__3/i___2_carry__0_n_4 ),
        .I2(\rx_data_reg_n_0_[6] ),
        .I3(\plusOp_inferred__3/i___2_carry__0_n_5 ),
        .O(\state_am2302[3]_i_15__1_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_16__1 
       (.I0(\rx_data_reg_n_0_[5] ),
        .I1(\plusOp_inferred__3/i___2_carry__0_n_6 ),
        .I2(\rx_data_reg_n_0_[2] ),
        .I3(\plusOp_inferred__3/i___2_carry_n_5 ),
        .O(\state_am2302[3]_i_16__1_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_17__1 
       (.I0(\rx_data_reg_n_0_[1] ),
        .I1(\plusOp_inferred__3/i___2_carry_n_6 ),
        .I2(\rx_data_reg_n_0_[0] ),
        .I3(\plusOp_inferred__3/i___2_carry_n_7 ),
        .O(\state_am2302[3]_i_17__1_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \state_am2302[3]_i_18__1 
       (.I0(\rx_data_reg_n_0_[4] ),
        .I1(\plusOp_inferred__3/i___2_carry__0_n_7 ),
        .I2(\rx_data_reg_n_0_[3] ),
        .I3(\plusOp_inferred__3/i___2_carry_n_4 ),
        .O(\state_am2302[3]_i_18__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003333322)) 
    \state_am2302[3]_i_19__1 
       (.I0(\us_count[7]_i_7__1_n_0 ),
        .I1(\state_am2302[3]_i_24__1_n_0 ),
        .I2(\state_am2302[3]_i_25__1_n_0 ),
        .I3(\us_count_reg_n_0_[3] ),
        .I4(\us_count_reg_n_0_[4] ),
        .I5(\us_count_reg_n_0_[5] ),
        .O(\state_am2302[3]_i_19__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAFAFAEEEEAAEE)) 
    \state_am2302[3]_i_1__1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302[3]_i_3__1_n_0 ),
        .I2(\state_am2302[3]_i_4__1_n_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(s_data_in_reg_n_0),
        .I5(\state_am2302_reg[0]_0 ),
        .O(\state_am2302[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_am2302[3]_i_20__1 
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(\rx_index_reg_n_0_[5] ),
        .I2(\rx_index_reg_n_0_[3] ),
        .I3(\rx_index_reg_n_0_[7] ),
        .I4(\rx_index_reg_n_0_[8] ),
        .I5(\rx_index_reg_n_0_[6] ),
        .O(\state_am2302[3]_i_20__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_am2302[3]_i_21__1 
       (.I0(\rx_index_reg_n_0_[25] ),
        .I1(\rx_index_reg_n_0_[26] ),
        .I2(\rx_index_reg_n_0_[24] ),
        .I3(\state_am2302[3]_i_26__1_n_0 ),
        .O(\state_am2302[3]_i_21__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \state_am2302[3]_i_22__1 
       (.I0(\state_am2302[3]_i_27__1_n_0 ),
        .I1(\state_am2302[3]_i_28__1_n_0 ),
        .I2(\rx_index_reg_n_0_[23] ),
        .I3(\rx_index_reg_n_0_[21] ),
        .I4(\rx_index_reg_n_0_[22] ),
        .I5(\state_am2302[3]_i_29__1_n_0 ),
        .O(\state_am2302[3]_i_22__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h0C0C080A)) 
    \state_am2302[3]_i_23__1 
       (.I0(\state_am2302[3]_i_30__1_n_0 ),
        .I1(\state_am2302[3]_i_31__1_n_0 ),
        .I2(\us_count_reg_n_0_[7] ),
        .I3(\us_count_reg_n_0_[5] ),
        .I4(\us_count_reg_n_0_[6] ),
        .O(\state_am2302[3]_i_23__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state_am2302[3]_i_24__1 
       (.I0(\us_count_reg_n_0_[7] ),
        .I1(\us_count_reg_n_0_[6] ),
        .O(\state_am2302[3]_i_24__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state_am2302[3]_i_25__1 
       (.I0(\us_count_reg_n_0_[2] ),
        .I1(\us_count_reg_n_0_[1] ),
        .O(\state_am2302[3]_i_25__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_am2302[3]_i_26__1 
       (.I0(\rx_index_reg_n_0_[17] ),
        .I1(\rx_index_reg_n_0_[16] ),
        .I2(\rx_index_reg_n_0_[23] ),
        .I3(\rx_index_reg_n_0_[22] ),
        .O(\state_am2302[3]_i_26__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_am2302[3]_i_27__1 
       (.I0(\rx_index_reg_n_0_[10] ),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[9] ),
        .I3(\rx_index_reg_n_0_[13] ),
        .I4(\rx_index_reg_n_0_[14] ),
        .I5(\rx_index_reg_n_0_[12] ),
        .O(\state_am2302[3]_i_27__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state_am2302[3]_i_28__1 
       (.I0(\rx_index_reg_n_0_[19] ),
        .I1(\rx_index_reg_n_0_[20] ),
        .O(\state_am2302[3]_i_28__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \state_am2302[3]_i_29__1 
       (.I0(\rx_index_reg_n_0_[17] ),
        .I1(\rx_index_reg_n_0_[15] ),
        .I2(\rx_index_reg_n_0_[16] ),
        .I3(\rx_index_reg_n_0_[20] ),
        .I4(\rx_index_reg_n_0_[18] ),
        .I5(\rx_index_reg_n_0_[19] ),
        .O(\state_am2302[3]_i_29__1_n_0 ));
  LUT5 #(
    .INIT(32'hEFE0A0A0)) 
    \state_am2302[3]_i_2__1 
       (.I0(\state_am2302[3]_i_5__1_n_0 ),
        .I1(\state_am2302[3]_i_6__1_n_0 ),
        .I2(\state_am2302[3]_i_7__1_n_0 ),
        .I3(\state_am2302[3]_i_8__1_n_0 ),
        .I4(\state_am2302[3]_i_9__1_n_0 ),
        .O(\state_am2302[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \state_am2302[3]_i_30__1 
       (.I0(\us_count_reg_n_0_[5] ),
        .I1(\us_count_reg_n_0_[4] ),
        .I2(\us_count_reg_n_0_[3] ),
        .I3(\us_count_reg_n_0_[1] ),
        .I4(\us_count_reg_n_0_[2] ),
        .I5(\us_count_reg_n_0_[0] ),
        .O(\state_am2302[3]_i_30__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000070FFFFF)) 
    \state_am2302[3]_i_31__1 
       (.I0(\us_count_reg_n_0_[1] ),
        .I1(\us_count_reg_n_0_[0] ),
        .I2(\us_count_reg_n_0_[3] ),
        .I3(\us_count_reg_n_0_[2] ),
        .I4(\us_count_reg_n_0_[4] ),
        .I5(\us_count_reg_n_0_[6] ),
        .O(\state_am2302[3]_i_31__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAFAABBBBBBBB)) 
    \state_am2302[3]_i_3__1 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\ltOp_inferred__0/i__carry__2_n_3 ),
        .I2(\us_count[7]_i_4__1_n_0 ),
        .I3(clk_1ust_reg_n_0),
        .I4(clk_1us_reg_n_0),
        .I5(\state_am2302_reg[1]_0 ),
        .O(\state_am2302[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFF5F5F3F3F3F3)) 
    \state_am2302[3]_i_4__1 
       (.I0(s_data_in_reg_n_0),
        .I1(ltOp_carry__2_n_2),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\us_count[7]_i_5__1_n_0 ),
        .I4(\us_count[7]_i_6__1_n_0 ),
        .I5(\state_am2302_reg[1]_0 ),
        .O(\state_am2302[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h01FF010000000000)) 
    \state_am2302[3]_i_5__1 
       (.I0(\state_am2302[3]_i_10__1_n_0 ),
        .I1(\state_am2302[3]_i_11__1_n_0 ),
        .I2(\state_am2302[3]_i_12__1_n_0 ),
        .I3(\state_am2302[3]_i_13__1_n_0 ),
        .I4(\state_am2302[3]_i_14__1_n_0 ),
        .I5(\state_am2302[3]_i_9__1_n_0 ),
        .O(\state_am2302[3]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \state_am2302[3]_i_6__1 
       (.I0(\state_am2302[3]_i_13__1_n_0 ),
        .I1(\state_am2302[3]_i_15__1_n_0 ),
        .I2(\state_am2302[3]_i_16__1_n_0 ),
        .I3(\state_am2302[3]_i_17__1_n_0 ),
        .I4(\state_am2302[3]_i_18__1_n_0 ),
        .I5(\state_am2302[3]_i_11__1_n_0 ),
        .O(\state_am2302[3]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h42)) 
    \state_am2302[3]_i_7__1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .O(\state_am2302[3]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h14B7049515F705D5)) 
    \state_am2302[3]_i_8__1 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .I4(\state_am2302[3]_i_19__1_n_0 ),
        .I5(s_data_in_reg_n_0),
        .O(\state_am2302[3]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \state_am2302[3]_i_9__1 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .O(\state_am2302[3]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1__1_n_0 ),
        .D(\state_am2302[0]_i_1__1_n_0 ),
        .Q(\state_am2302_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1__1_n_0 ),
        .D(\state_am2302[1]_i_1__1_n_0 ),
        .Q(\state_am2302_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1__1_n_0 ),
        .D(\state_am2302[2]_i_1__1_n_0 ),
        .Q(\state_am2302_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_am2302_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state_am2302[3]_i_1__1_n_0 ),
        .D(\state_am2302[3]_i_2__1_n_0 ),
        .Q(\state_am2302_reg[3]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h307F7F7F30000000)) 
    \status[0]_i_1 
       (.I0(\status[0]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\status[0]_i_3__1_n_0 ),
        .I4(\status[0]_i_4__1_n_0 ),
        .I5(\status_reg[0]_0 ),
        .O(\status[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \status[0]_i_2__1 
       (.I0(\state_am2302[3]_i_15__1_n_0 ),
        .I1(\state_am2302[3]_i_16__1_n_0 ),
        .I2(\state_am2302[3]_i_17__1_n_0 ),
        .I3(\state_am2302[3]_i_18__1_n_0 ),
        .I4(\state_am2302_reg[1]_0 ),
        .I5(\state_am2302_reg[2]_0 ),
        .O(\status[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0040404040)) 
    \status[0]_i_3__1 
       (.I0(\us_count[7]_i_5__1_n_0 ),
        .I1(s_data_in_reg_n_0),
        .I2(\us_count[7]_i_6__1_n_0 ),
        .I3(\status[2]_i_6__1_n_0 ),
        .I4(\status[2]_i_5__1_n_0 ),
        .I5(\status[0]_i_5__1_n_0 ),
        .O(\status[0]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    \status[0]_i_4__1 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\state_am2302_reg[3]_0 ),
        .O(\status[0]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \status[0]_i_5__1 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .O(\status[0]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h3333F3FF33330100)) 
    \status[1]_i_1 
       (.I0(\status[2]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\status[2]_i_3__1_n_0 ),
        .I4(\status[2]_i_4__1_n_0 ),
        .I5(\status_reg[1]_0 ),
        .O(\status[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3C3F3FFC3C30100)) 
    \status[2]_i_1 
       (.I0(\status[2]_i_2__1_n_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\status[2]_i_3__1_n_0 ),
        .I4(\status[2]_i_4__1_n_0 ),
        .I5(\status_reg[2]_0 ),
        .O(\status[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \status[2]_i_2__1 
       (.I0(\state_am2302[3]_i_15__1_n_0 ),
        .I1(\state_am2302[3]_i_16__1_n_0 ),
        .I2(\state_am2302[3]_i_17__1_n_0 ),
        .I3(\state_am2302[3]_i_18__1_n_0 ),
        .O(\status[2]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \status[2]_i_3__1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[0]_0 ),
        .O(\status[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2A2A200)) 
    \status[2]_i_4__1 
       (.I0(\status[0]_i_4__1_n_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(\status[2]_i_5__1_n_0 ),
        .I4(\status[2]_i_6__1_n_0 ),
        .I5(\status[2]_i_7__1_n_0 ),
        .O(\status[2]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \status[2]_i_5__1 
       (.I0(\state_am2302_reg[1]_0 ),
        .I1(s_data_in_reg_n_0),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302[3]_i_23__1_n_0 ),
        .O(\status[2]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h00001100000F0F00)) 
    \status[2]_i_6__1 
       (.I0(\rx_data[31]_i_4__1_n_0 ),
        .I1(\rx_data[39]_i_2__1_n_0 ),
        .I2(\state_am2302[3]_i_19__1_n_0 ),
        .I3(\state_am2302_reg[0]_0 ),
        .I4(s_data_in_reg_n_0),
        .I5(\state_am2302_reg[1]_0 ),
        .O(\status[2]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004400000)) 
    \status[2]_i_7__1 
       (.I0(\state_am2302_reg[2]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(clk_1ust_reg_n_0),
        .I3(clk_1us_reg_n_0),
        .I4(s_data_in_reg_n_0),
        .I5(\us_count[7]_i_5__1_n_0 ),
        .O(\status[2]_i_7__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\status[0]_i_1_n_0 ),
        .Q(\status_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\status[1]_i_1_n_0 ),
        .Q(\status_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\status[2]_i_1_n_0 ),
        .Q(\status_reg[2]_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \us_cnt[0]_i_1__1 
       (.I0(us_cnt_reg__0[0]),
        .O(\us_cnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \us_cnt[1]_i_1__1 
       (.I0(us_cnt_reg__0[0]),
        .I1(us_cnt_reg__0[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \us_cnt[2]_i_1__1 
       (.I0(us_cnt_reg__0[0]),
        .I1(us_cnt_reg__0[1]),
        .I2(us_cnt_reg__0[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \us_cnt[3]_i_1__1 
       (.I0(us_cnt_reg__0[1]),
        .I1(us_cnt_reg__0[0]),
        .I2(us_cnt_reg__0[2]),
        .I3(us_cnt_reg__0[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \us_cnt[4]_i_1__1 
       (.I0(us_cnt_reg__0[2]),
        .I1(us_cnt_reg__0[0]),
        .I2(us_cnt_reg__0[1]),
        .I3(us_cnt_reg__0[3]),
        .I4(us_cnt_reg__0[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \us_cnt[5]_i_1__1 
       (.I0(us_cnt_reg__0[3]),
        .I1(us_cnt_reg__0[1]),
        .I2(us_cnt_reg__0[0]),
        .I3(us_cnt_reg__0[2]),
        .I4(us_cnt_reg__0[4]),
        .I5(us_cnt_reg__0[5]),
        .O(plusOp__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \us_cnt[6]_i_1__1 
       (.I0(\us_cnt[7]_i_4__1_n_0 ),
        .I1(us_cnt_reg__0[6]),
        .O(plusOp__1[6]));
  LUT3 #(
    .INIT(8'h31)) 
    \us_cnt[7]_i_1__1 
       (.I0(\us_cnt[7]_i_3__1_n_0 ),
        .I1(us_cnt_reg__0[7]),
        .I2(us_cnt_reg__0[6]),
        .O(\us_cnt[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \us_cnt[7]_i_2__1 
       (.I0(\us_cnt[7]_i_4__1_n_0 ),
        .I1(us_cnt_reg__0[6]),
        .I2(us_cnt_reg__0[7]),
        .O(plusOp__1[7]));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \us_cnt[7]_i_3__1 
       (.I0(us_cnt_reg__0[5]),
        .I1(us_cnt_reg__0[4]),
        .I2(us_cnt_reg__0[2]),
        .I3(us_cnt_reg__0[3]),
        .I4(us_cnt_reg__0[0]),
        .I5(us_cnt_reg__0[1]),
        .O(\us_cnt[7]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \us_cnt[7]_i_4__1 
       (.I0(us_cnt_reg__0[5]),
        .I1(us_cnt_reg__0[3]),
        .I2(us_cnt_reg__0[1]),
        .I3(us_cnt_reg__0[0]),
        .I4(us_cnt_reg__0[2]),
        .I5(us_cnt_reg__0[4]),
        .O(\us_cnt[7]_i_4__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\us_cnt[0]_i_1__1_n_0 ),
        .Q(us_cnt_reg__0[0]),
        .R(\us_cnt[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__1[1]),
        .Q(us_cnt_reg__0[1]),
        .R(\us_cnt[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__1[2]),
        .Q(us_cnt_reg__0[2]),
        .R(\us_cnt[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__1[3]),
        .Q(us_cnt_reg__0[3]),
        .R(\us_cnt[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__1[4]),
        .Q(us_cnt_reg__0[4]),
        .R(\us_cnt[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__1[5]),
        .Q(us_cnt_reg__0[5]),
        .R(\us_cnt[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__1[6]),
        .Q(us_cnt_reg__0[6]),
        .R(\us_cnt[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plusOp__1[7]),
        .Q(us_cnt_reg__0[7]),
        .R(\us_cnt[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A5ACA50C)) 
    \us_count[0]_i_1__1 
       (.I0(s_data_in_reg_n_0),
        .I1(\us_count[7]_i_4__1_n_0 ),
        .I2(\state_am2302_reg[0]_0 ),
        .I3(\state_am2302_reg[2]_0 ),
        .I4(\us_count[7]_i_5__1_n_0 ),
        .I5(\us_count_reg_n_0_[0] ),
        .O(\us_count[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \us_count[1]_i_1__1 
       (.I0(\us_count_reg_n_0_[0] ),
        .I1(\us_count_reg_n_0_[1] ),
        .O(\us_count[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \us_count[2]_i_1__1 
       (.I0(\us_count_reg_n_0_[1] ),
        .I1(\us_count_reg_n_0_[0] ),
        .I2(\us_count_reg_n_0_[2] ),
        .O(\us_count[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \us_count[3]_i_1__1 
       (.I0(\us_count_reg_n_0_[0] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[2] ),
        .I3(\us_count_reg_n_0_[3] ),
        .O(\us_count[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \us_count[4]_i_1__1 
       (.I0(\us_count_reg_n_0_[2] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[0] ),
        .I3(\us_count_reg_n_0_[3] ),
        .I4(\us_count_reg_n_0_[4] ),
        .O(\us_count[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \us_count[5]_i_1__1 
       (.I0(\us_count_reg_n_0_[3] ),
        .I1(\us_count_reg_n_0_[0] ),
        .I2(\us_count_reg_n_0_[1] ),
        .I3(\us_count_reg_n_0_[2] ),
        .I4(\us_count_reg_n_0_[4] ),
        .I5(\us_count_reg_n_0_[5] ),
        .O(\us_count[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \us_count[6]_i_1__1 
       (.I0(\us_count_reg_n_0_[4] ),
        .I1(\us_count_reg_n_0_[2] ),
        .I2(\us_count[6]_i_2__1_n_0 ),
        .I3(\us_count_reg_n_0_[3] ),
        .I4(\us_count_reg_n_0_[5] ),
        .I5(\us_count_reg_n_0_[6] ),
        .O(\us_count[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \us_count[6]_i_2__1 
       (.I0(\us_count_reg_n_0_[0] ),
        .I1(\us_count_reg_n_0_[1] ),
        .O(\us_count[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h2288220A2288AA0A)) 
    \us_count[7]_i_1__1 
       (.I0(us_count),
        .I1(s_data_in_reg_n_0),
        .I2(\us_count[7]_i_4__1_n_0 ),
        .I3(\state_am2302_reg[0]_0 ),
        .I4(\state_am2302_reg[2]_0 ),
        .I5(\us_count[7]_i_5__1_n_0 ),
        .O(\us_count[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h5454545400545000)) 
    \us_count[7]_i_2__1 
       (.I0(\state_am2302_reg[3]_0 ),
        .I1(\state_am2302_reg[1]_0 ),
        .I2(\state_am2302_reg[2]_0 ),
        .I3(s_data_in_reg_n_0),
        .I4(\state_am2302_reg[0]_0 ),
        .I5(\us_count[7]_i_6__1_n_0 ),
        .O(us_count));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \us_count[7]_i_3__1 
       (.I0(\us_count_reg_n_0_[5] ),
        .I1(\us_count_reg_n_0_[3] ),
        .I2(\us_count[7]_i_7__1_n_0 ),
        .I3(\us_count_reg_n_0_[4] ),
        .I4(\us_count_reg_n_0_[6] ),
        .I5(\us_count_reg_n_0_[7] ),
        .O(\us_count[7]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hFFFF0002)) 
    \us_count[7]_i_4__1 
       (.I0(\us_count[7]_i_8__1_n_0 ),
        .I1(\us_count_reg_n_0_[4] ),
        .I2(\us_count_reg_n_0_[5] ),
        .I3(\us_count_reg_n_0_[6] ),
        .I4(\us_count_reg_n_0_[7] ),
        .O(\us_count[7]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hCFFFCFDF)) 
    \us_count[7]_i_5__1 
       (.I0(\us_count_reg_n_0_[4] ),
        .I1(\us_count_reg_n_0_[7] ),
        .I2(\us_count_reg_n_0_[6] ),
        .I3(\us_count_reg_n_0_[5] ),
        .I4(\us_count[7]_i_8__1_n_0 ),
        .O(\us_count[7]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \us_count[7]_i_6__1 
       (.I0(clk_1us_reg_n_0),
        .I1(clk_1ust_reg_n_0),
        .O(\us_count[7]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \us_count[7]_i_7__1 
       (.I0(\us_count_reg_n_0_[2] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[0] ),
        .O(\us_count[7]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h001F)) 
    \us_count[7]_i_8__1 
       (.I0(\us_count_reg_n_0_[0] ),
        .I1(\us_count_reg_n_0_[1] ),
        .I2(\us_count_reg_n_0_[2] ),
        .I3(\us_count_reg_n_0_[3] ),
        .O(\us_count[7]_i_8__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[0]_i_1__1_n_0 ),
        .Q(\us_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[1]_i_1__1_n_0 ),
        .Q(\us_count_reg_n_0_[1] ),
        .R(\us_count[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[2]_i_1__1_n_0 ),
        .Q(\us_count_reg_n_0_[2] ),
        .R(\us_count[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[3]_i_1__1_n_0 ),
        .Q(\us_count_reg_n_0_[3] ),
        .R(\us_count[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[4]_i_1__1_n_0 ),
        .Q(\us_count_reg_n_0_[4] ),
        .R(\us_count[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[5]_i_1__1_n_0 ),
        .Q(\us_count_reg_n_0_[5] ),
        .R(\us_count[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[6]_i_1__1_n_0 ),
        .Q(\us_count_reg_n_0_[6] ),
        .R(\us_count[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \us_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(us_count),
        .D(\us_count[7]_i_3__1_n_0 ),
        .Q(\us_count_reg_n_0_[7] ),
        .R(\us_count[7]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \work_cnt[0]_i_1__1 
       (.I0(\state_am2302_reg[0]_0 ),
        .I1(\state_am2302_reg[3]_0 ),
        .I2(\ltOp_inferred__0/i__carry__2_n_3 ),
        .I3(\state_am2302_reg[1]_0 ),
        .I4(\state_am2302_reg[2]_0 ),
        .O(\work_cnt[0]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \work_cnt[0]_i_3__1 
       (.I0(work_cnt_reg[0]),
        .O(\work_cnt[0]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[0]_i_2__1_n_7 ),
        .Q(work_cnt_reg[0]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\work_cnt_reg[0]_i_2__1_n_0 ,\work_cnt_reg[0]_i_2__1_n_1 ,\work_cnt_reg[0]_i_2__1_n_2 ,\work_cnt_reg[0]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\work_cnt_reg[0]_i_2__1_n_4 ,\work_cnt_reg[0]_i_2__1_n_5 ,\work_cnt_reg[0]_i_2__1_n_6 ,\work_cnt_reg[0]_i_2__1_n_7 }),
        .S({work_cnt_reg[3:1],\work_cnt[0]_i_3__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[8]_i_1__1_n_5 ),
        .Q(work_cnt_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[8]_i_1__1_n_4 ),
        .Q(work_cnt_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[12]_i_1__1_n_7 ),
        .Q(work_cnt_reg[12]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[12]_i_1__1 
       (.CI(\work_cnt_reg[8]_i_1__1_n_0 ),
        .CO({\NLW_work_cnt_reg[12]_i_1__1_CO_UNCONNECTED [3],\work_cnt_reg[12]_i_1__1_n_1 ,\work_cnt_reg[12]_i_1__1_n_2 ,\work_cnt_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\work_cnt_reg[12]_i_1__1_n_4 ,\work_cnt_reg[12]_i_1__1_n_5 ,\work_cnt_reg[12]_i_1__1_n_6 ,\work_cnt_reg[12]_i_1__1_n_7 }),
        .S(work_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[12]_i_1__1_n_6 ),
        .Q(work_cnt_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[12]_i_1__1_n_5 ),
        .Q(work_cnt_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[12]_i_1__1_n_4 ),
        .Q(work_cnt_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[0]_i_2__1_n_6 ),
        .Q(work_cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[0]_i_2__1_n_5 ),
        .Q(work_cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[0]_i_2__1_n_4 ),
        .Q(work_cnt_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[4]_i_1__1_n_7 ),
        .Q(work_cnt_reg[4]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[4]_i_1__1 
       (.CI(\work_cnt_reg[0]_i_2__1_n_0 ),
        .CO({\work_cnt_reg[4]_i_1__1_n_0 ,\work_cnt_reg[4]_i_1__1_n_1 ,\work_cnt_reg[4]_i_1__1_n_2 ,\work_cnt_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\work_cnt_reg[4]_i_1__1_n_4 ,\work_cnt_reg[4]_i_1__1_n_5 ,\work_cnt_reg[4]_i_1__1_n_6 ,\work_cnt_reg[4]_i_1__1_n_7 }),
        .S(work_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[4]_i_1__1_n_6 ),
        .Q(work_cnt_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[4]_i_1__1_n_5 ),
        .Q(work_cnt_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[4]_i_1__1_n_4 ),
        .Q(work_cnt_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[8]_i_1__1_n_7 ),
        .Q(work_cnt_reg[8]),
        .R(1'b0));
  CARRY4 \work_cnt_reg[8]_i_1__1 
       (.CI(\work_cnt_reg[4]_i_1__1_n_0 ),
        .CO({\work_cnt_reg[8]_i_1__1_n_0 ,\work_cnt_reg[8]_i_1__1_n_1 ,\work_cnt_reg[8]_i_1__1_n_2 ,\work_cnt_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\work_cnt_reg[8]_i_1__1_n_4 ,\work_cnt_reg[8]_i_1__1_n_5 ,\work_cnt_reg[8]_i_1__1_n_6 ,\work_cnt_reg[8]_i_1__1_n_7 }),
        .S(work_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \work_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\work_cnt[0]_i_1__1_n_0 ),
        .D(\work_cnt_reg[8]_i_1__1_n_6 ),
        .Q(work_cnt_reg[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_AM2302_0_0,AM2302_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "AM2302_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (AM2302_SDA_1,
    AM2302_SDA_2,
    AM2302_SDA_3,
    AM2302_SDA_1_ctrl,
    AM2302_SDA_2_ctrl,
    AM2302_SDA_3_ctrl,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  inout AM2302_SDA_1;
  inout AM2302_SDA_2;
  inout AM2302_SDA_3;
  output AM2302_SDA_1_ctrl;
  output AM2302_SDA_2_ctrl;
  output AM2302_SDA_3_ctrl;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 9, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire AM2302_SDA_1;
  wire AM2302_SDA_1_ctrl;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire AM2302_SDA_2;
  wire AM2302_SDA_2_ctrl;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire AM2302_SDA_3;
  wire AM2302_SDA_3_ctrl;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AM2302_v1_0 U0
       (.AM2302_SDA_1(AM2302_SDA_1),
        .AM2302_SDA_1_ctrl(AM2302_SDA_1_ctrl),
        .AM2302_SDA_2(AM2302_SDA_2),
        .AM2302_SDA_2_ctrl(AM2302_SDA_2_ctrl),
        .AM2302_SDA_3(AM2302_SDA_3),
        .AM2302_SDA_3_ctrl(AM2302_SDA_3_ctrl),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
