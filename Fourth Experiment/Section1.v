`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2025 01:39:54 AM
// Design Name: 
// Module Name: Section1
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



module Section1(input wire [3:0] Dip, output wire a,b,c,d,e,f,g, output [3:0]dig);
    Hex_to_7_seg sec1(Dip, a,b,c,d,e,f,g);
    assign dig = 4'b0001;
endmodule
