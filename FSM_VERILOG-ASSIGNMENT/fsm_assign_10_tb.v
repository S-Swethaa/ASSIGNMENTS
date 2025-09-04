`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 05:55:26 PM
// Design Name: 
// Module Name: fsm_assign_10_tb
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


module fsm_assign_10_tb();
wire z;
reg x,y;
reg clk,rst;
reg [15:0] test_ip,test_ip1;
integer i;
 fsm_assign_10 u1(.z(z),.x(x),.y(y),.clk(clk),.rst(rst));
always #5 clk=~clk;

initial begin
clk=0;rst=1;
test_ip=16'b0011101111000111;
test_ip1=16'b0011101111111000;
#10;rst=0;
for(i=15;i>=0;i=i-1)begin
x=test_ip[i];
y=test_ip1[i];#10;
end
#10;
$finish;
end
endmodule
