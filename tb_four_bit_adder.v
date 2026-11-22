`timescale 1ns/1ps
module tb_four_bit_adder();
reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

four_bit_adder uut (A, B, Cin, Sum, Cout);

initial begin
    $dumpfile("adder.vcd");
    $dumpvars(0, tb_four_bit_adder);
    A = 4'b0001; B = 4'b0011; Cin = 0; #10;
    A = 4'b0101; B = 4'b0110; Cin = 1; #10;
    A = 4'b1111; B = 4'b0001; Cin = 0; #10;
    A = 4'b0000; B = 4'b0000; Cin = 0; #10;
    A = 4'b1111; B = 4'b1111; Cin = 1; #10;
    $finish;
end
endmodule
