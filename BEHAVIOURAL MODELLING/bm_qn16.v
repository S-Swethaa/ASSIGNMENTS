`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 07:31:00 AM
// Design Name: 
// Module Name: bm_qn16
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


module bm_qn16();
reg a,b;

initial begin 
a=1; b=a;
$monitor("Time=%0t a=%d b=%d", $time, a, b);
end
initial begin 
#1
 a<=1; b<=a;
$monitor("Time=%0t a=%d b=%d", $time, a, b);
$display ($time, "a=%d,b=%d",a,b);

end
endmodule
