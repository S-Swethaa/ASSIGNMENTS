`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2025 09:56:01 AM
// Design Name: 
// Module Name: fsm_assign_digital_stopwatch
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
module fsm_assign_digital_stopwatch(
input clk,reset,
input wire start,stop,
output reg [5:0]millisec,
output reg [5:0] sec);

parameter [1:0] idle=2'b00,ms=2'b01,se=2'b10,st=2'b11;
reg [5:0]count;
reg[1:0]state,nextstate;

always @(posedge clk or posedge reset)begin
if(reset)begin
state<=idle;
 count<=0;
 millisec<=0;
 sec<=0;
end  else
state<=nextstate;
end

always @(*)begin
case(state)
idle:begin if(start)begin nextstate=ms;end
else nextstate<=idle;end 

ms:begin if(millisec==59)begin
nextstate=se;
end else
nextstate=ms; end

se:begin if(stop)begin
nextstate=st;
count=0;
end else begin
//count<=count+6'd1;
nextstate=ms; end
end

st:begin if(reset)begin
nextstate=idle;
end else 
nextstate=st; end 
default:nextstate=idle;
endcase
end

always @(posedge clk or posedge reset)begin
if(reset)begin
count<=0;
sec<=0;
millisec<=0;
end
else begin
case(state)
ms:begin
/*if (count==6'd59) begin
  count<=6'd0;
  sec<=(sec==6'd59)?6'd0:sec+6'd1;
  end else  begin
  //if(stop==1)
 // count<=;
 // else
  count<=count+6'd1;
  end
  millisec<=count;
   end*/
    if (count == 6'd59) begin
        count <= 1;                 
        millisec <= 0;              
        sec <= (sec == 6'd59) ? 0 : sec + 1;
    end else begin
        count <= count + 1;
        millisec <= count + 1;
    end
    end
 
st:begin
count<=count;
sec<=sec;
millisec<=millisec;
end

default: begin

end
endcase
end
end
endmodule



