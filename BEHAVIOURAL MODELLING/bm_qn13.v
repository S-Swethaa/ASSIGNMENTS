`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 06:30:04 PM
// Design Name: 
// Module Name: bm_qn13
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


module bm_qn13();
reg q, d, clk;
always @(posedge clk) begin
#20 q = d;
end
initial begin
clk = 0;
d = 1;
#25 clk=1;
end 
initial begin
$display("q = %b", q);
end

endmodule
