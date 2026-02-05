// no timescale needed

module concat_demo(
input wire reset
);

parameter [26:0] abc={3'b010,12'haaa};
parameter [31:0] xyz=32'h000000ff;





endmodule
// Unit example for repeated concatenation width padding.

module repeat_concat(
input wire [26:0] expY,
output wire [W + 24:0] y
);

parameter [31:0] W=8;




  // width expression should pad constant with repeat concat
  assign y = {{{((W + 2)-7){1'b0}},7'd127},expY[26:4]};

endmodule
