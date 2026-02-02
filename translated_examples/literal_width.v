// Covers sized integer/based literals and negative constants in concatenation
// no timescale needed

module literal_widths(
input wire clk,
output wire [11:0] y
);




parameter c_hex = 8'hAB;  // expect 8'hAB
wire [7:0] s_neg;
wire [3:0] c_bin;

  // negative literal should emit sized signed constant
  assign s_neg = -8'd5;
  // binary literal width stays explicit
  assign c_bin = 4'b1010;
  // concat mixes signed and std_logic_vector; sized literals must avoid unsized 'sd forms
  assign y = {s_neg,c_bin};

endmodule
