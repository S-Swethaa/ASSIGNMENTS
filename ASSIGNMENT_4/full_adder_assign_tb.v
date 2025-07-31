`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 11:35:43 PM
// Design Name: 
// Module Name: full_adder_assign_tb
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


module full_adder_assign_tb();
reg a,b,c_in;
wire sum,c_out;

full_adder_assign uut(.a(a),
.b(b),
.c_in(c_in),
.c_out(c_out),
.sum(sum));

initial begin
a=0;b=0;c_in=0;
#10
a=0;b=0;c_in=1;
#10
a=0;b=1;c_in=0;
#10
a=0;b=1;c_in=1;
#10
a=1;b=0;c_in=0;
#10
a=1;b=0;c_in=1;
#10
a=1;b=1;c_in=0;
#10
a=1;b=1;c_in=1;
#10
$finish;
end

endmodule
