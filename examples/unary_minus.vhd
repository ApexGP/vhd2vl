library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity unary_minus is
  port(
    in_signed  : in signed(7 downto 0);
    in_int     : in integer;
    out_signed : out signed(7 downto 0);
    out_int    : out integer
  );
end entity unary_minus;

architecture rtl of unary_minus is
begin
  out_signed <= -in_signed;
  out_int    <= -in_int;
end architecture rtl;
