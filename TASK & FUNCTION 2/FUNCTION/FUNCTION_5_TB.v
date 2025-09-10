module FUNCTION_5_TB();
    reg [7:0] a, b;
    wire [7:0] difference;

    FUNCTION_5 uut (.a(a), .b(b), .difference(difference));

    initial begin
    a=8'd200;
    b=8'd100;
     #12;  
$display("a=%d, b=%d, difference=%d", a, b, difference);
$finish;
end
endmodule