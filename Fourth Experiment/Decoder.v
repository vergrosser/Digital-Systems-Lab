`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2025 12:26:56 PM
// Design Name: 
// Module Name: Decoder
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


module Decoder(input [6:0]Dip, output reg [3:0] LED, output[3:0] dig, output wire a, b, c, d, e, f, g);
    wire [2:0] C;
    reg [3:0]number;
    assign C[0] = Dip[6] ^ Dip[4] ^Dip[2] ^ Dip[0];
    assign C[1] = Dip[5] ^ Dip[4] ^Dip[1] ^ Dip[0];
    assign C[2] = Dip[3] ^ Dip[2] ^Dip[1] ^ Dip[0];
    always@(Dip) begin
        if(C == 3) begin
            number = 4'b0011;
            LED[3] = ~Dip[4];
            LED[2] =  Dip[2];
            LED[1] = Dip[1];
            LED[0] = Dip[0];
        end else if(C == 5) begin
            number = 4'b0101;
            LED[3] = Dip[4];
            LED[2] =  ~Dip[2];
            LED[1] = Dip[1];
            LED[0] = Dip[0];
        end else if(C == 6) begin
            number = 4'b0110;
            LED[3] = Dip[4];
            LED[2] =  Dip[2];
            LED[1] = ~Dip[1];
            LED[0] = Dip[0];
        end else if(C == 7) begin 
            number = 4'b0111;
            LED[3] = Dip[4];
            LED[2] =  Dip[2];
            LED[1] = Dip[1];
            LED[0] = ~Dip[0];
        end else begin  
            number = 0;
            LED[3] = Dip[4];
            LED[2] =  Dip[2];
            LED[1] = Dip[1];
            LED[0] = Dip[0];
        end      
    end
    Hex_to_7_seg func(number, a, b, c, d, e, f, g);
endmodule
