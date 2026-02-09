// no timescale needed

module conv_integer_demo(
input wire [7:0] s,
output wire [31:0] u,
output wire [31:0] i
);





  // conv_integer should be parsed as CONVFUNC_1 and preserved as expr
  assign u = $unsigned(s) + 1;
  assign i = $signed(s);

endmodule
