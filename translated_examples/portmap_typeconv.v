// no timescale needed

module portmap_child(
input wire [7:0] a,
input wire [7:0] b,
input wire [7:0] c
);






endmodule

module portmap_typeconv(
input wire clk
);




wire [7:0] s_slv;

  portmap_child u0(
    .a(8'd42),
    .b(-8'd3),
    .c(s_slv));


endmodule
