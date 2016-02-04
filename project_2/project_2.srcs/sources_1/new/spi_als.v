`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
    input clk_10MHz,
    input en,
    input reset,
    input MISO,
    output reg CS,
    output reg [7:0] disp
    );
    
    wire clk_1MHz;
    reg [3:0] counter_10;
    reg [4:0] counter_16;
    reg [15:0] shift_reg;
    
    
    always @ (posedge clk_10MHz)
    begin
        if(counter_10 == 4'b1001)
            counter_10 <= counter_10 + 1'b1;
        else
            counter_10 <= 4'b0000;
        
    end
    
    assign clk_1MHz = (counter_10 > 4);
    
    always @ (posedge clk_1MHz, posedge reset)
    begin
        if(reset)
            counter_16 <= 0;
        else if(en == 1 && counter_16 == 0)
            begin
            counter_16 <= 1;
            CS <= 0;
            end
        else if(counter_16 == 15)
            begin
            counter_16 <= 0;
            CS <= 1;
            end
        else if(counter_16 > 0)
            begin
            counter_16 <= counter_16 + 1'b1;
            shift_reg <= {shift_reg[14:0], MISO};
            disp <= shift_reg[11:4];    
            end
    end;
    
    
endmodule
