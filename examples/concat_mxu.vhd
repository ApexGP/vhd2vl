-- Minimal repro for width propagation on "1" & Xfrac
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity concat_mxu is
  port(
    clk   : in  std_logic;
    Xfrac : in  unsigned(22 downto 0); -- width 23
    R     : out unsigned(23 downto 0)
  );
end concat_mxu;

architecture rtl of concat_mxu is
  signal mXu   : unsigned(23 downto 0);
  signal fixX0 : unsigned(23 downto 0);
begin
  -- left side has implicit leading '1', expect width 24
  mXu <= "1" & Xfrac;

  -- simple passthrough to surface width issues after translation
  fixX0 <= mXu;
  R <= fixX0;
end rtl;
