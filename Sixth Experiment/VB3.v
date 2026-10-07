`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2025 09:57:38 AM
// Design Name: 
// Module Name: VB3
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



module VB3(input wire clk,input wire button1 ,input wire button2 ,output reg [4:0] LED);
    reg [3:0]state = 1;
    reg [27:0]counter = 0;
    reg [27:0]freq = 'b1011111010111100001000000;
    always@(posedge button2)begin
        freq = freq/2;
    end
    always@(posedge button1)begin
                freq = 2 * freq;
    end
    always@(posedge clk)begin
        counter = counter + 1;
        if(counter == freq)begin
            counter = 0;
            if(state == 10)begin
                state = 0;
            end else begin
                state = state + 1;
            end
            case (state)
            1 :LED = 5'b10000;
            2 :LED = 5'b11000;
            3 :LED = 5'b11100;
            4 :LED = 5'b11110;
            5 :LED = 5'b11111;
            6 :LED = 5'b01111;
            7 :LED = 5'b00111;
            8 :LED = 5'b00011;
            9 :LED = 5'b00001;
            10:LED = 5'b00000;
        endcase
        end
    end
endmodule
