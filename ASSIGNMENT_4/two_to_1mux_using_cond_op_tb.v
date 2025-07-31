`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 09:50:30 AM
// Design Name: 
// Module Name: two_to_1mux_using_cond_op_tb
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


module two_to_1mux_using_cond_op_tb();
reg a0,a1;
reg s0;
wire y0;

two_to_1mux_using_cond_op uut(.a0(a0),.a1(a1),.s0(s0),.y0(y0));
    initial begin
s0=1;a0=0;a1=1;
#4
s0=0;a0=1;a1=0;
#4
$finish;
end
endmodule
