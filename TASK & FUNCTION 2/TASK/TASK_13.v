`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 05:57:25 PM
// Design Name: 
// Module Name: TASK_13-Write a task that takes an array of numbers and returns the average.
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


module TASK_13;
reg [7:0]numbers[0:4];
reg avg;

task average;
input integer size;
output integer average;
integer sum;
integer i;
begin
sum=0;                                                  
for(i=0;i<size;i=i+1)begin
sum=sum+numbers[i];
end
average=sum/size;
end
endtask

initial begin
numbers[0]=10;
numbers[1]=20;
numbers[2]=10;
numbers[3]=20;
numbers[4]=40;
average(5,avg);                                                                                                                
end
endmodule