// no timescale needed

module conv_integer_sink(
input wire [31:0] val_u,
input wire [31:0] val_i
);





    // keep empty, only for verifying expression conversion in port map

endmodule

module conv_integer_demo(
input wire [7:0] s,
output wire [31:0] u,
output wire [31:0] i
);




parameter s_test_neg = 8'hFF;

  // conv_integer should be parsed as CONVFUNC_1 and preserved as expr
  assign u = $unsigned(s) + 1;
  assign i = $signed(s);
  // conv_integer in port map, using constant for static expression
  conv_integer_sink sink_inst(
    // expected 255
    .val_u($unsigned(s_test_neg)),
    // expected -1
    .val_i($signed(s_test_neg)));


endmodule
