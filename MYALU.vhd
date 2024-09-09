library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MYALU is

port(
A,B: in STD_LOGIC_VECTOR(7 DOWNTO 0);
OP: in STD_LOGIC_VECTOR(2 DOWNTO 0);
Result:out STD_LOGIC_VECTOR(7 DOWNTO 0);
carryout:out std_logic
);
end MYALU;

architecture Behavioral of MYALU is

signal MYALU_RESULT: std_Logic_vector(7 DOWNTO 0);
signal temp: STD_LOGIC_VECTOR(8 DOWNTO 0);

begin
process(A,B,OP)
begin
case(op) is
when "000" => --addition
MYALU_RESULT <= A+B;
temp<=('0' & A)+('0' & B);
when "001" => --subtraction
temp<=('0' & A)-('0' & B);
MYALU_RESULT<=A-B;

when "010" => --Multi
MYALU_RESULT<= std_logic_vector(to_unsigned(to_integer(unsigned(A)) * to_integer(unsigned(B)),8));

when "011" => --DIvision
MYALU_RESULT<= std_logic_vector(to_unsigned(to_integer(unsigned(A)) / to_integer(unsigned(B)),8));

when "100" =>  --XOR
MYALU_RESULT<= A XOR B;

when "101" => --XNOR
MYALU_RESULT <= A XNOR B;

when "110" => --A equals B
if (A=B) then
MYALU_RESULT <= X"01";
else
MYALU_RESULT <= X"00";
end if;


when "111" => --A > B
if (A>B) then
MYALU_RESULT <= X"01";
else
MYALU_RESULT<= X"00";
end if;

when others=>
MYALU_RESULT <=A;
end case;
end process;

Result<=MYALU_RESULT;

carryout<=temp(8);


end Behavioral;
