`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 02:56:29 PM
// Design Name: 
// Module Name: TESTBENCH_E_FOUR_BIT_ADDER_TB
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


module TESTBENCH_E_FOUR_BIT_ADDER_TB();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;

TESTBENCH_E_FOUR_BIT_ADDER uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
task fulladder;
input [3:0]x,y;
input c;
begin
a=x;
b=y;
cin=c;
end
endtask
initial begin
fulladder(4'b0010,4'b1010,1'b1);#10;
fulladder(4'd3,4'd6,0);#10;
fulladder(4'd2,4'd3,1);#10;
fulladder(4'd9,4'd3,1);#10;

end




endmodule
