library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package gidel_hawkeye_pcie_pkg is
	component gidel_hawkeye_pcie_altera_mm_interconnect_181_bbwzt2q is
		port (
			pcie_a10_hip_0_coreclkout_hip_clk                                    : in  std_logic                      := 'X';             -- clk
			pcie_a10_hip_0_rxm_bar0_translator_reset_reset_bridge_in_reset_reset : in  std_logic                      := 'X';             -- reset
			pcie_a10_hip_0_rxm_bar0_address                                      : in  std_logic_vector(63 downto 0)  := (others => 'X'); -- address
			pcie_a10_hip_0_rxm_bar0_waitrequest                                  : out std_logic;                                         -- waitrequest
			pcie_a10_hip_0_rxm_bar0_burstcount                                   : in  std_logic_vector(5 downto 0)   := (others => 'X'); -- burstcount
			pcie_a10_hip_0_rxm_bar0_byteenable                                   : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- byteenable
			pcie_a10_hip_0_rxm_bar0_read                                         : in  std_logic                      := 'X';             -- read
			pcie_a10_hip_0_rxm_bar0_readdata                                     : out std_logic_vector(127 downto 0);                    -- readdata
			pcie_a10_hip_0_rxm_bar0_readdatavalid                                : out std_logic;                                         -- readdatavalid
			pcie_a10_hip_0_rxm_bar0_write                                        : in  std_logic                      := 'X';             -- write
			pcie_a10_hip_0_rxm_bar0_writedata                                    : in  std_logic_vector(127 downto 0) := (others => 'X'); -- writedata
			pcie_a10_hip_0_txs_address                                           : out std_logic_vector(63 downto 0);                     -- address
			pcie_a10_hip_0_txs_write                                             : out std_logic;                                         -- write
			pcie_a10_hip_0_txs_read                                              : out std_logic;                                         -- read
			pcie_a10_hip_0_txs_readdata                                          : in  std_logic_vector(127 downto 0) := (others => 'X'); -- readdata
			pcie_a10_hip_0_txs_writedata                                         : out std_logic_vector(127 downto 0);                    -- writedata
			pcie_a10_hip_0_txs_burstcount                                        : out std_logic_vector(5 downto 0);                      -- burstcount
			pcie_a10_hip_0_txs_byteenable                                        : out std_logic_vector(15 downto 0);                     -- byteenable
			pcie_a10_hip_0_txs_readdatavalid                                     : in  std_logic                      := 'X';             -- readdatavalid
			pcie_a10_hip_0_txs_waitrequest                                       : in  std_logic                      := 'X';             -- waitrequest
			pcie_a10_hip_0_txs_chipselect                                        : out std_logic                                          -- chipselect
		);
	end component gidel_hawkeye_pcie_altera_mm_interconnect_181_bbwzt2q;

	component gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai is
		port (
			pcie_a10_hip_0_coreclkout_hip_clk                   : in  std_logic                      := 'X';             -- clk
			onchip_memory2_0_reset1_reset_bridge_in_reset_reset : in  std_logic                      := 'X';             -- reset
			pcie_a10_hip_0_rxm_bar4_address                     : in  std_logic_vector(63 downto 0)  := (others => 'X'); -- address
			pcie_a10_hip_0_rxm_bar4_waitrequest                 : out std_logic;                                         -- waitrequest
			pcie_a10_hip_0_rxm_bar4_burstcount                  : in  std_logic_vector(5 downto 0)   := (others => 'X'); -- burstcount
			pcie_a10_hip_0_rxm_bar4_byteenable                  : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- byteenable
			pcie_a10_hip_0_rxm_bar4_read                        : in  std_logic                      := 'X';             -- read
			pcie_a10_hip_0_rxm_bar4_readdata                    : out std_logic_vector(127 downto 0);                    -- readdata
			pcie_a10_hip_0_rxm_bar4_readdatavalid               : out std_logic;                                         -- readdatavalid
			pcie_a10_hip_0_rxm_bar4_write                       : in  std_logic                      := 'X';             -- write
			pcie_a10_hip_0_rxm_bar4_writedata                   : in  std_logic_vector(127 downto 0) := (others => 'X'); -- writedata
			onchip_memory2_0_s1_address                         : out std_logic_vector(18 downto 0);                     -- address
			onchip_memory2_0_s1_write                           : out std_logic;                                         -- write
			onchip_memory2_0_s1_readdata                        : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- readdata
			onchip_memory2_0_s1_writedata                       : out std_logic_vector(7 downto 0);                      -- writedata
			onchip_memory2_0_s1_chipselect                      : out std_logic;                                         -- chipselect
			onchip_memory2_0_s1_clken                           : out std_logic                                          -- clken
		);
	end component gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai;

end gidel_hawkeye_pcie_pkg;
