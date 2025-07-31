`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 03:28:53 PM
// Design Name: 
// Module Name: two_4decoder_dataflow_activelow_tb
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


module two_4decoder_dataflow_activelow_tb();
reg i0,i1;
wire y0,y1,y2,y3;

two_4decoder_dataflow_activelow dut(.i0(i0),
.i1(i1),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3));
    initial begin
i0=0;i1=0;
#4
i0=0;i1=1;
#4
i0=1;i1=0;
#4
i0=1;i1=1;
#4
$finish;
end
endmodule
