`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2025 23:23:47
// Design Name: 
// Module Name: CLA_logic
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


module CLA_logic(
input A,B,c0,
output s,c1
);
wire w1,w2,w3,w4,w5;
wire p,g;
assign p=(A|B);

assign g=(A&B);


assign w3=p&(~g);

assign w4=w3|c0;
assign w5=~(w3&c0);
assign s=w4&w5;

assign c1=g|(p&c0);

endmodule
