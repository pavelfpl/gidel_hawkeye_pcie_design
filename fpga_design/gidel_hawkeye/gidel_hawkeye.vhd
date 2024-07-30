library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gidel_hawkeye is
	generic(
		PCIE_WIDTH_X: natural:=8;
		LEDS_OUTPUT: natural:=5
	);

	port(
		sys_clk: in std_logic;
		-- PCIE --
		PCIE_REFCLK_p: in std_logic;
		PCIE_TX_p: out std_logic_vector(PCIE_WIDTH_X-1 downto 0);
		PCIE_RX_p: in std_logic_vector(PCIE_WIDTH_X-1 downto 0);
		PCIE_PERST_n: in std_logic;
		-- PCIE_WAKE_n: out std_logic;
		-- LEDS --
		leds: out std_logic_vector(LEDS_OUTPUT-1 downto 0)
	);
end gidel_hawkeye;

architecture rtl of gidel_hawkeye is

-- constants --
constant CONST_CTRL_TEST_IN: integer:=16#000000A8#;
-- signals --
signal pcie_a10_hip_0_hip_ctrl_test_in: std_logic_vector(31 downto 0):=(others=>'0');
signal led_counter: unsigned(31 downto 0):=(others=>'0');
-- components --
component gidel_hawkeye_pcie
				port(
					signal pcie_a10_hip_0_hip_ctrl_test_in: in std_logic_vector(31 downto 0);
					signal pcie_a10_hip_0_hip_ctrl_simu_mode_pipe: in std_logic;	
					signal pcie_a10_hip_0_hip_pipe_sim_pipe_pclk_in: in std_logic;
				   signal pcie_a10_hip_0_hip_serial_rx_in0:  in std_logic;                                  
					signal pcie_a10_hip_0_hip_serial_rx_in1:  in std_logic;                    
					signal pcie_a10_hip_0_hip_serial_rx_in2:  in std_logic;                      
					signal pcie_a10_hip_0_hip_serial_rx_in3:  in std_logic;          
					signal pcie_a10_hip_0_hip_serial_rx_in4:  in std_logic;                      
					signal pcie_a10_hip_0_hip_serial_rx_in5:  in std_logic;                      
					signal pcie_a10_hip_0_hip_serial_rx_in6:  in std_logic;                   
					signal pcie_a10_hip_0_hip_serial_rx_in7:  in std_logic;                   
					signal pcie_a10_hip_0_hip_serial_tx_out0: out std_logic;                                 
					signal pcie_a10_hip_0_hip_serial_tx_out1: out std_logic;                           
					signal pcie_a10_hip_0_hip_serial_tx_out2: out std_logic;                                         
					signal pcie_a10_hip_0_hip_serial_tx_out3: out std_logic;                                    
					signal pcie_a10_hip_0_hip_serial_tx_out4: out std_logic;                                        
					signal pcie_a10_hip_0_hip_serial_tx_out5: out std_logic;                                         
					signal pcie_a10_hip_0_hip_serial_tx_out6: out std_logic;                                       
					signal pcie_a10_hip_0_hip_serial_tx_out7: out std_logic;
					signal pcie_a10_hip_0_npor_npor: in std_logic;                                      
					signal pcie_a10_hip_0_npor_pin_perst: in std_logic;    
					signal refclk_clk: in std_logic		
				);
end component;

begin
-----------------
-- PCIE unit 0 --
-----------------
pcie_unit_0: gidel_hawkeye_pcie
					port map(pcie_a10_hip_0_hip_ctrl_test_in=>pcie_a10_hip_0_hip_ctrl_test_in,
								pcie_a10_hip_0_hip_ctrl_simu_mode_pipe=>'0',
								pcie_a10_hip_0_hip_pipe_sim_pipe_pclk_in=>'0', 		
								pcie_a10_hip_0_hip_serial_rx_in0=>PCIE_RX_p(0),                                  
								pcie_a10_hip_0_hip_serial_rx_in1=>PCIE_RX_p(1),                  
								pcie_a10_hip_0_hip_serial_rx_in2=>PCIE_RX_p(2),                     
								pcie_a10_hip_0_hip_serial_rx_in3=>PCIE_RX_p(3),          
								pcie_a10_hip_0_hip_serial_rx_in4=>PCIE_RX_p(4),                      
								pcie_a10_hip_0_hip_serial_rx_in5=>PCIE_RX_p(5),                      
								pcie_a10_hip_0_hip_serial_rx_in6=>PCIE_RX_p(6),                    
								pcie_a10_hip_0_hip_serial_rx_in7=>PCIE_RX_p(7),                      
								pcie_a10_hip_0_hip_serial_tx_out0=>PCIE_TX_p(0),                                 
								pcie_a10_hip_0_hip_serial_tx_out1=>PCIE_TX_p(1),                         
								pcie_a10_hip_0_hip_serial_tx_out2=>PCIE_TX_p(2),                                  
								pcie_a10_hip_0_hip_serial_tx_out3=>PCIE_TX_p(3),                             
								pcie_a10_hip_0_hip_serial_tx_out4=>PCIE_TX_p(4),                                 
								pcie_a10_hip_0_hip_serial_tx_out5=>PCIE_TX_p(5),                                   
								pcie_a10_hip_0_hip_serial_tx_out6=>PCIE_TX_p(6),                                 
								pcie_a10_hip_0_hip_serial_tx_out7=>PCIE_TX_p(7),
								pcie_a10_hip_0_npor_npor=>PCIE_PERST_n,                                      
								pcie_a10_hip_0_npor_pin_perst=>PCIE_PERST_n,     
								refclk_clk=>PCIE_REFCLK_p);
process(sys_clk)

begin
	if(rising_edge(sys_clk)) then
      led_counter <= led_counter + 1;
	end if;

end process;

pcie_a10_hip_0_hip_ctrl_test_in<=std_logic_vector(to_signed(CONST_CTRL_TEST_IN,32));

leds(0) <= std_logic(led_counter(30));
leds(1) <= std_logic(led_counter(29));
leds(2) <= std_logic(led_counter(28));
leds(3) <= std_logic(led_counter(27));
leds(4) <= std_logic(led_counter(26));

end rtl;   