entity sum16bit is
    port(A,B: in bit_vector(15 downto 0);
         cin: in bit;
         cout: out bit;
         S: out bit_vector(15 downto 0));
end sum16bit;

architecture my_sum16bit of sum16bit is
    signal C: bit_vector(4 downto 0);
    component cla4bit
        port(A, B: in bit_vector(3 downto 0);
             cin: in bit;
             cout: out bit;
             S: out bit_vector(3 downto 0));
    end component;
    begin
  
        C(0) <= cin;
        cout <= C(4);
        myFor: for i in 0 to 3 generate
            CLAi: cla4bit port map(A(i*4+3 downto i*4), B(i*4+3 downto i*4), C(i), C(i+1),S(i*4+3 downto i*4));
        end generate;
end my_sum16bit;