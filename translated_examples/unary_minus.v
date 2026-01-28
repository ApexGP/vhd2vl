// no timescale needed

module unary_minus(
input wire [7:0] in_signed,
input wire [31:0] in_int,
output wire [7:0] out_signed,
output wire [31:0] out_int
);





  assign out_signed =  -in_signed;
  assign out_int =  -in_int;

endmodule
