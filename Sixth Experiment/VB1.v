`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2025 09:21:17 PM
// Design Name: 
// Module Name: VB1
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


module VB1(input clk, output reg [4:0]LED);
    always@(posedge clk)begin
        LED[0] = 1;
    end
    always@(negedge clk)begin
        LED[0] = 0;
    end
endmodule
