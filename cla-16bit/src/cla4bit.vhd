entity cla4bit is
    port(A,B: in bit_vector(3 downto 0);
         cin: in bit;
         cout: out bit;
         S: out bit_vector(3 downto 0));
end cla4bit;

architecture my_cla4bit of cla4bit is
    signal p,g: bit_vector(3 downto 0);
    signal C: bit_vector(4 downto 0);
    
    begin
        p <= A xor B;
        g <= A and B;
        C(0) <= cin;
        C(1) <= g(0) or (p(0) and C(0));
        C(2) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and C(0));
        C(3) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) or (p(2) and p(1) and p(0) and C(0));
        C(4) <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0)) or (p(3) and p(2) and p(1) and p(0) and C(0));
        
        cout <= C(4);
        S <= p xor C(3 downto 0);
 
end my_cla4bit;