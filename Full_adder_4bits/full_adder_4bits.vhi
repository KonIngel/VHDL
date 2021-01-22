
-- VHDL Instantiation Created from source file full_adder_4bits.vhd -- 03:00:01 12/23/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT full_adder_4bits
	PORT(
		A : IN std_logic_vector(3 downto 0);
		B : IN std_logic_vector(3 downto 0);
		Cn : IN std_logic;          
		S : OUT std_logic_vector(3 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;

	Inst_full_adder_4bits: full_adder_4bits PORT MAP(
		A => ,
		B => ,
		Cn => ,
		S => ,
		Cout => 
	);


