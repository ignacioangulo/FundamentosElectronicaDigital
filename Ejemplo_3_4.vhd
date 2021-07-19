-- Ejemplo 3.4 
-- Diseñar el circuito lógico 
-- capaz de visualizar en un 7–segmentos el dígito correspondiente 
-- a la combinación en BCD de los cuatro bits de entrada

-- Autor: Universidad de Deusto

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity main is
port ( 
clk : in std_logic;
sw : in  STD_LOGIC_VECTOR(15 DOWNTO 0); 
btnU : in  STD_LOGIC; 
btnD : in  STD_LOGIC; 
btnL : in  STD_LOGIC; 
btnR : in  STD_LOGIC; 
btnC : in  STD_LOGIC; 
led : out STD_LOGIC_VECTOR(15 DOWNTO 0); 
seg : out STD_LOGIC_VECTOR(6 DOWNTO 0); 
an : out STD_LOGIC_VECTOR(3 DOWNTO 0)
);
end main;

architecture Behavioral of main is
signal bcd: std_logic_vector (3 downto 0);

begin

bcd<=sw(3 downto 0);

process(bcd)
begin
case bcd is
     when "0000" => seg<="0000001";
     when "0001" => seg<="1001111";
     when "0010" => seg<="0010010";
     when "0011" => seg<="0000110";
     when "0100" => seg<="1001100";
     when "0101" => seg<="0100100";
     when "0110" => seg<="1100000";
     when "0111" => seg<="0001111";
     when "1000" => seg<="0000000";
     when "1001" => seg<="0001100";
     when others => seg<="-------";
end case;
end process;

an<="1110";

end Behavioral;