`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 11:24:14 AM
// Design Name: 
// Module Name: TASK_19-Develop a task to perform serial addition (bit-by-bit) for two 4-bit numbers.
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


module TASK_19();
reg [3:0]a,b;
reg [4:0]sum;

task perform_serial_addition_bit_by_bit;
input [3:0]x,y;
output [4:0]out;
integer i;
reg carry;
begin
out=0;carry=0;
for(i=0;i<4;i=i+1)begin
  out[i]=x[i]^y[i]^carry;
  carry=(x[i]&y[i] | x[i]&carry | y[i]&carry );
  end
  out[4]=carry;
  end
  endtask
  
  initial begin
  a=4'd12;
  b=4'd3;
  perform_serial_addition_bit_by_bit(a,b,sum);
  $display("a=%b,b=%b,sum=%b",a,b,sum);#12;
   a=4'd10;
  b=4'd3;
  perform_serial_addition_bit_by_bit(a,b,sum);
  $display("a=%b,b=%b,sum=%b",a,b,sum);#12;
  $finish;
  end
  



endmodule
