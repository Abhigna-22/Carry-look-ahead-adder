`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2025 20:03:37
// Design Name: 
// Module Name: CLA_adder_8bit
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


module CLA_adder_8bit(
input [7:0]a,b,
input cin,
output [7:0]sum,
output cout
);
wire [7:0]p,g;
wire [7:1]c;

CLA_logic I1(.A(a[0]),.B(b[0]),.c0(cin),.s(sum[0]),.c1(c[1]));
CLA_logic I2(.A(a[1]),.B(b[1]),.c0(c[1]),.s(sum[1]),.c1(c[2]));
CLA_logic I3(.A(a[2]),.B(b[2]),.c0(c[2]),.s(sum[2]),.c1(c[3]));
CLA_logic I4(.A(a[3]),.B(b[3]),.c0(c[3]),.s(sum[3]),.c1(c[4]));
CLA_logic I5(.A(a[4]),.B(b[4]),.c0(c[4]),.s(sum[4]),.c1(c[5]));
CLA_logic I6(.A(a[5]),.B(b[5]),.c0(c[5]),.s(sum[5]),.c1(c[6]));
CLA_logic I7(.A(a[6]),.B(b[6]),.c0(c[6]),.s(sum[6]),.c1(c[7]));
CLA_logic I8(.A(a[7]),.B(b[7]),.c0(c[7]),.s(sum[7]),.c1(cout));
endmodule
