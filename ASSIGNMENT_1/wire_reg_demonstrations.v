`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2025 09:49:39 AM
// Design Name: 
// Module Name: wire_reg_demonstrations
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


module wire_reg_demonstrations(
wire net1,net2);

assign net1=1'b0;
assign net2=net1;

initial begin
$display("wire net1:%b",net1);
$display("wire net2:%b",net2);

end 
endmodule
