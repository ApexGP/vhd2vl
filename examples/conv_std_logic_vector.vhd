library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity conv_std_logic_vector_demo is
    port(
        x : in  std_logic_vector(7 downto 0);
        y : out std_logic_vector(7 downto 0)
    );
end entity;

architecture rtl of conv_std_logic_vector_demo is
begin
    -- triggers two-argument conv_std_logic_vector usage
    y <= conv_std_logic_vector(5, 8) xor x;
end architecture;
