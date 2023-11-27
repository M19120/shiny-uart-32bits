library verilog;
use verilog.vl_types.all;
entity tx_uart_vlg_check_tst is
    port(
        tx_line         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end tx_uart_vlg_check_tst;
