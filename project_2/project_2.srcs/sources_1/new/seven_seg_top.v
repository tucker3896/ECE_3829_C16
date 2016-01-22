`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2016 07:06:08 PM
// Design Name: 
// Module Name: seven_seg_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seven_seg_top(
    input clk,
    input [15:0] sw,
    output [3:0] an,
    output [7:0] seg
    );
    
    wire [1:0] cnt;
    two_bit_counter tbc1(.clk(clk), .async_reset(0), .sync_reset(0), .en(1), .out(cnt));
    seven_seg ss1 (.a(sw[3:0]), .b(sw[7:4]), .c(sw[11:8]), .d(sw[15:12]), .mux(cnt), .seg(seg), .an(an));
    
    
endmodule
