// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri May 16 13:49:11 2025
// Host        : DESKTOP-NM77GB4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/FPGA/Custom_IP/ip_repo/Pro_FPGA_ctrl_1.0/src/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.652799 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43312)
`pragma protect data_block
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
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
