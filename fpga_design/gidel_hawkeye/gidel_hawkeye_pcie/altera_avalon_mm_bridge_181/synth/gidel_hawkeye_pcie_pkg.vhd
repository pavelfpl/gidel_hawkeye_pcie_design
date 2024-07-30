library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package gidel_hawkeye_pcie_pkg is
	component altera_avalon_mm_bridge is
		generic (
			DATA_WIDTH        : integer := 32;
			SYMBOL_WIDTH      : integer := 8;
			HDL_ADDR_WIDTH    : integer := 10;
			BURSTCOUNT_WIDTH  : integer := 1;
			PIPELINE_COMMAND  : integer := 1;
			PIPELINE_RESPONSE : integer := 1
		);
		port (
			clk              : in  std_logic                     := 'X';             -- clk
			reset            : in  std_logic                     := 'X';             -- reset
			s0_waitrequest   : out std_logic;                                        -- waitrequest
			s0_readdata      : out std_logic_vector(31 downto 0);                    -- readdata
			s0_readdatavalid : out std_logic;                                        -- readdatavalid
			s0_burstcount    : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- burstcount
			s0_writedata     : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			s0_address       : in  std_logic_vector(18 downto 0) := (others => 'X'); -- address
			s0_write         : in  std_logic                     := 'X';             -- write
			s0_read          : in  std_logic                     := 'X';             -- read
			s0_byteenable    : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			s0_debugaccess   : in  std_logic                     := 'X';             -- debugaccess
			m0_waitrequest   : in  std_logic                     := 'X';             -- waitrequest
			m0_readdata      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			m0_readdatavalid : in  std_logic                     := 'X';             -- readdatavalid
			m0_burstcount    : out std_logic_vector(0 downto 0);                     -- burstcount
			m0_writedata     : out std_logic_vector(31 downto 0);                    -- writedata
			m0_address       : out std_logic_vector(18 downto 0);                    -- address
			m0_write         : out std_logic;                                        -- write
			m0_read          : out std_logic;                                        -- read
			m0_byteenable    : out std_logic_vector(3 downto 0);                     -- byteenable
			m0_debugaccess   : out std_logic;                                        -- debugaccess
			s0_response      : out std_logic_vector(1 downto 0);                     -- response
			m0_response      : in  std_logic_vector(1 downto 0)  := (others => 'X')  -- response
		);
	end component altera_avalon_mm_bridge;

end gidel_hawkeye_pcie_pkg;
