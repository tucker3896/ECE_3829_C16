`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2016 07:35:25 PM
// Design Name: 
// Module Name: part_2_top
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
    wire clk_25MHz;
    wire clk_10MHz;
    wire clk_1KHz;
    wire clk_2Hz;
    
    assign SCLK = clk_10MHz;
    //assign CS = clk_1KHz;
    
    MMCM mmcm(.clk(clk), .clk_25MHz(clk_25MHz), .clk_10MHz(clk_10MHz), .clk_1KHz(clk_1KHz), .clk_2Hz(clk_2Hz));
    seven_seg_top sst1(.clk(clk_1Hz), .sw({count, rst, als_val}), .an(an), .seg(seg));
    spi_als sa1(.clk_10MHz(clk_10MHz), .reset(rst), .en(clk_1KHz), .MISO(MISO), .CS(CS), .disp(als_val));
    //counter_100 c1(
    
endmodule
