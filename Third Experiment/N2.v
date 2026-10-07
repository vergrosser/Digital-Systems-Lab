`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2025 02:28:52 PM
// Design Name: 
// Module Name: N2
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


module N2(input wire [2:0] buttons, output wire led);
    assign led = (buttons[0] & buttons[2]) | (buttons[1] & ~buttons[2]);
endmodule
