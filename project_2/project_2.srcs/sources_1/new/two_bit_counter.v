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
    
    
//    always @ (en)
//    if(en)
//        always @ (posedge clk)
//        begin
//            case({sync_reset, out})
//                3'b000: out <= 2'b01;
//                3'b001: out <= 2'b10;
//                3'b010: out <= 2'b11;
//                default: out <= 2'b00;
//            endcase
//        end
        
//        always @ (posedge async_reset)
//        begin
//            out = 2'b00;
//        end


    always @ (posedge clk)
        begin
            if(en)
                case({sync_reset, out})
                    3'b000: out <= 2'b01;
                    3'b001: out <= 2'b10;
                    3'b010: out <= 2'b11;
                    default: out <= 2'b00;
                endcase
        end
        
//    always @ (posedge async_reset)
//        begin
//            if(en)
//                out = 2'b00;
//        end

    
endmodule
