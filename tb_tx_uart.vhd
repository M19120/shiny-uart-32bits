library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_tx_uart is 
end entity;

architecture rtl of tb_tx_uart is 
component tx_uart is 
port( clk: in std_logic; 
		reset: in std_logic;
		tx_datavalid: in std_logic; --validacion de dato
		tx_data : in std_logic_vector(31 downto 0); --transmision de los bits
		--tx_active: out std_logic; --transmision activa
		tx_line: out std_logic;
		tx_ok: out std_logic --final de la transmision
		);
end component;
signal clk,reset,tx_datavalid,tx_line,tx_ok: std_logic :='0';
signal tx_data: std_logic_vector(31 downto 0):=(others=>'0');
constant period: time :=20 ns;
begin 

	u1: tx_uart port map(
		clk=>clk,
		tx_datavalid=>tx_datavalid,
		reset=>reset,
		tx_data=>tx_data,
		--tx_active=>tx_active,
		tx_line=>tx_line,
		tx_ok=>tx_ok

	);
	
clk_proc:process
begin 
	clk<= '0';
	wait for period/2;
	clk<= '1';
	wait for period/2;
end process;

stim_proc:process
begin 
	reset <= '0'; 
	wait for period*10;
--	reset <= '1'; 
--	wait;
	--tx_data<="01010101";
	tx_data<="01010101010101010101010101010101";
	wait;
	tx_datavalid<= '0';
	wait for period*2;
	tx_datavalid<='1'; 
	wait for period*2;
end process;
end rtl;