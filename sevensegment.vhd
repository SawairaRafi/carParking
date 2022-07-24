
library IEEE;
Use IEEE.std_logic_1164.All;

Entity sevensegment is
port(


cathodes: out std_logic_vector (6 downto 0);
binInput: in std_logic_vector (3 downto 0) 

);

end sevensegment;

architecture behavoiral of sevensegment is 

begin

cathodes <= "1000000" when binInput= "0000" else
			   "1111001" when binInput= "0001" else
				"0100100" when binInput= "0010" else
				"0110000" when binInput= "0011" else
				"0011001" when binInput= "0100" else
				"0010010" when binInput= "0101" else
				"0000010" when binInput= "0110" else
				"1111000" when binInput= "0111" else
				"0000000" when binInput= "1000" else
				"0010000" when binInput= "1001" else
				"0001000" when binInput= "1010" else
				"0000000" when binInput= "1011" else
				"1000110" when binInput= "1100" else
				"1000000" when binInput= "1101" else
				"0000110" when binInput= "1110" else
				"0001110";


end behavoiral;