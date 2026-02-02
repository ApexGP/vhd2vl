-- Covers sized integer/based literals and negative constants in concatenation
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity literal_widths is
  port(
    clk : in  std_logic;
    y   : out std_logic_vector(11 downto 0)
  );
end literal_widths;

architecture rtl of literal_widths is
  constant c_hex : std_logic_vector(7 downto 0) := x"AB"; -- expect 8'hAB
  signal s_neg   : signed(7 downto 0);
  signal c_bin   : std_logic_vector(3 downto 0);
begin
  -- negative literal should emit sized signed constant
  s_neg <= to_signed(-5, 8);

  -- binary literal width stays explicit
  c_bin <= "1010";

  -- concat mixes signed and std_logic_vector; sized literals must avoid unsized 'sd forms
  y <= std_logic_vector(s_neg) & c_bin;
end rtl;
