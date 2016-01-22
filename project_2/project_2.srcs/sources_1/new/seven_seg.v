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


module seven_seg(
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input [1:0] mux,
    output [7:0] seg,
    output [3:0] an
    );
    
    
    wire [3:0] e;
    assign e = (mux == 2'b00) ? a :
        (mux == 2'b01) ? b :
        (mux == 2'b10) ? c :
        d; 
    
    
    assign an = (mux == 2'b00) ? 4'b0001 :
        (mux == 2'b01) ? 4'b0010 :
        (mux == 2'b10) ? 4'b0100 :
        4'b1000;
    
    
    //7-segment LED equivalents to all hexadecimal digits.
    parameter disp0 = 8'b11000000;
    parameter disp1 = 8'b11111001;
    parameter disp2 = 8'b10100100;
    parameter disp3 = 8'b10110000;
    parameter disp4 = 8'b10011001;
    parameter disp5 = 8'b10010010;
    parameter disp6 = 8'b10000010;
    parameter disp7 = 8'b11111000;
    parameter disp8 = 8'b10000000;
    parameter disp9 = 8'b10011000;
    parameter dispA = 8'b10001000;
    parameter dispB = 8'b10000011;
    parameter dispC = 8'b11000110;
    parameter dispD = 8'b10100001;
    parameter dispE = 8'b10000110;
    parameter dispF = 8'b10001110;
    
    assign seg = (e == 4'b0000) ? disp0 :
        (e == 4'b0001) ? disp1 :
        (e == 4'b0010) ? disp2 :
        (e == 4'b0011) ? disp3 :
        (e == 4'b0100) ? disp4 :
        (e == 4'b0101) ? disp5 :
        (e == 4'b0110) ? disp6 :
        (e == 4'b0111) ? disp7 :
        (e == 4'b1000) ? disp8 :
        (e == 4'b1001) ? disp9 :
        (e == 4'b1010) ? dispA :
        (e == 4'b1011) ? dispB :
        (e == 4'b1100) ? dispC :
        (e == 4'b1101) ? dispD :
        (e == 4'b1110) ? dispE :
        dispF;
    
    //Sets display to first led display when mux is high, second led display when mux is low.
    
endmodule

