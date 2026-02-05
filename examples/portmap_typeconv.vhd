library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity portmap_child is
  port(
    a : in std_logic_vector(7 downto 0);
    b : in signed(7 downto 0);
    c : in unsigned(7 downto 0)
  );
end entity portmap_child;

architecture rtl of portmap_child is
begin
end architecture rtl;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity portmap_typeconv is
  port(
    clk : in std_logic
  );
end entity portmap_typeconv;

architecture rtl of portmap_typeconv is
  signal s_slv : std_logic_vector(7 downto 0);
begin
  u0: entity work.portmap_child
    port map(
      a => std_logic_vector(to_unsigned(42, 8)),
      b => to_signed(-3, 8),
      c => unsigned(s_slv)
    );
end architecture rtl;
