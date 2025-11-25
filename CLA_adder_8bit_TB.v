`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2025 09:27:47
// Design Name: 
// Module Name: CLA_adder_8bit_TB
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


module CLA_adder_8bit_TB();
reg [7:0]a,b;
reg cin;
wire [7:0]sum;
wire cout;

CLA_adder_8bit DUT (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
a=0;
b=0;
cin=0;
#20;
a=8'b11111100;
b=8'b00111110;
#20;
a=8'b01111000;
b=8'b00001000;
#30;
$finish;

end

endmodule
