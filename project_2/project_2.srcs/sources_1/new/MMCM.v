`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  ECE3829
// Engineer: Nicholas Rowles
//           Tucker Martin
// 
// Create Date: 01/21/2016 06:05:23 PM
// Design Name: 
// Module Name: seven_seg
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


module MMCM(
    input clk_in,
    output clk_out
    );
    
    reg [2:0] count;
    
    always @ (posedge clk_in)
    begin
        count <= count + 1'b1;
    end
    
    assign clk_out = count[2];
    
endmodule













