`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2025 09:54:06 AM
// Design Name: 
// Module Name: Section3
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


module halfadder(x, y, s, c);
    input x, y;
    output s, c;
    assign s = x ^ y;
    assign c = x & y;
endmodule

module fulladder(x, y, cin, s, c);
    input x, y, cin;
    output s, c;
    wire hlp1, hlp2, hlp3;
    halfadder n1 (x, y, hlp1, hlp2);
    halfadder n2 (cin, hlp1, s, hlp3);
    assign c = hlp3 | hlp2;
    
endmodule


module Section3(input [7:0] Dip, input [1:0]Push_button, output [3:0]dig, output reg [9:0]LED, output wire a, b, c, d, e, f, g);
    assign dig = 4'b0001;
    wire [3:0] X = Dip[3:0];
    reg [3:0] Y;
    wire [3:0] ans;
    reg [3:0] hlp_ans;
    wire [3:0] cin;
   
    always@(*) begin
        if(~Push_button[0]) begin
            Y = Dip[7:4];
         end else begin
            Y = ~Dip[7:4] + 1;
         end
    end
    fulladder fbit(X[0], Y[0], 0, ans[0], cin[0]);
    fulladder sbit(X[1], Y[1], cin[0], ans[1], cin[1]);
    fulladder tbit(X[2], Y[2], cin[1], ans[2], cin[2]);
    fulladder fobit(X[3], Y[3], cin[2], ans[3], cin[3]);
    always@(*) begin
        if ((X[3] == Y[3]) && (ans[3] != X[3])) begin
            LED[0] = 1;
        end else begin
            LED[0] = 0;
        end
        if(ans[3]) begin
            hlp_ans = ~ans +1;
            LED[9] = 1;
        end else begin
            hlp_ans = ans;
            LED[9] = 0;
        end

    end
    Hex_to_7_seg answer(hlp_ans, a, b, c ,d, e, f, g);
endmodule
