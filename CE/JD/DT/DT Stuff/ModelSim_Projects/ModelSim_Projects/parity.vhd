LIBRARY ieee;
    USE ieee.std_logic_1164.all;
    
    ENTITY parity IS
        PORT(
        x1: IN std_logic;
        x2: IN std_logic;
        x3: IN std_logic;
        x4: IN std_logic;
        
        o1: OUT std_logic        
        );
END ENTITY parity;
        
ARCHITECTURE paritygen OF parity IS
   BEGIN
    par:
    PROCESS(x1,x2,x3,x4)
        BEGIN
           o1<=NOT( (((x1 XOR x2) XOR x3) XOR x4) );
    END PROCESS par;
        
END ARCHITECTURE paritygen;

          