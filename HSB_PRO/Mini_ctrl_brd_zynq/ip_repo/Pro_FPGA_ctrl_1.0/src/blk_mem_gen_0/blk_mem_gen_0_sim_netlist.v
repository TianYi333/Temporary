// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri May 16 13:47:16 2025
// Host        : DESKTOP-NM77GB4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/FPGA/Custom_IP/ip_repo/Pro_FPGA_ctrl_1.0/src/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3933 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19728)
`pragma protect data_block
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
jqJsKi0L
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
