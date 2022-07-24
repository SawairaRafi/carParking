library ieee;
Use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.mypackage.all;

entity car_parking_system is
port(
	clk: in std_logic;
	rst:in std_logic;
	user_type: in std_logic; --vip,visitor
	vehicle_type: in std_logic_vector(2 downto 0);--3 types bike,van,car
	level: out std_logic_vector(1 downto 0); --3 levels
	front_sensor:in std_logic;
	level1_movement,level2_movement,level3_movement,back_sensor:in std_logic;
	password:in std_logic_vector(1 downto 0);--input
	user_name:in std_logic_vector(1 downto 0 );--input
	slotAvail:out std_logic;
	noslot:out std_logic;
rs8:in std_logic;
	--EnterMoney:in std_logic_vector(3 downto 0);
	--Money_Deposited:out std_logic_vector(7 downto 0);--7 seg
	--Change: out std_logic_vector(7 downto 0); --7 seg

	gateOpens:out std_logic; --front
	backGateOpens:out std_logic;
	--SSD
		signal cathode0: out std_logic_vector(6 downto 0);
		signal cathode1: out std_logic_vector(6 downto 0);
		signal cathode2: out std_logic_vector(6 downto 0);
		signal cathode3: out std_logic_vector(6 downto 0);
		signal cathode4: out std_logic_vector(6 downto 0); --level1 slots
		signal cathode5: out std_logic_vector(6 downto 0); --level2 slots
		signal cathode6: out std_logic_vector(6 downto 0); --level3 slots
	
	--lcd statements

	lcd_e :out std_logic;
	lcd_rs: out std_logic;
	lcd_rw: out std_logic;
	push_btn_clk: in std_logic;
	lcd_db: out std_logic_vector(7 downto 0)

);

end car_parking_system;


architecture behv of car_parking_system is
type state_type is(idle,userType,vip,visitor,vehicleType,
slotsLevel_1,slotsLevel_2,slotsLevel_3,bikeCharge,carCharge,vanCharge,gateOpen,freeSlots,
user0,user1,user2,user3,backGateOpen);

signal state: state_type:=idle;
signal money_count:std_logic_vector(7 downto 0); --passed to money deposited
signal slotAvails,noslots: std_logic;
signal passwordCount:std_logic_vector(1 downto 0);
constant level1_slots:std_logic_vector(3 downto 0):="0110"; --000 are vip reserved
constant level2_slots:std_logic_vector(3 downto 0):="0101"; --000,001 are vip reserved
constant level3_slots:std_logic_vector(3 downto 0):="0110"; --000 are vip reserved
signal slotCounter2:std_logic_vector(3 downto 0):="0010"; --00 --11 --2 vips
signal slotCounter1,slotCounter3:std_logic_vector(3 downto 0):="0001"; --00 --1 vip
--signal waitCounter:std_logic_vector(2 downto 0);
signal gate, backGate :std_logic;
signal levels:std_logic_vector(1 downto 0); --display level to user

signal Money_Change:std_logic_vector(7 downto 0);--passed to change
--lcd
	signal top_line: std_logic_vector(127 downto 0):= x"202043554920204C40484F5245202020"; --Translates to CUI Lahore
	signal bottom_line : std_logic_vector(127 downto 0):= x"2020454345204445504052544D454E54"; --ECE Department
	signal d1,d2 :std_logic_vector(127 downto 0);
begin
Process(clk,rst)
variable i:integer;
begin	
				if(rising_edge(clk)) then
				
				if (rst='1') then  
							money_count<="00000000";
							Money_Change<="00000000";
							passwordCount<="00";
							gate<='0';
							backGate<='0';
							slotAvails<='0';
							noslots<='0';
							
				 else 
					 
case state is
				 when idle =>
							money_count<="00000000";
							Money_Change<="00000000";
							passwordCount<="00";
							slotAvails<='0';
							noslots<='0';
							gate<='0';
							backGate<='0';
							if( back_sensor='1') then
								   state<=freeSlots;	
								
								elsif(front_sensor='1') then
									 state<=userType;
									 end if;
									
	
							when freeSlots=>
								if(level1_movement='1') then
									if(slotCounter1>"0001") then
									slotCounter1<=slotCounter1-'1';
									state<=backGateOpen;
									end if;
								elsif(level2_movement='1') then
									if(slotCounter2>"0010") then
									slotCounter2<=slotCounter2-'1';
									state<=backGateOpen;
									end if;
								elsif(level3_movement='1') then
									if(slotCounter3>"0001") then
									slotCounter3<=slotCounter3-'1';
									state<=backGateOpen;
									end if;
								end if;
							
								
							
							when userType=> 
							--Enter User Type
							d1<=top_line;
							d2<=bottom_line;
							
								if(user_type='0') then
									state<=visitor;
								 elsif(user_type='1')then
									state<=vip;
								 end if;
								 
							when vip => 
							passwordCount<="00";
									if(user_name="00") then
										state<=user0;
									elsif(user_name="01") then
										state<=user1;
									elsif (user_name="10") then
										state<=user2;
									elsif (user_name="11")then
										state<=user3;
									else
										state<=userType;
									end if;
									
							when user0 =>
									   --Enter Password
										d1<=top_line;
										d2<=bottom_line;
										if(passwordCount<"11") then
											passwordCount<=passwordCount+'1';
											if(password="01") then
											levels<="00";
												state<=gateOpen;
											else
											--incorrect password
											d1<=top_line;
											d2<=bottom_line;
												 
												state<=user0;
											end if;
										else
											state<=userType;
								 
								 end if;
								 
								when user1 =>
									   --Enter Password
										d1<=top_line;
										d2<=bottom_line;
												 
										if(passwordCount<"11") then
											passwordCount<=passwordCount+'1';
											if(password="10") then
											levels<="01";
												state<=gateOpen;
											else
												--incorrect password
												d1<=top_line;
												 d2<=bottom_line;
												 
												state<=user1;
											end if;
										else
											state<=userType;
								 
								 end if;
								 
								 	when user2 =>
									   --Enter Password
										d1<=top_line;
										d2<=bottom_line;
												 
										if(passwordCount<"11") then
											passwordCount<=passwordCount+'1';
											if(password="11") then
											levels<="01";
												state<=gateOpen;
											else
												--incorrect password
												d1<=top_line;
												 d2<=bottom_line;
												 
												state<=user2;
											end if;
										else
											state<=userType;
								 
								 end if;
								 
										when user3 =>
									   --Enter Password
										d1<=top_line;
										d2<=bottom_line;
										
										if(passwordCount<"11") then
											passwordCount<=passwordCount+'1';
											if(password="00") then
											levels<="10";
												state<=gateOpen;
											else
												--incorrect password
												 d1<=top_line;
												 d2<=bottom_line;
								 
												state<=user3;
											end if;
										else
											state<=userType;
										end if;
								
						when visitor =>	
								state<=vehicleType;
						
						when vehicleType => 
							    --vehicle type
								  d1<=top_line;
								 d2<=bottom_line;
								 
								 if(vehicle_type="00") then --bike
									 state<=slotsLevel_1;	
								 elsif(vehicle_type="01") then --car
									state<=slotsLevel_2;
								 elsif(vehicle_type="10") then --van
									state<=slotsLevel_3;
								 else
								  state<=vehicleType;
								 end if;
					
							when slotsLevel_1=>
								if (slotCounter1<=level1_slots) then
								--print slot is available
								slotAvails<='1'; --led on
								 d1<=top_line;
								 d2<=bottom_line;
								--
								slotCounter1<=slotCounter1+'1';	
								levels<="00" ;--
								state<=bikeCharge;
								else
								--print no slot available
								noslots<='1';
								slotAvails<='0';
								 d1<=top_line;
								 d2<=bottom_line;
								--
								state<=idle;
								end if;
								
							when slotsLevel_2=>
								if (slotCounter2<=level2_slots) then
								--print slot is available
								
								slotAvails<='1';
								 d1<=top_line;
								 d2<=bottom_line;
								--
								slotCounter2<=slotCounter2+'1';	
								levels<="01";
								state<=carCharge;
								else
								--
								 d1<=top_line;
								 d2<=bottom_line;
								--print no slot available
								slotAvails<='0';
								noslots<='1';
								state<=idle;
								end if;
								
							when slotsLevel_3=>
								if (slotCounter3<=level3_slots) then
								--print slot is available
								slotAvails<='1';
								 d1<=top_line;
								 d2<=bottom_line;
								--
								levels<="10";
								slotCounter3<=slotCounter3+'1';	
								state<=vanCharge;
								else
								--print no slot available
								slotAvails<='0';
								noslots<='1';
								 d1<=top_line;
								 d2<=bottom_line;
								--
								state<=idle;
								end if;
						
						
							when bikeCharge=>  --rs 10
							 d1<=top_line;
									d2<=bottom_line;
									--
									if(rs8='1' and money_count<"00001010") then
								money_count<=money_count+"00001000";
								end if;
								if(money_count<"00001010") then
									state <=bikeCharge;
								elsif(money_count>"00001010") then
								 d1<=top_line;
									d2<=bottom_line;
									--
									Money_Change<=money_count-"00001010";
									state<=gateOpen;
								elsif(money_count="00001010") then
									state<=gateOpen;
								end if;
							
								when carCharge=>  --rs 20
								 d1<=top_line;
									d2<=bottom_line;
									--
									if(rs8='1' and money_count<"00010100") then
								money_count<=money_count+"00001000";
								end if;
								if(money_count<"00010100") then
									state <=carCharge;
								elsif(money_count>"00010100") then
								 d1<=top_line;
									d2<=bottom_line;
									--
									Money_Change<=money_count-"00010100";
									state<=gateOpen;
								elsif(money_count="00010100") then
									state<=gateOpen;
								end if;
							
								when vanCharge=>  --rs 10
								 d1<=top_line;
									d2<=bottom_line;
									--Money_Deposited
									if(rs8='1' and money_count>"00011110" ) then
								money_count<=money_count+"00001000";
								end if;
								if(money_count<"00011110") then
									state <=vanCharge;
								elsif(money_count>"00011110") then
								 d1<=top_line;
									d2<=bottom_line;
									--change
									Money_Change<=money_count-"00011110";
									state<=gateOpen;
								elsif(money_count="00011110") then
									state<=gateOpen;
								end if;
							
							 when gateOpen=>
								 --Gate is opened
								 d1<=top_line;
								 d2<=bottom_line;
								 --
									gate<='1'; --gate open
									
									 d1<=top_line;
									d2<=bottom_line;
									
									state<= idle;
									
							when backGateOpen=>
									 d1<=top_line;
									d2<=bottom_line;
									--
									backgate<='1'; --gate open
								
									 d1<=top_line;
									d2<=bottom_line;
									
									state<= idle;
									
						
							
end case;
end if;
end if;



end process;

			backGateOpens<=backGate;
			gateOpens<=gate;
			level<=levels;
			slotAvail<=slotAvails;
			noslot<=noslots;
			
	U1: sevensegment PORT MAP(Money_Change(3 downto 0),cathode0);
	U2: sevensegment PORT MAP(Money_Change(7 downto 4),cathode1);
	U3: sevensegment PORT MAP(money_count(3 downto 0),cathode2);
	U4: sevensegment PORT MAP(money_count(7 downto 4),cathode3);
	
	U5: sevensegment PORT MAP(slotCounter1(3 downto 0),cathode4); --filled slotgs
	U6: sevensegment PORT MAP(slotCounter2(3 downto 0),cathode5);
	U7: sevensegment PORT MAP(slotCounter3(3 downto 0),cathode6);
	
--	LCD: lcd_controller port map(
	--			push_btn_clk => push_btn_clk,
		--		clk => clk,
			--	reset_n => rst,
			--	e =>lcd_e,
			--	rs => lcd_rw,
			--	lcd_data => lcd_db,
			--	line1_buffer => top_line,
			--	line2_buffer => bottom_line
				
				
			
--);

end behv;

