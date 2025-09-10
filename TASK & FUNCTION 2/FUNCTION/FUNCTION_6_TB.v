`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 04:16:53 PM
// Design Name: 
// Module Name: FUNCTION_6_TB
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


module FUNCTION_6_TB();
reg [7:0]a;
wire [15:0]square;
FUNCTION_6 uut(.a(a),.square(square));
integer i;
initial begin 
for(i=0;i<=255;i=i+1)begin
a=i;
#45;
$display("a=%b,square=%b",a,square);
end
$finish;

end


endmodule
