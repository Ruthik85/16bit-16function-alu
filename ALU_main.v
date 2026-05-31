//Arithmetic Unit 
module ath(a, b, s, o);     
input [15:0] a, b;     
input [2:0] s;      
output reg [15:0] o; 
always @(*) begin 
case (s) 
3'b000: o = a + b; 
3'b001: o = a + b + 1; 
3'b010: o = a - b; 
3'b011: o = a - b - 1; 
3'b100: o = a; 
3'b101: o = a + 1; 
3'b110: o = a - 1;             
3'b111: o = b;              
default: o = 16'b0;         
endcase     
end 
endmodule 
// Logic and Shift Unit 
module lands(a, b, s, o);     
input [15:0] a, b;      
input [2:0] s;      
output reg [15:0] o; 
always @(*) begin 
case (s) 
3'b000: o = a & b; 
3'b001: o = a | b; 
3'b010: o = a ^ b; 
3'b011: o = ~a; 
3'b100: o = ~(a & b); 
3'b101: o = ~(a | b); 
3'b110: o = a >> 1;             
3'b111: o = a << 1;             
default: o = 16'b0;         
endcase     
end 
endmodule 
// ALU (Arithmetic + Logic) 
module alu(a, b, s, o);     
input [15:0] a, b;      
input [3:0] s;        
output [15:0] o; 
wire [15:0] o1, o2;     
wire s1 = s[3];           
wire [2:0] s2 = s[2:0]; 
ath A1(a, b, s2, o1);      
lands L1(a, b, s2, o2); 
assign o = (s1 == 0) ? o1 : o2;  
endmodule 

