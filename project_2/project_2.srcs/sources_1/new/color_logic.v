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


module color_logic(
    input [1:0] sw,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaBlue,
    output reg [3:0] vgaGreen 
    );
    
    always @ (sw)
    begin
        vgaRed = (sw == 2'b00) ? 4'b1111 : 4'b0000;
        vgaGreen = (sw == 2'b01) ? 4'b1111 : 4'b0000;
        vgaBlue = (sw == 2'b10) ? 4'b1111 : 4'b0000;
    end
    
endmodule
