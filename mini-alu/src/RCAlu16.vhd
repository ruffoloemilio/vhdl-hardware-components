library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RCAlu16 is
    Port ( 
        A16, B16 : in std_logic_vector (15 downto 0);
        R17: out STD_LOGIC_VECTOR (16 downto 0);
        Ctrl: in STD_LOGIC
     );
end RCAlu16;

architecture MyRCAlu16 of RCAlu16 is
    component RCAluG
        generic(n : integer);
        port(
            A,B : in std_logic_vector(n-1 downto 0);
            Ctrl : in std_logic;
            R : out std_logic_vector(n downto 0)
        );
    end component;

    begin
        RCAlu16: RCAluG generic map (16)
                port map(A16, B16, Ctrl, R17);
end MyRCAlu16;

