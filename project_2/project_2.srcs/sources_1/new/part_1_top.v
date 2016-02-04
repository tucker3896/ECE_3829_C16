`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2016 06:17:13 PM
// Design Name: 
// Module Name: part_1_top
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


module part_1_top(
    input clk,
    input [1:0] sw,
    output [3:0] vgaRed,
    output [3:0] vgaBlue,
    output [3:0] vgaGreen,
    output Hsync,
    output Vsync,
    output [7:0] seg,
    output [3:0] an
    );
    
    wire clk_25MHz;
    wire clk_10MHz;
    wire clk_1KHz;
    wire clk_2Hz;
    reg [10:0] hcount;
    reg [10:0] vcount;
    
    
    MMCM mmcm(.clk(clk), .clk_25MHz(clk_25MHz), .clk_10MHz(clk_10MHz), .clk_1KHz(clk_1KHz), .clk_2Hz(clk_2Hz));
    vga_controller_640_60 vgac1(.pixel_clk(clk_25MHz), .VS(Vsync), .HS(Hsync), .hcount(hcount), .vcount(vcount));
    color_logic cl1(.sw(sw), .vgaRed(vgaRed), .vgaBlue(vgaBlue), .vgaGreen(vgaGreen));
    
    
endmodule
