`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 01:08:07 PM
// Design Name: Write a recursive function to compute factorial using automatic.
// Module Name: FUNCTION_3
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


module FUNCTION_3();

function automatic integer factorial;
input integer num;
begin
if(num>1)
 factorial=num*factorial(num-1);
 else
 factorial =1;
 end
 endfunction
 
 initial begin
 $display("factorial of 5 =%d",factorial(5));
  $display("factorial of 3 =%d",factorial(3));
   $display("factorial of 10 =%d",factorial(10));
    $display("factorial of 4 =%d",factorial(4));

$finish;
end

 
 
endmodule
