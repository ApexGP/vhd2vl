library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity conv_integer_sink is
  port(
    val_u : in integer;
    val_i : in integer
  );
end entity;

architecture rtl of conv_integer_sink is
begin
  -- keep empty, only for verifying expression conversion in port map
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity conv_integer_demo is
  port(
    s : in  std_logic_vector(7 downto 0);
    u : out integer;
    i : out integer
  );
end entity;

architecture rtl of conv_integer_demo is
  constant s_test_neg : std_logic_vector(7 downto 0) := x"FF";
begin
  -- conv_integer should be parsed as CONVFUNC_1 and preserved as expr
  u <= conv_integer(unsigned(s)+1);
  i <= conv_integer(signed(s));

  -- conv_integer in port map, using constant for static expression
  sink_inst : entity work.conv_integer_sink
    port map(
      -- expected 255
      val_u => conv_integer(unsigned(s_test_neg)),
      -- expected -1
      val_i => conv_integer(signed(s_test_neg))
    );
end architecture;