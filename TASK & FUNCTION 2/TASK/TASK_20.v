`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 11:47:39 AM
// Design Name: 
// Module Name: TASK_20-Write a task to drive a global variable from within the task.
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


module TASK_20();
reg [7:0]a,b;
reg [15:0]out;

task global_data;
begin
out=a*b;
end
endtask

initial begin
a=8'd220;
b=8'd250;
global_data();
$display("a=%b,b=%b,out=%b",a,b,out);
#12
$finish;
end

endmodule
