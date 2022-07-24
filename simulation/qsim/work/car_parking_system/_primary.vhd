library verilog;
use verilog.vl_types.all;
entity car_parking_system is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        user_type       : in     vl_logic;
        vehicle_type    : in     vl_logic_vector(2 downto 0);
        level           : out    vl_logic_vector(1 downto 0);
        front_sensor    : in     vl_logic;
        level1_movement : in     vl_logic;
        level2_movement : in     vl_logic;
        level3_movement : in     vl_logic;
        back_sensor     : in     vl_logic;
        password        : in     vl_logic_vector(1 downto 0);
        user_name       : in     vl_logic_vector(1 downto 0);
        slotAvail       : out    vl_logic;
        noslot          : out    vl_logic;
        rs10            : in     vl_logic;
        gateOpens       : out    vl_logic;
        backGateOpens   : out    vl_logic;
        cathode0        : out    vl_logic_vector(6 downto 0);
        cathode1        : out    vl_logic_vector(6 downto 0);
        cathode2        : out    vl_logic_vector(6 downto 0);
        cathode3        : out    vl_logic_vector(6 downto 0);
        lcd_e           : out    vl_logic;
        lcd_rs          : out    vl_logic;
        lcd_rw          : out    vl_logic;
        push_btn_clk    : in     vl_logic;
        lcd_db          : out    vl_logic_vector(7 downto 0)
    );
end car_parking_system;
