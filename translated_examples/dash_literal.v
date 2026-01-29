// no timescale needed

module dash_literal(
input wire a,
input wire [3:0] v,
output wire y1,
output wire [3:0] y2,
output reg [3:0] y3
);





  assign y1 = 1'bx;
  assign y2 = {4{1'bx}};
  always @(a, v) begin
    case(v)
    4'b0000 : begin
      y3 <= 4'b0000;
    end
    default : begin
      y3 <= 4'bxxxx;
    end
    endcase
  end


endmodule
