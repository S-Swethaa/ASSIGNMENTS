`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 05:57:04 AM
// Design Name: 
// Module Name: bm_qn5
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


module bm_qn5(
input  [3:0] a,
  output reg [1:0] y);

always@(*) begin
case( 1'b1 )
a[3] : y =3;
a[2] : y = 2;
a[1] : y = 1;
a[0] : y = 0;

  endcase
end

endmodule
