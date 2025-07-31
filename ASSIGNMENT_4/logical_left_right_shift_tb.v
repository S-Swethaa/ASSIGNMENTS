`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module logical_left_right_shift_tb();
reg [3:0]x;
wire [3:0] ll_shift,lr_shift;

logical_left_right_shift uut(.x(x),
.ll_shift(ll_shift),
.lr_shift(lr_shift));

initial begin
x=4'b1001;
#4
x=4'b10x1;
#4
x=4'b10z1;
#4
x=4'b1001;
#4
x=4'b1011;
#4
x=4'b1101;
#4
x=4'b1111;
#4
x=4'b1000;
#4
$finish;
end



endmodule
