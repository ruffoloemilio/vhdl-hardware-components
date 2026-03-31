library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pipe_adder is
    Port (
        A, B, C, D, E, F : in std_logic_vector(7 downto 0);
        clk: in std_logic;
        R: out std_logic_vector(10 downto 0)
    );
end pipe_adder;

architecture MyPipeAdder of pipe_adder is

component registro is
    generic (n: integer);
    Port ( D : in STD_LOGIC_VECTOR (n-1 downto 0);
        clk : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component adder is
    generic(n : integer := 8);
    port(
        A,B : in std_logic_vector(n-1 downto 0);
        clk : in STD_LOGIC;
        S : out std_logic_vector(n downto 0)
    );
end component;

signal RA, RB, RC, RD, RE, RF: std_logic_vector (7 downto 0);
signal RS3: std_logic_vector (8 downto 0);
signal eRS3: std_logic_vector (9 downto 0);

signal S1, S2, S3: std_logic_vector (8 downto 0);
signal S4: std_logic_vector (9 downto 0);
signal S5: std_logic_vector (10 downto 0);

begin
    RegA: registro generic map (8) port map (A, clk, RA); 
    RegB: registro generic map (8) port map (B, clk, RB); 
    RegC: registro generic map (8) port map (C, clk, RC); 
    RegD: registro generic map (8) port map (D, clk, RD); 
    RegE: registro generic map (8) port map (E, clk, RE); 
    RegF: registro generic map (8) port map (F, clk, RF); 
    
    Sum1: adder generic map (8) port map (RA, RB, clk, S1);
    Sum2: adder generic map (8) port map (RC, RD, clk, S2);
    Sum3: adder generic map (8) port map (RE, RF, clk, S3);
    
    RegSum3: registro generic map (9) port map (S3, clk, RS3);
    eRS3 <= RS3(8) & RS3;
    
    Sum4: adder generic map (9) port map (S1, S2, clk, S4);
    Sum5: adder generic map (10) port map (S4, eRS3, clk, S5);
    
    R<=S5;
end MyPipeAdder;
