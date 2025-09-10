`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SWETHA SANKAR
// 
// Create Date: 09/09/2025 02:17:39 PM
// Design Name: Implement a function to return 1 if input is a prime number, else 0.
// Module Name: FUNCTION_4
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


module FUNCTION_4(
input wire [7:0]a,
output wire prime_number);

function find_prime_number;
input[7:0]num;
integer i;
reg [7:0]count;
begin
if(num<2)begin
count=1;
end
else if(num==2)
count=0;
else begin
count=0;
for(i=2;i<num/2;i=i+1)begin
    if(num %i==0)
    count=count+1;
end
end
if(count==0)
find_prime_number=1;
else
find_prime_number=0;
end
endfunction

assign prime_number=find_prime_number(a);
endmodule
