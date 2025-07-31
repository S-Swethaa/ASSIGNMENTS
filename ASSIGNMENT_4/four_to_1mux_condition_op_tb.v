`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 02:19:43 PM
// Design Name: 
// Module Name: four_to_1mux_condition_op_tb
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


module four_to_1mux_condition_op_tb();
reg s1,s0;
reg y0,y1,y2,y3;
wire out;

four_to_1mux_conditional_operator dut(.s1(s1),.s0(s0),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3),
.out(out));

initial begin
y0=0;y1=1;y2=0;y3=1;
s1=0;s0=0;
#4
s1=0;s0=1;
#4
s1=1;s0=0;
#4
s1=1;s0=1;
#4
$finish;
end
    
endmodule
