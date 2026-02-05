-- Covers ranges that could become empty/negative; ensure scalar fallback
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity empty_range is
  port(
    a   : in  std_logic_vector(23 downto 0);
    sel : in  integer range -1 to 3;
    y   : out std_logic_vector(23 downto 0)
  );
end empty_range;

architecture rtl of empty_range is
  signal frac : std_logic_vector(22 downto 0);
  signal mXu  : std_logic_vector(23 downto 0);
  signal concat_str : std_logic_vector(22 downto 0);
  signal concat_base : std_logic_vector(22 downto 0);
  signal concat_convfunc2 : std_logic_vector(22 downto 0);
begin
  -- guard: when sel = -1, the slice (sel downto 0) would be invalid; expect scalar fallback in translation
  frac <= a(22 downto 0);
  mXu  <= '1' & frac; -- width must remain 24 without 0'b or negative ranges
  y    <= mXu;
  
  -- empty string literal should not force width (len=0)
  concat_str       <= "" & frac;
  -- empty based literal (NAME STRING) should not force width (len=0)
  concat_base      <= B"" & frac;
  -- CONVFUNC_2 zero-width: should not introduce sized literal
  concat_convfunc2 <= conv_std_logic_vector(0, 0) & frac;
end rtl;
