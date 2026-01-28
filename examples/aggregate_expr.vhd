library IEEE;
use IEEE.std_logic_1164.all;

entity aggregate_expr is
  port(
    vec_down : out std_logic_vector(7 downto 0);
    vec_up   : out std_logic_vector(0 to 7)
  );
end entity aggregate_expr;

architecture rtl of aggregate_expr is
begin
  vec_down <= (7 downto 4 => '1', 3 downto 0 => '0');
  vec_up   <= (0 to 3 => '0', 4 to 7 => '1');
end architecture rtl;
