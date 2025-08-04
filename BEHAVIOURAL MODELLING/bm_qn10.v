`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2025 03:27:11 PM
// Design Name: 
// Module Name: bm_qn10
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


module bm_qn10(
output reg a,b);
initial begin
$monitor($time,"a=%d,b=%d",a,b);

 a <= #5 1'b0;
 b <= #1 1'b1;
  a <= 1;
#5 b <= a;
$display($time,"display a=%d,b=%d",a,b);
end
initial begin
a=0;b=0;
#20;
end
endmodule

module bm_qn10_1(
output reg a,b);

always@(a,b) begin

#10 a = 1'b0;
#1 b = 1'b1;
a = 1;
#5 b = a;
end
initial begin 
$monitor($time,"a=%d,b=%d",a,b);
a=0;b=0;
#20
$finish;
end

endmodule

module bm_qn10_2(
output reg a,b);
initial begin
a=1;
b=a;
$display($time,"a=%d,b=%d",a,b);
end

initial begin

#1 a<=1;
b<=a;
$display($time,"a=%d,b=%d",a,b);
end 
endmodule 


