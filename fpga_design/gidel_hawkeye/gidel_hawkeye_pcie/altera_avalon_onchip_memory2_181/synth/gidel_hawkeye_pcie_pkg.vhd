library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package gidel_hawkeye_pcie_pkg is
	component gidel_hawkeye_pcie_altera_avalon_onchip_memory2_181_uspitxy is
		port (
			clk        : in  std_logic                     := 'X';             -- clk
			address    : in  std_logic_vector(18 downto 0) := (others => 'X'); -- address
			clken      : in  std_logic                     := 'X';             -- clken
			chipselect : in  std_logic                     := 'X';             -- chipselect
			write      : in  std_logic                     := 'X';             -- write
			readdata   : out std_logic_vector(7 downto 0);                     -- readdata
			writedata  : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- writedata
			reset      : in  std_logic                     := 'X';             -- reset
			reset_req  : in  std_logic                     := 'X';             -- reset_req
			freeze     : in  std_logic                     := 'X'              -- freeze
		);
	end component gidel_hawkeye_pcie_altera_avalon_onchip_memory2_181_uspitxy;

end gidel_hawkeye_pcie_pkg;
