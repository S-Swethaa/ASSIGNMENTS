`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2025 03:23:40 PM
// Design Name: 
// Module Name: TASK_9-Demonstrate a task calling another task (e.g., double_add_task calling add_task).
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


module TASK_9;
reg [7:0]a,b;
reg [7:0]final_double_task;

task sum;
input[7:0]x,y;
output[7:0]z;
begin
z=x+y;
end
endtask

task double_task;
input[7:0]x,y;
output[7:0]final_result;
reg [7:0]temp;
begin
sum(x,y,temp);
final_result=temp*2;
end
endtask

initial begin
a=8'd12;
b=8'd12;

double_task(a,b,final_double_task);
end

endmodule
