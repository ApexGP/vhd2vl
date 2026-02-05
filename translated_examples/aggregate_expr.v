// no timescale needed

module aggregate_expr(
output wire [7:0] vec_down,
output wire [0:7] vec_up
);





  assign vec_down = {{(7)-(4)+1{1'b1}},{(3)-(0)+1{1'b0}}};
  assign vec_up = {{(3)-(0)+1{1'b0}},{(7)-(4)+1{1'b1}}};

endmodule
