`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2025 04:33:13 PM
// Design Name: 
// Module Name: N5
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


module N5(input [3:0] buttons, output reg [2:0] leds);
    wire [3:0] notbuttons;
    assign notbuttons[0] = ~buttons[0];
    assign notbuttons[1] = ~buttons[1];
    assign notbuttons[2] = ~buttons[2];
    assign notbuttons[3] = ~buttons[3];
    always @(buttons)
    begin
        if(notbuttons[3])
        leds = 3'b100;
        else if(notbuttons[2])
        leds = 3'b011;
        else if(notbuttons[1])
        leds = 3'b010;
        else if(notbuttons[0])
        leds = 3'b001;
        else
        leds = 3'b000;
    end
endmodule
