library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity SimRCAlu is
end SimRCAlu;

architecture MySimRCAlu of SimRCAlu is
    component RCAlu is
        Port ( 
            A8, B8 : in STD_LOGIC_VECTOR (7 downto 0);
            R9: out STD_LOGIC_VECTOR (8 downto 0);
            Ctrl: in STD_LOGIC
         );
    end component;
    
    signal A8, B8: std_logic_vector(7 downto 0);
    signal R9: std_logic_vector(8 downto 0);
    signal Ctrl: std_logic;    
    
begin
    CUT: RCAlu port map(A8, B8, R9, Ctrl);
    process begin
        Ctrl<='0';
        for ia in 0 to 127 loop
            A8<=CONV_STD_LOGIC_VECTOR(ia, 8);
            for ib in 0 to 127 loop 
                B8<=CONV_STD_LOGIC_VECTOR(ib, 8);
                wait for 1 ns;
            end loop;
        end loop; 
        
        Ctrl<='1';
        for ia in 0 to 127 loop
            A8<=CONV_STD_LOGIC_VECTOR(ia, 8);
            for ib in 0 to 127 loop 
                B8<=CONV_STD_LOGIC_VECTOR(ib, 8);
                wait for 1 ns;
            end loop;
        end loop; 
    end process;
end MySimRCAlu;
