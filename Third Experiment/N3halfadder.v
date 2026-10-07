`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2025 03:09:21 PM
// Design Name: 
// Module Name: N3halfadder
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


module N3halfadder(x, y, s, c);
    input x, y;
    output s, c;
    assign s = x ^ y;
    assign c = x & y;
endmodule
