`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  ECE3829
// Engineer: Nicholas Rowles
//           Tucker Martin
// 
// Create Date: 02/03/2016 07:35:25 PM
// Design Name: 
// Module Name: part_2_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//     This is the top level module for part two of proj
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module part_2_top(
    input MISO,
    input clk,
    input rst,
    output SCLK,
    output CS,
    output [3:0] an,
    output [7:0] seg
    );
    
    wire [7:0] als_val;
    wire [7:0] count;
    wire [3:0] ones;
    wire [3:0] tens;
    
    wire clk_25MHz;
    wire clk_10MHz;
    wire clk_1MHz;
    wire clk_1KHz;
    wire clk_2Hz;
    
    assign SCLK = clk_1MHz;
    //assign CS = clk_1KHz;
   
   
   
   clk_wiz_0 instance_name
   (
   // Clock in ports
    .clk(clk),      // input clk_in1
    // Clock out ports
    .clk_out1(clk_10MHz),     // output clk_out1
    .clk_out2(clk_25MHz),     // output clk_out2
    // Status and control signals
    //.reset(rst), // input reset
    .locked(locked));      // output locked
// INST_TAG_END ------ End INSTANTIATION Template ---------   
   
   
   
    
    MMCM mmcm(.clk(clk_10MHz), .clk_1MHz(clk_1MHz), .clk_1KHz(clk_1KHz), .clk_2Hz(clk_2Hz));
    seven_seg_top sst1(.clk(clk_1KHz), .sw({als_val, tens, ones}), .an(an), .seg(seg));
    spi_als sa1(.clk_1MHz(clk_1MHz), .reset(rst), .en(clk_1KHz), .MISO(MISO), .CS(CS), .disp(als_val));
    counter_100 c1(.clk(clk_2Hz), .rst(rst), .en(1), .count_1s(ones), .count_10s(tens));
    
endmodule
