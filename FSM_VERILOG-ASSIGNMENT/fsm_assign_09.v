`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 04:01:10 PM
// Design Name: 
// Module Name: fsm_assign_09
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


module fsm_assign_09(
input clk,reset,din,
output  reg  detected
    );
    reg [2:0] state , next_state;
    parameter  a=3'd0,
               b=3'd1,
               c=3'd2,
               d=3'd3;
  always @ (posedge clk or posedge reset) begin
      if(reset)begin
         state<=a;
      end  else
         state<=next_state;
      end
   always @(*)begin
       next_state = state;
       detected = 0;
       case (state)
       a:begin
       if(din)
       next_state=b;
        else
       next_state=c;
       end
       b:begin
       if(din)
       next_state=a;
        else
       next_state=d;
       end
       c:begin
       if(din)
       next_state=d;
       else
       next_state=a;
       end
       d:begin
       if(din)
       next_state=c;
      else
       next_state=b;
       detected =1;
       end
       endcase
       end
endmodule
