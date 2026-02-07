// no timescale needed

module agg_risk(
output wire y
);




parameter a_c = 1'b0;
parameter b_c = 1'b1;
reg y_sel;

  // Concatenation selector uses op='c' and must be wrapped in Verilog.
  // If not wrapped, this becomes "case(a_c,b_c)".
  always @(*) begin
    case({a_c,b_c})
      2'b00 : y_sel <= 1'b0;
      2'b01 : y_sel <= 1'b1;
      2'b10 : y_sel <= 1'b0;
      default : y_sel <= 1'b1;
    endcase
  end

  assign y = y_sel;

endmodule
