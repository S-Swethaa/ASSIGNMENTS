`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 02:17:19 PM
// Design Name: 
// Module Name: testbench_A_DFF_tb
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


module testbench_A_DFF_tb();
reg clk,d,areset;
wire q;

TESTBENCH_A_DFF uut(.clk(clk),.q(q),.areset(areset),.d(d));
always #5clk=~clk;
initial begin
clk=0;
areset=0;d=1;#10;
areset=1;d=1;#10;
areset=0;d=1;#10;
$finish;
end

endmodule
