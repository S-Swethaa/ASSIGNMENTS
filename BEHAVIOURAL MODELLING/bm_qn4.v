`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 09:27:54 PM
// Design Name: 
// Module Name: bm_qn4
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


module bm_qn4();
reg [2:0] c;
reg [2:0]out;
 /* initial begin
    c = 3'b00x;
    c[0]=1'bx;
    #1;  
  end
always@(*)
begin
casex( c )
3'b000: $display("Executing st1");
3'b100:$display("Executing st1");
3'b001:$display("Executing st1");
endcase
end
endmodule*/

always @(c)
casex(c)
3'b00x:begin
out=c;
$display("Executing the possible value of c");
end
endcase

always #2 c=$random;

endmodule
