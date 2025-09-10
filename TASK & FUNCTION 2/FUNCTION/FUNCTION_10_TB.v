`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 05:40:56 PM
// Design Name: 
// Module Name: FUNCTION_10_TB
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


module FUNCTION_10_TB;
reg [7:0]a,b;
wire equal;

FUNCTION_10 uut(.a(a),.b(b),.equal(equal));
integer i,j;
initial begin
for (i=0;i<8;i=i+1)begin
    for (j=0;j<8;j=j+1)begin
        a=$random ;
        b=$random ;
        a=i;b=j;
        #10;
        $display("a=%b,b=%b,equal=%b",a,b,equal);
    end
end
     $finish;
     end
endmodule
