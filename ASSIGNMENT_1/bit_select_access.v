`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2025 09:31:19 PM
// Design Name: 
// Module Name: bit_select_access
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


module bit_select_access();

  reg [7:0] data;  

  initial begin
    data = 8'b10101100; 

   
    $display("Full data  = %b", data);
    $display("Bit at index 3 = %b", data[3]);
  end
endmodule
