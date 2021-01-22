
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_adder_4bits is
    Port (	A : in  STD_LOGIC_VECTOR (3 downto 0);
            B : in  STD_LOGIC_VECTOR (3 downto 0);
            Cn : in  STD_LOGIC;
            S : out  STD_LOGIC_VECTOR (3 downto 0);
            Cout : out  STD_LOGIC);
end full_adder_4bits;

architecture Behavioral of full_adder_4bits is

	COMPONENT Full_adder
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Cin : IN std_logic;          
		S : OUT std_logic;
		Cout : OUT std_logic
		);
	END COMPONENT;
	
	signal C1 , C2, C3 : std_logic; 
	signal B0, B1 , B2, B3 : std_logic; 
	
begin
	  B0 <=(B(0) xor Cn);
     B1 <=(B(1) xor Cn);
	  B2 <=(B(2) xor Cn);
	  B3 <=(B(3) xor Cn);
	  
	  FA1:Full_adder PORT MAP(
		A => A(0),
		B => B0,
		Cin => Cn,
		S => S(0),
		Cout => C1
	);
		FA2: Full_adder PORT MAP(
		A => A(1),
		B => B1,
		Cin => C1,
		S => S(1),
		Cout => C2
	);

	FA3: Full_adder PORT MAP(
		A => A(2),
		B => B2,
		Cin => C2,
		S => S(2),
		Cout => C3	);
	FA4: Full_adder PORT MAP(
		A => A(3),
		B => B3,
		Cin => C3,
		S => S(3),
		Cout => Cout);


end Behavioral;

