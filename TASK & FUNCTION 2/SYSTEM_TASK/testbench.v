`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 11:29:49 PM
// Design Name: 
// Module Name: testbench
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


module testbench( );
reg a;
wire n;

SYSTEM_TASK_9 uut(.a(a),.n(n));

initial begin
$dumpfile("SYSTEM_TASK_9.vcd");
$dumpvars(0,testbench);
end
initial begin
$monitor("a=%b,n=%b\n",a,n);
a=0;#10;
a=1;#10;
a=0;#10;
a=1;#10;
$finish;
end
endmodule
