library ieee;
use ieee.std_logic_1164.all;

package mypackage is 
Component sevensegment is 
port (

BinInput : in std_logic_vector(3 downto 0);
cathodes : out std_logic_vector(6 downto 0)

);
end Component;
Component lcd_controller is 
	port(
			push_btn_clk: in std_logic;
			clk: In std_logic; -- system clock
			reset_n : in std_logic; --active low reinitializes lcd
			rw,rs,e : out std_logic; --read/write ,setup/data, and enable for lcd
			lcd_data : out std_logic_vector(7 downto 0);--data signals for lcd
			line1_buffer: in std_logic_vector(127 downto 0);--Data for the top line of the lcd
			line2_buffer: in std_logic_vector(127 downto 0)--Data for the bottom line of lcd
			

	);
	end Component;
end mypackage;
