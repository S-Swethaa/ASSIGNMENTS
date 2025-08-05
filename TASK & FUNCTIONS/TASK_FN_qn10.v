`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 07:34:32 AM
// Design Name: 
// Module Name: TASK_FN_qn10
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


module TASK_FN_qn10();
reg [7:0] a, b;
reg [15:0] s;  
initial begin
a = 20;
b = 5;

add(a, b);
sub(a, b);
mul(a, b);
div(a, b);
#20;
end

task add(input [7:0] x, input [7:0] y);
  begin
s= x + y;
#14;
$display("Addition: %d + %d = %d", x, y, s);
end
endtask

task sub(input [7:0] x, input [7:0] y);
begin
s= x - y;
#24;
$display("Subtraction: %d - %d = %d", x, y, s);
end
endtask

task mul(input [7:0] x, input [7:0] y);
begin
s= x * y;
#23;
$display("Multiplication: %d * %d = %d", x, y, s);
end
endtask

task div(input [7:0] x, input [7:0] y);
begin
if (y != 0) begin
s= x / y;
#5;
$display("Division: %d / %d = %d", x, y, s);
end
else 
begin
$display("Division by zero error");
end
end
endtask

endmodule

