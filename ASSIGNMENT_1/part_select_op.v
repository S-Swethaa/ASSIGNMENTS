`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2025 09:36:30 PM
// Design Name: 
// Module Name: part_select_op
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


module part_select_op();

  reg [7:0] bus;       
  reg [3:0] lower_nibble;

  initial begin
    bus = 8'b11011001;  

   
    lower_nibble = bus[3:0];

    $display("Full bus         = %b", bus);
    $display("Lower nibble     = %b", lower_nibble);
  end
endmodule

