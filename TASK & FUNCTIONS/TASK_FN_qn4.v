`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 06:09:35 PM
// Design Name: 
// Module Name: TASK_FN_qn4
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
/////////////////////////////////////////////////////////////////////////////////



module TASK_FN_qn4;
reg [7:0]x[19:0];
integer i;
function  [7:0] numbers;
input i;
begin
numbers = $random;
end
endfunction
initial begin
for(i=0;i<20;i=i+1)begin
x[i]=numbers(i);
if(x[i]%2==0)
$display("x[%0d]=%d is even",i,x[i]);
else
$display("x[%0d]=%d is odd",i,x[i]);
end
end
endmodule

