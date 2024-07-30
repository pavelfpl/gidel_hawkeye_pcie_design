library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package gidel_hawkeye_pcie_pkg is
	component gidel_hawkeye_pcie_altera_pcie_a10_hip_181_7gpqr4a is
		generic (
			force_tag_checking_on_hwtcl                          : integer := 0;
			bar0_address_width_mux_hwtcl                         : integer := 0;
			bar1_address_width_mux_hwtcl                         : integer := 0;
			bar2_address_width_mux_hwtcl                         : integer := 0;
			bar3_address_width_mux_hwtcl                         : integer := 0;
			bar4_address_width_mux_hwtcl                         : integer := 0;
			bar5_address_width_mux_hwtcl                         : integer := 0;
			data_width_integer_hwtcl                             : integer := 64;
			data_width_integer_rxm_txs_hwtcl                     : integer := 32;
			data_width_integer_txs_hwtcl                         : integer := 32;
			data_byte_width_integer_hwtcl                        : integer := 8;
			reconfig_address_width_integer_hwtcl                 : integer := 11;
			burst_count_integer_hwtcl                            : integer := 0;
			empty_integer_hwtcl                                  : integer := 0;
			include_dma_hwtcl                                    : integer := 0;
			txs_addr_width_integer_hwtcl                         : integer := 0;
			interface_type_integer_hwtcl                         : integer := 0;
			dma_width_hwtcl                                      : integer := 256;
			dma_be_width_hwtcl                                   : integer := 32;
			dma_brst_cnt_w_hwtcl                                 : integer := 5;
			avmm_addr_width_hwtcl                                : integer := 64;
			cb_pcie_mode_hwtcl                                   : integer := 0;
			cb_pcie_rx_lite_hwtcl                                : integer := 0;
			cg_impl_cra_av_slave_port_hwtcl                      : integer := 1;
			cg_enable_advanced_interrupt_hwtcl                   : integer := 0;
			cg_enable_a2p_interrupt_hwtcl                        : integer := 0;
			internal_controller_hwtcl                            : integer := 1;
			enable_rxm_burst_hwtcl                               : integer := 0;
			extended_tag_support_hwtcl                           : integer := 0;
			cg_a2p_addr_map_num_entries_hwtcl                    : integer := 2;
			cg_a2p_addr_map_pass_thru_bits_hwtcl                 : integer := 12;
			lane_rate_hwtcl                                      : string  := "Gen1 (2.5 Gbps)";
			multiple_packets_per_cycle_hwtcl                     : integer := 0;
			use_tx_cons_cred_sel_hwtcl                           : integer := 0;
			cseb_autonomous_hwtcl                                : integer := 0;
			speed_change_hwtcl                                   : integer := 0;
			hip_reconfig_hwtcl                                   : integer := 0;
			xcvr_reconfig_hwtcl                                  : integer := 0;
			export_phy_input_to_top_level_hwtcl                  : integer := 0;
			adme_enable_hwtcl                                    : integer := 0;
			enable_devkit_conduit_hwtcl                          : integer := 0;
			enable_skp_det                                       : integer := 0;
			enable_g3_bypass_equlz_rp_sim_hwtcl                  : integer := 0;
			expansion_base_address_register_hwtcl                : integer := 0;
			pf0_vf_device_id_hwtcl                               : integer := 0;
			pf0_subclass_code_hwtcl                              : integer := 0;
			pf0_pci_prog_intfc_byte_hwtcl                        : integer := 0;
			enable_completion_timeout_disable_hwtcl              : integer := 1;
			slot_clock_cfg_hwtcl                                 : integer := 1;
			msix_table_offset_hwtcl                              : integer := 0;
			msix_pba_offset_hwtcl                                : integer := 0;
			reserved_debug_hwtcl                                 : integer := 0;
			include_sriov_hwtcl                                  : integer := 0;
			app_msi_req_fn_hwtcl                                 : integer := 0;
			cfg_num_vf_width_hwtcl                               : integer := 0;
			flr_completed_vf_width_hwtcl                         : integer := 0;
			sriov2_en                                            : integer := 1;
			enable_custom_features_hwtcl                         : integer := 0;
			pf0_extra_bar_present_hwtcl                          : integer := 0;
			pf0_extra_bar_size_hwtcl                             : integer := 12;
			devhide_support_hwtcl                                : integer := 0;
			device_embedded_ep_support_hwtcl                     : integer := 0;
			total_pf_count_hwtcl                                 : integer := 1;
			pf0_vf_count_hwtcl                                   : integer := 0;
			pf1_vf_count_hwtcl                                   : integer := 0;
			pf2_vf_count_hwtcl                                   : integer := 0;
			pf3_vf_count_hwtcl                                   : integer := 0;
			total_vf_count_hwtcl                                 : integer := 0;
			total_pf_count_width_hwtcl                           : integer := 0;
			total_vf_count_width_hwtcl                           : integer := 0;
			system_page_sizes_supported_hwtcl                    : integer := 1363;
			sr_iov_support_hwtcl                                 : integer := 0;
			enable_alternate_link_list_hwtcl                     : integer := 0;
			ari_support_hwtcl                                    : integer := 0;
			flr_capability_hwtcl                                 : integer := 0;
			pf0_virtio_capability_present_hwtcl                  : integer := 0;
			pf0_virtio_device_specific_cap_present_hwtcl         : integer := 0;
			pf0_virtio_cmn_config_bar_indicator_hwtcl            : integer := 0;
			pf0_virtio_cmn_config_bar_offset_hwtcl               : integer := 0;
			pf0_virtio_cmn_config_structure_length_hwtcl         : integer := 0;
			pf0_virtio_notification_bar_indicator_hwtcl          : integer := 0;
			pf0_virtio_notification_bar_offset_hwtcl             : integer := 0;
			pf0_virtio_notification_structure_length_hwtcl       : integer := 0;
			pf0_virtio_notify_off_multiplier_hwtcl               : integer := 0;
			pf0_virtio_isrstatus_bar_indicator_hwtcl             : integer := 0;
			pf0_virtio_isrstatus_bar_offset_hwtcl                : integer := 0;
			pf0_virtio_isrstatus_structure_length_hwtcl          : integer := 0;
			pf0_virtio_devspecific_bar_indicator_hwtcl           : integer := 0;
			pf0_virtio_devspecific_bar_offset_hwtcl              : integer := 0;
			pf0_virtio_devspecific_structure_length_hwtcl        : integer := 0;
			pf0_virtio_pciconfig_access_bar_indicator_hwtcl      : integer := 0;
			pf0_virtio_pciconfig_access_bar_offset_hwtcl         : integer := 0;
			pf0_virtio_pciconfig_access_structure_length_hwtcl   : integer := 0;
			pf1_virtio_capability_present_hwtcl                  : integer := 0;
			pf1_virtio_device_specific_cap_present_hwtcl         : integer := 0;
			pf1_virtio_cmn_config_bar_indicator_hwtcl            : integer := 0;
			pf1_virtio_cmn_config_bar_offset_hwtcl               : integer := 0;
			pf1_virtio_cmn_config_structure_length_hwtcl         : integer := 0;
			pf1_virtio_notification_bar_indicator_hwtcl          : integer := 0;
			pf1_virtio_notification_bar_offset_hwtcl             : integer := 0;
			pf1_virtio_notification_structure_length_hwtcl       : integer := 0;
			pf1_virtio_notify_off_multiplier_hwtcl               : integer := 0;
			pf1_virtio_isrstatus_bar_indicator_hwtcl             : integer := 0;
			pf1_virtio_isrstatus_bar_offset_hwtcl                : integer := 0;
			pf1_virtio_isrstatus_structure_length_hwtcl          : integer := 0;
			pf1_virtio_devspecific_bar_indicator_hwtcl           : integer := 0;
			pf1_virtio_devspecific_bar_offset_hwtcl              : integer := 0;
			pf1_virtio_devspecific_structure_length_hwtcl        : integer := 0;
			pf1_virtio_pciconfig_access_bar_indicator_hwtcl      : integer := 0;
			pf1_virtio_pciconfig_access_bar_offset_hwtcl         : integer := 0;
			pf1_virtio_pciconfig_access_structure_length_hwtcl   : integer := 0;
			pf2_virtio_capability_present_hwtcl                  : integer := 0;
			pf2_virtio_device_specific_cap_present_hwtcl         : integer := 0;
			pf2_virtio_cmn_config_bar_indicator_hwtcl            : integer := 0;
			pf2_virtio_cmn_config_bar_offset_hwtcl               : integer := 0;
			pf2_virtio_cmn_config_structure_length_hwtcl         : integer := 0;
			pf2_virtio_notification_bar_indicator_hwtcl          : integer := 0;
			pf2_virtio_notification_bar_offset_hwtcl             : integer := 0;
			pf2_virtio_notification_structure_length_hwtcl       : integer := 0;
			pf2_virtio_notify_off_multiplier_hwtcl               : integer := 0;
			pf2_virtio_isrstatus_bar_indicator_hwtcl             : integer := 0;
			pf2_virtio_isrstatus_bar_offset_hwtcl                : integer := 0;
			pf2_virtio_isrstatus_structure_length_hwtcl          : integer := 0;
			pf2_virtio_devspecific_bar_indicator_hwtcl           : integer := 0;
			pf2_virtio_devspecific_bar_offset_hwtcl              : integer := 0;
			pf2_virtio_devspecific_structure_length_hwtcl        : integer := 0;
			pf2_virtio_pciconfig_access_bar_indicator_hwtcl      : integer := 0;
			pf2_virtio_pciconfig_access_bar_offset_hwtcl         : integer := 0;
			pf2_virtio_pciconfig_access_structure_length_hwtcl   : integer := 0;
			pf3_virtio_capability_present_hwtcl                  : integer := 0;
			pf3_virtio_device_specific_cap_present_hwtcl         : integer := 0;
			pf3_virtio_cmn_config_bar_indicator_hwtcl            : integer := 0;
			pf3_virtio_cmn_config_bar_offset_hwtcl               : integer := 0;
			pf3_virtio_cmn_config_structure_length_hwtcl         : integer := 0;
			pf3_virtio_notification_bar_indicator_hwtcl          : integer := 0;
			pf3_virtio_notification_bar_offset_hwtcl             : integer := 0;
			pf3_virtio_notification_structure_length_hwtcl       : integer := 0;
			pf3_virtio_notify_off_multiplier_hwtcl               : integer := 0;
			pf3_virtio_isrstatus_bar_indicator_hwtcl             : integer := 0;
			pf3_virtio_isrstatus_bar_offset_hwtcl                : integer := 0;
			pf3_virtio_isrstatus_structure_length_hwtcl          : integer := 0;
			pf3_virtio_devspecific_bar_indicator_hwtcl           : integer := 0;
			pf3_virtio_devspecific_bar_offset_hwtcl              : integer := 0;
			pf3_virtio_devspecific_structure_length_hwtcl        : integer := 0;
			pf3_virtio_pciconfig_access_bar_indicator_hwtcl      : integer := 0;
			pf3_virtio_pciconfig_access_bar_offset_hwtcl         : integer := 0;
			pf3_virtio_pciconfig_access_structure_length_hwtcl   : integer := 0;
			pf4_virtio_capability_present_hwtcl                  : integer := 0;
			pf4_virtio_device_specific_cap_present_hwtcl         : integer := 0;
			pf4_virtio_cmn_config_bar_indicator_hwtcl            : integer := 0;
			pf4_virtio_cmn_config_bar_offset_hwtcl               : integer := 0;
			pf4_virtio_cmn_config_structure_length_hwtcl         : integer := 0;
			pf4_virtio_notification_bar_indicator_hwtcl          : integer := 0;
			pf4_virtio_notification_bar_offset_hwtcl             : integer := 0;
			pf4_virtio_notification_structure_length_hwtcl       : integer := 0;
			pf4_virtio_notify_off_multiplier_hwtcl               : integer := 0;
			pf4_virtio_isrstatus_bar_indicator_hwtcl             : integer := 0;
			pf4_virtio_isrstatus_bar_offset_hwtcl                : integer := 0;
			pf4_virtio_isrstatus_structure_length_hwtcl          : integer := 0;
			pf4_virtio_devspecific_bar_indicator_hwtcl           : integer := 0;
			pf4_virtio_devspecific_bar_offset_hwtcl              : integer := 0;
			pf4_virtio_devspecific_structure_length_hwtcl        : integer := 0;
			pf4_virtio_pciconfig_access_bar_indicator_hwtcl      : integer := 0;
			pf4_virtio_pciconfig_access_bar_offset_hwtcl         : integer := 0;
			pf4_virtio_pciconfig_access_structure_length_hwtcl   : integer := 0;
			pf5_virtio_capability_present_hwtcl                  : integer := 0;
			pf5_virtio_device_specific_cap_present_hwtcl         : integer := 0;
			pf5_virtio_cmn_config_bar_indicator_hwtcl            : integer := 0;
			pf5_virtio_cmn_config_bar_offset_hwtcl               : integer := 0;
			pf5_virtio_cmn_config_structure_length_hwtcl         : integer := 0;
			pf5_virtio_notification_bar_indicator_hwtcl          : integer := 0;
			pf5_virtio_notification_bar_offset_hwtcl             : integer := 0;
			pf5_virtio_notification_structure_length_hwtcl       : integer := 0;
			pf5_virtio_notify_off_multiplier_hwtcl               : integer := 0;
			pf5_virtio_isrstatus_bar_indicator_hwtcl             : integer := 0;
			pf5_virtio_isrstatus_bar_offset_hwtcl                : integer := 0;
			pf5_virtio_isrstatus_structure_length_hwtcl          : integer := 0;
			pf5_virtio_devspecific_bar_indicator_hwtcl           : integer := 0;
			pf5_virtio_devspecific_bar_offset_hwtcl              : integer := 0;
			pf5_virtio_devspecific_structure_length_hwtcl        : integer := 0;
			pf5_virtio_pciconfig_access_bar_indicator_hwtcl      : integer := 0;
			pf5_virtio_pciconfig_access_bar_offset_hwtcl         : integer := 0;
			pf5_virtio_pciconfig_access_structure_length_hwtcl   : integer := 0;
			pf6_virtio_capability_present_hwtcl                  : integer := 0;
			pf6_virtio_device_specific_cap_present_hwtcl         : integer := 0;
			pf6_virtio_cmn_config_bar_indicator_hwtcl            : integer := 0;
			pf6_virtio_cmn_config_bar_offset_hwtcl               : integer := 0;
			pf6_virtio_cmn_config_structure_length_hwtcl         : integer := 0;
			pf6_virtio_notification_bar_indicator_hwtcl          : integer := 0;
			pf6_virtio_notification_bar_offset_hwtcl             : integer := 0;
			pf6_virtio_notification_structure_length_hwtcl       : integer := 0;
			pf6_virtio_notify_off_multiplier_hwtcl               : integer := 0;
			pf6_virtio_isrstatus_bar_indicator_hwtcl             : integer := 0;
			pf6_virtio_isrstatus_bar_offset_hwtcl                : integer := 0;
			pf6_virtio_isrstatus_structure_length_hwtcl          : integer := 0;
			pf6_virtio_devspecific_bar_indicator_hwtcl           : integer := 0;
			pf6_virtio_devspecific_bar_offset_hwtcl              : integer := 0;
			pf6_virtio_devspecific_structure_length_hwtcl        : integer := 0;
			pf6_virtio_pciconfig_access_bar_indicator_hwtcl      : integer := 0;
			pf6_virtio_pciconfig_access_bar_offset_hwtcl         : integer := 0;
			pf6_virtio_pciconfig_access_structure_length_hwtcl   : integer := 0;
			pf7_virtio_capability_present_hwtcl                  : integer := 0;
			pf7_virtio_device_specific_cap_present_hwtcl         : integer := 0;
			pf7_virtio_cmn_config_bar_indicator_hwtcl            : integer := 0;
			pf7_virtio_cmn_config_bar_offset_hwtcl               : integer := 0;
			pf7_virtio_cmn_config_structure_length_hwtcl         : integer := 0;
			pf7_virtio_notification_bar_indicator_hwtcl          : integer := 0;
			pf7_virtio_notification_bar_offset_hwtcl             : integer := 0;
			pf7_virtio_notification_structure_length_hwtcl       : integer := 0;
			pf7_virtio_notify_off_multiplier_hwtcl               : integer := 0;
			pf7_virtio_isrstatus_bar_indicator_hwtcl             : integer := 0;
			pf7_virtio_isrstatus_bar_offset_hwtcl                : integer := 0;
			pf7_virtio_isrstatus_structure_length_hwtcl          : integer := 0;
			pf7_virtio_devspecific_bar_indicator_hwtcl           : integer := 0;
			pf7_virtio_devspecific_bar_offset_hwtcl              : integer := 0;
			pf7_virtio_devspecific_structure_length_hwtcl        : integer := 0;
			pf7_virtio_pciconfig_access_bar_indicator_hwtcl      : integer := 0;
			pf7_virtio_pciconfig_access_bar_offset_hwtcl         : integer := 0;
			pf7_virtio_pciconfig_access_structure_length_hwtcl   : integer := 0;
			pf0vf_virtio_capability_present_hwtcl                : integer := 0;
			pf0vf_virtio_device_specific_cap_present_hwtcl       : integer := 0;
			pf0vf_virtio_cmn_config_bar_indicator_hwtcl          : integer := 0;
			pf0vf_virtio_cmn_config_bar_offset_hwtcl             : integer := 0;
			pf0vf_virtio_cmn_config_structure_length_hwtcl       : integer := 0;
			pf0vf_virtio_notification_bar_indicator_hwtcl        : integer := 0;
			pf0vf_virtio_notification_bar_offset_hwtcl           : integer := 0;
			pf0vf_virtio_notification_structure_length_hwtcl     : integer := 0;
			pf0vf_virtio_notify_off_multiplier_hwtcl             : integer := 0;
			pf0vf_virtio_isrstatus_bar_indicator_hwtcl           : integer := 0;
			pf0vf_virtio_isrstatus_bar_offset_hwtcl              : integer := 0;
			pf0vf_virtio_isrstatus_structure_length_hwtcl        : integer := 0;
			pf0vf_virtio_devspecific_bar_indicator_hwtcl         : integer := 0;
			pf0vf_virtio_devspecific_bar_offset_hwtcl            : integer := 0;
			pf0vf_virtio_devspecific_structure_length_hwtcl      : integer := 0;
			pf0vf_virtio_pciconfig_access_bar_indicator_hwtcl    : integer := 0;
			pf0vf_virtio_pciconfig_access_bar_offset_hwtcl       : integer := 0;
			pf0vf_virtio_pciconfig_access_structure_length_hwtcl : integer := 0;
			pf1vf_virtio_capability_present_hwtcl                : integer := 0;
			pf1vf_virtio_device_specific_cap_present_hwtcl       : integer := 0;
			pf1vf_virtio_cmn_config_bar_indicator_hwtcl          : integer := 0;
			pf1vf_virtio_cmn_config_bar_offset_hwtcl             : integer := 0;
			pf1vf_virtio_cmn_config_structure_length_hwtcl       : integer := 0;
			pf1vf_virtio_notification_bar_indicator_hwtcl        : integer := 0;
			pf1vf_virtio_notification_bar_offset_hwtcl           : integer := 0;
			pf1vf_virtio_notification_structure_length_hwtcl     : integer := 0;
			pf1vf_virtio_notify_off_multiplier_hwtcl             : integer := 0;
			pf1vf_virtio_isrstatus_bar_indicator_hwtcl           : integer := 0;
			pf1vf_virtio_isrstatus_bar_offset_hwtcl              : integer := 0;
			pf1vf_virtio_isrstatus_structure_length_hwtcl        : integer := 0;
			pf1vf_virtio_devspecific_bar_indicator_hwtcl         : integer := 0;
			pf1vf_virtio_devspecific_bar_offset_hwtcl            : integer := 0;
			pf1vf_virtio_devspecific_structure_length_hwtcl      : integer := 0;
			pf1vf_virtio_pciconfig_access_bar_indicator_hwtcl    : integer := 0;
			pf1vf_virtio_pciconfig_access_bar_offset_hwtcl       : integer := 0;
			pf1vf_virtio_pciconfig_access_structure_length_hwtcl : integer := 0;
			pf2vf_virtio_capability_present_hwtcl                : integer := 0;
			pf2vf_virtio_device_specific_cap_present_hwtcl       : integer := 0;
			pf2vf_virtio_cmn_config_bar_indicator_hwtcl          : integer := 0;
			pf2vf_virtio_cmn_config_bar_offset_hwtcl             : integer := 0;
			pf2vf_virtio_cmn_config_structure_length_hwtcl       : integer := 0;
			pf2vf_virtio_notification_bar_indicator_hwtcl        : integer := 0;
			pf2vf_virtio_notification_bar_offset_hwtcl           : integer := 0;
			pf2vf_virtio_notification_structure_length_hwtcl     : integer := 0;
			pf2vf_virtio_notify_off_multiplier_hwtcl             : integer := 0;
			pf2vf_virtio_isrstatus_bar_indicator_hwtcl           : integer := 0;
			pf2vf_virtio_isrstatus_bar_offset_hwtcl              : integer := 0;
			pf2vf_virtio_isrstatus_structure_length_hwtcl        : integer := 0;
			pf2vf_virtio_devspecific_bar_indicator_hwtcl         : integer := 0;
			pf2vf_virtio_devspecific_bar_offset_hwtcl            : integer := 0;
			pf2vf_virtio_devspecific_structure_length_hwtcl      : integer := 0;
			pf2vf_virtio_pciconfig_access_bar_indicator_hwtcl    : integer := 0;
			pf2vf_virtio_pciconfig_access_bar_offset_hwtcl       : integer := 0;
			pf2vf_virtio_pciconfig_access_structure_length_hwtcl : integer := 0;
			pf3vf_virtio_capability_present_hwtcl                : integer := 0;
			pf3vf_virtio_device_specific_cap_present_hwtcl       : integer := 0;
			pf3vf_virtio_cmn_config_bar_indicator_hwtcl          : integer := 0;
			pf3vf_virtio_cmn_config_bar_offset_hwtcl             : integer := 0;
			pf3vf_virtio_cmn_config_structure_length_hwtcl       : integer := 0;
			pf3vf_virtio_notification_bar_indicator_hwtcl        : integer := 0;
			pf3vf_virtio_notification_bar_offset_hwtcl           : integer := 0;
			pf3vf_virtio_notification_structure_length_hwtcl     : integer := 0;
			pf3vf_virtio_notify_off_multiplier_hwtcl             : integer := 0;
			pf3vf_virtio_isrstatus_bar_indicator_hwtcl           : integer := 0;
			pf3vf_virtio_isrstatus_bar_offset_hwtcl              : integer := 0;
			pf3vf_virtio_isrstatus_structure_length_hwtcl        : integer := 0;
			pf3vf_virtio_devspecific_bar_indicator_hwtcl         : integer := 0;
			pf3vf_virtio_devspecific_bar_offset_hwtcl            : integer := 0;
			pf3vf_virtio_devspecific_structure_length_hwtcl      : integer := 0;
			pf3vf_virtio_pciconfig_access_bar_indicator_hwtcl    : integer := 0;
			pf3vf_virtio_pciconfig_access_bar_offset_hwtcl       : integer := 0;
			pf3vf_virtio_pciconfig_access_structure_length_hwtcl : integer := 0;
			pf_tph_support_hwtcl                                 : integer := 0;
			pf0_tph_int_mode_support_hwtcl                       : integer := 0;
			pf0_tph_dev_specific_mode_support_hwtcl              : integer := 0;
			pf0_tph_st_table_location_hwtcl                      : integer := 0;
			pf0_tph_st_table_size_hwtcl                          : integer := 63;
			pf1_tph_int_mode_support_hwtcl                       : integer := 0;
			pf1_tph_dev_specific_mode_support_hwtcl              : integer := 0;
			pf1_tph_st_table_location_hwtcl                      : integer := 0;
			pf1_tph_st_table_size_hwtcl                          : integer := 63;
			pf2_tph_int_mode_support_hwtcl                       : integer := 0;
			pf2_tph_dev_specific_mode_support_hwtcl              : integer := 0;
			pf2_tph_st_table_location_hwtcl                      : integer := 0;
			pf2_tph_st_table_size_hwtcl                          : integer := 63;
			pf3_tph_int_mode_support_hwtcl                       : integer := 0;
			pf3_tph_dev_specific_mode_support_hwtcl              : integer := 0;
			pf3_tph_st_table_location_hwtcl                      : integer := 0;
			pf3_tph_st_table_size_hwtcl                          : integer := 63;
			vf_tph_support_hwtcl                                 : integer := 0;
			pf0_vf_tph_int_mode_support_hwtcl                    : integer := 0;
			pf0_vf_tph_dev_specific_mode_support_hwtcl           : integer := 0;
			pf0_vf_tph_st_table_location_hwtcl                   : integer := 0;
			pf0_vf_tph_st_table_size_hwtcl                       : integer := 63;
			pf1_vf_tph_int_mode_support_hwtcl                    : integer := 0;
			pf1_vf_tph_dev_specific_mode_support_hwtcl           : integer := 0;
			pf1_vf_tph_st_table_location_hwtcl                   : integer := 0;
			pf1_vf_tph_st_table_size_hwtcl                       : integer := 63;
			pf2_vf_tph_int_mode_support_hwtcl                    : integer := 0;
			pf2_vf_tph_dev_specific_mode_support_hwtcl           : integer := 0;
			pf2_vf_tph_st_table_location_hwtcl                   : integer := 0;
			pf2_vf_tph_st_table_size_hwtcl                       : integer := 63;
			pf3_vf_tph_int_mode_support_hwtcl                    : integer := 0;
			pf3_vf_tph_dev_specific_mode_support_hwtcl           : integer := 0;
			pf3_vf_tph_st_table_location_hwtcl                   : integer := 0;
			pf3_vf_tph_st_table_size_hwtcl                       : integer := 63;
			pf_ats_support_hwtcl                                 : integer := 0;
			pf0_ats_invalidate_queue_depth_hwtcl                 : integer := 0;
			pf1_ats_invalidate_queue_depth_hwtcl                 : integer := 0;
			pf2_ats_invalidate_queue_depth_hwtcl                 : integer := 0;
			pf3_ats_invalidate_queue_depth_hwtcl                 : integer := 0;
			vf_ats_support_hwtcl                                 : integer := 0;
			pf0_bar0_present_hwtcl                               : integer := 1;
			pf0_bar1_present_hwtcl                               : integer := 0;
			pf0_bar2_present_hwtcl                               : integer := 0;
			pf0_bar3_present_hwtcl                               : integer := 0;
			pf0_bar4_present_hwtcl                               : integer := 0;
			pf0_bar5_present_hwtcl                               : integer := 0;
			pf0_exprom_bar_present_hwtcl                         : integer := 0;
			pf0_bar0_type_hwtcl                                  : integer := 1;
			pf0_bar2_type_hwtcl                                  : integer := 1;
			pf0_bar4_type_hwtcl                                  : integer := 1;
			pf0_bar0_prefetchable_hwtcl                          : integer := 1;
			pf0_bar1_prefetchable_hwtcl                          : integer := 1;
			pf0_bar2_prefetchable_hwtcl                          : integer := 1;
			pf0_bar3_prefetchable_hwtcl                          : integer := 1;
			pf0_bar4_prefetchable_hwtcl                          : integer := 1;
			pf0_bar5_prefetchable_hwtcl                          : integer := 1;
			pf0_bar0_size_hwtcl                                  : integer := 12;
			pf0_bar1_size_hwtcl                                  : integer := 12;
			pf0_bar2_size_hwtcl                                  : integer := 12;
			pf0_bar3_size_hwtcl                                  : integer := 12;
			pf0_bar4_size_hwtcl                                  : integer := 12;
			pf0_bar5_size_hwtcl                                  : integer := 12;
			pf0_exprom_bar_size_hwtcl                            : integer := 12;
			pf0_vf_bar0_present_hwtcl                            : integer := 0;
			pf0_vf_bar1_present_hwtcl                            : integer := 0;
			pf0_vf_bar2_present_hwtcl                            : integer := 0;
			pf0_vf_bar3_present_hwtcl                            : integer := 0;
			pf0_vf_bar4_present_hwtcl                            : integer := 0;
			pf0_vf_bar5_present_hwtcl                            : integer := 0;
			pf0_vf_bar0_type_hwtcl                               : integer := 1;
			pf0_vf_bar2_type_hwtcl                               : integer := 1;
			pf0_vf_bar4_type_hwtcl                               : integer := 1;
			pf0_vf_bar0_prefetchable_hwtcl                       : integer := 1;
			pf0_vf_bar1_prefetchable_hwtcl                       : integer := 1;
			pf0_vf_bar2_prefetchable_hwtcl                       : integer := 1;
			pf0_vf_bar3_prefetchable_hwtcl                       : integer := 1;
			pf0_vf_bar4_prefetchable_hwtcl                       : integer := 1;
			pf0_vf_bar5_prefetchable_hwtcl                       : integer := 1;
			pf0_vf_bar0_size_hwtcl                               : integer := 12;
			pf0_vf_bar1_size_hwtcl                               : integer := 12;
			pf0_vf_bar2_size_hwtcl                               : integer := 12;
			pf0_vf_bar3_size_hwtcl                               : integer := 12;
			pf0_vf_bar4_size_hwtcl                               : integer := 12;
			pf0_vf_bar5_size_hwtcl                               : integer := 12;
			pf1_bar0_present_hwtcl                               : integer := 0;
			pf1_bar1_present_hwtcl                               : integer := 0;
			pf1_bar2_present_hwtcl                               : integer := 0;
			pf1_bar3_present_hwtcl                               : integer := 0;
			pf1_bar4_present_hwtcl                               : integer := 0;
			pf1_bar5_present_hwtcl                               : integer := 0;
			pf1_exprom_bar_present_hwtcl                         : integer := 0;
			pf1_bar0_type_hwtcl                                  : integer := 1;
			pf1_bar2_type_hwtcl                                  : integer := 1;
			pf1_bar4_type_hwtcl                                  : integer := 1;
			pf1_bar0_prefetchable_hwtcl                          : integer := 1;
			pf1_bar1_prefetchable_hwtcl                          : integer := 1;
			pf1_bar2_prefetchable_hwtcl                          : integer := 1;
			pf1_bar3_prefetchable_hwtcl                          : integer := 1;
			pf1_bar4_prefetchable_hwtcl                          : integer := 1;
			pf1_bar5_prefetchable_hwtcl                          : integer := 1;
			pf1_bar0_size_hwtcl                                  : integer := 12;
			pf1_bar1_size_hwtcl                                  : integer := 12;
			pf1_bar2_size_hwtcl                                  : integer := 12;
			pf1_bar3_size_hwtcl                                  : integer := 12;
			pf1_bar4_size_hwtcl                                  : integer := 12;
			pf1_bar5_size_hwtcl                                  : integer := 12;
			pf1_exprom_bar_size_hwtcl                            : integer := 12;
			pf1_vf_bar0_present_hwtcl                            : integer := 0;
			pf1_vf_bar1_present_hwtcl                            : integer := 0;
			pf1_vf_bar2_present_hwtcl                            : integer := 0;
			pf1_vf_bar3_present_hwtcl                            : integer := 0;
			pf1_vf_bar4_present_hwtcl                            : integer := 0;
			pf1_vf_bar5_present_hwtcl                            : integer := 0;
			pf1_vf_bar0_type_hwtcl                               : integer := 1;
			pf1_vf_bar2_type_hwtcl                               : integer := 1;
			pf1_vf_bar4_type_hwtcl                               : integer := 1;
			pf1_vf_bar0_prefetchable_hwtcl                       : integer := 1;
			pf1_vf_bar1_prefetchable_hwtcl                       : integer := 1;
			pf1_vf_bar2_prefetchable_hwtcl                       : integer := 1;
			pf1_vf_bar3_prefetchable_hwtcl                       : integer := 1;
			pf1_vf_bar4_prefetchable_hwtcl                       : integer := 1;
			pf1_vf_bar5_prefetchable_hwtcl                       : integer := 1;
			pf1_vf_bar0_size_hwtcl                               : integer := 12;
			pf1_vf_bar1_size_hwtcl                               : integer := 12;
			pf1_vf_bar2_size_hwtcl                               : integer := 12;
			pf1_vf_bar3_size_hwtcl                               : integer := 12;
			pf1_vf_bar4_size_hwtcl                               : integer := 12;
			pf1_vf_bar5_size_hwtcl                               : integer := 12;
			pf2_bar0_present_hwtcl                               : integer := 0;
			pf2_bar1_present_hwtcl                               : integer := 0;
			pf2_bar2_present_hwtcl                               : integer := 0;
			pf2_bar3_present_hwtcl                               : integer := 0;
			pf2_bar4_present_hwtcl                               : integer := 0;
			pf2_bar5_present_hwtcl                               : integer := 0;
			pf2_exprom_bar_present_hwtcl                         : integer := 0;
			pf2_bar0_type_hwtcl                                  : integer := 1;
			pf2_bar2_type_hwtcl                                  : integer := 1;
			pf2_bar4_type_hwtcl                                  : integer := 1;
			pf2_bar0_prefetchable_hwtcl                          : integer := 1;
			pf2_bar1_prefetchable_hwtcl                          : integer := 1;
			pf2_bar2_prefetchable_hwtcl                          : integer := 1;
			pf2_bar3_prefetchable_hwtcl                          : integer := 1;
			pf2_bar4_prefetchable_hwtcl                          : integer := 1;
			pf2_bar5_prefetchable_hwtcl                          : integer := 1;
			pf2_bar0_size_hwtcl                                  : integer := 12;
			pf2_bar1_size_hwtcl                                  : integer := 12;
			pf2_bar2_size_hwtcl                                  : integer := 12;
			pf2_bar3_size_hwtcl                                  : integer := 12;
			pf2_bar4_size_hwtcl                                  : integer := 12;
			pf2_bar5_size_hwtcl                                  : integer := 12;
			pf2_exprom_bar_size_hwtcl                            : integer := 12;
			pf2_vf_bar0_present_hwtcl                            : integer := 0;
			pf2_vf_bar1_present_hwtcl                            : integer := 0;
			pf2_vf_bar2_present_hwtcl                            : integer := 0;
			pf2_vf_bar3_present_hwtcl                            : integer := 0;
			pf2_vf_bar4_present_hwtcl                            : integer := 0;
			pf2_vf_bar5_present_hwtcl                            : integer := 0;
			pf2_vf_bar0_type_hwtcl                               : integer := 1;
			pf2_vf_bar2_type_hwtcl                               : integer := 1;
			pf2_vf_bar4_type_hwtcl                               : integer := 1;
			pf2_vf_bar0_prefetchable_hwtcl                       : integer := 1;
			pf2_vf_bar1_prefetchable_hwtcl                       : integer := 1;
			pf2_vf_bar2_prefetchable_hwtcl                       : integer := 1;
			pf2_vf_bar3_prefetchable_hwtcl                       : integer := 1;
			pf2_vf_bar4_prefetchable_hwtcl                       : integer := 1;
			pf2_vf_bar5_prefetchable_hwtcl                       : integer := 1;
			pf2_vf_bar0_size_hwtcl                               : integer := 12;
			pf2_vf_bar1_size_hwtcl                               : integer := 12;
			pf2_vf_bar2_size_hwtcl                               : integer := 12;
			pf2_vf_bar3_size_hwtcl                               : integer := 12;
			pf2_vf_bar4_size_hwtcl                               : integer := 12;
			pf2_vf_bar5_size_hwtcl                               : integer := 12;
			pf3_bar0_present_hwtcl                               : integer := 0;
			pf3_bar1_present_hwtcl                               : integer := 0;
			pf3_bar2_present_hwtcl                               : integer := 0;
			pf3_bar3_present_hwtcl                               : integer := 0;
			pf3_bar4_present_hwtcl                               : integer := 0;
			pf3_bar5_present_hwtcl                               : integer := 0;
			pf3_exprom_bar_present_hwtcl                         : integer := 0;
			pf3_bar0_type_hwtcl                                  : integer := 1;
			pf3_bar2_type_hwtcl                                  : integer := 1;
			pf3_bar4_type_hwtcl                                  : integer := 1;
			pf3_bar0_prefetchable_hwtcl                          : integer := 1;
			pf3_bar1_prefetchable_hwtcl                          : integer := 1;
			pf3_bar2_prefetchable_hwtcl                          : integer := 1;
			pf3_bar3_prefetchable_hwtcl                          : integer := 1;
			pf3_bar4_prefetchable_hwtcl                          : integer := 1;
			pf3_bar5_prefetchable_hwtcl                          : integer := 1;
			pf3_bar0_size_hwtcl                                  : integer := 12;
			pf3_bar1_size_hwtcl                                  : integer := 12;
			pf3_bar2_size_hwtcl                                  : integer := 12;
			pf3_bar3_size_hwtcl                                  : integer := 12;
			pf3_bar4_size_hwtcl                                  : integer := 12;
			pf3_bar5_size_hwtcl                                  : integer := 12;
			pf3_exprom_bar_size_hwtcl                            : integer := 12;
			pf3_vf_bar0_present_hwtcl                            : integer := 0;
			pf3_vf_bar1_present_hwtcl                            : integer := 0;
			pf3_vf_bar2_present_hwtcl                            : integer := 0;
			pf3_vf_bar3_present_hwtcl                            : integer := 0;
			pf3_vf_bar4_present_hwtcl                            : integer := 0;
			pf3_vf_bar5_present_hwtcl                            : integer := 0;
			pf3_vf_bar0_type_hwtcl                               : integer := 1;
			pf3_vf_bar2_type_hwtcl                               : integer := 1;
			pf3_vf_bar4_type_hwtcl                               : integer := 1;
			pf3_vf_bar0_prefetchable_hwtcl                       : integer := 1;
			pf3_vf_bar1_prefetchable_hwtcl                       : integer := 1;
			pf3_vf_bar2_prefetchable_hwtcl                       : integer := 1;
			pf3_vf_bar3_prefetchable_hwtcl                       : integer := 1;
			pf3_vf_bar4_prefetchable_hwtcl                       : integer := 1;
			pf3_vf_bar5_prefetchable_hwtcl                       : integer := 1;
			pf3_vf_bar0_size_hwtcl                               : integer := 12;
			pf3_vf_bar1_size_hwtcl                               : integer := 12;
			pf3_vf_bar2_size_hwtcl                               : integer := 12;
			pf3_vf_bar3_size_hwtcl                               : integer := 12;
			pf3_vf_bar4_size_hwtcl                               : integer := 12;
			pf3_vf_bar5_size_hwtcl                               : integer := 12;
			pf4_bar0_present_hwtcl                               : integer := 0;
			pf4_bar1_present_hwtcl                               : integer := 0;
			pf4_bar2_present_hwtcl                               : integer := 0;
			pf4_bar3_present_hwtcl                               : integer := 0;
			pf4_bar4_present_hwtcl                               : integer := 0;
			pf4_bar5_present_hwtcl                               : integer := 0;
			pf4_exprom_bar_present_hwtcl                         : integer := 0;
			pf4_bar0_type_hwtcl                                  : integer := 1;
			pf4_bar2_type_hwtcl                                  : integer := 1;
			pf4_bar4_type_hwtcl                                  : integer := 1;
			pf4_bar0_prefetchable_hwtcl                          : integer := 1;
			pf4_bar1_prefetchable_hwtcl                          : integer := 1;
			pf4_bar2_prefetchable_hwtcl                          : integer := 1;
			pf4_bar3_prefetchable_hwtcl                          : integer := 1;
			pf4_bar4_prefetchable_hwtcl                          : integer := 1;
			pf4_bar5_prefetchable_hwtcl                          : integer := 1;
			pf4_bar0_size_hwtcl                                  : integer := 12;
			pf4_bar1_size_hwtcl                                  : integer := 12;
			pf4_bar2_size_hwtcl                                  : integer := 12;
			pf4_bar3_size_hwtcl                                  : integer := 12;
			pf4_bar4_size_hwtcl                                  : integer := 12;
			pf4_bar5_size_hwtcl                                  : integer := 12;
			pf4_exprom_bar_size_hwtcl                            : integer := 12;
			pf5_bar0_present_hwtcl                               : integer := 0;
			pf5_bar1_present_hwtcl                               : integer := 0;
			pf5_bar2_present_hwtcl                               : integer := 0;
			pf5_bar3_present_hwtcl                               : integer := 0;
			pf5_bar4_present_hwtcl                               : integer := 0;
			pf5_bar5_present_hwtcl                               : integer := 0;
			pf5_exprom_bar_present_hwtcl                         : integer := 0;
			pf5_bar0_type_hwtcl                                  : integer := 1;
			pf5_bar2_type_hwtcl                                  : integer := 1;
			pf5_bar4_type_hwtcl                                  : integer := 1;
			pf5_bar0_prefetchable_hwtcl                          : integer := 1;
			pf5_bar1_prefetchable_hwtcl                          : integer := 1;
			pf5_bar2_prefetchable_hwtcl                          : integer := 1;
			pf5_bar3_prefetchable_hwtcl                          : integer := 1;
			pf5_bar4_prefetchable_hwtcl                          : integer := 1;
			pf5_bar5_prefetchable_hwtcl                          : integer := 1;
			pf5_bar0_size_hwtcl                                  : integer := 12;
			pf5_bar1_size_hwtcl                                  : integer := 12;
			pf5_bar2_size_hwtcl                                  : integer := 12;
			pf5_bar3_size_hwtcl                                  : integer := 12;
			pf5_bar4_size_hwtcl                                  : integer := 12;
			pf5_bar5_size_hwtcl                                  : integer := 12;
			pf5_exprom_bar_size_hwtcl                            : integer := 12;
			pf6_bar0_present_hwtcl                               : integer := 0;
			pf6_bar1_present_hwtcl                               : integer := 0;
			pf6_bar2_present_hwtcl                               : integer := 0;
			pf6_bar3_present_hwtcl                               : integer := 0;
			pf6_bar4_present_hwtcl                               : integer := 0;
			pf6_bar5_present_hwtcl                               : integer := 0;
			pf6_exprom_bar_present_hwtcl                         : integer := 0;
			pf6_bar0_type_hwtcl                                  : integer := 1;
			pf6_bar2_type_hwtcl                                  : integer := 1;
			pf6_bar4_type_hwtcl                                  : integer := 1;
			pf6_bar0_prefetchable_hwtcl                          : integer := 1;
			pf6_bar1_prefetchable_hwtcl                          : integer := 1;
			pf6_bar2_prefetchable_hwtcl                          : integer := 1;
			pf6_bar3_prefetchable_hwtcl                          : integer := 1;
			pf6_bar4_prefetchable_hwtcl                          : integer := 1;
			pf6_bar5_prefetchable_hwtcl                          : integer := 1;
			pf6_bar0_size_hwtcl                                  : integer := 12;
			pf6_bar1_size_hwtcl                                  : integer := 12;
			pf6_bar2_size_hwtcl                                  : integer := 12;
			pf6_bar3_size_hwtcl                                  : integer := 12;
			pf6_bar4_size_hwtcl                                  : integer := 12;
			pf6_bar5_size_hwtcl                                  : integer := 12;
			pf6_exprom_bar_size_hwtcl                            : integer := 12;
			pf7_bar0_present_hwtcl                               : integer := 0;
			pf7_bar1_present_hwtcl                               : integer := 0;
			pf7_bar2_present_hwtcl                               : integer := 0;
			pf7_bar3_present_hwtcl                               : integer := 0;
			pf7_bar4_present_hwtcl                               : integer := 0;
			pf7_bar5_present_hwtcl                               : integer := 0;
			pf7_exprom_bar_present_hwtcl                         : integer := 0;
			pf7_bar0_type_hwtcl                                  : integer := 1;
			pf7_bar2_type_hwtcl                                  : integer := 1;
			pf7_bar4_type_hwtcl                                  : integer := 1;
			pf7_bar0_prefetchable_hwtcl                          : integer := 1;
			pf7_bar1_prefetchable_hwtcl                          : integer := 1;
			pf7_bar2_prefetchable_hwtcl                          : integer := 1;
			pf7_bar3_prefetchable_hwtcl                          : integer := 1;
			pf7_bar4_prefetchable_hwtcl                          : integer := 1;
			pf7_bar5_prefetchable_hwtcl                          : integer := 1;
			pf7_bar0_size_hwtcl                                  : integer := 12;
			pf7_bar1_size_hwtcl                                  : integer := 12;
			pf7_bar2_size_hwtcl                                  : integer := 12;
			pf7_bar3_size_hwtcl                                  : integer := 12;
			pf7_bar4_size_hwtcl                                  : integer := 12;
			pf7_bar5_size_hwtcl                                  : integer := 12;
			pf7_exprom_bar_size_hwtcl                            : integer := 12;
			pf1_vendor_id_hwtcl                                  : integer := 0;
			pf1_device_id_hwtcl                                  : integer := 0;
			pf1_vf_device_id_hwtcl                               : integer := 0;
			pf1_revision_id_hwtcl                                : integer := 0;
			pf1_class_code_hwtcl                                 : integer := 0;
			pf1_subclass_code_hwtcl                              : integer := 0;
			pf1_pci_prog_intfc_byte_hwtcl                        : integer := 0;
			pf1_subsystem_vendor_id_hwtcl                        : integer := 0;
			pf1_subsystem_device_id_hwtcl                        : integer := 0;
			pf2_vendor_id_hwtcl                                  : integer := 0;
			pf2_device_id_hwtcl                                  : integer := 0;
			pf2_vf_device_id_hwtcl                               : integer := 0;
			pf2_revision_id_hwtcl                                : integer := 0;
			pf2_class_code_hwtcl                                 : integer := 0;
			pf2_subclass_code_hwtcl                              : integer := 0;
			pf2_pci_prog_intfc_byte_hwtcl                        : integer := 0;
			pf2_subsystem_vendor_id_hwtcl                        : integer := 0;
			pf2_subsystem_device_id_hwtcl                        : integer := 0;
			pf3_vendor_id_hwtcl                                  : integer := 0;
			pf3_device_id_hwtcl                                  : integer := 0;
			pf3_vf_device_id_hwtcl                               : integer := 0;
			pf3_revision_id_hwtcl                                : integer := 0;
			pf3_class_code_hwtcl                                 : integer := 0;
			pf3_subclass_code_hwtcl                              : integer := 0;
			pf3_pci_prog_intfc_byte_hwtcl                        : integer := 0;
			pf3_subsystem_vendor_id_hwtcl                        : integer := 0;
			pf3_subsystem_device_id_hwtcl                        : integer := 0;
			pf4_vendor_id_hwtcl                                  : integer := 0;
			pf4_device_id_hwtcl                                  : integer := 0;
			pf4_vf_device_id_hwtcl                               : integer := 0;
			pf4_revision_id_hwtcl                                : integer := 0;
			pf4_class_code_hwtcl                                 : integer := 0;
			pf4_subclass_code_hwtcl                              : integer := 0;
			pf4_pci_prog_intfc_byte_hwtcl                        : integer := 0;
			pf4_subsystem_vendor_id_hwtcl                        : integer := 0;
			pf4_subsystem_device_id_hwtcl                        : integer := 0;
			pf5_vendor_id_hwtcl                                  : integer := 0;
			pf5_device_id_hwtcl                                  : integer := 0;
			pf5_vf_device_id_hwtcl                               : integer := 0;
			pf5_revision_id_hwtcl                                : integer := 0;
			pf5_class_code_hwtcl                                 : integer := 0;
			pf5_subclass_code_hwtcl                              : integer := 0;
			pf5_pci_prog_intfc_byte_hwtcl                        : integer := 0;
			pf5_subsystem_vendor_id_hwtcl                        : integer := 0;
			pf5_subsystem_device_id_hwtcl                        : integer := 0;
			pf6_vendor_id_hwtcl                                  : integer := 0;
			pf6_device_id_hwtcl                                  : integer := 0;
			pf6_vf_device_id_hwtcl                               : integer := 0;
			pf6_revision_id_hwtcl                                : integer := 0;
			pf6_class_code_hwtcl                                 : integer := 0;
			pf6_subclass_code_hwtcl                              : integer := 0;
			pf6_pci_prog_intfc_byte_hwtcl                        : integer := 0;
			pf6_subsystem_vendor_id_hwtcl                        : integer := 0;
			pf6_subsystem_device_id_hwtcl                        : integer := 0;
			pf7_vendor_id_hwtcl                                  : integer := 0;
			pf7_device_id_hwtcl                                  : integer := 0;
			pf7_vf_device_id_hwtcl                               : integer := 0;
			pf7_revision_id_hwtcl                                : integer := 0;
			pf7_class_code_hwtcl                                 : integer := 0;
			pf7_subclass_code_hwtcl                              : integer := 0;
			pf7_pci_prog_intfc_byte_hwtcl                        : integer := 0;
			pf7_subsystem_vendor_id_hwtcl                        : integer := 0;
			pf7_subsystem_device_id_hwtcl                        : integer := 0;
			pf_msi_support_hwtcl                                 : integer := 0;
			pf0_msi_multi_message_capable_hwtcl                  : integer := 4;
			pf1_msi_multi_message_capable_hwtcl                  : integer := 4;
			pf2_msi_multi_message_capable_hwtcl                  : integer := 4;
			pf3_msi_multi_message_capable_hwtcl                  : integer := 4;
			pf4_msi_multi_message_capable_hwtcl                  : integer := 4;
			pf5_msi_multi_message_capable_hwtcl                  : integer := 4;
			pf6_msi_multi_message_capable_hwtcl                  : integer := 4;
			pf7_msi_multi_message_capable_hwtcl                  : integer := 4;
			pf_enable_function_msix_support_hwtcl                : integer := 0;
			vf_msix_cap_present_hwtcl                            : integer := 0;
			pf0_msix_table_size_hwtcl                            : integer := 0;
			pf0_msix_table_offset_hwtcl                          : integer := 0;
			pf0_msix_table_bir_hwtcl                             : integer := 0;
			pf0_msix_pba_offset_hwtcl                            : integer := 0;
			pf0_msix_pba_bir_hwtcl                               : integer := 0;
			pf1_msix_table_size_hwtcl                            : integer := 0;
			pf1_msix_table_offset_hwtcl                          : integer := 0;
			pf1_msix_table_bir_hwtcl                             : integer := 0;
			pf1_msix_pba_offset_hwtcl                            : integer := 0;
			pf1_msix_pba_bir_hwtcl                               : integer := 0;
			pf2_msix_table_size_hwtcl                            : integer := 0;
			pf2_msix_table_offset_hwtcl                          : integer := 0;
			pf2_msix_table_bir_hwtcl                             : integer := 0;
			pf2_msix_pba_offset_hwtcl                            : integer := 0;
			pf2_msix_pba_bir_hwtcl                               : integer := 0;
			pf3_msix_table_size_hwtcl                            : integer := 0;
			pf3_msix_table_offset_hwtcl                          : integer := 0;
			pf3_msix_table_bir_hwtcl                             : integer := 0;
			pf3_msix_pba_offset_hwtcl                            : integer := 0;
			pf3_msix_pba_bir_hwtcl                               : integer := 0;
			pf4_msix_table_size_hwtcl                            : integer := 0;
			pf4_msix_table_offset_hwtcl                          : integer := 0;
			pf4_msix_table_bir_hwtcl                             : integer := 0;
			pf4_msix_pba_offset_hwtcl                            : integer := 0;
			pf4_msix_pba_bir_hwtcl                               : integer := 0;
			pf5_msix_table_size_hwtcl                            : integer := 0;
			pf5_msix_table_offset_hwtcl                          : integer := 0;
			pf5_msix_table_bir_hwtcl                             : integer := 0;
			pf5_msix_pba_offset_hwtcl                            : integer := 0;
			pf5_msix_pba_bir_hwtcl                               : integer := 0;
			pf6_msix_table_size_hwtcl                            : integer := 0;
			pf6_msix_table_offset_hwtcl                          : integer := 0;
			pf6_msix_table_bir_hwtcl                             : integer := 0;
			pf6_msix_pba_offset_hwtcl                            : integer := 0;
			pf6_msix_pba_bir_hwtcl                               : integer := 0;
			pf7_msix_table_size_hwtcl                            : integer := 0;
			pf7_msix_table_offset_hwtcl                          : integer := 0;
			pf7_msix_table_bir_hwtcl                             : integer := 0;
			pf7_msix_pba_offset_hwtcl                            : integer := 0;
			pf7_msix_pba_bir_hwtcl                               : integer := 0;
			pf0_vf_msix_tbl_size_hwtcl                           : integer := 0;
			pf0_vf_msix_tbl_offset_hwtcl                         : integer := 0;
			pf0_vf_msix_tbl_bir_hwtcl                            : integer := 0;
			pf0_vf_msix_pba_offset_hwtcl                         : integer := 0;
			pf0_vf_msix_pba_bir_hwtcl                            : integer := 0;
			pf1_vf_msix_tbl_size_hwtcl                           : integer := 0;
			pf1_vf_msix_tbl_offset_hwtcl                         : integer := 0;
			pf1_vf_msix_tbl_bir_hwtcl                            : integer := 0;
			pf1_vf_msix_pba_offset_hwtcl                         : integer := 0;
			pf1_vf_msix_pba_bir_hwtcl                            : integer := 0;
			pf2_vf_msix_tbl_size_hwtcl                           : integer := 0;
			pf2_vf_msix_tbl_offset_hwtcl                         : integer := 0;
			pf2_vf_msix_tbl_bir_hwtcl                            : integer := 0;
			pf2_vf_msix_pba_offset_hwtcl                         : integer := 0;
			pf2_vf_msix_pba_bir_hwtcl                            : integer := 0;
			pf3_vf_msix_tbl_size_hwtcl                           : integer := 0;
			pf3_vf_msix_tbl_offset_hwtcl                         : integer := 0;
			pf3_vf_msix_tbl_bir_hwtcl                            : integer := 0;
			pf3_vf_msix_pba_offset_hwtcl                         : integer := 0;
			pf3_vf_msix_pba_bir_hwtcl                            : integer := 0;
			pf0_interrupt_pin_hwtcl                              : string  := "inta";
			pf1_interrupt_pin_hwtcl                              : string  := "inta";
			pf2_interrupt_pin_hwtcl                              : string  := "inta";
			pf3_interrupt_pin_hwtcl                              : string  := "inta";
			pf4_interrupt_pin_hwtcl                              : string  := "inta";
			pf5_interrupt_pin_hwtcl                              : string  := "inta";
			pf6_interrupt_pin_hwtcl                              : string  := "inta";
			pf7_interrupt_pin_hwtcl                              : string  := "inta";
			pf0_intr_line_hwtcl                                  : integer := 0;
			pf1_intr_line_hwtcl                                  : integer := 0;
			pf2_intr_line_hwtcl                                  : integer := 0;
			pf3_intr_line_hwtcl                                  : integer := 0;
			pf4_intr_line_hwtcl                                  : integer := 0;
			pf5_intr_line_hwtcl                                  : integer := 0;
			pf6_intr_line_hwtcl                                  : integer := 0;
			pf7_intr_line_hwtcl                                  : integer := 0;
			link2csr_width_hwtcl                                 : integer := 16;
			lmi_width_hwtcl                                      : integer := 8;
			rx_polinv_soft_logic_enable                          : integer := 0;
			enable_soft_dfe                                      : integer := 0;
			tlp_inspector_hwtcl                                  : integer := 0;
			tlp_inspector_use_signal_probe_hwtcl                 : integer := 0;
			tlp_inspector_use_thin_rx_master                     : integer := 0;
			tlp_insp_trg_dw0_hwtcl                               : integer := 2049;
			tlp_insp_trg_dw1_hwtcl                               : integer := 0;
			tlp_insp_trg_dw2_hwtcl                               : integer := 0;
			enable_ast_trs_hwtcl                                 : integer := 0;
			ast_trs_num_desc_hwtcl                               : integer := 16;
			ast_trs_txdata_width_hwtcl                           : integer := 256;
			ast_trs_txdesc_width_hwtcl                           : integer := 256;
			ast_trs_txstatus_width_hwtcl                         : integer := 256;
			ast_trs_rxdata_width_hwtcl                           : integer := 256;
			ast_trs_rxdesc_width_hwtcl                           : integer := 256;
			ast_trs_txmty_width_hwtcl                            : integer := 32;
			ast_trs_rxmty_width_hwtcl                            : integer := 32;
			dma_use_scfifo_ext_hwtcl                             : integer := 0;
			silicon_rev                                          : string  := "20nm5es";
			hip_ac_pwr_clk_freq_in_hz                            : integer := 0;
			ko_compl_data                                        : integer := 0;
			ko_compl_header                                      : integer := 0;
			acknack_base                                         : integer := 0;
			acknack_set                                          : string  := "false";
			advance_error_reporting                              : string  := "disable";
			app_interface_width                                  : string  := "avst_64bit";
			arb_upfc_30us_counter                                : integer := 0;
			arb_upfc_30us_en                                     : string  := "enable";
			aspm_config_management                               : string  := "true";
			aspm_patch_disable                                   : string  := "enable_both";
			ast_width_rx                                         : string  := "rx_64";
			ast_width_tx                                         : string  := "tx_64";
			atomic_malformed                                     : string  := "false";
			atomic_op_completer_32bit                            : string  := "false";
			atomic_op_completer_64bit                            : string  := "false";
			atomic_op_routing                                    : string  := "false";
			auto_msg_drop_enable                                 : string  := "false";
			bar0_type                                            : string  := "bar0_64bit_prefetch_mem";
			bar1_type                                            : string  := "bar1_disable";
			bar2_type                                            : string  := "bar2_disable";
			bar3_type                                            : string  := "bar3_disable";
			bar4_type                                            : string  := "bar4_disable";
			bar5_type                                            : string  := "bar5_disable";
			base_counter_sel                                     : string  := "count_clk_62p5";
			bist_memory_settings                                 : string  := "0";
			bridge_port_ssid_support                             : string  := "false";
			bridge_port_vga_enable                               : string  := "false";
			bypass_cdc                                           : string  := "false";
			bypass_clk_switch                                    : string  := "false";
			bypass_tl                                            : string  := "false";
			cas_completer_128bit                                 : string  := "false";
			cdc_clk_relation                                     : string  := "plesiochronous";
			cdc_dummy_insert_limit                               : integer := 11;
			cfg_parchk_ena                                       : string  := "disable";
			cfgbp_req_recov_disable                              : string  := "false";
			class_code                                           : integer := 16711680;
			clock_pwr_management                                 : string  := "false";
			completion_timeout                                   : string  := "abcd";
			core_clk_divider                                     : string  := "div_1";
			core_clk_freq_mhz                                    : string  := "core_clk_250mhz";
			core_clk_out_sel                                     : string  := "core_clk_out_div_1";
			core_clk_sel                                         : string  := "pld_clk";
			core_clk_source                                      : string  := "pll_fixed_clk";
			cseb_bar_match_checking                              : string  := "enable";
			cseb_config_bypass                                   : string  := "disable";
			cseb_cpl_status_during_cvp                           : string  := "completer_abort";
			cseb_cpl_tag_checking                                : string  := "enable";
			cseb_disable_auto_crs                                : string  := "false";
			cseb_extend_pci                                      : string  := "false";
			cseb_extend_pcie                                     : string  := "false";
			cseb_min_error_checking                              : string  := "false";
			cseb_route_to_avl_rx_st                              : string  := "cseb";
			cseb_temp_busy_crs                                   : string  := "completer_abort_tmp_busy";
			cvp_clk_reset                                        : string  := "false";
			cvp_data_compressed                                  : string  := "false";
			cvp_data_encrypted                                   : string  := "false";
			cvp_enable                                           : string  := "cvp_dis";
			cvp_mode_reset                                       : string  := "false";
			cvp_rate_sel                                         : string  := "full_rate";
			d0_pme                                               : string  := "false";
			d1_pme                                               : string  := "false";
			d1_support                                           : string  := "false";
			d2_pme                                               : string  := "false";
			d2_support                                           : string  := "false";
			d3_cold_pme                                          : string  := "false";
			d3_hot_pme                                           : string  := "false";
			data_pack_rx                                         : string  := "disable";
			deemphasis_enable                                    : string  := "false";
			deskew_comma                                         : string  := "skp_eieos_deskw";
			device_id                                            : integer := 57345;
			device_number                                        : integer := 0;
			device_specific_init                                 : string  := "false";
			dft_clock_obsrv_en                                   : string  := "disable";
			dft_clock_obsrv_sel                                  : string  := "dft_pclk";
			diffclock_nfts_count                                 : integer := 0;
			dis_cplovf                                           : string  := "disable";
			dis_paritychk                                        : string  := "enable";
			disable_link_x2_support                              : string  := "false";
			disable_snoop_packet                                 : string  := "false";
			dl_tx_check_parity_edb                               : string  := "disable";
			dll_active_report_support                            : string  := "false";
			early_dl_up                                          : string  := "true";
			ecrc_check_capable                                   : string  := "true";
			ecrc_gen_capable                                     : string  := "true";
			egress_block_err_report_ena                          : string  := "false";
			ei_delay_powerdown_count                             : integer := 10;
			eie_before_nfts_count                                : integer := 4;
			electromech_interlock                                : string  := "false";
			en_ieiupdatefc                                       : string  := "false";
			en_lane_errchk                                       : string  := "false";
			en_phystatus_dly                                     : string  := "false";
			ena_ido_cpl                                          : string  := "false";
			ena_ido_req                                          : string  := "false";
			enable_adapter_half_rate_mode                        : string  := "false";
			enable_ch0_pclk_out                                  : string  := "pclk_ch01";
			enable_ch01_pclk_out                                 : string  := "pclk_ch0";
			enable_completion_timeout_disable                    : string  := "true";
			enable_directed_spd_chng                             : string  := "false";
			enable_function_msix_support                         : string  := "true";
			enable_l0s_aspm                                      : string  := "false";
			enable_l1_aspm                                       : string  := "false";
			enable_rx_buffer_checking                            : string  := "false";
			enable_rx_reordering                                 : string  := "true";
			enable_slot_register                                 : string  := "false";
			endpoint_l0_latency                                  : integer := 0;
			endpoint_l1_latency                                  : integer := 0;
			eql_rq_int_en_number                                 : integer := 0;
			errmgt_fcpe_patch_dis                                : string  := "enable";
			errmgt_fep_patch_dis                                 : string  := "enable";
			extend_tag_field                                     : string  := "false";
			extended_format_field                                : string  := "true";
			extended_tag_reset                                   : string  := "false";
			fc_init_timer                                        : integer := 1024;
			flow_control_timeout_count                           : integer := 200;
			flow_control_update_count                            : integer := 30;
			flr_capability                                       : string  := "true";
			force_dis_to_det                                     : string  := "false";
			force_gen1_dis                                       : string  := "false";
			force_tx_coeff_preset_lpbk                           : string  := "false";
			frame_err_patch_dis                                  : string  := "enable";
			func_mode                                            : string  := "enable";
			g3_bypass_equlz                                      : string  := "false";
			g3_coeff_done_tmout                                  : string  := "enable";
			g3_deskew_char                                       : string  := "default_sdsos";
			g3_dis_be_frm_err                                    : string  := "false";
			g3_dn_rx_hint_eqlz_0                                 : integer := 0;
			g3_dn_rx_hint_eqlz_1                                 : integer := 0;
			g3_dn_rx_hint_eqlz_2                                 : integer := 0;
			g3_dn_rx_hint_eqlz_3                                 : integer := 0;
			g3_dn_rx_hint_eqlz_4                                 : integer := 0;
			g3_dn_rx_hint_eqlz_5                                 : integer := 0;
			g3_dn_rx_hint_eqlz_6                                 : integer := 0;
			g3_dn_rx_hint_eqlz_7                                 : integer := 0;
			g3_dn_tx_preset_eqlz_0                               : integer := 0;
			g3_dn_tx_preset_eqlz_1                               : integer := 0;
			g3_dn_tx_preset_eqlz_2                               : integer := 0;
			g3_dn_tx_preset_eqlz_3                               : integer := 0;
			g3_dn_tx_preset_eqlz_4                               : integer := 0;
			g3_dn_tx_preset_eqlz_5                               : integer := 0;
			g3_dn_tx_preset_eqlz_6                               : integer := 0;
			g3_dn_tx_preset_eqlz_7                               : integer := 0;
			g3_force_ber_max                                     : string  := "false";
			g3_force_ber_min                                     : string  := "false";
			g3_lnk_trn_rx_ts                                     : string  := "false";
			g3_ltssm_eq_dbg                                      : string  := "false";
			g3_ltssm_rec_dbg                                     : string  := "false";
			g3_pause_ltssm_rec_en                                : string  := "disable";
			g3_quiesce_guarant                                   : string  := "false";
			g3_redo_equlz_dis                                    : string  := "false";
			g3_redo_equlz_en                                     : string  := "false";
			g3_up_rx_hint_eqlz_0                                 : integer := 0;
			g3_up_rx_hint_eqlz_1                                 : integer := 0;
			g3_up_rx_hint_eqlz_2                                 : integer := 0;
			g3_up_rx_hint_eqlz_3                                 : integer := 0;
			g3_up_rx_hint_eqlz_4                                 : integer := 0;
			g3_up_rx_hint_eqlz_5                                 : integer := 0;
			g3_up_rx_hint_eqlz_6                                 : integer := 0;
			g3_up_rx_hint_eqlz_7                                 : integer := 0;
			g3_up_tx_preset_eqlz_0                               : integer := 0;
			g3_up_tx_preset_eqlz_1                               : integer := 0;
			g3_up_tx_preset_eqlz_2                               : integer := 0;
			g3_up_tx_preset_eqlz_3                               : integer := 0;
			g3_up_tx_preset_eqlz_4                               : integer := 0;
			g3_up_tx_preset_eqlz_5                               : integer := 0;
			g3_up_tx_preset_eqlz_6                               : integer := 0;
			g3_up_tx_preset_eqlz_7                               : integer := 0;
			gen123_lane_rate_mode                                : string  := "gen1_rate";
			gen2_diffclock_nfts_count                            : integer := 255;
			gen2_pma_pll_usage                                   : string  := "not_applicaple";
			gen2_sameclock_nfts_count                            : integer := 255;
			gen3_coeff_1                                         : integer := 4;
			gen3_coeff_1_ber_meas                                : integer := 2;
			gen3_coeff_1_nxtber_less                             : integer := 12;
			gen3_coeff_1_nxtber_more                             : integer := 6;
			gen3_coeff_1_preset_hint                             : integer := 2;
			gen3_coeff_1_reqber                                  : integer := 8;
			gen3_coeff_1_sel                                     : string  := "preset_1";
			gen3_coeff_10                                        : integer := 7;
			gen3_coeff_10_ber_meas                               : integer := 2;
			gen3_coeff_10_nxtber_less                            : integer := 15;
			gen3_coeff_10_nxtber_more                            : integer := 10;
			gen3_coeff_10_preset_hint                            : integer := 3;
			gen3_coeff_10_reqber                                 : integer := 8;
			gen3_coeff_10_sel                                    : string  := "preset_10";
			gen3_coeff_11                                        : integer := 7;
			gen3_coeff_11_ber_meas                               : integer := 2;
			gen3_coeff_11_nxtber_less                            : integer := 15;
			gen3_coeff_11_nxtber_more                            : integer := 15;
			gen3_coeff_11_preset_hint                            : integer := 4;
			gen3_coeff_11_reqber                                 : integer := 8;
			gen3_coeff_11_sel                                    : string  := "preset_11";
			gen3_coeff_12                                        : integer := 7;
			gen3_coeff_12_ber_meas                               : integer := 2;
			gen3_coeff_12_nxtber_less                            : integer := 15;
			gen3_coeff_12_nxtber_more                            : integer := 15;
			gen3_coeff_12_preset_hint                            : integer := 2;
			gen3_coeff_12_reqber                                 : integer := 8;
			gen3_coeff_12_sel                                    : string  := "preset_12";
			gen3_coeff_13                                        : integer := 4;
			gen3_coeff_13_ber_meas                               : integer := 2;
			gen3_coeff_13_nxtber_less                            : integer := 13;
			gen3_coeff_13_nxtber_more                            : integer := 1;
			gen3_coeff_13_preset_hint                            : integer := 4;
			gen3_coeff_13_reqber                                 : integer := 8;
			gen3_coeff_13_sel                                    : string  := "preset_13";
			gen3_coeff_14                                        : integer := 4;
			gen3_coeff_14_ber_meas                               : integer := 2;
			gen3_coeff_14_nxtber_less                            : integer := 15;
			gen3_coeff_14_nxtber_more                            : integer := 2;
			gen3_coeff_14_preset_hint                            : integer := 0;
			gen3_coeff_14_reqber                                 : integer := 8;
			gen3_coeff_14_sel                                    : string  := "preset_14";
			gen3_coeff_15                                        : integer := 0;
			gen3_coeff_15_ber_meas                               : integer := 2;
			gen3_coeff_15_nxtber_less                            : integer := 0;
			gen3_coeff_15_nxtber_more                            : integer := 0;
			gen3_coeff_15_preset_hint                            : integer := 0;
			gen3_coeff_15_reqber                                 : integer := 0;
			gen3_coeff_15_sel                                    : string  := "coeff_15";
			gen3_coeff_16                                        : integer := 0;
			gen3_coeff_16_ber_meas                               : integer := 0;
			gen3_coeff_16_nxtber_less                            : integer := 0;
			gen3_coeff_16_nxtber_more                            : integer := 0;
			gen3_coeff_16_preset_hint                            : integer := 0;
			gen3_coeff_16_reqber                                 : integer := 0;
			gen3_coeff_16_sel                                    : string  := "coeff_16";
			gen3_coeff_17                                        : integer := 0;
			gen3_coeff_17_ber_meas                               : integer := 0;
			gen3_coeff_17_nxtber_less                            : integer := 0;
			gen3_coeff_17_nxtber_more                            : integer := 0;
			gen3_coeff_17_preset_hint                            : integer := 0;
			gen3_coeff_17_reqber                                 : integer := 0;
			gen3_coeff_17_sel                                    : string  := "coeff_17";
			gen3_coeff_18                                        : integer := 0;
			gen3_coeff_18_ber_meas                               : integer := 0;
			gen3_coeff_18_nxtber_less                            : integer := 0;
			gen3_coeff_18_nxtber_more                            : integer := 0;
			gen3_coeff_18_preset_hint                            : integer := 0;
			gen3_coeff_18_reqber                                 : integer := 0;
			gen3_coeff_18_sel                                    : string  := "coeff_18";
			gen3_coeff_19                                        : integer := 0;
			gen3_coeff_19_ber_meas                               : integer := 0;
			gen3_coeff_19_nxtber_less                            : integer := 0;
			gen3_coeff_19_nxtber_more                            : integer := 0;
			gen3_coeff_19_preset_hint                            : integer := 0;
			gen3_coeff_19_reqber                                 : integer := 0;
			gen3_coeff_19_sel                                    : string  := "coeff_19";
			gen3_coeff_2                                         : integer := 1;
			gen3_coeff_2_ber_meas                                : integer := 2;
			gen3_coeff_2_nxtber_less                             : integer := 2;
			gen3_coeff_2_nxtber_more                             : integer := 4;
			gen3_coeff_2_preset_hint                             : integer := 4;
			gen3_coeff_2_reqber                                  : integer := 8;
			gen3_coeff_2_sel                                     : string  := "preset_2";
			gen3_coeff_20                                        : integer := 0;
			gen3_coeff_20_ber_meas                               : integer := 0;
			gen3_coeff_20_nxtber_less                            : integer := 0;
			gen3_coeff_20_nxtber_more                            : integer := 0;
			gen3_coeff_20_preset_hint                            : integer := 0;
			gen3_coeff_20_reqber                                 : integer := 0;
			gen3_coeff_20_sel                                    : string  := "coeff_20";
			gen3_coeff_21                                        : integer := 0;
			gen3_coeff_21_ber_meas                               : integer := 0;
			gen3_coeff_21_nxtber_less                            : integer := 0;
			gen3_coeff_21_nxtber_more                            : integer := 0;
			gen3_coeff_21_preset_hint                            : integer := 0;
			gen3_coeff_21_reqber                                 : integer := 0;
			gen3_coeff_21_sel                                    : string  := "coeff_21";
			gen3_coeff_22                                        : integer := 0;
			gen3_coeff_22_ber_meas                               : integer := 0;
			gen3_coeff_22_nxtber_less                            : integer := 0;
			gen3_coeff_22_nxtber_more                            : integer := 0;
			gen3_coeff_22_preset_hint                            : integer := 0;
			gen3_coeff_22_reqber                                 : integer := 0;
			gen3_coeff_22_sel                                    : string  := "coeff_22";
			gen3_coeff_23                                        : integer := 0;
			gen3_coeff_23_ber_meas                               : integer := 0;
			gen3_coeff_23_nxtber_less                            : integer := 0;
			gen3_coeff_23_nxtber_more                            : integer := 0;
			gen3_coeff_23_preset_hint                            : integer := 0;
			gen3_coeff_23_reqber                                 : integer := 0;
			gen3_coeff_23_sel                                    : string  := "coeff_23";
			gen3_coeff_24                                        : integer := 0;
			gen3_coeff_24_ber_meas                               : integer := 0;
			gen3_coeff_24_nxtber_less                            : integer := 0;
			gen3_coeff_24_nxtber_more                            : integer := 0;
			gen3_coeff_24_preset_hint                            : integer := 0;
			gen3_coeff_24_reqber                                 : integer := 0;
			gen3_coeff_24_sel                                    : string  := "coeff_24";
			gen3_coeff_3                                         : integer := 1;
			gen3_coeff_3_ber_meas                                : integer := 2;
			gen3_coeff_3_nxtber_less                             : integer := 15;
			gen3_coeff_3_nxtber_more                             : integer := 3;
			gen3_coeff_3_preset_hint                             : integer := 0;
			gen3_coeff_3_reqber                                  : integer := 8;
			gen3_coeff_3_sel                                     : string  := "preset_3";
			gen3_coeff_4                                         : integer := 0;
			gen3_coeff_4_ber_meas                                : integer := 2;
			gen3_coeff_4_nxtber_less                             : integer := 15;
			gen3_coeff_4_nxtber_more                             : integer := 4;
			gen3_coeff_4_preset_hint                             : integer := 0;
			gen3_coeff_4_reqber                                  : integer := 8;
			gen3_coeff_4_sel                                     : string  := "preset_4";
			gen3_coeff_5                                         : integer := 0;
			gen3_coeff_5_ber_meas                                : integer := 2;
			gen3_coeff_5_nxtber_less                             : integer := 15;
			gen3_coeff_5_nxtber_more                             : integer := 5;
			gen3_coeff_5_preset_hint                             : integer := 4;
			gen3_coeff_5_reqber                                  : integer := 8;
			gen3_coeff_5_sel                                     : string  := "preset_5";
			gen3_coeff_6                                         : integer := 7;
			gen3_coeff_6_ber_meas                                : integer := 2;
			gen3_coeff_6_nxtber_less                             : integer := 15;
			gen3_coeff_6_nxtber_more                             : integer := 15;
			gen3_coeff_6_preset_hint                             : integer := 4;
			gen3_coeff_6_reqber                                  : integer := 8;
			gen3_coeff_6_sel                                     : string  := "preset_6";
			gen3_coeff_7                                         : integer := 1;
			gen3_coeff_7_ber_meas                                : integer := 2;
			gen3_coeff_7_nxtber_less                             : integer := 1;
			gen3_coeff_7_nxtber_more                             : integer := 7;
			gen3_coeff_7_preset_hint                             : integer := 2;
			gen3_coeff_7_reqber                                  : integer := 8;
			gen3_coeff_7_sel                                     : string  := "preset_7";
			gen3_coeff_8                                         : integer := 0;
			gen3_coeff_8_ber_meas                                : integer := 2;
			gen3_coeff_8_nxtber_less                             : integer := 4;
			gen3_coeff_8_nxtber_more                             : integer := 8;
			gen3_coeff_8_preset_hint                             : integer := 2;
			gen3_coeff_8_reqber                                  : integer := 8;
			gen3_coeff_8_sel                                     : string  := "preset_8";
			gen3_coeff_9                                         : integer := 0;
			gen3_coeff_9_ber_meas                                : integer := 2;
			gen3_coeff_9_nxtber_less                             : integer := 11;
			gen3_coeff_9_nxtber_more                             : integer := 9;
			gen3_coeff_9_preset_hint                             : integer := 3;
			gen3_coeff_9_reqber                                  : integer := 8;
			gen3_coeff_9_sel                                     : string  := "preset_9";
			gen3_coeff_delay_count                               : integer := 125;
			gen3_coeff_errchk                                    : string  := "enable";
			gen3_dcbal_en                                        : string  := "true";
			gen3_diffclock_nfts_count                            : integer := 128;
			gen3_force_local_coeff                               : string  := "false";
			gen3_full_swing                                      : integer := 63;
			gen3_half_swing                                      : string  := "false";
			gen3_low_freq                                        : integer := 1;
			gen3_paritychk                                       : string  := "enable";
			gen3_pl_framing_err_dis                              : string  := "enable";
			gen3_preset_coeff_1                                  : integer := 3402;
			gen3_preset_coeff_10                                 : integer := 48384;
			gen3_preset_coeff_11                                 : integer := 124992;
			gen3_preset_coeff_2                                  : integer := 3339;
			gen3_preset_coeff_3                                  : integer := 3213;
			gen3_preset_coeff_4                                  : integer := 3528;
			gen3_preset_coeff_5                                  : integer := 4032;
			gen3_preset_coeff_6                                  : integer := 28224;
			gen3_preset_coeff_7                                  : integer := 36288;
			gen3_preset_coeff_8                                  : integer := 27405;
			gen3_preset_coeff_9                                  : integer := 35784;
			gen3_reset_eieos_cnt_bit                             : string  := "false";
			gen3_rxfreqlock_counter                              : integer := 0;
			gen3_sameclock_nfts_count                            : integer := 128;
			gen3_scrdscr_bypass                                  : string  := "false";
			gen3_skip_ph2_ph3                                    : string  := "false";
			hard_reset_bypass                                    : string  := "false";
			hard_rst_sig_chnl_en                                 : string  := "disable_hrc_sig";
			hard_rst_tx_pll_rst_chnl_en                          : string  := "disable_hrc_txpll_rst";
			hip_base_address                                     : integer := 0;
			hip_clock_dis                                        : string  := "enable_hip_clk";
			hip_hard_reset                                       : string  := "enable";
			hip_pcs_sig_chnl_en                                  : string  := "disable_hip_pcs_sig";
			hot_plug_support                                     : integer := 0;
			hrc_chnl_txpll_master_cgb_rst_select                 : string  := "disable_master_cgb_sel";
			hrdrstctrl_en                                        : string  := "hrdrstctrl_en";
			iei_enable_settings                                  : string  := "gen3gen2_infei_infsd_gen1_infei_sd";
			indicator                                            : integer := 7;
			intel_id_access                                      : string  := "false";
			interrupt_pin                                        : string  := "inta";
			io_window_addr_width                                 : string  := "window_32_bit";
			jtag_id                                              : string  := "0";
			l0_exit_latency_diffclock                            : integer := 6;
			l0_exit_latency_sameclock                            : integer := 6;
			l01_entry_latency                                    : integer := 31;
			l0s_adj_rply_timer_dis                               : string  := "enable";
			l1_exit_latency_diffclock                            : integer := 0;
			l1_exit_latency_sameclock                            : integer := 0;
			l2_async_logic                                       : string  := "enable";
			lane_mask                                            : string  := "ln_mask_x4";
			lane_rate                                            : string  := "gen1";
			link_width                                           : string  := "x1";
			low_priority_vc                                      : string  := "single_vc_low_pr";
			ltr_mechanism                                        : string  := "false";
			ltssm_1ms_timeout                                    : string  := "disable";
			ltssm_freqlocked_check                               : string  := "disable";
			malformed_tlp_truncate_en                            : string  := "disable";
			max_link_width                                       : string  := "x4_link_width";
			max_payload_size                                     : string  := "payload_512";
			maximum_current                                      : integer := 0;
			millisecond_cycle_count                              : integer := 0;
			msi_64bit_addressing_capable                         : string  := "true";
			msi_masking_capable                                  : string  := "false";
			msi_multi_message_capable                            : string  := "count_4";
			msi_support                                          : string  := "true";
			msix_pba_bir                                         : integer := 0;
			msix_table_bir                                       : integer := 0;
			msix_table_size                                      : integer := 0;
			national_inst_thru_enhance                           : string  := "true";
			no_command_completed                                 : string  := "true";
			no_soft_reset                                        : string  := "false";
			pcie_base_spec                                       : string  := "pcie_2p1";
			pcie_mode                                            : string  := "shared_mode";
			pcie_spec_1p0_compliance                             : string  := "spec_1p1";
			pcie_spec_version                                    : string  := "v2";
			pclk_out_sel                                         : string  := "pclk";
			pld_in_use_reg                                       : string  := "false";
			pm_latency_patch_dis                                 : string  := "enable";
			pm_txdl_patch_dis                                    : string  := "enable";
			pme_clock                                            : string  := "false";
			port_link_number                                     : integer := 1;
			port_type                                            : string  := "native_ep";
			powerdown_mode                                       : string  := "powerup";
			prefetchable_mem_window_addr_width                   : string  := "prefetch_32";
			r2c_mask_easy                                        : string  := "false";
			r2c_mask_enable                                      : string  := "false";
			rec_frqlk_mon_en                                     : string  := "disable";
			register_pipe_signals                                : string  := "true";
			retry_buffer_last_active_address                     : integer := 1023;
			retry_buffer_memory_settings                         : string  := "0";
			retry_ecc_corr_mask_dis                              : string  := "enable";
			revision_id                                          : integer := 1;
			role_based_error_reporting                           : string  := "false";
			rp_bug_fix_pri_sec_stat_reg                          : integer := 127;
			rpltim_base                                          : integer := 0;
			rpltim_set                                           : string  := "false";
			rstctl_ltssm_dis                                     : string  := "false";
			rstctrl_1ms_count_fref_clk                           : integer := 62500;
			rstctrl_1us_count_fref_clk                           : integer := 63;
			rstctrl_altpe3_crst_n_inv                            : string  := "false";
			rstctrl_altpe3_rst_n_inv                             : string  := "false";
			rstctrl_altpe3_srst_n_inv                            : string  := "false";
			rstctrl_chnl_cal_done_select                         : string  := "not_active_chnl_cal_done";
			rstctrl_debug_en                                     : string  := "false";
			rstctrl_force_inactive_rst                           : string  := "false";
			rstctrl_fref_clk_select                              : string  := "ch0_sel";
			rstctrl_hard_block_enable                            : string  := "hard_rst_ctl";
			rstctrl_hip_ep                                       : string  := "hip_ep";
			rstctrl_mask_tx_pll_lock_select                      : string  := "not_active_mask_tx_pll_lock";
			rstctrl_perst_enable                                 : string  := "level";
			rstctrl_perstn_select                                : string  := "perstn_pin";
			rstctrl_pld_clr                                      : string  := "false";
			rstctrl_pll_cal_done_select                          : string  := "not_active_pll_cal_done";
			rstctrl_rx_pcs_rst_n_inv                             : string  := "false";
			rstctrl_rx_pcs_rst_n_select                          : string  := "not_active_rx_pcs_rst";
			rstctrl_rx_pll_freq_lock_select                      : string  := "not_active_rx_pll_f_lock";
			rstctrl_rx_pll_lock_select                           : string  := "not_active_rx_pll_lock";
			rstctrl_rx_pma_rstb_inv                              : string  := "false";
			rstctrl_rx_pma_rstb_select                           : string  := "not_active_rx_pma_rstb";
			rstctrl_timer_a                                      : integer := 10;
			rstctrl_timer_a_type                                 : string  := "a_timer_milli_secs";
			rstctrl_timer_b                                      : integer := 10;
			rstctrl_timer_b_type                                 : string  := "b_timer_milli_secs";
			rstctrl_timer_c                                      : integer := 10;
			rstctrl_timer_c_type                                 : string  := "c_timer_milli_secs";
			rstctrl_timer_d                                      : integer := 20;
			rstctrl_timer_d_type                                 : string  := "d_timer_milli_secs";
			rstctrl_timer_e                                      : integer := 1;
			rstctrl_timer_e_type                                 : string  := "e_timer_milli_secs";
			rstctrl_timer_f                                      : integer := 10;
			rstctrl_timer_f_type                                 : string  := "f_timer_milli_secs";
			rstctrl_timer_g                                      : integer := 10;
			rstctrl_timer_g_type                                 : string  := "g_timer_milli_secs";
			rstctrl_timer_h                                      : integer := 4;
			rstctrl_timer_h_type                                 : string  := "h_timer_milli_secs";
			rstctrl_timer_i                                      : integer := 20;
			rstctrl_timer_i_type                                 : string  := "i_timer_milli_secs";
			rstctrl_timer_j                                      : integer := 20;
			rstctrl_timer_j_type                                 : string  := "j_timer_milli_secs";
			rstctrl_tx_lcff_pll_lock_select                      : string  := "not_active_lcff_pll_lock";
			rstctrl_tx_lcff_pll_rstb_select                      : string  := "not_active_lcff_pll_rstb";
			rstctrl_tx_pcs_rst_n_inv                             : string  := "false";
			rstctrl_tx_pcs_rst_n_select                          : string  := "not_active_tx_pcs_rst";
			rstctrl_tx_pma_rstb_inv                              : string  := "false";
			rstctrl_tx_pma_syncp_inv                             : string  := "false";
			rstctrl_tx_pma_syncp_select                          : string  := "not_active_tx_pma_syncp";
			rx_ast_parity                                        : string  := "disable";
			rx_buffer_credit_alloc                               : string  := "balance";
			rx_buffer_fc_protect                                 : integer := 68;
			rx_buffer_protect                                    : integer := 68;
			rx_cdc_almost_empty                                  : integer := 3;
			rx_cdc_almost_full                                   : integer := 12;
			rx_cred_ctl_param                                    : string  := "disable";
			rx_ei_l0s                                            : string  := "disable";
			rx_l0s_count_idl                                     : integer := 0;
			rx_ptr0_nonposted_dpram_max                          : integer := 0;
			rx_ptr0_nonposted_dpram_min                          : integer := 0;
			rx_ptr0_posted_dpram_max                             : integer := 0;
			rx_ptr0_posted_dpram_min                             : integer := 0;
			rx_runt_patch_dis                                    : string  := "enable";
			rx_sop_ctrl                                          : string  := "rx_sop_boundary_64";
			rx_trunc_patch_dis                                   : string  := "enable";
			rx_use_prst                                          : string  := "false";
			rx_use_prst_ep                                       : string  := "true";
			rxbuf_ecc_corr_mask_dis                              : string  := "enable";
			sameclock_nfts_count                                 : integer := 0;
			sel_enable_pcs_rx_fifo_err                           : string  := "disable_sel";
			sim_mode                                             : string  := "disable";
			simple_ro_fifo_control_en                            : string  := "disable";
			single_rx_detect                                     : string  := "detect_all_lanes";
			skp_os_gen3_count                                    : integer := 0;
			skp_os_schedule_count                                : integer := 0;
			slot_number                                          : integer := 0;
			slot_power_limit                                     : integer := 0;
			slot_power_scale                                     : integer := 0;
			slotclk_cfg                                          : string  := "static_slotclkcfgon";
			ssid                                                 : integer := 0;
			ssvid                                                : integer := 0;
			subsystem_device_id                                  : integer := 57345;
			subsystem_vendor_id                                  : integer := 4466;
			sup_mode                                             : string  := "user_mode";
			surprise_down_error_support                          : string  := "false";
			tl_cfg_div                                           : string  := "cfg_clk_div_7";
			tl_tx_check_parity_msg                               : string  := "disable";
			tph_completer                                        : string  := "false";
			tx_ast_parity                                        : string  := "disable";
			tx_cdc_almost_empty                                  : integer := 5;
			tx_cdc_almost_full                                   : integer := 12;
			tx_sop_ctrl                                          : string  := "boundary_64";
			tx_swing                                             : integer := 0;
			txdl_fair_arbiter_counter                            : integer := 0;
			txdl_fair_arbiter_en                                 : string  := "enable";
			txrate_adv                                           : string  := "capability";
			uc_calibration_en                                    : string  := "uc_calibration_en";
			use_aer                                              : string  := "false";
			use_crc_forwarding                                   : string  := "false";
			user_id                                              : integer := 0;
			vc_arbitration                                       : string  := "single_vc_arb";
			vc_enable                                            : string  := "single_vc";
			vc0_clk_enable                                       : string  := "true";
			vc0_rx_buffer_memory_settings                        : string  := "0";
			vc0_rx_flow_ctrl_compl_data                          : integer := 448;
			vc0_rx_flow_ctrl_compl_header                        : integer := 112;
			vc0_rx_flow_ctrl_nonposted_data                      : integer := 0;
			vc0_rx_flow_ctrl_nonposted_header                    : integer := 54;
			vc0_rx_flow_ctrl_posted_data                         : integer := 360;
			vc0_rx_flow_ctrl_posted_header                       : integer := 50;
			vc1_clk_enable                                       : string  := "false";
			vendor_id                                            : integer := 4466;
			vsec_cap                                             : integer := 0;
			vsec_id                                              : integer := 4466;
			wrong_device_id                                      : string  := "disable";
			not_use_k_gbl_bits                                   : string  := "not_used_k_gbl";
			avmm_force_inter_sel_csr_ctrl                        : string  := "disable";
			operating_voltage                                    : string  := "standard";
			rxdl_bad_tlp_patch_dis                               : string  := "rxdlbug2_enable_both";
			avmm_dprio_broadcast_en_csr_ctrl                     : string  := "disable";
			hip_ac_pwr_uw_per_mhz                                : integer := 0;
			rxdl_bad_sop_eop_filter_dis                          : string  := "rxdlbug1_enable_both";
			rxdl_lcrc_patch_dis                                  : string  := "rxdlbug3_enable_both";
			capab_rate_rxcfg_en                                  : string  := "disable";
			avmm_cvp_inter_sel_csr_ctrl                          : string  := "disable";
			lmi_hold_off_cfg_timer_en                            : string  := "disable";
			avmm_power_iso_en_csr_ctrl                           : string  := "disable";
			eco_fb332688_dis                                     : string  := "true"
		);
		port (
			coreclkout_hip                 : out std_logic;                                         -- clk
			refclk                         : in  std_logic                      := 'X';             -- clk
			npor                           : in  std_logic                      := 'X';             -- npor
			pin_perst                      : in  std_logic                      := 'X';             -- pin_perst
			app_nreset_status              : out std_logic;                                         -- reset_n
			test_in                        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- test_in
			simu_mode_pipe                 : in  std_logic                      := 'X';             -- simu_mode_pipe
			sim_pipe_pclk_in               : in  std_logic                      := 'X';             -- sim_pipe_pclk_in
			sim_pipe_rate                  : out std_logic_vector(1 downto 0);                      -- sim_pipe_rate
			sim_ltssmstate                 : out std_logic_vector(4 downto 0);                      -- sim_ltssmstate
			eidleinfersel0                 : out std_logic_vector(2 downto 0);                      -- eidleinfersel0
			eidleinfersel1                 : out std_logic_vector(2 downto 0);                      -- eidleinfersel1
			eidleinfersel2                 : out std_logic_vector(2 downto 0);                      -- eidleinfersel2
			eidleinfersel3                 : out std_logic_vector(2 downto 0);                      -- eidleinfersel3
			eidleinfersel4                 : out std_logic_vector(2 downto 0);                      -- eidleinfersel4
			eidleinfersel5                 : out std_logic_vector(2 downto 0);                      -- eidleinfersel5
			eidleinfersel6                 : out std_logic_vector(2 downto 0);                      -- eidleinfersel6
			eidleinfersel7                 : out std_logic_vector(2 downto 0);                      -- eidleinfersel7
			powerdown0                     : out std_logic_vector(1 downto 0);                      -- powerdown0
			powerdown1                     : out std_logic_vector(1 downto 0);                      -- powerdown1
			powerdown2                     : out std_logic_vector(1 downto 0);                      -- powerdown2
			powerdown3                     : out std_logic_vector(1 downto 0);                      -- powerdown3
			powerdown4                     : out std_logic_vector(1 downto 0);                      -- powerdown4
			powerdown5                     : out std_logic_vector(1 downto 0);                      -- powerdown5
			powerdown6                     : out std_logic_vector(1 downto 0);                      -- powerdown6
			powerdown7                     : out std_logic_vector(1 downto 0);                      -- powerdown7
			rxpolarity0                    : out std_logic;                                         -- rxpolarity0
			rxpolarity1                    : out std_logic;                                         -- rxpolarity1
			rxpolarity2                    : out std_logic;                                         -- rxpolarity2
			rxpolarity3                    : out std_logic;                                         -- rxpolarity3
			rxpolarity4                    : out std_logic;                                         -- rxpolarity4
			rxpolarity5                    : out std_logic;                                         -- rxpolarity5
			rxpolarity6                    : out std_logic;                                         -- rxpolarity6
			rxpolarity7                    : out std_logic;                                         -- rxpolarity7
			txcompl0                       : out std_logic;                                         -- txcompl0
			txcompl1                       : out std_logic;                                         -- txcompl1
			txcompl2                       : out std_logic;                                         -- txcompl2
			txcompl3                       : out std_logic;                                         -- txcompl3
			txcompl4                       : out std_logic;                                         -- txcompl4
			txcompl5                       : out std_logic;                                         -- txcompl5
			txcompl6                       : out std_logic;                                         -- txcompl6
			txcompl7                       : out std_logic;                                         -- txcompl7
			txdata0                        : out std_logic_vector(31 downto 0);                     -- txdata0
			txdata1                        : out std_logic_vector(31 downto 0);                     -- txdata1
			txdata2                        : out std_logic_vector(31 downto 0);                     -- txdata2
			txdata3                        : out std_logic_vector(31 downto 0);                     -- txdata3
			txdata4                        : out std_logic_vector(31 downto 0);                     -- txdata4
			txdata5                        : out std_logic_vector(31 downto 0);                     -- txdata5
			txdata6                        : out std_logic_vector(31 downto 0);                     -- txdata6
			txdata7                        : out std_logic_vector(31 downto 0);                     -- txdata7
			txdatak0                       : out std_logic_vector(3 downto 0);                      -- txdatak0
			txdatak1                       : out std_logic_vector(3 downto 0);                      -- txdatak1
			txdatak2                       : out std_logic_vector(3 downto 0);                      -- txdatak2
			txdatak3                       : out std_logic_vector(3 downto 0);                      -- txdatak3
			txdatak4                       : out std_logic_vector(3 downto 0);                      -- txdatak4
			txdatak5                       : out std_logic_vector(3 downto 0);                      -- txdatak5
			txdatak6                       : out std_logic_vector(3 downto 0);                      -- txdatak6
			txdatak7                       : out std_logic_vector(3 downto 0);                      -- txdatak7
			txdetectrx0                    : out std_logic;                                         -- txdetectrx0
			txdetectrx1                    : out std_logic;                                         -- txdetectrx1
			txdetectrx2                    : out std_logic;                                         -- txdetectrx2
			txdetectrx3                    : out std_logic;                                         -- txdetectrx3
			txdetectrx4                    : out std_logic;                                         -- txdetectrx4
			txdetectrx5                    : out std_logic;                                         -- txdetectrx5
			txdetectrx6                    : out std_logic;                                         -- txdetectrx6
			txdetectrx7                    : out std_logic;                                         -- txdetectrx7
			txelecidle0                    : out std_logic;                                         -- txelecidle0
			txelecidle1                    : out std_logic;                                         -- txelecidle1
			txelecidle2                    : out std_logic;                                         -- txelecidle2
			txelecidle3                    : out std_logic;                                         -- txelecidle3
			txelecidle4                    : out std_logic;                                         -- txelecidle4
			txelecidle5                    : out std_logic;                                         -- txelecidle5
			txelecidle6                    : out std_logic;                                         -- txelecidle6
			txelecidle7                    : out std_logic;                                         -- txelecidle7
			txdeemph0                      : out std_logic;                                         -- txdeemph0
			txdeemph1                      : out std_logic;                                         -- txdeemph1
			txdeemph2                      : out std_logic;                                         -- txdeemph2
			txdeemph3                      : out std_logic;                                         -- txdeemph3
			txdeemph4                      : out std_logic;                                         -- txdeemph4
			txdeemph5                      : out std_logic;                                         -- txdeemph5
			txdeemph6                      : out std_logic;                                         -- txdeemph6
			txdeemph7                      : out std_logic;                                         -- txdeemph7
			txmargin0                      : out std_logic_vector(2 downto 0);                      -- txmargin0
			txmargin1                      : out std_logic_vector(2 downto 0);                      -- txmargin1
			txmargin2                      : out std_logic_vector(2 downto 0);                      -- txmargin2
			txmargin3                      : out std_logic_vector(2 downto 0);                      -- txmargin3
			txmargin4                      : out std_logic_vector(2 downto 0);                      -- txmargin4
			txmargin5                      : out std_logic_vector(2 downto 0);                      -- txmargin5
			txmargin6                      : out std_logic_vector(2 downto 0);                      -- txmargin6
			txmargin7                      : out std_logic_vector(2 downto 0);                      -- txmargin7
			txswing0                       : out std_logic;                                         -- txswing0
			txswing1                       : out std_logic;                                         -- txswing1
			txswing2                       : out std_logic;                                         -- txswing2
			txswing3                       : out std_logic;                                         -- txswing3
			txswing4                       : out std_logic;                                         -- txswing4
			txswing5                       : out std_logic;                                         -- txswing5
			txswing6                       : out std_logic;                                         -- txswing6
			txswing7                       : out std_logic;                                         -- txswing7
			phystatus0                     : in  std_logic                      := 'X';             -- phystatus0
			phystatus1                     : in  std_logic                      := 'X';             -- phystatus1
			phystatus2                     : in  std_logic                      := 'X';             -- phystatus2
			phystatus3                     : in  std_logic                      := 'X';             -- phystatus3
			phystatus4                     : in  std_logic                      := 'X';             -- phystatus4
			phystatus5                     : in  std_logic                      := 'X';             -- phystatus5
			phystatus6                     : in  std_logic                      := 'X';             -- phystatus6
			phystatus7                     : in  std_logic                      := 'X';             -- phystatus7
			rxdata0                        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- rxdata0
			rxdata1                        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- rxdata1
			rxdata2                        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- rxdata2
			rxdata3                        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- rxdata3
			rxdata4                        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- rxdata4
			rxdata5                        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- rxdata5
			rxdata6                        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- rxdata6
			rxdata7                        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- rxdata7
			rxdatak0                       : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- rxdatak0
			rxdatak1                       : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- rxdatak1
			rxdatak2                       : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- rxdatak2
			rxdatak3                       : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- rxdatak3
			rxdatak4                       : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- rxdatak4
			rxdatak5                       : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- rxdatak5
			rxdatak6                       : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- rxdatak6
			rxdatak7                       : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- rxdatak7
			rxelecidle0                    : in  std_logic                      := 'X';             -- rxelecidle0
			rxelecidle1                    : in  std_logic                      := 'X';             -- rxelecidle1
			rxelecidle2                    : in  std_logic                      := 'X';             -- rxelecidle2
			rxelecidle3                    : in  std_logic                      := 'X';             -- rxelecidle3
			rxelecidle4                    : in  std_logic                      := 'X';             -- rxelecidle4
			rxelecidle5                    : in  std_logic                      := 'X';             -- rxelecidle5
			rxelecidle6                    : in  std_logic                      := 'X';             -- rxelecidle6
			rxelecidle7                    : in  std_logic                      := 'X';             -- rxelecidle7
			rxstatus0                      : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- rxstatus0
			rxstatus1                      : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- rxstatus1
			rxstatus2                      : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- rxstatus2
			rxstatus3                      : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- rxstatus3
			rxstatus4                      : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- rxstatus4
			rxstatus5                      : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- rxstatus5
			rxstatus6                      : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- rxstatus6
			rxstatus7                      : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- rxstatus7
			rxvalid0                       : in  std_logic                      := 'X';             -- rxvalid0
			rxvalid1                       : in  std_logic                      := 'X';             -- rxvalid1
			rxvalid2                       : in  std_logic                      := 'X';             -- rxvalid2
			rxvalid3                       : in  std_logic                      := 'X';             -- rxvalid3
			rxvalid4                       : in  std_logic                      := 'X';             -- rxvalid4
			rxvalid5                       : in  std_logic                      := 'X';             -- rxvalid5
			rxvalid6                       : in  std_logic                      := 'X';             -- rxvalid6
			rxvalid7                       : in  std_logic                      := 'X';             -- rxvalid7
			rxdataskip0                    : in  std_logic                      := 'X';             -- rxdataskip0
			rxdataskip1                    : in  std_logic                      := 'X';             -- rxdataskip1
			rxdataskip2                    : in  std_logic                      := 'X';             -- rxdataskip2
			rxdataskip3                    : in  std_logic                      := 'X';             -- rxdataskip3
			rxdataskip4                    : in  std_logic                      := 'X';             -- rxdataskip4
			rxdataskip5                    : in  std_logic                      := 'X';             -- rxdataskip5
			rxdataskip6                    : in  std_logic                      := 'X';             -- rxdataskip6
			rxdataskip7                    : in  std_logic                      := 'X';             -- rxdataskip7
			rxblkst0                       : in  std_logic                      := 'X';             -- rxblkst0
			rxblkst1                       : in  std_logic                      := 'X';             -- rxblkst1
			rxblkst2                       : in  std_logic                      := 'X';             -- rxblkst2
			rxblkst3                       : in  std_logic                      := 'X';             -- rxblkst3
			rxblkst4                       : in  std_logic                      := 'X';             -- rxblkst4
			rxblkst5                       : in  std_logic                      := 'X';             -- rxblkst5
			rxblkst6                       : in  std_logic                      := 'X';             -- rxblkst6
			rxblkst7                       : in  std_logic                      := 'X';             -- rxblkst7
			rxsynchd0                      : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- rxsynchd0
			rxsynchd1                      : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- rxsynchd1
			rxsynchd2                      : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- rxsynchd2
			rxsynchd3                      : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- rxsynchd3
			rxsynchd4                      : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- rxsynchd4
			rxsynchd5                      : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- rxsynchd5
			rxsynchd6                      : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- rxsynchd6
			rxsynchd7                      : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- rxsynchd7
			currentcoeff0                  : out std_logic_vector(17 downto 0);                     -- currentcoeff0
			currentcoeff1                  : out std_logic_vector(17 downto 0);                     -- currentcoeff1
			currentcoeff2                  : out std_logic_vector(17 downto 0);                     -- currentcoeff2
			currentcoeff3                  : out std_logic_vector(17 downto 0);                     -- currentcoeff3
			currentcoeff4                  : out std_logic_vector(17 downto 0);                     -- currentcoeff4
			currentcoeff5                  : out std_logic_vector(17 downto 0);                     -- currentcoeff5
			currentcoeff6                  : out std_logic_vector(17 downto 0);                     -- currentcoeff6
			currentcoeff7                  : out std_logic_vector(17 downto 0);                     -- currentcoeff7
			currentrxpreset0               : out std_logic_vector(2 downto 0);                      -- currentrxpreset0
			currentrxpreset1               : out std_logic_vector(2 downto 0);                      -- currentrxpreset1
			currentrxpreset2               : out std_logic_vector(2 downto 0);                      -- currentrxpreset2
			currentrxpreset3               : out std_logic_vector(2 downto 0);                      -- currentrxpreset3
			currentrxpreset4               : out std_logic_vector(2 downto 0);                      -- currentrxpreset4
			currentrxpreset5               : out std_logic_vector(2 downto 0);                      -- currentrxpreset5
			currentrxpreset6               : out std_logic_vector(2 downto 0);                      -- currentrxpreset6
			currentrxpreset7               : out std_logic_vector(2 downto 0);                      -- currentrxpreset7
			txsynchd0                      : out std_logic_vector(1 downto 0);                      -- txsynchd0
			txsynchd1                      : out std_logic_vector(1 downto 0);                      -- txsynchd1
			txsynchd2                      : out std_logic_vector(1 downto 0);                      -- txsynchd2
			txsynchd3                      : out std_logic_vector(1 downto 0);                      -- txsynchd3
			txsynchd4                      : out std_logic_vector(1 downto 0);                      -- txsynchd4
			txsynchd5                      : out std_logic_vector(1 downto 0);                      -- txsynchd5
			txsynchd6                      : out std_logic_vector(1 downto 0);                      -- txsynchd6
			txsynchd7                      : out std_logic_vector(1 downto 0);                      -- txsynchd7
			txblkst0                       : out std_logic;                                         -- txblkst0
			txblkst1                       : out std_logic;                                         -- txblkst1
			txblkst2                       : out std_logic;                                         -- txblkst2
			txblkst3                       : out std_logic;                                         -- txblkst3
			txblkst4                       : out std_logic;                                         -- txblkst4
			txblkst5                       : out std_logic;                                         -- txblkst5
			txblkst6                       : out std_logic;                                         -- txblkst6
			txblkst7                       : out std_logic;                                         -- txblkst7
			txdataskip0                    : out std_logic;                                         -- txdataskip0
			txdataskip1                    : out std_logic;                                         -- txdataskip1
			txdataskip2                    : out std_logic;                                         -- txdataskip2
			txdataskip3                    : out std_logic;                                         -- txdataskip3
			txdataskip4                    : out std_logic;                                         -- txdataskip4
			txdataskip5                    : out std_logic;                                         -- txdataskip5
			txdataskip6                    : out std_logic;                                         -- txdataskip6
			txdataskip7                    : out std_logic;                                         -- txdataskip7
			rate0                          : out std_logic_vector(1 downto 0);                      -- rate0
			rate1                          : out std_logic_vector(1 downto 0);                      -- rate1
			rate2                          : out std_logic_vector(1 downto 0);                      -- rate2
			rate3                          : out std_logic_vector(1 downto 0);                      -- rate3
			rate4                          : out std_logic_vector(1 downto 0);                      -- rate4
			rate5                          : out std_logic_vector(1 downto 0);                      -- rate5
			rate6                          : out std_logic_vector(1 downto 0);                      -- rate6
			rate7                          : out std_logic_vector(1 downto 0);                      -- rate7
			rx_in0                         : in  std_logic                      := 'X';             -- rx_in0
			rx_in1                         : in  std_logic                      := 'X';             -- rx_in1
			rx_in2                         : in  std_logic                      := 'X';             -- rx_in2
			rx_in3                         : in  std_logic                      := 'X';             -- rx_in3
			rx_in4                         : in  std_logic                      := 'X';             -- rx_in4
			rx_in5                         : in  std_logic                      := 'X';             -- rx_in5
			rx_in6                         : in  std_logic                      := 'X';             -- rx_in6
			rx_in7                         : in  std_logic                      := 'X';             -- rx_in7
			tx_out0                        : out std_logic;                                         -- tx_out0
			tx_out1                        : out std_logic;                                         -- tx_out1
			tx_out2                        : out std_logic;                                         -- tx_out2
			tx_out3                        : out std_logic;                                         -- tx_out3
			tx_out4                        : out std_logic;                                         -- tx_out4
			tx_out5                        : out std_logic;                                         -- tx_out5
			tx_out6                        : out std_logic;                                         -- tx_out6
			tx_out7                        : out std_logic;                                         -- tx_out7
			txs_address_i                  : in  std_logic_vector(63 downto 0)  := (others => 'X'); -- address
			txs_chipselect_i               : in  std_logic                      := 'X';             -- chipselect
			txs_byteenable_i               : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- byteenable
			txs_readdata_o                 : out std_logic_vector(127 downto 0);                    -- readdata
			txs_writedata_i                : in  std_logic_vector(127 downto 0) := (others => 'X'); -- writedata
			txs_read_i                     : in  std_logic                      := 'X';             -- read
			txs_write_i                    : in  std_logic                      := 'X';             -- write
			txs_burstcount_i               : in  std_logic_vector(5 downto 0)   := (others => 'X'); -- burstcount
			txs_readdatavalid_o            : out std_logic;                                         -- readdatavalid
			txs_waitrequest_o              : out std_logic;                                         -- waitrequest
			rxm_bar0_address_o             : out std_logic_vector(63 downto 0);                     -- address
			rxm_bar0_byteenable_o          : out std_logic_vector(15 downto 0);                     -- byteenable
			rxm_bar0_readdata_i            : in  std_logic_vector(127 downto 0) := (others => 'X'); -- readdata
			rxm_bar0_writedata_o           : out std_logic_vector(127 downto 0);                    -- writedata
			rxm_bar0_read_o                : out std_logic;                                         -- read
			rxm_bar0_write_o               : out std_logic;                                         -- write
			rxm_bar0_burstcount_o          : out std_logic_vector(5 downto 0);                      -- burstcount
			rxm_bar0_readdatavalid_i       : in  std_logic                      := 'X';             -- readdatavalid
			rxm_bar0_waitrequest_i         : in  std_logic                      := 'X';             -- waitrequest
			rxm_bar4_address_o             : out std_logic_vector(63 downto 0);                     -- address
			rxm_bar4_byteenable_o          : out std_logic_vector(15 downto 0);                     -- byteenable
			rxm_bar4_readdata_i            : in  std_logic_vector(127 downto 0) := (others => 'X'); -- readdata
			rxm_bar4_writedata_o           : out std_logic_vector(127 downto 0);                    -- writedata
			rxm_bar4_read_o                : out std_logic;                                         -- read
			rxm_bar4_write_o               : out std_logic;                                         -- write
			rxm_bar4_burstcount_o          : out std_logic_vector(5 downto 0);                      -- burstcount
			rxm_bar4_readdatavalid_i       : in  std_logic                      := 'X';             -- readdatavalid
			rxm_bar4_waitrequest_i         : in  std_logic                      := 'X';             -- waitrequest
			pld_clk                        : in  std_logic                      := 'X';             -- clk
			TxData_rdy_o                   : out std_logic;                                         -- TxData_rdy_o
			TxData_val_i                   : in  std_logic                      := 'X';             -- TxData_val_i
			TxData_sop_i                   : in  std_logic                      := 'X';             -- TxData_sop_i
			TxData_eop_i                   : in  std_logic                      := 'X';             -- TxData_eop_i
			TxData_err_i                   : in  std_logic                      := 'X';             -- TxData_err_i
			TxData_dat_i                   : in  std_logic_vector(255 downto 0) := (others => 'X'); -- TxData_dat_i
			TxData_sty_i                   : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- TxData_sty_i
			TxData_mty_i                   : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- TxData_mty_i
			TxData_dsc_i                   : in  std_logic_vector(255 downto 0) := (others => 'X'); -- TxData_dsc_i
			TxStatus_val_o                 : out std_logic;                                         -- TxStatus_val_o
			TxStatus_dat_o                 : out std_logic_vector(255 downto 0);                    -- TxStatus_dat_o
			RxData_rdy_i                   : in  std_logic                      := 'X';             -- RxData_rdy_i
			RxData_val_o                   : out std_logic;                                         -- RxData_val_o
			RxData_sop_o                   : out std_logic;                                         -- RxData_sop_o
			RxData_eop_o                   : out std_logic;                                         -- RxData_eop_o
			RxData_err_o                   : out std_logic;                                         -- RxData_err_o
			RxData_dat_o                   : out std_logic_vector(255 downto 0);                    -- RxData_dat_o
			RxData_sty_o                   : out std_logic_vector(31 downto 0);                     -- RxData_sty_o
			RxData_mty_o                   : out std_logic_vector(31 downto 0);                     -- RxData_mty_o
			RxData_dsc_o                   : out std_logic_vector(255 downto 0);                    -- RxData_dsc_o
			pld_core_ready                 : in  std_logic                      := 'X';             -- pld_core_ready
			pld_clk_inuse                  : out std_logic;                                         -- pld_clk_inuse
			serdes_pll_locked              : out std_logic;                                         -- serdes_pll_locked
			reset_status                   : out std_logic;                                         -- reset_status
			testin_zero                    : out std_logic;                                         -- testin_zero
			sim_pipe_pclk_out              : out std_logic;                                         -- sim_pipe_pclk_out
			devkit_status                  : out std_logic_vector(255 downto 0);                    -- devkit_status
			devkit_ctrl                    : in  std_logic_vector(255 downto 0) := (others => 'X'); -- devkit_ctrl
			rx_cred_ctl                    : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- rx_cred_ctl
			rx_cred_status                 : out std_logic_vector(19 downto 0);                     -- rx_cred_status
			derr_cor_ext_rcv               : out std_logic;                                         -- derr_cor_ext_rcv
			derr_cor_ext_rpl               : out std_logic;                                         -- derr_cor_ext_rpl
			derr_rpl                       : out std_logic;                                         -- derr_rpl
			dlup                           : out std_logic;                                         -- dlup
			dlup_exit                      : out std_logic;                                         -- dlup_exit
			ev128ns                        : out std_logic;                                         -- ev128ns
			ev1us                          : out std_logic;                                         -- ev1us
			hotrst_exit                    : out std_logic;                                         -- hotrst_exit
			int_status                     : out std_logic_vector(3 downto 0);                      -- int_status
			l2_exit                        : out std_logic;                                         -- l2_exit
			lane_act                       : out std_logic_vector(3 downto 0);                      -- lane_act
			ltssmstate                     : out std_logic_vector(4 downto 0);                      -- ltssmstate
			rx_par_err                     : out std_logic;                                         -- rx_par_err
			tx_par_err                     : out std_logic_vector(1 downto 0);                      -- tx_par_err
			cfg_par_err                    : out std_logic;                                         -- cfg_par_err
			ko_cpl_spc_header              : out std_logic_vector(7 downto 0);                      -- ko_cpl_spc_header
			ko_cpl_spc_data                : out std_logic_vector(11 downto 0);                     -- ko_cpl_spc_data
			rxfc_cplbuf_ovf                : out std_logic;                                         -- rxfc_cplbuf_ovf
			currentspeed                   : out std_logic_vector(1 downto 0);                      -- currentspeed
			tx_st_sop                      : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- startofpacket
			tx_st_eop                      : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- endofpacket
			tx_st_err                      : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- error
			tx_st_valid                    : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- valid
			tx_st_ready                    : out std_logic;                                         -- ready
			tx_st_data                     : in  std_logic_vector(127 downto 0) := (others => 'X'); -- data
			tx_st_empty                    : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- empty
			tx_st_parity                   : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- tx_st_parity
			rx_st_sop                      : out std_logic_vector(0 downto 0);                      -- startofpacket
			rx_st_eop                      : out std_logic_vector(0 downto 0);                      -- endofpacket
			rx_st_err                      : out std_logic_vector(0 downto 0);                      -- error
			rx_st_valid                    : out std_logic_vector(0 downto 0);                      -- valid
			rx_st_ready                    : in  std_logic                      := 'X';             -- ready
			rx_st_data                     : out std_logic_vector(127 downto 0);                    -- data
			rx_st_empty                    : out std_logic_vector(0 downto 0);                      -- empty
			rx_st_parity                   : out std_logic_vector(15 downto 0);                     -- rx_st_parity
			clr_st                         : out std_logic;                                         -- reset
			rx_st_bar_range                : out std_logic_vector(2 downto 0);                      -- rx_st_bar_range
			rx_st_pf_num                   : out std_logic_vector(0 downto 0);                      -- rx_st_pf_num
			rx_st_vf_num                   : out std_logic_vector(0 downto 0);                      -- rx_st_vf_num
			rx_st_vf_active                : out std_logic;                                         -- rx_st_vf_active
			tx_st_pf_num                   : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- tx_st_pf_num
			tx_st_vf_num                   : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- tx_st_vf_num
			tx_st_vf_active                : in  std_logic                      := 'X';             -- tx_st_vf_active
			extraBAR_lock                  : in  std_logic                      := 'X';             -- extraBAR_lock
			extraBAR_hit                   : out std_logic;                                         -- extraBAR_hit
			devhide_pf                     : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- devhide_pf
			device_rciep                   : in  std_logic                      := 'X';             -- device_rciep
			rx_st_bar                      : out std_logic_vector(7 downto 0);                      -- rx_st_bar
			rx_st_bar_hit_tlp0             : out std_logic_vector(7 downto 0);                      -- rx_st_bar_hit_tlp0
			rx_st_bar_hit_fn_tlp0          : out std_logic_vector(7 downto 0);                      -- rx_st_bar_hit_fn_tlp0
			rx_st_bar_hit_tlp1             : out std_logic_vector(7 downto 0);                      -- rx_st_bar_hit_tlp1
			rx_st_bar_hit_fn_tlp1          : out std_logic_vector(7 downto 0);                      -- rx_st_bar_hit_fn_tlp1
			rx_st_mask                     : in  std_logic                      := 'X';             -- rx_st_mask
			tx_cred_data_fc                : out std_logic_vector(11 downto 0);                     -- tx_cred_data_fc
			tx_cred_fc_hip_cons            : out std_logic_vector(5 downto 0);                      -- tx_cred_fc_hip_cons
			tx_cred_fc_infinite            : out std_logic_vector(5 downto 0);                      -- tx_cred_fc_infinite
			tx_cred_hdr_fc                 : out std_logic_vector(7 downto 0);                      -- tx_cred_hdr_fc
			tx_cred_fc_sel                 : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- tx_cred_fc_sel
			tx_cred_cons_select            : in  std_logic                      := 'X';             -- tx_cons_cred_sel
			app_int_sts                    : in  std_logic                      := 'X';             -- app_int_sts
			app_int_pf_sts                 : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- app_int_pf_sts
			app_int_sts_a                  : in  std_logic                      := 'X';             -- app_int_sts_a
			app_int_sts_b                  : in  std_logic                      := 'X';             -- app_int_sts_b
			app_int_sts_c                  : in  std_logic                      := 'X';             -- app_int_sts_c
			app_int_sts_d                  : in  std_logic                      := 'X';             -- app_int_sts_d
			app_int_sts_fn                 : in  std_logic                      := 'X';             -- app_int_sts_fn
			app_int_pend_status            : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- app_int_pend_status
			app_int_ack                    : out std_logic;                                         -- app_int_ack
			app_intx_disable               : out std_logic_vector(0 downto 0);                      -- app_intx_disable
			app_msi_num                    : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- app_msi_num
			app_msi_req                    : in  std_logic                      := 'X';             -- app_msi_req
			app_msi_tc                     : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- app_msi_tc
			app_msi_ack                    : out std_logic;                                         -- app_msi_ack
			app_msi_status                 : out std_logic_vector(1 downto 0);                      -- app_msi_status
			app_msi_req_fn                 : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- app_msi_req_fn
			app_msi_pending_bit_write_en   : in  std_logic                      := 'X';             -- app_msi_pending_bit_write_en
			app_msi_pending_bit_write_data : in  std_logic                      := 'X';             -- app_msi_pending_bit_write_data
			app_msix_req                   : in  std_logic                      := 'X';             -- app_msix_req
			app_msix_tc                    : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- app_msix_tc
			app_msix_ack                   : out std_logic;                                         -- app_msix_ack
			app_msix_err                   : out std_logic;                                         -- app_msix_err
			app_msix_addr                  : in  std_logic_vector(63 downto 0)  := (others => 'X'); -- app_msix_addr
			app_msix_data                  : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- app_msix_data
			app_msix_pf_num                : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- app_msix_pf_num
			app_msix_vf_num                : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- app_msix_vf_num
			app_msix_vf_active             : in  std_logic                      := 'X';             -- app_msix_vf_active
			app_msi_addr_pf                : out std_logic_vector(63 downto 0);                     -- app_msi_addr_pf
			app_msi_data_pf                : out std_logic_vector(15 downto 0);                     -- app_msi_data_pf
			app_msi_mask_pf                : out std_logic_vector(31 downto 0);                     -- app_msi_mask_pf
			app_msi_pending_pf             : out std_logic_vector(31 downto 0);                     -- app_msi_pending_pf
			app_msi_enable_pf              : out std_logic_vector(0 downto 0);                      -- app_msi_enable_pf
			app_msi_multi_msg_enable_pf    : out std_logic_vector(2 downto 0);                      -- app_msi_multi_msg_enable_pf
			app_msix_en_pf                 : out std_logic_vector(0 downto 0);                      -- app_msix_en_pf
			app_msix_fn_mask_pf            : out std_logic_vector(0 downto 0);                      -- app_msix_fn_mask_pf
			app_msix_en_vf                 : out std_logic_vector(3 downto 0);                      -- app_msix_en_vf
			app_msix_fn_mask_vf            : out std_logic_vector(3 downto 0);                      -- app_msix_fn_mask_vf
			serr_out                       : out std_logic;                                         -- serr_out
			aer_msi_num                    : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- aer_msi_num
			pex_msi_num                    : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- pex_msi_num
			lmi_addr                       : in  std_logic_vector(11 downto 0)  := (others => 'X'); -- lmi_addr
			lmi_din                        : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- lmi_din
			lmi_rden                       : in  std_logic                      := 'X';             -- lmi_rden
			lmi_wren                       : in  std_logic                      := 'X';             -- lmi_wren
			lmi_func                       : in  std_logic_vector(8 downto 0)   := (others => 'X'); -- lmi_func
			lmi_ack                        : out std_logic;                                         -- lmi_ack
			lmi_dout                       : out std_logic_vector(7 downto 0);                      -- lmi_dout
			lmi_pf_num_app                 : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- lmi_pf_num
			lmi_vf_num_app                 : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- lmi_vf_num
			lmi_vf_active_app              : out std_logic;                                         -- lmi_vf_active
			pm_auxpwr                      : in  std_logic                      := 'X';             -- pm_auxpwr
			pm_data                        : in  std_logic_vector(9 downto 0)   := (others => 'X'); -- pm_data
			pme_to_cr                      : in  std_logic                      := 'X';             -- pme_to_cr
			pm_event                       : in  std_logic                      := 'X';             -- pm_event
			pme_to_sr                      : out std_logic;                                         -- pme_to_sr
			cfgbp_link2csr                 : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- cfgbp_link2csr
			cfgbp_comclk_reg               : in  std_logic                      := 'X';             -- cfgbp_comclk_reg
			cfgbp_extsy_reg                : in  std_logic                      := 'X';             -- cfgbp_extsy_reg
			cfgbp_max_pload                : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- cfgbp_max_pload
			cfgbp_tx_ecrcgen               : in  std_logic                      := 'X';             -- cfgbp_tx_ecrcgen
			cfgbp_rx_ecrchk                : in  std_logic                      := 'X';             -- cfgbp_rx_ecrchk
			cfgbp_secbus                   : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- cfgbp_secbus
			cfgbp_linkcsr_bit0             : in  std_logic                      := 'X';             -- cfgbp_linkcsr_bit0
			cfgbp_tx_req_pm                : in  std_logic                      := 'X';             -- cfgbp_tx_req_pm
			cfgbp_tx_typ_pm                : in  std_logic_vector(2 downto 0)   := (others => 'X'); -- cfgbp_tx_typ_pm
			cfgbp_req_phypm                : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- cfgbp_req_phypm
			cfgbp_req_phycfg               : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- cfgbp_req_phycfg
			cfgbp_vc0_tcmap_pld            : in  std_logic_vector(6 downto 0)   := (others => 'X'); -- cfgbp_vc0_tcmap_pld
			cfgbp_inh_dllp                 : in  std_logic                      := 'X';             -- cfgbp_inh_dllp
			cfgbp_inh_tx_tlp               : in  std_logic                      := 'X';             -- cfgbp_inh_tx_tlp
			cfgbp_req_wake                 : in  std_logic                      := 'X';             -- cfgbp_req_wake
			cfgbp_link3_ctl                : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- cfgbp_link3_ctl
			cfgbp_lane_err                 : out std_logic_vector(7 downto 0);                      -- cfgbp_lane_err
			cfgbp_link_equlz_req           : out std_logic;                                         -- cfgbp_link_equlz_req
			cfgbp_equiz_complete           : out std_logic;                                         -- cfgbp_equiz_complete
			cfgbp_phase_3_successful       : out std_logic;                                         -- cfgbp_phase_3_successful
			cfgbp_phase_2_successful       : out std_logic;                                         -- cfgbp_phase_2_successful
			cfgbp_phase_1_successful       : out std_logic;                                         -- cfgbp_phase_1_successful
			cfgbp_current_deemph           : out std_logic;                                         -- cfgbp_current_deemph
			cfgbp_current_speed            : out std_logic_vector(1 downto 0);                      -- cfgbp_current_speed
			cfgbp_link_up                  : out std_logic;                                         -- cfgbp_link_up
			cfgbp_link_train               : out std_logic;                                         -- cfgbp_link_train
			cfgbp_10state                  : out std_logic;                                         -- cfgbp_10state
			cfgbp_10sstate                 : out std_logic;                                         -- cfgbp_10sstate
			cfgbp_rx_val_pm                : out std_logic;                                         -- cfgbp_rx_val_pm
			cfgbp_rx_typ_pm                : out std_logic_vector(2 downto 0);                      -- cfgbp_rx_typ_pm
			cfgbp_tx_ack_pm                : out std_logic;                                         -- cfgbp_tx_ack_pm
			cfgbp_ack_phypm                : out std_logic_vector(1 downto 0);                      -- cfgbp_ack_phypm
			cfgbp_vc_status                : out std_logic;                                         -- cfgbp_vc_status
			cfgbp_rxfc_max                 : out std_logic;                                         -- cfgbp_rxfc_max
			cfgbp_txfc_max                 : out std_logic;                                         -- cfgbp_txfc_max
			cfgbp_txbuf_emp                : out std_logic;                                         -- cfgbp_txbuf_emp
			cfgbp_cfgbuf_emp               : out std_logic;                                         -- cfgbp_cfgbuf_emp
			cfgbp_rpbuf_emp                : out std_logic;                                         -- cfgbp_rpbuf_emp
			cfgbp_dll_req                  : out std_logic;                                         -- cfgbp_dll_req
			cfgbp_link_auto_bdw_status     : out std_logic;                                         -- cfgbp_link_auto_bdw_status
			cfgbp_link_bdw_mng_status      : out std_logic;                                         -- cfgbp_link_bdw_mng_status
			cfgbp_rst_tx_margin_field      : out std_logic;                                         -- cfgbp_rst_tx_margin_field
			cfgbp_rst_enter_comp_bit       : out std_logic;                                         -- cfgbp_rst_enter_comp_bit
			cfgbp_rx_st_ecrcerr            : out std_logic_vector(3 downto 0);                      -- cfgbp_rx_st_ecrcerr
			cfgbp_err_uncorr_internal      : out std_logic;                                         -- cfgbp_err_uncorr_internal
			cfgbp_rx_corr_internal         : out std_logic;                                         -- cfgbp_rx_corr_internal
			cfgbp_err_tlrcvovf             : out std_logic;                                         -- cfgbp_err_tlrcvovf
			cfgbp_txfc_err                 : out std_logic;                                         -- cfgbp_txfc_err
			cfgbp_err_tlmalf               : out std_logic;                                         -- cfgbp_err_tlmalf
			cfgbp_err_surpdwn_dll          : out std_logic;                                         -- cfgbp_err_surpdwn_dll
			cfgbp_err_dllrev               : out std_logic;                                         -- cfgbp_err_dllrev
			cfgbp_err_dll_repnum           : out std_logic;                                         -- cfgbp_err_dll_repnum
			cfgbp_err_dllreptim            : out std_logic;                                         -- cfgbp_err_dllreptim
			cfgbp_err_dllp_baddllp         : out std_logic;                                         -- cfgbp_err_dllp_baddllp
			cfgbp_err_dll_badtlp           : out std_logic;                                         -- cfgbp_err_dll_badtlp
			cfgbp_err_phy_tng              : out std_logic;                                         -- cfgbp_err_phy_tng
			cfgbp_err_phy_rcv              : out std_logic;                                         -- cfgbp_err_phy_rcv
			cfgbp_root_err_reg_sts         : out std_logic;                                         -- cfgbp_root_err_reg_sts
			cfgbp_corr_err_reg_sts         : out std_logic;                                         -- cfgbp_corr_err_reg_sts
			cfgbp_unc_err_reg_sts          : out std_logic;                                         -- cfgbp_unc_err_reg_sts
			cseb_rddata                    : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- cseb_rddata
			cseb_rdresponse                : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- cseb_rdresponse
			cseb_waitrequest               : in  std_logic                      := 'X';             -- cseb_waitrequest
			cseb_wrresponse                : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- cseb_wrresponse
			cseb_wrresp_valid              : in  std_logic                      := 'X';             -- cseb_wrresp_valid
			cseb_addr                      : out std_logic_vector(32 downto 0);                     -- cseb_addr
			cseb_be                        : out std_logic_vector(3 downto 0);                      -- cseb_be
			cseb_rden                      : out std_logic;                                         -- cseb_rden
			cseb_wrdata                    : out std_logic_vector(31 downto 0);                     -- cseb_wrdata
			cseb_wren                      : out std_logic;                                         -- cseb_wren
			cseb_is_shadow                 : out std_logic;                                         -- cseb_is_shadow
			cseb_wrresp_req                : out std_logic;                                         -- cseb_wrresp_req
			cseb_rddata_parity             : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- cseb_rddata_parity
			cseb_addr_parity               : out std_logic_vector(4 downto 0);                      -- cseb_addr_parity
			cseb_wrdata_parity             : out std_logic_vector(3 downto 0);                      -- cseb_wrdata_parity
			hip_reconfig_clk               : in  std_logic                      := 'X';             -- clk
			hip_reconfig_rst_n             : in  std_logic                      := 'X';             -- reset_n
			hip_reconfig_address           : in  std_logic_vector(9 downto 0)   := (others => 'X'); -- address
			hip_reconfig_read              : in  std_logic                      := 'X';             -- read
			hip_reconfig_readdata          : out std_logic_vector(15 downto 0);                     -- readdata
			hip_reconfig_write             : in  std_logic                      := 'X';             -- write
			hip_reconfig_writedata         : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- writedata
			hip_reconfig_byte_en           : in  std_logic_vector(1 downto 0)   := (others => 'X'); -- byteenable
			ser_shift_load                 : in  std_logic                      := 'X';             -- ser_shift_load
			interface_sel                  : in  std_logic                      := 'X';             -- interface_sel
			xcvr_reconfig_clk              : in  std_logic                      := 'X';             -- clk
			xcvr_reconfig_reset            : in  std_logic                      := 'X';             -- reset
			xcvr_reconfig_address          : in  std_logic_vector(12 downto 0)  := (others => 'X'); -- address
			xcvr_reconfig_read             : in  std_logic                      := 'X';             -- read
			xcvr_reconfig_readdata         : out std_logic_vector(31 downto 0);                     -- readdata
			xcvr_reconfig_write            : in  std_logic                      := 'X';             -- write
			xcvr_reconfig_writedata        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- writedata
			xcvr_reconfig_waitrequest      : out std_logic;                                         -- waitrequest
			reconfig_pll0_clk              : in  std_logic                      := 'X';             -- clk
			reconfig_pll0_reset            : in  std_logic                      := 'X';             -- reset
			reconfig_pll0_address          : in  std_logic_vector(9 downto 0)   := (others => 'X'); -- address
			reconfig_pll0_read             : in  std_logic                      := 'X';             -- read
			reconfig_pll0_readdata         : out std_logic_vector(31 downto 0);                     -- readdata
			reconfig_pll0_write            : in  std_logic                      := 'X';             -- write
			reconfig_pll0_writedata        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- writedata
			reconfig_pll0_waitrequest      : out std_logic;                                         -- waitrequest
			reconfig_pll1_clk              : in  std_logic                      := 'X';             -- clk
			reconfig_pll1_reset            : in  std_logic                      := 'X';             -- reset
			reconfig_pll1_address          : in  std_logic_vector(9 downto 0)   := (others => 'X'); -- address
			reconfig_pll1_read             : in  std_logic                      := 'X';             -- read
			reconfig_pll1_readdata         : out std_logic_vector(31 downto 0);                     -- readdata
			reconfig_pll1_write            : in  std_logic                      := 'X';             -- write
			reconfig_pll1_writedata        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- writedata
			reconfig_pll1_waitrequest      : out std_logic;                                         -- waitrequest
			pipe_hclk_in                   : in  std_logic                      := 'X';             -- clk
			pll_pcie_clk                   : out std_logic;                                         -- clk
			hpg_ctrler                     : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- hpg_ctrler
			tl_cfg_add                     : out std_logic_vector(3 downto 0);                      -- tl_cfg_add
			tl_cfg_ctl                     : out std_logic_vector(31 downto 0);                     -- tl_cfg_ctl
			tl_cfg_sts                     : out std_logic_vector(52 downto 0);                     -- tl_cfg_sts
			cpl_err                        : in  std_logic_vector(6 downto 0)   := (others => 'X'); -- cpl_err
			cpl_pending                    : in  std_logic                      := 'X';             -- cpl_pending
			cpl_err_fn                     : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- cpl_err_fn
			cpl_pending_pf                 : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- cpl_pending_pf
			cpl_pending_vf                 : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- cpl_pending_vf
			log_hdr                        : in  std_logic_vector(127 downto 0) := (others => 'X'); -- log_hdr
			cpl_err_pf_num                 : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- cpl_err_pf_num
			cpl_err_vf_num                 : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- cpl_err_vf_num
			cpl_err_vf_active              : in  std_logic                      := 'X';             -- cpl_err_vf_active
			vf_compl_status_update         : in  std_logic                      := 'X';             -- vf_compl_status_update
			vf_compl_status                : in  std_logic                      := 'X';             -- vf_compl_status
			vf_compl_status_pf_num         : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- vf_compl_status_pf_num
			vf_compl_status_vf_num         : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- vf_compl_status_vf_num
			vf_compl_status_update_ack     : out std_logic;                                         -- vf_compl_status_update_ack
			flr_active_pf                  : out std_logic_vector(0 downto 0);                      -- flr_active_pf
			flr_active_vf                  : out std_logic_vector(3 downto 0);                      -- flr_active_vf
			flr_completed_pf               : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- flr_completed_pf
			flr_completed_vf               : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- flr_completed_vf
			flr_rcvd_vf                    : out std_logic;                                         -- flr_rcvd_vf
			flr_rcvd_pf_num                : out std_logic_vector(0 downto 0);                      -- flr_rcvd_pf_num
			flr_rcvd_vf_num                : out std_logic_vector(0 downto 0);                      -- flr_rcvd_vf_num
			flr_completed_pf_num           : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- flr_completed_pf_num
			flr_completed_vf_num           : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- flr_completed_vf_num
			bus_num_f0                     : out std_logic_vector(7 downto 0);                      -- bus_num_f0
			bus_num_f1                     : out std_logic_vector(7 downto 0);                      -- bus_num_f1
			device_num_f0                  : out std_logic_vector(4 downto 0);                      -- device_num_f0
			device_num_f1                  : out std_logic_vector(4 downto 0);                      -- device_num_f1
			mem_space_en_pf                : out std_logic_vector(0 downto 0);                      -- mem_space_en_pf
			bus_master_en_pf               : out std_logic_vector(0 downto 0);                      -- bus_master_en_pf
			mem_space_en_vf                : out std_logic_vector(0 downto 0);                      -- mem_space_en_vf
			exprom_en_pf                   : out std_logic_vector(0 downto 0);                      -- exprom_en_pf
			bus_master_en_vf               : out std_logic_vector(3 downto 0);                      -- bus_master_en_vf
			pf0_num_vfs                    : out std_logic_vector(7 downto 0);                      -- pf0_num_vfs
			pf1_num_vfs                    : out std_logic_vector(7 downto 0);                      -- pf1_num_vfs
			pf_max_payload_size            : out std_logic_vector(2 downto 0);                      -- max_payload_size
			pf_rd_req_size                 : out std_logic_vector(2 downto 0);                      -- rd_req_size
			bus_num_f2                     : out std_logic_vector(7 downto 0);                      -- bus_num_f2
			bus_num_f3                     : out std_logic_vector(7 downto 0);                      -- bus_num_f3
			device_num_f2                  : out std_logic_vector(4 downto 0);                      -- device_num_f2
			device_num_f3                  : out std_logic_vector(4 downto 0);                      -- device_num_f3
			bus_num_f4                     : out std_logic_vector(7 downto 0);                      -- bus_num_f4
			bus_num_f5                     : out std_logic_vector(7 downto 0);                      -- bus_num_f5
			device_num_f4                  : out std_logic_vector(4 downto 0);                      -- device_num_f4
			device_num_f5                  : out std_logic_vector(4 downto 0);                      -- device_num_f5
			bus_num_f6                     : out std_logic_vector(7 downto 0);                      -- bus_num_f6
			bus_num_f7                     : out std_logic_vector(7 downto 0);                      -- bus_num_f7
			device_num_f6                  : out std_logic_vector(4 downto 0);                      -- device_num_f6
			device_num_f7                  : out std_logic_vector(4 downto 0);                      -- device_num_f7
			pf2_num_vfs                    : out std_logic_vector(7 downto 0);                      -- pf2_num_vfs
			pf3_num_vfs                    : out std_logic_vector(7 downto 0);                      -- pf3_num_vfs
			extended_tag_en_pf             : out std_logic_vector(0 downto 0);                      -- extended_tag_en_pf
			compl_timeout_disable_pf       : out std_logic_vector(0 downto 0);                      -- compl_timeout_disable_pf
			atomic_op_requester_en_pf      : out std_logic_vector(0 downto 0);                      -- atomic_op_requester_en_pf
			tph_st_mode_pf                 : out std_logic_vector(1 downto 0);                      -- tph_st_mode_pf
			tph_requester_en_pf            : out std_logic_vector(0 downto 0);                      -- tph_requester_en_pf
			ats_stu_pf                     : out std_logic_vector(4 downto 0);                      -- ats_stu_pf
			ats_en_pf                      : out std_logic_vector(0 downto 0);                      -- ats_en_pf
			ctl_shdw_update                : out std_logic;                                         -- ctl_shdw_update
			ctl_shdw_pf_num                : out std_logic_vector(0 downto 0);                      -- ctl_shdw_pf_num
			ctl_shdw_vf_num                : out std_logic_vector(0 downto 0);                      -- ctl_shdw_vf_num
			ctl_shdw_vf_active             : out std_logic;                                         -- ctl_shdw_vf_active
			ctl_shdw_cfg                   : out std_logic_vector(6 downto 0);                      -- ctl_shdw_cfg
			ctl_shdw_req_all               : in  std_logic                      := 'X';             -- ctl_shdw_req_all
			f0_virtio_pcicfg_bar_o         : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f0_virtio_pcicfg_length_o      : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f0_virtio_pcicfg_baroffset_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f0_virtio_pcicfg_cfgdata_o     : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f0_virtio_pcicfg_cfgwr_o       : out std_logic;                                         -- virtio_pcicfg_wr
			f0_virtio_pcicfg_cfgrd_o       : out std_logic;                                         -- virtio_pcicfg_rd
			f0_virtio_pcicfg_rdack_i       : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f0_virtio_pcicfg_rdbe_i        : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f0_virtio_pcicfg_data_i        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f1_virtio_pcicfg_bar_o         : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f1_virtio_pcicfg_length_o      : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f1_virtio_pcicfg_baroffset_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f1_virtio_pcicfg_cfgdata_o     : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f1_virtio_pcicfg_cfgwr_o       : out std_logic;                                         -- virtio_pcicfg_wr
			f1_virtio_pcicfg_cfgrd_o       : out std_logic;                                         -- virtio_pcicfg_rd
			f1_virtio_pcicfg_rdack_i       : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f1_virtio_pcicfg_rdbe_i        : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f1_virtio_pcicfg_data_i        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f2_virtio_pcicfg_bar_o         : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f2_virtio_pcicfg_length_o      : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f2_virtio_pcicfg_baroffset_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f2_virtio_pcicfg_cfgdata_o     : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f2_virtio_pcicfg_cfgwr_o       : out std_logic;                                         -- virtio_pcicfg_wr
			f2_virtio_pcicfg_cfgrd_o       : out std_logic;                                         -- virtio_pcicfg_rd
			f2_virtio_pcicfg_rdack_i       : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f2_virtio_pcicfg_rdbe_i        : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f2_virtio_pcicfg_data_i        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f3_virtio_pcicfg_bar_o         : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f3_virtio_pcicfg_length_o      : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f3_virtio_pcicfg_baroffset_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f3_virtio_pcicfg_cfgdata_o     : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f3_virtio_pcicfg_cfgwr_o       : out std_logic;                                         -- virtio_pcicfg_wr
			f3_virtio_pcicfg_cfgrd_o       : out std_logic;                                         -- virtio_pcicfg_rd
			f3_virtio_pcicfg_rdack_i       : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f3_virtio_pcicfg_rdbe_i        : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f3_virtio_pcicfg_data_i        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f4_virtio_pcicfg_bar_o         : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f4_virtio_pcicfg_length_o      : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f4_virtio_pcicfg_baroffset_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f4_virtio_pcicfg_cfgdata_o     : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f4_virtio_pcicfg_cfgwr_o       : out std_logic;                                         -- virtio_pcicfg_wr
			f4_virtio_pcicfg_cfgrd_o       : out std_logic;                                         -- virtio_pcicfg_rd
			f4_virtio_pcicfg_rdack_i       : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f4_virtio_pcicfg_rdbe_i        : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f4_virtio_pcicfg_data_i        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f5_virtio_pcicfg_bar_o         : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f5_virtio_pcicfg_length_o      : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f5_virtio_pcicfg_baroffset_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f5_virtio_pcicfg_cfgdata_o     : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f5_virtio_pcicfg_cfgwr_o       : out std_logic;                                         -- virtio_pcicfg_wr
			f5_virtio_pcicfg_cfgrd_o       : out std_logic;                                         -- virtio_pcicfg_rd
			f5_virtio_pcicfg_rdack_i       : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f5_virtio_pcicfg_rdbe_i        : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f5_virtio_pcicfg_data_i        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f6_virtio_pcicfg_bar_o         : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f6_virtio_pcicfg_length_o      : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f6_virtio_pcicfg_baroffset_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f6_virtio_pcicfg_cfgdata_o     : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f6_virtio_pcicfg_cfgwr_o       : out std_logic;                                         -- virtio_pcicfg_wr
			f6_virtio_pcicfg_cfgrd_o       : out std_logic;                                         -- virtio_pcicfg_rd
			f6_virtio_pcicfg_rdack_i       : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f6_virtio_pcicfg_rdbe_i        : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f6_virtio_pcicfg_data_i        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f7_virtio_pcicfg_bar_o         : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f7_virtio_pcicfg_length_o      : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f7_virtio_pcicfg_baroffset_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f7_virtio_pcicfg_cfgdata_o     : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f7_virtio_pcicfg_cfgwr_o       : out std_logic;                                         -- virtio_pcicfg_wr
			f7_virtio_pcicfg_cfgrd_o       : out std_logic;                                         -- virtio_pcicfg_rd
			f7_virtio_pcicfg_rdack_i       : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f7_virtio_pcicfg_rdbe_i        : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f7_virtio_pcicfg_data_i        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f0vf_virtio_pcicfg_bar_o       : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f0vf_virtio_pcicfg_length_o    : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f0vf_virtio_pcicfg_baroffset_o : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f0vf_virtio_pcicfg_cfgdata_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f0vf_virtio_pcicfg_cfgwr_o     : out std_logic;                                         -- virtio_pcicfg_wr
			f0vf_virtio_pcicfg_cfgrd_o     : out std_logic;                                         -- virtio_pcicfg_rd
			f0vf_virtio_pcicfg_vfnum_o     : out std_logic_vector(0 downto 0);                      -- virtio_pcicfg_vfnum
			f0vf_virtio_pcicfg_rdack_i     : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f0vf_virtio_pcicfg_rdbe_i      : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f0vf_virtio_pcicfg_data_i      : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f0vf_virtio_pcicfg_appvfnum_i  : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- virtio_pcicfg_appvfnum
			f1vf_virtio_pcicfg_bar_o       : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f1vf_virtio_pcicfg_length_o    : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f1vf_virtio_pcicfg_baroffset_o : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f1vf_virtio_pcicfg_cfgdata_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f1vf_virtio_pcicfg_cfgwr_o     : out std_logic;                                         -- virtio_pcicfg_wr
			f1vf_virtio_pcicfg_cfgrd_o     : out std_logic;                                         -- virtio_pcicfg_rd
			f1vf_virtio_pcicfg_vfnum_o     : out std_logic_vector(0 downto 0);                      -- virtio_pcicfg_vfnum
			f1vf_virtio_pcicfg_rdack_i     : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f1vf_virtio_pcicfg_rdbe_i      : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f1vf_virtio_pcicfg_data_i      : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f1vf_virtio_pcicfg_appvfnum_i  : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- virtio_pcicfg_appvfnum
			f2vf_virtio_pcicfg_bar_o       : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f2vf_virtio_pcicfg_length_o    : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f2vf_virtio_pcicfg_baroffset_o : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f2vf_virtio_pcicfg_cfgdata_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f2vf_virtio_pcicfg_cfgwr_o     : out std_logic;                                         -- virtio_pcicfg_wr
			f2vf_virtio_pcicfg_cfgrd_o     : out std_logic;                                         -- virtio_pcicfg_rd
			f2vf_virtio_pcicfg_vfnum_o     : out std_logic_vector(0 downto 0);                      -- virtio_pcicfg_vfnum
			f2vf_virtio_pcicfg_rdack_i     : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f2vf_virtio_pcicfg_rdbe_i      : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f2vf_virtio_pcicfg_data_i      : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f2vf_virtio_pcicfg_appvfnum_i  : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- virtio_pcicfg_appvfnum
			f3vf_virtio_pcicfg_bar_o       : out std_logic_vector(7 downto 0);                      -- virtio_pcicfg_bar
			f3vf_virtio_pcicfg_length_o    : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_len
			f3vf_virtio_pcicfg_baroffset_o : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_baroff
			f3vf_virtio_pcicfg_cfgdata_o   : out std_logic_vector(31 downto 0);                     -- virtio_pcicfg_cfgdata_o
			f3vf_virtio_pcicfg_cfgwr_o     : out std_logic;                                         -- virtio_pcicfg_wr
			f3vf_virtio_pcicfg_cfgrd_o     : out std_logic;                                         -- virtio_pcicfg_rd
			f3vf_virtio_pcicfg_vfnum_o     : out std_logic_vector(0 downto 0);                      -- virtio_pcicfg_vfnum
			f3vf_virtio_pcicfg_rdack_i     : in  std_logic                      := 'X';             -- virtio_pcicfg_rdack
			f3vf_virtio_pcicfg_rdbe_i      : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- virtio_pcicfg_rddatavalid
			f3vf_virtio_pcicfg_data_i      : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- virtio_pcicfg_cfgdata_i
			f3vf_virtio_pcicfg_appvfnum_i  : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- virtio_pcicfg_appvfnum
			msi_intfc_o                    : out std_logic_vector(81 downto 0);                     -- msi_intfc
			msi_control_o                  : out std_logic_vector(15 downto 0);                     -- msi_control
			msix_intfc_o                   : out std_logic_vector(15 downto 0);                     -- msix_intfc
			intx_req_i                     : in  std_logic                      := 'X';             -- intx_req
			intx_ack_o                     : out std_logic;                                         -- intx_ack
			avmm_thinmaster_reset          : out std_logic;                                         -- reset
			avmm_thinmaster_address        : out std_logic_vector(7 downto 0);                      -- address
			avmm_thinmaster_byteenable     : out std_logic_vector(1 downto 0);                      -- byteenable
			avmm_thinmaster_readdata       : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- readdata
			avmm_thinmaster_writedata      : out std_logic_vector(15 downto 0);                     -- writedata
			avmm_thinmaster_read           : out std_logic;                                         -- read
			avmm_thinmaster_write          : out std_logic;                                         -- write
			avmm_thinmaster_readdatavalid  : in  std_logic                      := 'X';             -- readdatavalid
			avmm_thinmaster_waitrequest    : in  std_logic                      := 'X';             -- waitrequest
			cra_chipselect_i               : in  std_logic                      := 'X';             -- chipselect
			cra_address_i                  : in  std_logic_vector(13 downto 0)  := (others => 'X'); -- address
			cra_byteenable_i               : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- byteenable
			cra_read_i                     : in  std_logic                      := 'X';             -- read
			cra_readdata_o                 : out std_logic_vector(31 downto 0);                     -- readdata
			cra_write_i                    : in  std_logic                      := 'X';             -- write
			cra_writedata_i                : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- writedata
			cra_waitrequest_o              : out std_logic;                                         -- waitrequest
			cra_irq_o                      : out std_logic;                                         -- irq
			rxm_bar1_address_o             : out std_logic_vector(63 downto 0);                     -- address
			rxm_bar1_byteenable_o          : out std_logic_vector(15 downto 0);                     -- byteenable
			rxm_bar1_readdata_i            : in  std_logic_vector(127 downto 0) := (others => 'X'); -- readdata
			rxm_bar1_writedata_o           : out std_logic_vector(127 downto 0);                    -- writedata
			rxm_bar1_read_o                : out std_logic;                                         -- read
			rxm_bar1_write_o               : out std_logic;                                         -- write
			rxm_bar1_burstcount_o          : out std_logic_vector(5 downto 0);                      -- burstcount
			rxm_bar1_readdatavalid_i       : in  std_logic                      := 'X';             -- readdatavalid
			rxm_bar1_waitrequest_i         : in  std_logic                      := 'X';             -- waitrequest
			rxm_bar2_address_o             : out std_logic_vector(63 downto 0);                     -- address
			rxm_bar2_byteenable_o          : out std_logic_vector(15 downto 0);                     -- byteenable
			rxm_bar2_readdata_i            : in  std_logic_vector(127 downto 0) := (others => 'X'); -- readdata
			rxm_bar2_writedata_o           : out std_logic_vector(127 downto 0);                    -- writedata
			rxm_bar2_read_o                : out std_logic;                                         -- read
			rxm_bar2_write_o               : out std_logic;                                         -- write
			rxm_bar2_burstcount_o          : out std_logic_vector(5 downto 0);                      -- burstcount
			rxm_bar2_readdatavalid_i       : in  std_logic                      := 'X';             -- readdatavalid
			rxm_bar2_waitrequest_i         : in  std_logic                      := 'X';             -- waitrequest
			rxm_bar3_address_o             : out std_logic_vector(63 downto 0);                     -- address
			rxm_bar3_byteenable_o          : out std_logic_vector(15 downto 0);                     -- byteenable
			rxm_bar3_readdata_i            : in  std_logic_vector(127 downto 0) := (others => 'X'); -- readdata
			rxm_bar3_writedata_o           : out std_logic_vector(127 downto 0);                    -- writedata
			rxm_bar3_read_o                : out std_logic;                                         -- read
			rxm_bar3_write_o               : out std_logic;                                         -- write
			rxm_bar3_burstcount_o          : out std_logic_vector(5 downto 0);                      -- burstcount
			rxm_bar3_readdatavalid_i       : in  std_logic                      := 'X';             -- readdatavalid
			rxm_bar3_waitrequest_i         : in  std_logic                      := 'X';             -- waitrequest
			rxm_bar5_address_o             : out std_logic_vector(63 downto 0);                     -- address
			rxm_bar5_byteenable_o          : out std_logic_vector(15 downto 0);                     -- byteenable
			rxm_bar5_readdata_i            : in  std_logic_vector(127 downto 0) := (others => 'X'); -- readdata
			rxm_bar5_writedata_o           : out std_logic_vector(127 downto 0);                    -- writedata
			rxm_bar5_read_o                : out std_logic;                                         -- read
			rxm_bar5_write_o               : out std_logic;                                         -- write
			rxm_bar5_burstcount_o          : out std_logic_vector(5 downto 0);                      -- burstcount
			rxm_bar5_readdatavalid_i       : in  std_logic                      := 'X';             -- readdatavalid
			rxm_bar5_waitrequest_i         : in  std_logic                      := 'X';             -- waitrequest
			rxm_irq_i                      : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- irq
			hprxm_address_o                : out std_logic_vector(63 downto 0);                     -- address
			hprxm_byteenable_o             : out std_logic_vector(15 downto 0);                     -- byteenable
			hprxm_readdata_i               : in  std_logic_vector(127 downto 0) := (others => 'X'); -- readdata
			hprxm_writedata_o              : out std_logic_vector(127 downto 0);                    -- writedata
			hprxm_read_o                   : out std_logic;                                         -- read
			hprxm_write_o                  : out std_logic;                                         -- write
			hprxm_burstcount_o             : out std_logic_vector(5 downto 0);                      -- burstcount
			hprxm_readdatavalid_i          : in  std_logic                      := 'X';             -- readdatavalid
			hprxm_waitrequest_i            : in  std_logic                      := 'X';             -- waitrequest
			rd_ast_rx_valid_i              : in  std_logic                      := 'X';             -- valid
			rd_ast_rx_data_i               : in  std_logic_vector(159 downto 0) := (others => 'X'); -- data
			rd_ast_rx_ready_o              : out std_logic;                                         -- ready
			rd_ast_tx_valid_o              : out std_logic;                                         -- valid
			rd_ast_tx_data_o               : out std_logic_vector(31 downto 0);                     -- data
			wr_ast_rx_valid_i              : in  std_logic                      := 'X';             -- valid
			wr_ast_rx_data_i               : in  std_logic_vector(159 downto 0) := (others => 'X'); -- data
			wr_ast_rx_ready_o              : out std_logic;                                         -- ready
			wr_ast_tx_valid_o              : out std_logic;                                         -- valid
			wr_ast_tx_data_o               : out std_logic_vector(31 downto 0);                     -- data
			rd_dma_address_o               : out std_logic_vector(63 downto 0);                     -- address
			rd_dma_write_o                 : out std_logic;                                         -- write
			rd_dma_write_data_o            : out std_logic_vector(127 downto 0);                    -- writedata
			rd_dma_wait_request_i          : in  std_logic                      := 'X';             -- waitrequest
			rd_dma_burst_count_o           : out std_logic_vector(5 downto 0);                      -- burstcount
			rd_dma_byte_enable_o           : out std_logic_vector(15 downto 0);                     -- byteenable
			wr_dma_address_o               : out std_logic_vector(63 downto 0);                     -- address
			wr_dma_read_o                  : out std_logic;                                         -- read
			wr_dma_read_data_i             : in  std_logic_vector(127 downto 0) := (others => 'X'); -- readdata
			wr_dma_wait_request_i          : in  std_logic                      := 'X';             -- waitrequest
			wr_dma_burst_count_o           : out std_logic_vector(5 downto 0);                      -- burstcount
			wr_dma_read_data_valid_i       : in  std_logic                      := 'X';             -- readdatavalid
			rd_dts_chip_select_i           : in  std_logic                      := 'X';             -- chipselect
			rd_dts_write_i                 : in  std_logic                      := 'X';             -- write
			rd_dts_burst_count_i           : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- burstcount
			rd_dts_address_i               : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- address
			rd_dts_write_data_i            : in  std_logic_vector(255 downto 0) := (others => 'X'); -- writedata
			rd_dts_wait_request_o          : out std_logic;                                         -- waitrequest
			wr_dts_chip_select_i           : in  std_logic                      := 'X';             -- chipselect
			wr_dts_write_i                 : in  std_logic                      := 'X';             -- write
			wr_dts_burst_count_i           : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- burstcount
			wr_dts_address_i               : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- address
			wr_dts_write_data_i            : in  std_logic_vector(255 downto 0) := (others => 'X'); -- writedata
			wr_dts_wait_request_o          : out std_logic;                                         -- waitrequest
			rd_dcm_address_o               : out std_logic_vector(63 downto 0);                     -- address
			rd_dcm_write_o                 : out std_logic;                                         -- write
			rd_dcm_writedata_o             : out std_logic_vector(31 downto 0);                     -- writedata
			rd_dcm_read_o                  : out std_logic;                                         -- read
			rd_dcm_byte_enable_o           : out std_logic_vector(3 downto 0);                      -- byteenable
			rd_dcm_wait_request_i          : in  std_logic                      := 'X';             -- waitrequest
			rd_dcm_read_data_i             : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- readdata
			rd_dcm_read_data_valid_i       : in  std_logic                      := 'X';             -- readdatavalid
			wr_dcm_address_o               : out std_logic_vector(63 downto 0);                     -- address
			wr_dcm_write_o                 : out std_logic;                                         -- write
			wr_dcm_writedata_o             : out std_logic_vector(31 downto 0);                     -- writedata
			wr_dcm_read_o                  : out std_logic;                                         -- read
			wr_dcm_byte_enable_o           : out std_logic_vector(3 downto 0);                      -- byteenable
			wr_dcm_wait_request_i          : in  std_logic                      := 'X';             -- waitrequest
			wr_dcm_read_data_i             : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- readdata
			wr_dcm_read_data_valid_i       : in  std_logic                      := 'X';             -- readdatavalid
			skp_os                         : out std_logic                                          -- skpdetect
		);
	end component gidel_hawkeye_pcie_altera_pcie_a10_hip_181_7gpqr4a;

end gidel_hawkeye_pcie_pkg;
