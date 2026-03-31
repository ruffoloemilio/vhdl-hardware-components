library IEEE;
use IEEE.numeric_bit.all;

entity Test is
end Test;

architecture sim_sum16bit of Test is
    component sum16bit
        port(A: in bit_vector(15 downto 0);
             B: in bit_vector(15 downto 0);
             cin: in bit;
             cout: out bit;
             S: out bit_vector(15 downto 0));
    end component;
    signal A,B,S: bit_vector(15 downto 0);
    signal cin, cout: bit;
    
    begin
        cin <= '0';
        process begin
            for ia in 0 to 15 loop
                for ib in 0 to 15 loop
                    A <= bit_vector(TO_UNSIGNED(ia,16));
                    B <= bit_vector(TO_UNSIGNED(ib,16));
                    wait for 10 ns;
                end loop;
            end loop;
        end process;
        CUT: sum16bit port map(A, B, cin, cout, S);
end sim_sum16bit;
