 
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity tx_uart is 
	generic( tick_bit: integer := 484);-- baudrate -- 50MHz/115200
port( clk: in std_logic; 
		reset: in std_logic;
		tx_datavalid: in std_logic; --validacion de dato
		tx_data : in std_logic_vector(31 downto 0); --transmision de los bits
		--tx_active: out std_logic; --transmision activa
		tx_line: out std_logic;
		tx_ok: out std_logic --final de la transmision
		);
end tx_uart;

architecture rtl of tx_uart is
	type state_mach is (
		tx_idle,
		tx_start,
		tx_databits,
		tx_stop_bits
	);
signal state: state_mach := tx_idle;
signal clk_count: integer range 0 to tick_bit-1;
signal data_index: unsigned(4 downto 0);
signal data: std_logic_vector(31 downto 0):=(others=>'0');
signal cambio: std_logic_vector(1 downto 0):= (others=>'0');
signal done: std_logic;

signal dato1: std_logic_vector(7 downto 0);--:=tx_data(7 downto 0);
signal dato2: std_logic_vector(7 downto 0);--:=tx_data(15 downto 8);
signal dato3: std_logic_vector(7 downto 0);--:=tx_data(7 downto 0);
signal dato4: std_logic_vector(7 downto 0);
begin 
	tx_ok<= done;
	dato1<=tx_data(7 downto 0);
	dato2<=tx_data(15 downto 8);
	dato3<=tx_data(23 downto 16);
	dato4<=tx_data(31 downto 24);
	process(clk)
	begin 
		if(clk'event and clk ='0') then 	
			case state is 
			--estado de tx
				when tx_idle=> 
					tx_line <= '1';--nivel en alto
					--tx_active<= '0'; 
					done<= '0';
					clk_count<= 0; 
					data_index<= (others=>'0');
					if(tx_datavalid = '0') then 
						data<= tx_data; --se guarda el dato 
						cambio <= cambio+1;
						state<= tx_start;
					else 
						state<= tx_idle;
					end if;
				--estado de comienzo de transmision 
				when tx_start=> 
					tx_line<= '0'; 
					--tx_active<='1'; 
					if(clk_count < tick_bit-1)then 
						clk_count<= clk_count + 1;
						state<= tx_start;
					else 
						clk_count<= 0; 
						state<= tx_databits;
					end if; 
				--transmision de datos
				when tx_databits=> 
					
					if(clk_count < tick_bit - 1) then 
						clk_count<= clk_count + 1; 
						state<=tx_databits;
					else 
						clk_count<= 0; 
							if(data_index< "11111")then -- se revisa si se mandaron los datos
								data_index<= data_index+ 1;	
								cambio<= cambio +1;
                 			case cambio is 
										when "00"=> 
										  data(7 downto 0)<= dato1;
										  tx_line<=data(to_integer(data_index));
											cambio <= cambio +1;
											state<= tx_databits;
										when "01"=> 
											data(15 downto 8)<=dato2;
											tx_line<=data(to_integer(data_index));
											cambio<=cambio+1;
											state<=tx_databits;
										when "10"=> 
										  data(23 downto 16)<= dato3;
										  tx_line<=data(to_integer(data_index));
											cambio <= cambio +1;
											state<= tx_databits;
										when "11"=> 
											data(31 downto 24)<=dato2;
											tx_line<=data(to_integer(data_index));
											cambio<=cambio+1;
											state<=tx_stop_bits;
										when others => 
											--data<= (others=>'0');
											state<= tx_stop_bits;
										
									end case;
								state<= tx_databits; 
							else 
								data_index<= (others=>'0'); 
								state<= tx_stop_bits; --al no cumplirse, se detiene la transmision
							end if;
					end if;
				--caso de detenimiento.
				when tx_stop_bits=> 
					tx_line<= '1'; --se regresa a alto 
					if(clk_count< tick_bit -1) then 
						clk_count<= clk_count + 1; 
						state<= tx_stop_bits;
					else 
						clk_count<= 0; 
						--tx_active<= '0';
						done<= '1';
						state<= tx_idle;
					end if;
			end case;
--			case cambio is 
--				when "00"=> 
--					data<= dato1;
--					cambio <= cambio +1;
--				when "01"=> 
--					data<=dato2;
--					cambio<=cambio+1;
--				when others => data<= (others=>'0');
--				
--			end case;
				
		end if;
		
	end process;
	
end rtl;