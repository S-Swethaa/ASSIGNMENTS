`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2025 02:54:58 PM
// Design Name: 
// Module Name: bm_qn11
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:/*// File: bm_qn11_design_only.v
`timescale 1ns/1ps
// 
//////////////////////////////////////////////////////////////////////////////////


module bm_qn11();
reg x3,x2,x1;
 reg f,g;
 reg d1,d2;
always @(*)begin
d1 = x1 & x2;
    d2 = ~(x3 | d1);
    f  = d1;
    g  = d2;

end
initial begin
x3=0;x2=0;x1=0;
#4
x3=0;x2=0;x1=1;
#4
x3=0;x2=1;x1=0;
#4
x3=0;x2=1;x1=1;
#4
x3=1;x2=0;x1=0;
#4
x3=1;x2=0;x1=1;
#4
x3=1;x2=1;x1=0;
#4
x3=1;x2=1;x1=1;


end
endmodule
