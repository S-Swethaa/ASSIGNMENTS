`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 09:45:42 AM
// Design Name: 
// Module Name: continous_assignment_tb
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


module continous_assignment_tb();
reg a,b;
wire out;

continous_assignment uut(.a(a),
.b(b),
.out(out));

initial begin
a=0;b=0;
#4
a=1;b=0;
#4
a=1;b=1;
#4
$finish;
end


endmodule
