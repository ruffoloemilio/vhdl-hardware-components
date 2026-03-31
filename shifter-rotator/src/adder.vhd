library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder is
    generic(n : integer := 8);
    port(
        A,B : in std_logic_vector(n-1 downto 0);
        clk : in STD_LOGIC;
        S : out std_logic_vector(n downto 0)
    );
end adder;

architecture MyAdder of adder is

component registro is
    generic (n: integer);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
        clk : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end component;

    signal C: std_logic_vector (n+1 downto 0);
    signal p, g: std_logic_vector (n downto 0);
    signal R: std_logic_vector (n downto 0);
    
    begin
        C(0) <= '0';
        
        p <= (A(n-1) xor B(n-1)) & (A xor B);
        g <= (A(n-1) and B(n-1)) & (A and B);
        C(n+1 downto 1) <= g or (p and C(n downto 0));
        
        process(clk) begin
            if rising_edge(clk) then
                S <= p xor C(n downto 0);
             end if;
        end process;
        
end MyAdder;

