`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 11:07:21 PM
// Design Name: 
// Module Name: question_21_tb
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


module question_21_tb();
reg a,b,c;
wire p;
question_21 uut(.a(a),
.b(b),
.c(c),
.p(p));
initial begin
c=0;
a=0;b=0;
#10
a=0;b=1;c=0;
#10
a=1;b=0;c=0;
#10
a=1;b=1;c=0;
#10
$finish;
end

endmodule
