library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
    
entity Registro is
    generic (n: integer);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
        clk : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end Registro;
    
architecture MyRegistro of Registro is
    begin
    
    process(clk) begin
        if rising_edge(clk) then
            Q<=D;
        end if;
    end process;
    
end MyRegistro;