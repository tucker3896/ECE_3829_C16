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
    input clk,
    output clk_25MHz,
    output clk_10MHz,
    output clk_100KHz
    );
    
    // This counter counts to 4, making a 25MHz signal
    reg [1:0] count_4;
    // This counter counts to 10, making a 10Mhz signal
    reg [4:0] count_10;
    // This counter counts to 1000, making a 100KHz signal
    reg [9:0] count_1000;
    
    always @ (posedge clk)
    begin
        if(count_4 == 3)
            count_4 <= 2'b00;
        else
            count_4 <= count_4 + 1'b1;
            
        if(count_10 == 9)
            count_10 <= 4'b0000;
        else
            count_10 <= count_10 + 1'b1;
        
        if(count_1000 == 999)
            count_1000 <= 10'b0000000000;
        else
            count_1000 <= count_1000 + 1'b1;
    end
    
    assign clk_25MHz = (count_4 > 1);
    assign clk_10MHz = (count_10 > 4);
    assign clk_100KHz = (count_1000 > 499);
       

    
endmodule


























