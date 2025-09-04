`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 09:57:57 AM
// Design Name: 
// Module Name: fsm_assign_13
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


module fsm_assign_13(
input clk,reset,
input x,
output reg y);

reg [2:0]state,nextstate;
parameter a=3'd0,b=3'd1,c=3'd2,d=3'd3;

always @(posedge clk or posedge reset)begin
if(reset)
 state<=a;
else 
 state<=nextstate;
end

always @(*)begin
nextstate=a;
// y=1'b0;
case(state)
 a:begin
if(x)begin
nextstate=b;
end else 
nextstate=a; end

 b:begin
 
  if(x)begin
   nextstate=d;
    end else begin
    nextstate=c;
   // y=1'b1;
     end
    end
 c:begin
  if(x)begin nextstate=b;
    //y=1'b1;
  end 
  else begin
  nextstate =a; end
  end
 d:begin
 if(x)begin
 nextstate=d;
 end 
 else begin
 nextstate=c;
 end
  end
 
 default:nextstate=a;
 
 endcase
 end
 
  
always @(posedge clk or posedge reset) begin
    if (reset)
        y <= 0;
    else begin
        case (state)
            b: if (!x) y <= 1; else y <= 0;
            c: if (x)  y <= 1; else y <= 0;
            default:   y <= 0;
        endcase
    end
end

 
/*always @(*)begin
 y=1'b0;
case(state)
 a:begin
   nextstate = {state[0],x};
     if ({state,x} == 3'b010)
       y=1'b1;
       end
  
 b:begin
  nextstate={state[0],x};
    if({state,x}==3'b101)
       y=1'b1;
       end
  
 c:begin
  nextstate={state[0],x};
    if({state,x}==3'b010)
      y=1'b1;end
  
 d:begin
  nextstate={state[0],x};
    if({state,x}==3'b101)
      y=1'b1;
  end

endcase
end*/


endmodule

