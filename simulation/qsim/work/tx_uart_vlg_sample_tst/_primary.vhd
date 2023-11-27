library verilog;
use verilog.vl_types.all;
entity tx_uart_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        tx_data         : in     vl_logic_vector(31 downto 0);
        tx_datavalid    : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tx_uart_vlg_sample_tst;
