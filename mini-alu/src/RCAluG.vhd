library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RCAluG is
    generic(n : integer := 8);
    port(
        A,B : in std_logic_vector(n-1 downto 0);
        Ctrl : in std_logic;
        R : out std_logic_vector(n downto 0)
    );
end RCAluG;

architecture MyRCAluG of RCAluG is
    signal B_Signed: std_logic_vector(n-1 downto 0);
    signal Ctrl_vec: std_logic_vector(n-1 downto 0);
    signal C: std_logic_vector(n+1 downto 0);
    signal p, g: std_logic_vector(n downto 0);
    
    begin
        Ctrl_vec <= (others => Ctrl);
        C(0) <= Ctrl;
        B_Signed <= B xor Ctrl_vec;
        p <= (A(n-1) xor B_Signed(n-1)) & (A xor B_Signed);
        g <= (A(n-1) and B_Signed(n-1)) & (A and B_Signed);
        C(n+1 downto 1) <= g or (p and C(n downto 0));
        R <= p xor C(n downto 0);
end MyRCAluG;

