`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 12:13:26 PM
// Design Name: 
// Module Name: tristate_2x1mux_tb
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


module tristate_2x1mux_tb();
reg x,y,s;
wire f;

tristate_2x1mux uut(.x(x),
.y(y),
.s(s),
.f(f));

initial begin

s=0;x=0;y=1;
#4
s=0;x=1;y=0;
#4
s=1;x=1;y=0;
#4
s=1;x=0;y=1;
#4
$finish;
end
    
endmodule
