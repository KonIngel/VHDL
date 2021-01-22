----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:23 01/03/2021 
-- Design Name: 
-- Module Name:    Full_Adder_128bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder_128bit is
generic (n:integer:=128);
    Port ( A : in  STD_LOGIC_VECTOR (n-1 downto 0);
           B : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Cin : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (n downto 0));
end Full_Adder_128bit;



architecture Behavioral of Full_Adder_128bit is
	
COMPONENT Full_adder
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		Cin : IN std_logic;          
		S : OUT std_logic;
		Cout : OUT std_logic
		);
	END COMPONENT;
signal Sig : STD_LOGIC_VECTOR (n downto 0 );
begin
 

Sig(0) <= Cin;
loop1:For i IN  0 TO n-1 GENERATE
		F_A:Full_adder PORT MAP(A(i),B(i),Sig(i),Output(i),sig(i+1));
		
END GENERATE;
output(n) <= sig(n);
end Behavioral;

