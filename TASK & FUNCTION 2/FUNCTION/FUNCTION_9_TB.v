`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 05:27:33 PM
// Design Name: 
// Module Name: FUNCTION_9_TB
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


module FUNCTION_9_TB();
reg [7:0]a;
wire [3:0]number_of_ones;
FUNCTION_9 uut(.a(a),.number_of_ones(number_of_ones));

integer i;
initial begin
for(i=0;i<=255;i=i+1)begin
a=i;#1;
$display("a=%b,number_of_ones=%b",a,number_of_ones);

end
$finish;
end

endmodule
