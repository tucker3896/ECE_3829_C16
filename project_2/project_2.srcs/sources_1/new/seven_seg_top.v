`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  ECE3829
// Engineer: Nicholas Rowles
//           Tucker Martin
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
    
//    wire clk_25MHz;
//    wire clk_10MHz;
//    wire clk_1KHz;
        
   
//      clk_wiz_0 instance_name
//     (
//     // Clock in ports
//      .clk(clk),      // input clk_in1
//      // Clock out ports
//      .clk_out1(clk_out1),     // output clk_out1
//      // Status and control signals
//      .reset(reset), // input reset
//      .locked(locked));      // output locked
//  // INST_TAG_END ------ End INSTANTIATION Template ---------
//    MMCM mmcm(.clk(clk), .nw(clk_out1), .clk_25MHz(clk_25MHz), .clk_10MHz(clk_10MHz), .clk_1KHz(clk_1KHz));
    two_bit_counter tbc1(.clk(clk), .async_reset(0), .sync_reset(0), .en(1), .out(cnt));
    seven_seg ss1 (.a(sw[3:0]), .b(sw[7:4]), .c(sw[11:8]), .d(sw[15:12]), .mux(cnt), .seg(seg), .an(an));
    
    
    
    
endmodule
