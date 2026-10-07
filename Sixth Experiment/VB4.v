`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2025 11:00:12 AM
// Design Name: 
// Module Name: VB4
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


module VB4(
input wire in_clk, input wire [1:0] mode, output reg out_clk);
    reg [27:0] counter = 0;
    reg [27:0] freq = 0;
    initial out_clk = 0;
    always@(mode)begin
     freq = (~mode[1])? ((~mode[0])? 12500000 : 8333333): ((~mode[0])? 6125000: 5000000);
    end
    always@(posedge in_clk)begin
        counter = counter + 1;
        if(counter == (freq/2))begin
            counter = 0;
            out_clk = ~out_clk;
        end
    end
endmodule

