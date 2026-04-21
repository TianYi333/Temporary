// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "breath_led_ip_v1_0,Vivado 2018.3" *)
module system_breath_led_ip_1_0(led, s0_axi_awaddr, s0_axi_awprot, 
  s0_axi_awvalid, s0_axi_awready, s0_axi_wdata, s0_axi_wstrb, s0_axi_wvalid, s0_axi_wready, 
  s0_axi_bresp, s0_axi_bvalid, s0_axi_bready, s0_axi_araddr, s0_axi_arprot, s0_axi_arvalid, 
  s0_axi_arready, s0_axi_rdata, s0_axi_rresp, s0_axi_rvalid, s0_axi_rready, s0_axi_aclk, 
  s0_axi_aresetn);
  output led;
  input [3:0]s0_axi_awaddr;
  input [2:0]s0_axi_awprot;
  input s0_axi_awvalid;
  output s0_axi_awready;
  input [31:0]s0_axi_wdata;
  input [3:0]s0_axi_wstrb;
  input s0_axi_wvalid;
  output s0_axi_wready;
  output [1:0]s0_axi_bresp;
  output s0_axi_bvalid;
  input s0_axi_bready;
  input [3:0]s0_axi_araddr;
  input [2:0]s0_axi_arprot;
  input s0_axi_arvalid;
  output s0_axi_arready;
  output [31:0]s0_axi_rdata;
  output [1:0]s0_axi_rresp;
  output s0_axi_rvalid;
  input s0_axi_rready;
  input s0_axi_aclk;
  input s0_axi_aresetn;
endmodule
