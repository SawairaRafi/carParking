library verilog;
use verilog.vl_types.all;
entity car_parking_system_vlg_check_tst is
    port(
        backGateOpens   : in     vl_logic;
        cathode0        : in     vl_logic_vector(6 downto 0);
        cathode1        : in     vl_logic_vector(6 downto 0);
        cathode2        : in     vl_logic_vector(6 downto 0);
        cathode3        : in     vl_logic_vector(6 downto 0);
        gateOpens       : in     vl_logic;
        lcd_db          : in     vl_logic_vector(7 downto 0);
        lcd_e           : in     vl_logic;
        lcd_rs          : in     vl_logic;
        lcd_rw          : in     vl_logic;
        level           : in     vl_logic_vector(1 downto 0);
        noslot          : in     vl_logic;
        slotAvail       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end car_parking_system_vlg_check_tst;
