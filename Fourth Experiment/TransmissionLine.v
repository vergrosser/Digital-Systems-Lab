`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2025 12:46:25 PM
// Design Name: 
// Module Name: TransmissionLine
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


module TransmissionLine(input [7:0] Dip, input [3:0]button, output [3:0] LED, output [3:0] dig, output wire a, b, c, d, e, f, g);
    wire [6:0]answer_of_encoder;
    assign dig = 4'b0001;
    wire [6:0] hlp;
    Encoder encode(Dip[3:0], answer_of_encoder);
    assign hlp = answer_of_encoder ^ {Dip[7:4], button[2:0]};
    Decoder decode(hlp, LED, dig, a,b,c,d,e,f,g);
endmodule
