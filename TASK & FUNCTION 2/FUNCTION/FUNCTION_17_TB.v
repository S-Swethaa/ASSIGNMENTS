`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 10:57:50 PM
// Design Name: 
// Module Name: FUNCTION_17_TB
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


module FUNCTION_17_TB( );
reg [7:0]a;
reg [2:0]n;
wire [7:0]shift_right_n;

FUNCTION_17 uut(.a(a),.n(n),.shift_right_n(shift_right_n));

initial begin
a=8'd225;
 n=3'd0;#1;
 n=3'd1;#1;
 n=3'd2;#1;
 n=3'd3;#1;
 n=3'd4;#1;
 n=3'd5;#1;
 n=3'd6;#1;
$display("a=%b, n=%d, shifted=%b", a, n, shift_right_n);
$finish;
end

endmodule
