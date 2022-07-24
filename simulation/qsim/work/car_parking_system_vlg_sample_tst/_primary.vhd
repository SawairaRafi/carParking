library verilog;
use verilog.vl_types.all;
entity car_parking_system_vlg_sample_tst is
    port(
        back_sensor     : in     vl_logic;
        clk             : in     vl_logic;
        front_sensor    : in     vl_logic;
        level1_movement : in     vl_logic;
        level2_movement : in     vl_logic;
        level3_movement : in     vl_logic;
        password        : in     vl_logic_vector(1 downto 0);
        push_btn_clk    : in     vl_logic;
        rs10            : in     vl_logic;
        rst             : in     vl_logic;
        user_name       : in     vl_logic_vector(1 downto 0);
        user_type       : in     vl_logic;
        vehicle_type    : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end car_parking_system_vlg_sample_tst;
