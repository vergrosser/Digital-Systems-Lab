`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2025 09:27:00 AM
// Design Name: 
// Module Name: Section2
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


module Section2(input [6:0] Dip, output [3:0]dig, output wire a, b, c, d, e, f, g);
    wire [3:0]ans;
    wire [2:0]cin;
    fulladder fbit(Dip[0], Dip[3], Dip[6], ans[0], cin[0]);
    fulladder sbit(Dip[1], Dip[4], cin[0], ans[1], cin[1]);
    fulladder tbit(Dip[2], Dip[5], cin[1], ans[2], cin[2]);
    assign dig = 4'b1000;
    assign ans[3] = cin[2];
    Hex_to_7_seg answer(ans, a, b, c ,d, e, f, g);
endmodule
