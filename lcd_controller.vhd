Library Ieee;
use ieee.std_logic_1164.all;

entity lcd_controller is
	port(
			push_btn_clk: in std_logic;
			clk: In std_logic; -- system clock
			reset_n : in std_logic; --active low reinitializes lcd
			rw,rs,e : out std_logic; --read/write ,setup/data, and enable for lcd
			lcd_data : out std_logic_vector(7 downto 0);--data signals for lcd
			line1_buffer: in std_logic_vector(127 downto 0);--Data for the top line of the lcd
			line2_buffer: in std_logic_vector(127 downto 0)--Data for the bottom line of lcd
			

	);
	end lcd_controller;
	
	architecture controller of lcd_controller is
		Type Control is (power_up, initialize,resetline,line1,line2,send);
		Signal state : Control;
		Constant freq : Integer :=100; --system clock frequency in MHZ
		Signal ptr : natural range 0 to 16 :=15; --To keep track of what character we are upto
		Signal line :Std_logic:='1';
	Begin
		
			PROCESS(clk)
			 variable clk_count : INTEGER :=0; --event counter for timing
			 Begin 
			--If rising_edge(push_btn_clk) then 
				--state <= resetline;
				--end if;
				
		   If(clk'Event and clk='1') Then
				case State is
					--wait 50 ms to ensure vdd has risen and required lcd wait is met
--					if (push_btn_clk'Event and push_btn_clk='1') then
--						state <= resetline;
--					end if;
					
					when power_up =>
						
						If(clk_count < (5000*freq)) Then --wait 50ms
							clk_count := clk_count+1;
							state <= power_up;
						Else
							clk_count :=0;
							rs <= '0';
							rw <= '0';
							lcd_data <= "00110000";
							state <= initialize;
						End if;
			 
						--cycle through initialization sequence
					
					when initialize =>
						clk_count := clk_count +1;
						If(clk_count <(10 * freq)) Then --function set
							lcd_data <= "00111100"; --2-line mode, display on
							--lcd_data <= "00110100"; --1 line mode , display on 
							--lcd_data <= "00110000"; --1 line mode , display off 
							--lcd_data <= "00111000"; --2 line mode , display off
							e <= '1';
							state <= initialize;
						ElsIf(clk_count < (60*freq)) Then --wait 50 us
							lcd_data <= "00000000";
							e<='0';
							state <= initialize;
						ElsIf(clk_count < (70*freq)) Then --display on/off control
							lcd_data <= "00001100"; --display on , cursor off,blink off
							--lcd_data <= "00001101" --display on , cursor off,blink on
							--lcd_data <= "00001110" --display on , cursor on,blink off
							--lcd_data <= "00001111" --display on , cursor on,blink on
							--lcd_data <= "00001000" --display off , cursor off,blink on
							--lcd_data <= "00001001" --display off , cursor off,blink on
							--lcd_data <= "00001010" --display off , cursor on,blink off
							--lcd_data <= "00001011" --display off , cursor on,blink on
							e <= '1';
					
							state <= initialize;
							
						ELSIF(clk_count<120*freq)Then
							lcd_data<="00000000";
							e<='0';
							State<=initialize;
						
						
						ElsIf(clk_count <(130 * freq)) Then --display clear
							lcd_data <="00000001";
							e<='1';
							state <= initialize;
						ElsIf (clk_count <(2130 * freq)) Then --wait 2ms	
							lcd_data <= "00000000";
							e <= '0';
							state <= initialize;
						ElsIf(clk_count < (2140 * freq)) Then --entry mode set
							lcd_data <="00000110";	--increment mode, entire shift off
							--lcd_data <= "00000111"; --increment mode, entire shift on
							--lcd_data <= "00000100"; --decrement mode, entire shift off
							--lcd_data <= "00000101"; --decrement mode, entire shift on
							e <='1';
							state <= initialize;
						ElsIf (clk_count <(2200 * freq)) Then --wait 60us	
							lcd_data <= "00000000";
							e <= '0';
							state <= initialize;	
						Else 							--initialization complete
							clk_count :=0;
							state<= Resetline;
						End If;
							
							When resetline =>
								ptr <= 16;
								if line='1' then
									lcd_data <="10000000";
									rs <= '0';
									rw <= '0';
									clk_count :=0;
									state <= send;
								else
									lcd_data <="11000000";
									rs <= '0';
									rw <= '0';
									clk_count :=0;
									state <= send;
								end if;	
							When line1 =>
								line <='1';
								lcd_data <= line1_buffer(ptr*8 +7 downto ptr*8);
								rs <= '1';
								rw <= '0';
								clk_count :=0;
								line <='1';
								state <= send;
							
							When line2 =>
								line <='0';
								lcd_data <= line1_buffer(ptr*8 +7 downto ptr*8);
								rs <= '1';
								rw <= '0';
								clk_count :=0;
								state <= send;
								
								--send instruction to lcd
							
							When send =>
							--PROCESS(push_btn_clk)
							--If(push_btn_clk'Event and push_btn_clk='1') then
								If(clk_count < (50* freq)) Then --do not exit for 50 us
									If (clk_count <freq) Then -- negative enable
										e<='0';
									 ElsIf(clk_count <(14 * freq)) Then -- positive enable half cycle
									  --if rising_edge(push_btn_clk) then
										e<='1'; --
										--else --
										--e<='0';--
										--end if; --
									 ElsIf(clk_count <(27 * freq) ) Then -- negtive enable half cycle+
										e<='0';
									 End If;
									 clk_count := clk_count +1;
									 state <= send;
								Else
									clk_count :=0;
									if line ='1' then
										if ptr=0 then 
											line  <= '0';
										else
											ptr<=ptr-1;
											state <=line1;
										end if;
									else 
										if ptr=0 then 
											line <= '1';
											state <= resetline;
										else
											ptr <= ptr - 1;
											state <= line2;
										end if;
									end if;
								End if;
						--	End if;
							--End Process;
							End Case;
							
							--reset
							
							If(reset_n ='0') Then
								state <= power_up;
--							else
--								state <=send;
--							
							--elsif rising_edge(push_btn_clk) then --
								--state<=resetline; --
								--end if;--
							End if;
							
							
						End if;
					--end if;
					End PROCESS;
			
			End controller;	
						
								
								