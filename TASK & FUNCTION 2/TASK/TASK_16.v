`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 10:36:20 AM
// Design Name: 
// Module Name: TASK_16-Write a task that counts the number of 1s in an 8-bit input.
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


module TASK_16;
reg [7:0]a;
integer out;

task finding_no_of_ones;
input[7:0]x;
output integer y;
integer i;
begin
 y=0;   
for(i=0;i<8;i=i+1)begin
if(x[i]==1'b1)
y=y+1;
end
end
endtask

initial begin
a=8'b1010_1010;
finding_no_of_ones(a,out);
end
endmodule
