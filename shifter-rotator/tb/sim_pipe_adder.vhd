library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;

entity sim_pipe_adder is
end sim_pipe_adder;

architecture MySimPipeAdder of sim_pipe_adder is

component pipe_adder is
    Port (
        A, B, C, D, E, F : in std_logic_vector(7 downto 0);
        clk: in std_logic;
        R: out std_logic_vector(10 downto 0)
    );
end component;

signal A, B, C, D, E, F: std_logic_vector (7 downto 0);
signal clk: std_logic:='0';
signal R: std_logic_vector (10 downto 0);

begin
    CUT: pipe_adder port map (
        A => A, B => B, C => C, 
        D => D, E => E, F => F, 
        clk => clk, 
        R => R
    );
    
    process begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
    
    process begin
        for i in 1 to 100 loop
            wait until falling_edge(clk);
            A <= conv_std_logic_vector(i, 8);
            B <= conv_std_logic_vector(i, 8);
            C <= conv_std_logic_vector(i, 8);
            D <= conv_std_logic_vector(i, 8);
            E <= conv_std_logic_vector(i, 8);
            F <= conv_std_logic_vector(i, 8);
        end loop;
        
        for i in 1 to 5 loop
            wait until falling_edge(clk);
        end loop;
        
        wait;
    end process;
    
end MySimPipeAdder;
