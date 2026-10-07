`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2025 04:04:47 PM
// Design Name: 
// Module Name: N4
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


module N4(a, b, c, out);
    input a, b, c;
    output out;
    wire A, B, C;
    assign A = ~a;
    assign B = ~b;
    assign C = ~c;
    assign out = C ? (B ? A : 0) : (B ? 0 : ( A ? 0 : 1));
endmodule
