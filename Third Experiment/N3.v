`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2025 03:07:31 PM
// Design Name: 
// Module Name: N3
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


module N3(x, y, cin, s, c);
    input x, y, cin;
    output s, c;
    wire hlp1, hlp2, hlp3;
    halfadder n1 (~x, ~y, hlp1, hlp2);
    halfadder n2 (~cin, hlp1, s, hlp3);
    assign c = hlp3 | hlp2;
    
endmodule
