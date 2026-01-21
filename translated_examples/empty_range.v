// File examples/empty_range.vhd translated with vhd2vl 3.0 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 2001

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001-2023 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002-2023 Larry Doolittle
//     http://doolittle.icarus.com/~larry/vhd2vl/
//   Modifications (C) 2017 Rodrigo A. Melo
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

// Covers ranges that could become empty/negative; ensure scalar fallback
// no timescale needed

module empty_range(
input wire [5'd23:1'd0] a,
input wire [31:0] sel,
output wire [5'd23:1'd0] y
);




wire [5'd22:1'd0] frac;
wire [5'd23:1'd0] mXu;

  // guard: when sel = -1, the slice (sel downto 0) would be invalid; expect scalar fallback in translation
  assign frac = a[5'd22:1'd0];
  assign mXu = {1'b1,frac};
  // width must remain 24 without 0'b or negative ranges
  assign y = mXu;

endmodule
