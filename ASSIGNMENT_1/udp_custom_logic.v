`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 12:39:40 PM
// Design Name: 
// Module Name: udp_custom_logic
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


primitive udp_custom_logic (f, x, y, z);
  output f;          
  input x, y, z;

  table
    // x y z : f
     0 0 0 : 0;
     0 0 1 : 0;
     0 1 0 : 1;
     0 1 1 : 0;
     1 0 0 : 1;
     1 0 1 : 1;
     1 1 0 : 1;
     1 1 1 : 1;
  endtable
endprimitive


