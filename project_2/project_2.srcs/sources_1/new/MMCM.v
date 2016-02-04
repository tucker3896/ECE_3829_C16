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
    output clk_1KHz,
    output clk_2Hz
    );
    
    // This counter counts to 4, making a 25MHz signal
    reg [1:0] count_4;
    // This counter counts to 10, making a 10Mhz signal
    reg [3:0] count_10;
    // This counter counts to 100000, making a 1KHz signal
    reg [16:0] count_100K;
    // This counter counts to 50000000, making a 2Hz signal
    reg [26:0] count_50M;
    
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
        
        if(count_100K == 99999)
            count_100K <= 0;
        else
            count_100K <= count_100K + 1'b1;
            
        if(count_50M == 49999999)
            count_50M <= 0;
        else
            count_50M <= count_50M + 1'b1;
    end
    
    assign clk_25MHz = (count_4 > 1);
    assign clk_10MHz = (count_10 == 9);
    assign clk_1KHz = (count_100K > 49999);
    assign clk_2Hz = (count_50M == 49999999);
       

    
endmodule


























