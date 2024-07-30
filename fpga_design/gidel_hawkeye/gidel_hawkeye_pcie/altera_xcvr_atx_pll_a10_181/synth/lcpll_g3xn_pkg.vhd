library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package lcpll_g3xn_pkg is
	component gidel_hawkeye_pcie_altera_xcvr_atx_pll_a10_181_shiouiy is
		generic (
			enable_pll_reconfig                                              : integer := 0;
			rcfg_jtag_enable                                                 : integer := 0;
			rcfg_separate_avmm_busy                                          : integer := 0;
			dbg_embedded_debug_enable                                        : integer := 0;
			dbg_capability_reg_enable                                        : integer := 0;
			dbg_user_identifier                                              : integer := 0;
			dbg_stat_soft_logic_enable                                       : integer := 0;
			dbg_ctrl_soft_logic_enable                                       : integer := 0;
			rcfg_emb_strm_enable                                             : integer := 0;
			rcfg_profile_cnt                                                 : integer := 2;
			hssi_pma_lc_refclk_select_mux_powerdown_mode                     : string  := "powerup";
			hssi_pma_lc_refclk_select_mux_refclk_select                      : string  := "ref_iqclk0";
			hssi_pma_lc_refclk_select_mux_silicon_rev                        : string  := "20nm5es";
			hssi_pma_lc_refclk_select_mux_inclk0_logical_to_physical_mapping : string  := "ref_iqclk0";
			hssi_pma_lc_refclk_select_mux_inclk1_logical_to_physical_mapping : string  := "ref_iqclk0";
			hssi_pma_lc_refclk_select_mux_inclk2_logical_to_physical_mapping : string  := "ref_iqclk0";
			hssi_pma_lc_refclk_select_mux_inclk3_logical_to_physical_mapping : string  := "ref_iqclk0";
			hssi_pma_lc_refclk_select_mux_inclk4_logical_to_physical_mapping : string  := "ref_iqclk0";
			hssi_refclk_divider_silicon_rev                                  : string  := "20nm5es";
			atx_pll_silicon_rev                                              : string  := "20nm5es";
			atx_pll_is_cascaded_pll                                          : string  := "false";
			atx_pll_cgb_div                                                  : integer := 1;
			atx_pll_pma_width                                                : integer := 8;
			atx_pll_cp_compensation_enable                                   : string  := "true";
			atx_pll_cp_current_setting                                       : string  := "cp_current_setting0";
			atx_pll_cp_testmode                                              : string  := "cp_normal";
			atx_pll_cp_lf_3rd_pole_freq                                      : string  := "lf_3rd_pole_setting0";
			atx_pll_lf_cbig_size                                             : string  := "lf_cbig_setting0";
			atx_pll_cp_lf_order                                              : string  := "lf_2nd_order";
			atx_pll_lf_resistance                                            : string  := "lf_setting0";
			atx_pll_lf_ripplecap                                             : string  := "lf_ripple_cap_0";
			atx_pll_tank_sel                                                 : string  := "lctank0";
			atx_pll_tank_band                                                : string  := "lc_band0";
			atx_pll_tank_voltage_coarse                                      : string  := "vreg_setting_coarse0";
			atx_pll_tank_voltage_fine                                        : string  := "vreg_setting5";
			atx_pll_output_regulator_supply                                  : string  := "vreg1v_setting3";
			atx_pll_overrange_voltage                                        : string  := "over_setting5";
			atx_pll_underrange_voltage                                       : string  := "under_setting4";
			atx_pll_fb_select                                                : string  := "direct_fb";
			atx_pll_d2a_voltage                                              : string  := "d2a_disable";
			atx_pll_dsm_mode                                                 : string  := "dsm_mode_integer";
			atx_pll_dsm_out_sel                                              : string  := "pll_dsm_disable";
			atx_pll_dsm_ecn_bypass                                           : string  := "false";
			atx_pll_dsm_ecn_test_en                                          : string  := "false";
			atx_pll_dsm_fractional_division                                  : string  := "0";
			atx_pll_dsm_fractional_value_ready                               : string  := "pll_k_ready";
			atx_pll_iqclk_mux_sel                                            : string  := "power_down";
			atx_pll_vco_bypass_enable                                        : string  := "false";
			atx_pll_l_counter                                                : integer := 1;
			atx_pll_l_counter_enable                                         : string  := "false";
			atx_pll_cascadeclk_test                                          : string  := "cascadetest_off";
			atx_pll_hclk_divide                                              : integer := 1;
			atx_pll_enable_hclk                                              : string  := "hclk_disabled";
			atx_pll_m_counter                                                : integer := 8;
			atx_pll_ref_clk_div                                              : integer := 1;
			atx_pll_bw_sel                                                   : string  := "low";
			atx_pll_datarate                                                 : string  := "0 bps";
			atx_pll_device_variant                                           : string  := "device1";
			atx_pll_initial_settings                                         : string  := "true";
			atx_pll_lc_mode                                                  : string  := "lccmu_pd";
			atx_pll_output_clock_frequency                                   : string  := "0 hz";
			atx_pll_powerdown_mode                                           : string  := "powerup";
			atx_pll_prot_mode                                                : string  := "basic_tx";
			atx_pll_reference_clock_frequency                                : string  := "0 hz";
			atx_pll_sup_mode                                                 : string  := "user_mode";
			atx_pll_regulator_bypass                                         : string  := "reg_enable";
			atx_pll_vco_freq                                                 : string  := "0 hz";
			atx_pll_is_otn                                                   : string  := "false";
			atx_pll_is_sdi                                                   : string  := "false";
			atx_pll_primary_use                                              : string  := "hssi_x1";
			atx_pll_fpll_refclk_selection                                    : string  := "select_div_by_2";
			atx_pll_lc_to_fpll_l_counter_scratch                             : integer := 1;
			atx_pll_lc_to_fpll_l_counter                                     : string  := "lcounter_setting0";
			atx_pll_pfd_delay_compensation                                   : string  := "normal_delay";
			atx_pll_xcpvco_xchgpmplf_cp_current_boost                        : string  := "normal_setting";
			atx_pll_pfd_pulse_width                                          : string  := "pulse_width_setting0";
			hip_cal_en                                                       : string  := "disable";
			calibration_en                                                   : string  := "enable";
			enable_analog_resets                                             : integer := 0;
			atx_pll_bonding_mode                                             : string  := "";
			enable_mcgb                                                      : integer := 0;
			enable_mcgb_debug_ports_parameters                               : integer := 0;
			hssi_pma_cgb_master_prot_mode                                    : string  := "";
			hssi_pma_cgb_master_silicon_rev                                  : string  := "";
			hssi_pma_cgb_master_x1_div_m_sel                                 : string  := "";
			hssi_pma_cgb_master_cgb_enable_iqtxrxclk                         : string  := "";
			hssi_pma_cgb_master_ser_mode                                     : string  := "";
			hssi_pma_cgb_master_datarate                                     : string  := "";
			hssi_pma_cgb_master_cgb_power_down                               : string  := "normal_cgb";
			hssi_pma_cgb_master_observe_cgb_clocks                           : string  := "observe_nothing";
			hssi_pma_cgb_master_op_mode                                      : string  := "enabled";
			hssi_pma_cgb_master_tx_ucontrol_reset_pcie                       : string  := "pcscorehip_controls_mcgb";
			hssi_pma_cgb_master_vccdreg_output                               : string  := "vccdreg_nominal";
			hssi_pma_cgb_master_input_select                                 : string  := "fpll_top";
			hssi_pma_cgb_master_input_select_gen3                            : string  := "unused"
		);
		port (
			pll_powerdown           : in  std_logic                     := 'X';             -- pll_powerdown
			pll_refclk0             : in  std_logic                     := 'X';             -- clk
			pll_locked              : out std_logic;                                        -- pll_locked
			pll_pcie_clk            : out std_logic;                                        -- pll_pcie_clk
			reconfig_clk0           : in  std_logic                     := 'X';             -- clk
			reconfig_reset0         : in  std_logic                     := 'X';             -- reset
			reconfig_write0         : in  std_logic                     := 'X';             -- write
			reconfig_read0          : in  std_logic                     := 'X';             -- read
			reconfig_address0       : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- address
			reconfig_writedata0     : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			reconfig_readdata0      : out std_logic_vector(31 downto 0);                    -- readdata
			reconfig_waitrequest0   : out std_logic;                                        -- waitrequest
			pll_cal_busy            : out std_logic;                                        -- pll_cal_busy
			hip_cal_done            : out std_logic;                                        -- hip_cal_done
			mcgb_rst                : in  std_logic                     := 'X';             -- mcgb_rst
			mcgb_aux_clk0           : in  std_logic                     := 'X';             -- tx_serial_clk
			tx_bonding_clocks       : out std_logic_vector(5 downto 0);                     -- clk
			pcie_sw                 : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- pcie_sw
			pcie_sw_done            : out std_logic_vector(1 downto 0);                     -- pcie_sw_done
			mcgb_hip_cal_done       : out std_logic;                                        -- hip_cal_done
			pll_refclk1             : in  std_logic                     := 'X';             -- clk
			pll_refclk2             : in  std_logic                     := 'X';             -- clk
			pll_refclk3             : in  std_logic                     := 'X';             -- clk
			pll_refclk4             : in  std_logic                     := 'X';             -- clk
			tx_serial_clk           : out std_logic;                                        -- clk
			tx_serial_clk_gt        : out std_logic;                                        -- clk
			pll_cascade_clk         : out std_logic;                                        -- clk
			atx_to_fpll_cascade_clk : out std_logic;                                        -- clk
			avmm_busy0              : out std_logic;                                        -- avmm_busy0
			clklow                  : out std_logic;                                        -- clk
			fref                    : out std_logic;                                        -- clk
			overrange               : out std_logic;                                        -- debug
			underrange              : out std_logic;                                        -- debug
			mcgb_aux_clk1           : in  std_logic                     := 'X';             -- tx_serial_clk
			mcgb_aux_clk2           : in  std_logic                     := 'X';             -- tx_serial_clk
			mcgb_serial_clk         : out std_logic;                                        -- clk
			reconfig_clk1           : in  std_logic                     := 'X';             -- clk
			reconfig_reset1         : in  std_logic                     := 'X';             -- reset
			reconfig_write1         : in  std_logic                     := 'X';             -- write
			reconfig_read1          : in  std_logic                     := 'X';             -- read
			reconfig_address1       : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- address
			reconfig_writedata1     : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			reconfig_readdata1      : out std_logic_vector(31 downto 0);                    -- readdata
			reconfig_waitrequest1   : out std_logic;                                        -- waitrequest
			mcgb_cal_busy           : out std_logic                                         -- mcgb_cal_busy
		);
	end component gidel_hawkeye_pcie_altera_xcvr_atx_pll_a10_181_shiouiy;

end lcpll_g3xn_pkg;
