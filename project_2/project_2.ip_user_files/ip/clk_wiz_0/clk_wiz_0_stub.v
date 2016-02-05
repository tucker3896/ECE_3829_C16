// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Thu Feb 04 22:55:23 2016
// Host        : DESKTOP-3RI855O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk, clk_out1, clk_out2, reset, locked)
/* synthesis syn_black_box black_box_pad_pin="clk,clk_out1,clk_out2,reset,locked" */;
  input clk;
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
endmodule
