library ieee;
use ieee.std_logic_1164.all;

entity concat_demo is
    generic( abc  : std_logic_vector(26 downto 0) := "010" & x"aaa";
             xyz  : std_logic_vector(31 downto 0) := x"000000ff"
           );
    port(reset  : in std_logic
        );

end entity concat_demo;

architecture rtl of concat_demo is
begin
end rtl;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Unit example for repeated concatenation width padding.
entity repeat_concat is
  generic (
    W : integer := 8
  );
  port(
    expY : in std_logic_vector(26 downto 0);
    y    : out std_logic_vector(W + 24 downto 0)
  );
end repeat_concat;

architecture rtl of repeat_concat is
begin
  -- width expression should pad constant with repeat concat
  y <= std_logic_vector(to_unsigned(127, W + 2)) & expY(26 downto 4);
end rtl;
