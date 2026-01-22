// Minimal repro for width propagation on "1" & Xfrac
// no timescale needed

module concat_mxu(
        input wire clk,
        input wire [22:0] Xfrac,
        output wire [23:0] R
    );

    // width 23



    wire [23:0] mXu;
    wire [23:0] fixX0;

    // left side has implicit leading '1', expect width 24
    assign mXu = {1'b1,Xfrac};
    // simple passthrough to surface width issues after translation
    assign fixX0 = mXu;
    assign R = fixX0;

endmodule
