// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri May 16 13:42:39 2025
// Host        : DESKTOP-NM77GB4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/FPGA/Custom_IP/ip_repo/Pro_FPGA_ctrl_1.0/src/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_17,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [16:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "17" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "17" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_gen_0_mult_gen_v12_0_17 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OWAggS0mE6JxmIlB4IqLhyMXRYPJs2DDE2a2JuZy5MB/PdXC/CaU/QRB+AqcK6JP4szhXBycSS8z
iqxQxDTUg4A3iOIyJWDbM6Yncj1VoDx+K0dqn0H+Ux6ekz1SBdoBO4EU4Q5HLCtXLJW8EgM4jzqP
00dxe67N+SsT04R4oZY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W60eta8irdb38mdRDzCg4GlgwIYW3/Lru9l+tJih4ChBAcKfnfaR/vOiTL+ROuIZKJnwzJcrpzmt
gvCgGzHC7YTXilcaPZwKLJGNDJz1ephChHv+dU3RVUsAD/2hTtCy4ufxwBlvovQkfC/Lj1duYn0h
OSEhgHWR+DeMUPK2qQQbBb9ABKyCPg4Lz4jFlEL0WZOm0tl9WkZ2Rm3weM0zt1B539Waq4iEp23R
cjqiwLGibXKz4dVw0e8sQSzt2A1TAWBrBGX3u9QEmYGTRB5cP/N+EuOZmOBNhHzRMDgHUduPy9IS
T0HpKpqzIIZ0OwjalMVA697TIeOPpprjIuzHBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M3QC1E4EAgFwAqgbMpRj62ZSqGtwACtMfRQvzY5xpdVjwZ2o2aUOzqn08h+DpIbitujiMLpxPUyY
lcPiiMFuzADP0+HvnkKh+nqlni8Fnu+SpjDueyH4bQJ2dEx4L2m6E/ZRMYE/21qZ+IL9Mdwhy2zM
6J4NpTA3GU+XaQ48wh0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Joy1pwH/OfLUGgLJRqMOST5TZobooPL/KHnb20ZjYwOKq7TVLXA6nkZ+J/8E9K70lSRvS1UpSRH0
t5Xf+iolfdIIM7/OPQhbsr7sGEWHdc0Q64eg+2GGAtSF2BZhsT705w77/DIW4nJKkUpC+VtMtRti
4i/AZB4v3m63KchVydIiWT2eypZaOcJdUaYuq7w3OS5NU1piGksgHh5Xb+szulbvxqFKE4Euv4Yx
O7uUo/+9PH/CzsgmGmKDh2HAp7VMhCk1Hmog74d7Pl7wyr3Y4dBrBBjw1c9mS9qqLDPt/gNTlehB
iOvhgs2sgiqrvmfcmcjLfXJB/a6mYZAOTPKzdA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g5GY+ruVbJTSNLBZAxKMjzWHqiIBBFLVm0mTIk/27vAJCn/7qN2eNybonN/BbLo0bhsIPnygWtUL
HnBzb30j9hTIkOmb4h3ghEtCopb8bWgen8W+K7lAXMMqSm7UP7SZS+oM+10KcJe73JRSORmhfQmO
1F9OJcu1SAirUVlJoJqHPQM+dVcXzqk6Cy0tnQfjOZzeDPrV6KdMtxexq8eq6tFX+nHwbh71bmwl
4OMHzfEhBHHlRAUDFfsH8FYwkZAH2dnFSqcyb8m+vXobKB4O1tVszhDIgza9r+ofijta9/KCeReP
oi5b+rs6mP4QE2kKqCEN3629NW5mbzUug9MxiA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HNsfBze5a6QtwiAVnGLfFdHHbrU0Oi1c4+CJlHFAOZfXnXZ/b0aEkATWnGGXfvTJAl/Vcr9Whmt+
ekNOhMdu6oXKJ+MJfm2u2jzE3biF+Xa2B9OUw2cnR3sWidPCSfrg1AS5LI2BdlfVD335L8jMJwSV
9dfiE+IthObOKpmZsPiY8zMjdsXwLNxi03pCI8Xly1WwfwvnPHx8W9QTlilHJGrd8NoS1J4RBmrZ
V4U7cpvPr5rFlz0kaBhufye7oY6yr+YRvjdzygxJ9Is4LecDDaRMF4r1PTAtwheEd5a3Fpb6OLzb
12VR4H77zZWEihgmoRyssQ/RlLdENnMf74PhDA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qajdWELb7xq5MRKDXqbY5G9KalZ6KvS/OFspNPgehavTLyCjfNFwOe7rD6u4OQ9DhpFj21XMOcHT
4IpirpdyiIXOWlDbI0L7UF7fg+oZhywH/4zzeLjKZ1VuNWMxku8tJIciokgfgS0Rc5zJRkFE1fFh
XqKbA8o5V2On2ZWFsxXRHCowiAVXpEbk4hoxIV8L5vuYfM+LmEAQrfNmzVr7ggxMKIAYY8HGsD5y
y68JxstiU/xG1rcmnjRIdeZIHXXBRuFGZjouuAthvqQCk4Aqa0dBLg1Pa5bvF8xwe+FNLdELWLsI
p4Imohkk8nqjgLE5kfHUvK6lNSUTJIGtfR7lWQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
G99JGOPeAWEzvhKOQHBjIJBTWpBqc6eHcwpnoconyJGsCO3rY4RPzw0sPWdTfUbZVf28/xzMdMAw
5Bl0VSYMJ3cfG3uenDKsZF2v9KBin+XsJwfKWs/gxK9A2D8qVJQyLd4ION84axXVPxfI5Gzv2FIm
d2V4C4p5YxpnLiGdskIrPJ2AAa4yZEeWuN01HCD/W+H9Ca3vsRn+2VmFDJbOHyec2GOMH66evWmZ
AlFNPDQSwT+6TVCHFXgpOYsFwwIg3mVZl2EBK7oPx1QESXZOnOLee+VELSumkJOFUI2v3kGFm4+2
yANu0tMCR+Ch57FICMokLG1y7s0yZ7DCuokjx1SKM3Ap/yHSSjBMyE6cOAjHL+oF9ZHdDbGV5v0U
s6Ses23kmJMCOcHQDKgORHBaU5DaZgcdobyCs2MMkJo9CarOL4u/Feim00de/2xjgBS0jQPmVxYI
DV5Y6z4b2qpXJD9yvkwweqY8ZifrG3dHasuUscjtRiYqbLIMonADOsos

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Yg8e7EeHtxErkKZVvi6QJXJCvHzYThtbtZDWYWwhr0hMZCh7wlRPMUDcoEsUXREL9HKBlNIU/8Ip
RFJXEQyG4fzyXOfxoqTV5aFAlBcJbbBITUlrf6b/PM/ef8SPakuJVxDFuGpznAfWV7MaQwD4pGCi
1hZVmFLCjiNVZ/pcZslIeU1yCGclZYjf4Ru+ChXq4zcRuRDybOhAnvOk6/sQJZHGiDiA/H5Lghki
plk50q2/VS4rx+xPeNogEvz/tKK3mUhK/3Sx0BqDTR9u+8Ltxs+0gK55oKH0CNj0HtBdvVId3fDy
w5WvPz8SmltzhMCYDtDP+iKXf+EKR9m/Co0FQA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Woh8KZqBYO7BQ/7GQ+kpM0exXqcqgDpLiKFSQQjcR6e5QNgv4HvPagp0VY7UswR5pYpBMl5l2rEf
6VYLhyvoxxoGl9qQYzRl/zagJi1nH+1kOitIJ/txlwhQbJlEKoP0DQUIYdAwh/SizXvu1fNeTGf/
8Z6R8A77M3KQjx0o5mfv8nZM1S6Tr2PkTaQHnjvPvebM2vGrHxJwAC7AigmVBDkDgeEyg+ibVkKk
TUaprfU4s+ZtTFU4YunuzVF7dLIUTQVXDNx8FpHku+uYU6p0nXd/vvW0tQ1PkXCUd7Wv56VZLtO9
GesCXlInqMtsRExno3imTnqVScl2YWo26FenLg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0iL/Xp5u/ZTwiJ+wL/Cik4EB8NORd3z442CFlxibUGSekx/FbmbYI7EnvhWIFxkW9zSzwI34tOc9
6hmjCq3bQfAfsENTCqW7Ld1EVFfIY1MPwhhVsIt0OSoomLqZnwsPmUyQlgDQulr7EVaZVz1tCTIN
jdv/crNC+8uUoLlGkTYubtxyLbYKqO1coSMRWhV3KgfK4+3/KbmgFuspN5oOtjiQaRYTk7Jy+ep7
7AvVp7ghUVSpdNUyfKE6jlMsI3p+QWWa4MjThj8rD3iy2mKPdD1u7zGrh8TRQivVElqpjHGDNMHt
o9E5lu+/S1ETaIcN8omCmvJVDQ50oXaA03LXQg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12592)
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
