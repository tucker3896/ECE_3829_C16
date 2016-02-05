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
    input nw,
    output reg clk_1MHz,
    output reg clk_1KHz,
    output reg clk_2Hz
    );
    
    // This counter counts to 4, making a 25MHz signal
//    reg [1:0] count_4;
    // This counter counts to 10, making a 10Mhz signal
    reg [3:0] count_10;
    // This counter counts to 100000, making a 1KHz signal
    reg [16:0] count_100K;
    // This counter counts to 50000000, making a 2Hz signal
    reg [26:0] count_50M;
    
//    always @ (posedge clk)
//    begin
//        if(count_4 == 3)
//            count_4 <= 2'b00;
//        else
//            count_4 <= count_4 + 1'b1;
//    end

//    always @ (count_4)
//    begin
//        if(count_4 > 1)
//            clk_25MHz = 1'b1;
//        else
//            clk_25MHz = 1'b0;
//    end


    
    always @ (posedge clk)
    begin
        if(count_10 == 9)
            count_10 <= 4'b0000;
        else
            count_10 <= count_10 + 1'b1;
    end
    
    always @ (count_10)
    begin
        if(count_10 == 1)
            clk_1MHz = 1'b1;
        else
            clk_1MHz = 1'b0;
    end
        
        
    
    always @ (posedge clk)
    begin
        if(count_100K == 9999)
            count_100K <= 17'b00000000000000000;
        else
            count_100K <= count_100K + 1'b1;
    end
    
    always @ (count_100K)
    begin
        if(count_100K == 1)
            clk_1KHz = 1'b1;
        else
            clk_1KHz = 1'b0;
    end


    
    always @ (posedge clk)
    begin
        if(count_50M == 4999999)
            count_50M <= 0;
        else
            count_50M <= count_50M + 1'b1;
    end

    always @ (count_50M)
    begin
        if(count_50M == 1)
            clk_2Hz = 1'b1;
        else
            clk_2Hz = 1'b0;
    end
    
endmodule


