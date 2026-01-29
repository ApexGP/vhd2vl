// Covers ranges that could become empty/negative; ensure scalar fallback
// no timescale needed

module empty_range(
input wire [23:0] a,
input wire [31:0] sel,
output wire [23:0] y
);




wire [22:0] frac;
wire [23:0] mXu;

  // guard: when sel = -1, the slice (sel downto 0) would be invalid; expect scalar fallback in translation
  assign frac = a[22:0];
  assign mXu = {1'b1,frac};
  // width must remain 24 without 0'b or negative ranges
  assign y = mXu;

endmodule
