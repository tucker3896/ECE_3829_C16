`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2016 06:33:34 PM
// Design Name: 
// Module Name: two_bit_counter
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


module two_bit_counter(
    input clk,
    input async_reset,
    input sync_reset,
    input en,
    output reg [1:0] out
    );

    always @ (posedge clk)
        begin
            if(sync_reset == 1'b1)
                out <= 1'b0;
            else if(en)
                case(out)
                    2'b00: out <= 2'b01;
                    2'b01: out <= 2'b10;
                    2'b10: out <= 2'b11;
                    default: out <= 2'b00;
                endcase
             
        end
    
endmodule
