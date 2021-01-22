----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:08:26 01/06/2021 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
generic(n:integer:=4);
    Port ( A : in  STD_LOGIC_VECTOR (n downto 0);
           B : in  STD_LOGIC_VECTOR (n downto 0);
           result : out  STD_LOGIC_VECTOR (n downto 0);
           Sel : in  STD_LOGIC_VECTOR (3 downto 0));
end ALU;

architecture Behavioral of ALU is

signal equal : STD_LOGIC;
signal greater : STD_LOGIC;
signal less : STD_LOGIC;

begin



comparator : process ( A , B ) is
 begin
  if signed(A) > signed(B) then
    greater <= '1' ;
	 equal <= '0';
	 less <= '0';
  elsif signed(A) < signed(B) then
    greater <= '0' ;
	 equal <= '0';
	 less <= '1';
  else
    greater <= '0' ;
	 equal <= '1';
	 less <= '0';
  end if ;
end process comparator ;
process(A,B,Sel)

begin



case Sel is 
	when "0000" => result <= std_logic_vector(unsigned(A)+ unsigned(B));
	when "0001" => result <= std_logic_vector(unsigned(A)- unsigned(B));
	--when "0010" => result <= std_logic_vector(to_signed(to_integer(unsigned(A))* to_integer(unsigned(B)),n));
	--when "0011" => result <= std_logic_vector(to_signed(to_integer(unsigned(A))/ to_integer(unsigned(B)),n));
	when "0100" => result <= A and B;
	when "0101" => result <= A OR B;
	when "0110" => result <= A XOR B;
	when "0111" => result <= A XNOR B;
	when "1000" => result <= NOT(A);
	when "1001" => result(0) <= equal;
	when "1010" => result(0) <= greater;
	when "1011" => result(0) <= less;
	when others => result <= A;
	
end case;	
 
end process;

end Behavioral;

