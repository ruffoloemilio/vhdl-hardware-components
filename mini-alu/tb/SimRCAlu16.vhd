library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity SimRCAlu16 is
end SimRCAlu16;

architecture MySimRCAlu16 of SimRCAlu16 is
    component RCAlu16 is
        Port ( 
            A16, B16 : in std_logic_vector (15 downto 0);
            R17: out STD_LOGIC_VECTOR (16 downto 0);
            Ctrl: in STD_LOGIC
         );
    end component;
    signal A16, B16: std_logic_vector(15 downto 0);
    signal R17: std_logic_vector(16 downto 0);
    signal Ctrl: std_logic;    
    
begin
    CUT: RCAlu16 port map(A16, B16, R17, Ctrl);
    process begin
        Ctrl<='0';
        A16 <= CONV_STD_LOGIC_VECTOR(29, 16);
        B16 <= CONV_STD_LOGIC_VECTOR(12, 16);
        wait for 10 ns;
        A16 <= CONV_STD_LOGIC_VECTOR(15, 16);
        B16 <= CONV_STD_LOGIC_VECTOR(18, 16);
        wait for 10 ns;
        A16 <= CONV_STD_LOGIC_VECTOR(3, 16);
        B16 <= CONV_STD_LOGIC_VECTOR(4, 16);
        wait for 10 ns;
        A16 <= CONV_STD_LOGIC_VECTOR(32767, 16);
        B16 <= CONV_STD_LOGIC_VECTOR(1, 16);
        wait for 10 ns;
        
        Ctrl<='1';  
        A16 <= CONV_STD_LOGIC_VECTOR(29, 16);
        B16 <= CONV_STD_LOGIC_VECTOR(12, 16);
        wait for 10 ns;
        A16 <= CONV_STD_LOGIC_VECTOR(15, 16);
        B16 <= CONV_STD_LOGIC_VECTOR(18, 16);
        wait for 10 ns;
        A16 <= CONV_STD_LOGIC_VECTOR(21, 16);
        B16 <= CONV_STD_LOGIC_VECTOR(2, 16);
        wait for 10 ns;  
    end process;
end MySimRCAlu16;




