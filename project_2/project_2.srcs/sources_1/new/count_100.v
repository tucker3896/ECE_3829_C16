`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  ECE3829
// Engineer: Nicholas Rowles
//           Tucker Martin
// 
// Create Date: 02/03/2016 11:19:58 PM
// Design Name: 
// Module Name: counter_100
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


module counter_100(
    input clk,
    input rst,
    input en,
    output reg [3:0] count_1s,
    output reg [3:0] count_10s
    );
    
    always @ (posedge clk, posedge rst)
    begin
        if(rst == 1'b1)
            begin
            count_1s <= 0;
            count_10s <= 0;
            end
        else if(en == 1'b1)
        begin
            if(count_1s == 9 && count_10s == 9)
                begin
                count_1s <= 0;
                count_10s <= 0;
                end
            else  if(count_1s == 9)
                begin
                count_1s <= 0;
                count_10s <= count_10s + 1'b1;
                end
            else
                count_1s <= count_1s + 1'b1;
        end
    end
    
    
    
endmodule
