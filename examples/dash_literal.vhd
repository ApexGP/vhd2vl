library ieee;
use ieee.std_logic_1164.all;

entity dash_literal is
  port(
    a  : in  std_logic;
    v  : in  std_logic_vector(3 downto 0);
    y1 : out std_logic;
    y2 : out std_logic_vector(3 downto 0);
    y3 : out std_logic_vector(3 downto 0)
  );
end;

architecture rtl of dash_literal is
begin
  y1 <= '-';
  y2 <= (others => '-');
  process(a, v)
  begin
    case v is
      when "0000" => y3 <= "0000";
      when others => y3 <= "----";
    end case;
  end process;
end rtl;
