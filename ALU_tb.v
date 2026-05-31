`timescale 1ns / 1ps
module alu_tb;
    reg [15:0] a, b;
    reg [3:0] s;
    wire [15:0] o;
    alu uut (a,b,s,o);

    initial begin
        $monitor($time," | a=%b | b=%b | s=%b | o=%b", a, b, s, o);
        a = 16'b1010101010101010;  
        b = 16'b0000111100001111;  
        s = 4'b0000; #10;
        s = 4'b0001; #10; 
        s = 4'b0010; #10; 
        s = 4'b0011; #10; 
        s = 4'b0100; #10; 
        s = 4'b0101; #10; 
        s = 4'b0110; #10; 
        s = 4'b0111; #10; 
        s = 4'b1000; #10; 
        s = 4'b1001; #10; 
        s = 4'b1010; #10; 
        s = 4'b1011; #10; 
        s = 4'b1100; #10; 
        s = 4'b1101; #10;
        s = 4'b1110; #10; 
        s = 4'b1111; #10; 
        $finish;
    end
endmodule