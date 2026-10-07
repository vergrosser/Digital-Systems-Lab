`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2025 11:47:31 AM
// Design Name: 
// Module Name: Encoder
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


module Encoder(input [3:0]Dip, output [6:0]LED);
    assign LED[6] = Dip[0] ^ Dip[1] ^ Dip[3];
    assign LED[5] = Dip[0] ^ Dip[2] ^ Dip[3];
    assign LED[3] = Dip[1] ^ Dip[2] ^ Dip[3];
    assign LED[4] = Dip[0];
    assign LED[2] = Dip[1];
    assign LED[1] = Dip[2];
    assign LED[0] = Dip[3];
endmodule
