library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity conv_integer_demo is
  port(
    s  : in  std_logic_vector(7 downto 0);
    u  : out integer;
    i  : out integer
  );
end conv_integer_demo;

architecture rtl of conv_integer_demo is
begin
  -- conv_integer should be parsed as CONVFUNC_1 and preserved as expr
  u <= conv_integer(unsigned(s)+1);
  i <= conv_integer(signed(s));
end rtl;