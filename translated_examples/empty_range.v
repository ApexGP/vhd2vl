// Covers ranges that could become empty/negative; ensure scalar fallback
// no timescale needed

module empty_range(
input wire [23:0] a,
input wire [31:0] sel,
output wire [23:0] y
);




wire [22:0] frac;
wire [23:0] mXu;
wire [22:0] concat_str;
wire [22:0] concat_base;
wire [22:0] concat_convfunc2;

  // guard: when sel = -1, the slice (sel downto 0) would be invalid; expect scalar fallback in translation
  assign frac = a[22:0];
  assign mXu = {1'b1,frac};
  // width must remain 24 without 0'b or negative ranges
  assign y = mXu;
  // empty string literal should not force width (len=0)
  assign concat_str = frac;
  // empty based literal (NAME STRING) should not force width (len=0)
  assign concat_base = frac;
  // CONVFUNC_2 zero-width: should not introduce sized literal
  assign concat_convfunc2 = frac;

endmodule
