library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RCAlu is
    Port ( 
        A8, B8 : in STD_LOGIC_VECTOR (7 downto 0);
        R9: out STD_LOGIC_VECTOR (8 downto 0);
        Ctrl: in STD_LOGIC
     );
end RCAlu;

architecture MyRCAlu of RCAlu is
    component RCAluG
        generic(n : integer);
        port(
            A,B : in std_logic_vector(n-1 downto 0);
            Ctrl : in std_logic;
            R : out std_logic_vector(n downto 0)
        );
    end component;

    begin
        RCAlu: RCAluG generic map (8)
                port map(A8, B8, Ctrl, R9);
end MyRCAlu;

