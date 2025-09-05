`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2025 11:01:18 AM
// Design Name: 
// Module Name: fsm_assign_digital_stopwatch_testbench
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


module fsm_assign_digital_stopwatch_testbench();
reg clk,reset;
reg start,stop;
wire [5:0]millisec;
wire [5:0]sec;

fsm_assign_digital_stopwatch uut(.clk(clk),.reset(reset),.start(start),.stop(stop),.millisec(millisec),.sec(sec));

always #5 clk=~clk;

initial begin
clk=0;
reset=1;
#10;
reset=0;
start=1;
#10000;
start=0;stop=1;
#20;
$finish;
end


endmodule
