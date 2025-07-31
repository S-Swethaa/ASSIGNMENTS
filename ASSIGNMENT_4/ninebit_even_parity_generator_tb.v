`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 11:06:29 AM
// Design Name: 
// Module Name: ninebit_even_parity_generator_tb
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


module ninebit_even_parity_generator_tb();
reg [8:0]x;
wire [8:0]ep,op;

ninebit_even_parity_generator u1(.x(x),
.op(op),
.ep(ep));

initial begin
x=9'b000001111;
#4
x=9'b111100010;
#4
$finish;
end
endmodule
