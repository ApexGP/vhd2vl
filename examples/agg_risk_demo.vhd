library ieee;
use ieee.std_logic_1164.all;

entity agg_risk is
    port(
        y : out std_logic
    );
end entity agg_risk;

architecture rtl of agg_risk is
    constant a_c : std_logic_vector(0 downto 0) := "0";
    constant b_c : std_logic_vector(0 downto 0) := "1";
    signal y_sel : std_logic;
begin
    -- Concatenation selector uses op='c' and must be wrapped in Verilog.
    -- If not wrapped, this becomes "case(a_c,b_c)".
    with a_c & b_c select
        y_sel <= '0' when "00",
                 '1' when "01",
                 '0' when "10",
                 '1' when others;

    y <= y_sel;
end architecture rtl;