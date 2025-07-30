`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 03:10:26 PM
// Design Name: 
// Module Name: udp_custom_logic_tb
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


module udp_custom_logic_tb();
  reg x, y, z;
  wire f;

  
  udp_custom_logic my_udp (f, x, y, z);

  initial begin
    $display("Time | x y z | f");
    $monitor("%4t | %b %b %b | %b", $time, x, y, z, f);

   
    x = 0; y = 0; z = 0;
     #10;
    x = 0; y = 0; z = 1;
     #10;
    x = 0; y = 1; z = 0; 
    #10;
    x = 0; y = 1; z = 1; 
    #10;
    x = 1; y = 0; z = 0; 
    #10;
    x = 1; y = 0; z = 1; 
    #10;
    x = 1; y = 1; z = 0; 
    #10;
    x = 1; y = 1; z = 1; 
    #10;

    $finish;
  end
endmodule

