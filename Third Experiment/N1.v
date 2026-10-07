`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2025 01:26:11 PM
// Design Name: 
// Module Name: N1
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


module N1(input wire [3:0]buttons, output wire [1:0] leds);
    wire notbuttons[3:0];
    assign notbuttons[0] = ~buttons[0];
    assign notbuttons[1] = ~buttons[1];
    assign notbuttons[2] = ~buttons[2];
    assign notbuttons[3] = ~buttons[3];
    assign leds[0] = notbuttons[2] & notbuttons[3];
    assign leds[1] = (notbuttons[0] | notbuttons[1]) ^ (notbuttons[2] & notbuttons[3]);
endmodule
