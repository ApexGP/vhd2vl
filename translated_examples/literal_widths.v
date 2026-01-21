// Covers sized integer/based literals and negative constants in concatenation
// no timescale needed

module literal_widths(
        input wire clk,
        output wire [4'd11:1'd0] y
    );




    parameter c_hex = 8'hAB;  // expect 8'hAB
    wire [3'd7:1'd0] s_neg;
    wire [2'd3:1'd0] c_bin;

    // negative literal should emit sized signed constant
    assign s_neg =  -3'd5;
    // binary literal width stays explicit
    assign c_bin = 4'b1010;
    // concat mixes signed and std_logic_vector; sized literals must avoid unsized 'sd forms
    assign y = {s_neg,c_bin};

endmodule
