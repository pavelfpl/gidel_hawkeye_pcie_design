# SYS CLK
create_clock -name fpga_clk -period 8.0 [get_ports {sys_clk}]
# PCIE CLK 
create_clock -name pcie_clk -period 10.0 [get_ports {PCIE_REFCLK_p}]

derive_pll_clocks -create_base_clock
derive_clock_uncertainty

# create_clock -name clk_virt -period 8.0
# set_output_delay -clock clk_virt 1.5 [get_ports {leds[*]}] 
set_false_path -from * -to [get_ports {leds[*]}]