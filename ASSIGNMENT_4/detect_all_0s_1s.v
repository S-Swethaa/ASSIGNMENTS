`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 11:58:18 AM
// Design Name: 
// Module Name: detect_all_0s_1s
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


module detect_all_0s_1s();
reg [4:0]x;
wire zero,one;

detect_all_1s_0s uut(.x(x),
.zero(zero),
.one(one));

initial begin
x=4'b00011;
#4
x=4'b00000;
#4
x=4'b11111;
#4
$finish;
end
endmodule
