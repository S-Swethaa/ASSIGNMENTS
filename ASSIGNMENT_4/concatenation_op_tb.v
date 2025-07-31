`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 12:18:34 AM
// Design Name: 
// Module Name: concatenation_op_tb
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


module concatenation_op_tb();
  reg a;
  reg [1:0] b, c;
  wire [2:0] y;


  concatenation_operator uut (
    .a(a),
    .b(b),
    .c(c),
    .y(y)
  );
 initial begin
    a = 1'b1;
    b = 2'b10;  
    c = 2'b11; 
    #1;
    $display("a = %b", a);
    $display("b = %b", b);
    $display("c = %b", c);
    $display("b[0] = %b", b[0]);
    $display("c[1] = %b", c[1]);
    $display("y = {a, b[0], c[1]} = %b", y);
    $finish;
  end
endmodule

