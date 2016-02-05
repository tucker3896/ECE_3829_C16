`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  ECE3829
// Engineer: Nicholas Rowles
//           Tucker Martin
// 
// Create Date: 02/03/2016 07:27:31 PM
// Design Name: 
// Module Name: spi_als
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


module spi_als(
    input clk_1MHz,
    input en,
    input reset,
    input MISO,
    output reg CS,
    output reg [7:0] disp
    );
    
    reg [3:0] counter_10;
    reg [4:0] counter_16;
    reg [15:0] shift_reg;
    
    always @ (posedge clk_1MHz, posedge reset)
    begin
        if(reset)
            counter_16 <= 0;
        else
            begin
                if(en == 1 && counter_16 == 0)
                    begin
                        counter_16 <= 1;
                        CS = 1'b0;
                    end
                else if(counter_16 == 15)
                    begin
                        counter_16 <= 0;
                        CS = 1'b1;
                        disp <= shift_reg[11:4];    
                    end
                else if(counter_16 > 0)
                    begin
                        counter_16 <= counter_16 + 1'b1;
                        shift_reg <= {shift_reg[14:0], MISO};
                        CS = 1'b0;
                    end
                else
                    begin
                        counter_16 <= 4'H0;
                    end
            end
    end;
    
    
endmodule
