`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2025 10:14:42 PM
// Design Name: 
// Module Name: VB2
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



module VB2(input clk, output reg [4:0]LED);
    reg [26:0] counter = 0;
    initial LED[0] = 0;
    reg stat = 0;
    always@(posedge clk)begin
        counter = counter + 1;
        if(counter == 'b1100100)begin //'b101111101011110000100000000
            stat = 1;
            counter = 0;
        end
        if(stat)begin
            stat = 0;
            if(LED[0])begin
                LED[0] = 0;
             end else begin
                LED[0] = 1;
             end
        end
    end
endmodule
