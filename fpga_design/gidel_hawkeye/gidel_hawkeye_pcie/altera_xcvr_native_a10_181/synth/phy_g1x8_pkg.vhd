library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package phy_g1x8_pkg is
	component gidel_hawkeye_pcie_altera_xcvr_native_a10_181_gmscoma is
		generic (
			device_revision                                                        : string  := "20nm5es";
			duplex_mode                                                            : string  := "duplex";
			channels                                                               : integer := 1;
			enable_calibration                                                     : integer := 0;
			enable_analog_resets                                                   : integer := 1;
			enable_reset_sequence                                                  : integer := 0;
			bonded_mode                                                            : string  := "not_bonded";
			pcs_bonding_master                                                     : integer := 0;
			plls                                                                   : integer := 1;
			number_physical_bonding_clocks                                         : integer := 1;
			cdr_refclk_cnt                                                         : integer := 1;
			enable_hip                                                             : integer := 0;
			hip_cal_en                                                             : string  := "disable";
			rcfg_enable                                                            : integer := 0;
			rcfg_shared                                                            : integer := 0;
			rcfg_jtag_enable                                                       : integer := 0;
			rcfg_separate_avmm_busy                                                : integer := 0;
			adme_prot_mode                                                         : string  := "basic_tx";
			adme_data_rate                                                         : string  := "5000000000";
			enable_pcie_dfe_ip                                                     : boolean := false;
			sim_reduced_counters                                                   : boolean := false;
			disable_continuous_dfe                                                 : boolean := false;
			dbg_embedded_debug_enable                                              : integer := 0;
			dbg_capability_reg_enable                                              : integer := 0;
			dbg_user_identifier                                                    : integer := 0;
			dbg_stat_soft_logic_enable                                             : integer := 0;
			dbg_ctrl_soft_logic_enable                                             : integer := 0;
			dbg_prbs_soft_logic_enable                                             : integer := 0;
			dbg_odi_soft_logic_enable                                              : integer := 0;
			rcfg_emb_strm_enable                                                   : integer := 0;
			rcfg_profile_cnt                                                       : integer := 2;
			hssi_gen3_rx_pcs_block_sync                                            : string  := "enable_block_sync";
			hssi_gen3_rx_pcs_block_sync_sm                                         : string  := "enable_blk_sync_sm";
			hssi_gen3_rx_pcs_cdr_ctrl_force_unalgn                                 : string  := "enable";
			hssi_gen3_rx_pcs_lpbk_force                                            : string  := "lpbk_frce_dis";
			hssi_gen3_rx_pcs_mode                                                  : string  := "gen3_func";
			hssi_gen3_rx_pcs_rate_match_fifo                                       : string  := "enable_rm_fifo_600ppm";
			hssi_gen3_rx_pcs_rate_match_fifo_latency                               : string  := "regular_latency";
			hssi_gen3_rx_pcs_reverse_lpbk                                          : string  := "rev_lpbk_en";
			hssi_gen3_rx_pcs_rx_b4gb_par_lpbk                                      : string  := "b4gb_par_lpbk_dis";
			hssi_gen3_rx_pcs_rx_force_balign                                       : string  := "en_force_balign";
			hssi_gen3_rx_pcs_rx_ins_del_one_skip                                   : string  := "ins_del_one_skip_en";
			hssi_gen3_rx_pcs_rx_num_fixed_pat                                      : integer := 8;
			hssi_gen3_rx_pcs_rx_test_out_sel                                       : string  := "rx_test_out0";
			hssi_gen3_rx_pcs_sup_mode                                              : string  := "user_mode";
			hssi_gen3_tx_pcs_mode                                                  : string  := "gen3_func";
			hssi_gen3_tx_pcs_reverse_lpbk                                          : string  := "rev_lpbk_en";
			hssi_gen3_tx_pcs_sup_mode                                              : string  := "user_mode";
			hssi_gen3_tx_pcs_tx_bitslip                                            : integer := 0;
			hssi_gen3_tx_pcs_tx_gbox_byp                                           : string  := "bypass_gbox";
			hssi_krfec_rx_pcs_blksync_cor_en                                       : string  := "detect";
			hssi_krfec_rx_pcs_bypass_gb                                            : string  := "bypass_dis";
			hssi_krfec_rx_pcs_clr_ctrl                                             : string  := "both_enabled";
			hssi_krfec_rx_pcs_ctrl_bit_reverse                                     : string  := "ctrl_bit_reverse_dis";
			hssi_krfec_rx_pcs_data_bit_reverse                                     : string  := "data_bit_reverse_dis";
			hssi_krfec_rx_pcs_dv_start                                             : string  := "with_blklock";
			hssi_krfec_rx_pcs_err_mark_type                                        : string  := "err_mark_10g";
			hssi_krfec_rx_pcs_error_marking_en                                     : string  := "err_mark_dis";
			hssi_krfec_rx_pcs_low_latency_en                                       : string  := "disable";
			hssi_krfec_rx_pcs_lpbk_mode                                            : string  := "lpbk_dis";
			hssi_krfec_rx_pcs_parity_invalid_enum                                  : integer := 8;
			hssi_krfec_rx_pcs_parity_valid_num                                     : integer := 4;
			hssi_krfec_rx_pcs_pipeln_blksync                                       : string  := "enable";
			hssi_krfec_rx_pcs_pipeln_descrm                                        : string  := "enable";
			hssi_krfec_rx_pcs_pipeln_errcorrect                                    : string  := "enable";
			hssi_krfec_rx_pcs_pipeln_errtrap_ind                                   : string  := "enable";
			hssi_krfec_rx_pcs_pipeln_errtrap_lfsr                                  : string  := "enable";
			hssi_krfec_rx_pcs_pipeln_errtrap_loc                                   : string  := "enable";
			hssi_krfec_rx_pcs_pipeln_errtrap_pat                                   : string  := "enable";
			hssi_krfec_rx_pcs_pipeln_gearbox                                       : string  := "enable";
			hssi_krfec_rx_pcs_pipeln_syndrm                                        : string  := "enable";
			hssi_krfec_rx_pcs_pipeln_trans_dec                                     : string  := "enable";
			hssi_krfec_rx_pcs_prot_mode                                            : string  := "disable_mode";
			hssi_krfec_rx_pcs_receive_order                                        : string  := "receive_lsb";
			hssi_krfec_rx_pcs_rx_testbus_sel                                       : string  := "overall";
			hssi_krfec_rx_pcs_signal_ok_en                                         : string  := "sig_ok_dis";
			hssi_krfec_rx_pcs_sup_mode                                             : string  := "user_mode";
			hssi_krfec_tx_pcs_burst_err                                            : string  := "burst_err_dis";
			hssi_krfec_tx_pcs_burst_err_len                                        : string  := "burst_err_len1";
			hssi_krfec_tx_pcs_ctrl_bit_reverse                                     : string  := "ctrl_bit_reverse_dis";
			hssi_krfec_tx_pcs_data_bit_reverse                                     : string  := "data_bit_reverse_dis";
			hssi_krfec_tx_pcs_enc_frame_query                                      : string  := "enc_query_dis";
			hssi_krfec_tx_pcs_low_latency_en                                       : string  := "disable";
			hssi_krfec_tx_pcs_pipeln_encoder                                       : string  := "enable";
			hssi_krfec_tx_pcs_pipeln_scrambler                                     : string  := "enable";
			hssi_krfec_tx_pcs_prot_mode                                            : string  := "disable_mode";
			hssi_krfec_tx_pcs_sup_mode                                             : string  := "user_mode";
			hssi_krfec_tx_pcs_transcode_err                                        : string  := "trans_err_dis";
			hssi_krfec_tx_pcs_transmit_order                                       : string  := "transmit_lsb";
			hssi_krfec_tx_pcs_tx_testbus_sel                                       : string  := "overall";
			hssi_10g_rx_pcs_align_del                                              : string  := "align_del_en";
			hssi_10g_rx_pcs_ber_bit_err_total_cnt                                  : string  := "bit_err_total_cnt_10g";
			hssi_10g_rx_pcs_ber_clken                                              : string  := "ber_clk_dis";
			hssi_10g_rx_pcs_ber_xus_timer_window                                   : integer := 19530;
			hssi_10g_rx_pcs_bitslip_mode                                           : string  := "bitslip_dis";
			hssi_10g_rx_pcs_blksync_bitslip_type                                   : string  := "bitslip_comb";
			hssi_10g_rx_pcs_blksync_bitslip_wait_cnt                               : integer := 1;
			hssi_10g_rx_pcs_blksync_bitslip_wait_type                              : string  := "bitslip_match";
			hssi_10g_rx_pcs_blksync_bypass                                         : string  := "blksync_bypass_dis";
			hssi_10g_rx_pcs_blksync_clken                                          : string  := "blksync_clk_dis";
			hssi_10g_rx_pcs_blksync_enum_invalid_sh_cnt                            : string  := "enum_invalid_sh_cnt_10g";
			hssi_10g_rx_pcs_blksync_knum_sh_cnt_postlock                           : string  := "knum_sh_cnt_postlock_10g";
			hssi_10g_rx_pcs_blksync_knum_sh_cnt_prelock                            : string  := "knum_sh_cnt_prelock_10g";
			hssi_10g_rx_pcs_blksync_pipeln                                         : string  := "blksync_pipeln_dis";
			hssi_10g_rx_pcs_clr_errblk_cnt_en                                      : string  := "disable";
			hssi_10g_rx_pcs_control_del                                            : string  := "control_del_all";
			hssi_10g_rx_pcs_crcchk_bypass                                          : string  := "crcchk_bypass_dis";
			hssi_10g_rx_pcs_crcchk_clken                                           : string  := "crcchk_clk_dis";
			hssi_10g_rx_pcs_crcchk_inv                                             : string  := "crcchk_inv_dis";
			hssi_10g_rx_pcs_crcchk_pipeln                                          : string  := "crcchk_pipeln_dis";
			hssi_10g_rx_pcs_crcflag_pipeln                                         : string  := "crcflag_pipeln_dis";
			hssi_10g_rx_pcs_ctrl_bit_reverse                                       : string  := "ctrl_bit_reverse_dis";
			hssi_10g_rx_pcs_data_bit_reverse                                       : string  := "data_bit_reverse_dis";
			hssi_10g_rx_pcs_dec_64b66b_rxsm_bypass                                 : string  := "dec_64b66b_rxsm_bypass_dis";
			hssi_10g_rx_pcs_dec64b66b_clken                                        : string  := "dec64b66b_clk_dis";
			hssi_10g_rx_pcs_descrm_bypass                                          : string  := "descrm_bypass_en";
			hssi_10g_rx_pcs_descrm_clken                                           : string  := "descrm_clk_dis";
			hssi_10g_rx_pcs_descrm_mode                                            : string  := "async";
			hssi_10g_rx_pcs_descrm_pipeln                                          : string  := "enable";
			hssi_10g_rx_pcs_dft_clk_out_sel                                        : string  := "rx_master_clk";
			hssi_10g_rx_pcs_dis_signal_ok                                          : string  := "dis_signal_ok_dis";
			hssi_10g_rx_pcs_dispchk_bypass                                         : string  := "dispchk_bypass_dis";
			hssi_10g_rx_pcs_empty_flag_type                                        : string  := "empty_rd_side";
			hssi_10g_rx_pcs_fast_path                                              : string  := "fast_path_dis";
			hssi_10g_rx_pcs_fec_clken                                              : string  := "fec_clk_dis";
			hssi_10g_rx_pcs_fec_enable                                             : string  := "fec_dis";
			hssi_10g_rx_pcs_fifo_double_read                                       : string  := "fifo_double_read_dis";
			hssi_10g_rx_pcs_fifo_stop_rd                                           : string  := "n_rd_empty";
			hssi_10g_rx_pcs_fifo_stop_wr                                           : string  := "n_wr_full";
			hssi_10g_rx_pcs_force_align                                            : string  := "force_align_dis";
			hssi_10g_rx_pcs_frmsync_bypass                                         : string  := "frmsync_bypass_dis";
			hssi_10g_rx_pcs_frmsync_clken                                          : string  := "frmsync_clk_dis";
			hssi_10g_rx_pcs_frmsync_enum_scrm                                      : string  := "enum_scrm_default";
			hssi_10g_rx_pcs_frmsync_enum_sync                                      : string  := "enum_sync_default";
			hssi_10g_rx_pcs_frmsync_flag_type                                      : string  := "all_framing_words";
			hssi_10g_rx_pcs_frmsync_knum_sync                                      : string  := "knum_sync_default";
			hssi_10g_rx_pcs_frmsync_mfrm_length                                    : integer := 2048;
			hssi_10g_rx_pcs_frmsync_pipeln                                         : string  := "frmsync_pipeln_dis";
			hssi_10g_rx_pcs_full_flag_type                                         : string  := "full_wr_side";
			hssi_10g_rx_pcs_gb_rx_idwidth                                          : string  := "width_32";
			hssi_10g_rx_pcs_gb_rx_odwidth                                          : string  := "width_66";
			hssi_10g_rx_pcs_gbexp_clken                                            : string  := "gbexp_clk_dis";
			hssi_10g_rx_pcs_low_latency_en                                         : string  := "enable";
			hssi_10g_rx_pcs_lpbk_mode                                              : string  := "lpbk_dis";
			hssi_10g_rx_pcs_master_clk_sel                                         : string  := "master_rx_pma_clk";
			hssi_10g_rx_pcs_pempty_flag_type                                       : string  := "pempty_rd_side";
			hssi_10g_rx_pcs_pfull_flag_type                                        : string  := "pfull_wr_side";
			hssi_10g_rx_pcs_phcomp_rd_del                                          : string  := "phcomp_rd_del2";
			hssi_10g_rx_pcs_pld_if_type                                            : string  := "fifo";
			hssi_10g_rx_pcs_prot_mode                                              : string  := "disable_mode";
			hssi_10g_rx_pcs_rand_clken                                             : string  := "rand_clk_dis";
			hssi_10g_rx_pcs_rd_clk_sel                                             : string  := "rd_rx_pma_clk";
			hssi_10g_rx_pcs_rdfifo_clken                                           : string  := "rdfifo_clk_dis";
			hssi_10g_rx_pcs_rx_fifo_write_ctrl                                     : string  := "blklock_stops";
			hssi_10g_rx_pcs_rx_scrm_width                                          : string  := "bit64";
			hssi_10g_rx_pcs_rx_sh_location                                         : string  := "lsb";
			hssi_10g_rx_pcs_rx_signal_ok_sel                                       : string  := "synchronized_ver";
			hssi_10g_rx_pcs_rx_sm_bypass                                           : string  := "rx_sm_bypass_dis";
			hssi_10g_rx_pcs_rx_sm_hiber                                            : string  := "rx_sm_hiber_en";
			hssi_10g_rx_pcs_rx_sm_pipeln                                           : string  := "rx_sm_pipeln_dis";
			hssi_10g_rx_pcs_rx_testbus_sel                                         : string  := "rx_fifo_testbus1";
			hssi_10g_rx_pcs_rx_true_b2b                                            : string  := "b2b";
			hssi_10g_rx_pcs_rxfifo_empty                                           : string  := "empty_default";
			hssi_10g_rx_pcs_rxfifo_full                                            : string  := "full_default";
			hssi_10g_rx_pcs_rxfifo_mode                                            : string  := "phase_comp";
			hssi_10g_rx_pcs_rxfifo_pempty                                          : integer := 2;
			hssi_10g_rx_pcs_rxfifo_pfull                                           : integer := 23;
			hssi_10g_rx_pcs_stretch_num_stages                                     : string  := "zero_stage";
			hssi_10g_rx_pcs_sup_mode                                               : string  := "user_mode";
			hssi_10g_rx_pcs_test_mode                                              : string  := "test_off";
			hssi_10g_rx_pcs_wrfifo_clken                                           : string  := "wrfifo_clk_dis";
			hssi_10g_rx_pcs_advanced_user_mode                                     : string  := "disable";
			hssi_10g_tx_pcs_bitslip_en                                             : string  := "bitslip_dis";
			hssi_10g_tx_pcs_bonding_dft_en                                         : string  := "dft_dis";
			hssi_10g_tx_pcs_bonding_dft_val                                        : string  := "dft_0";
			hssi_10g_tx_pcs_crcgen_bypass                                          : string  := "crcgen_bypass_dis";
			hssi_10g_tx_pcs_crcgen_clken                                           : string  := "crcgen_clk_dis";
			hssi_10g_tx_pcs_crcgen_err                                             : string  := "crcgen_err_dis";
			hssi_10g_tx_pcs_crcgen_inv                                             : string  := "crcgen_inv_dis";
			hssi_10g_tx_pcs_ctrl_bit_reverse                                       : string  := "ctrl_bit_reverse_dis";
			hssi_10g_tx_pcs_data_bit_reverse                                       : string  := "data_bit_reverse_dis";
			hssi_10g_tx_pcs_dft_clk_out_sel                                        : string  := "tx_master_clk";
			hssi_10g_tx_pcs_dispgen_bypass                                         : string  := "dispgen_bypass_dis";
			hssi_10g_tx_pcs_dispgen_clken                                          : string  := "dispgen_clk_dis";
			hssi_10g_tx_pcs_dispgen_err                                            : string  := "dispgen_err_dis";
			hssi_10g_tx_pcs_dispgen_pipeln                                         : string  := "dispgen_pipeln_dis";
			hssi_10g_tx_pcs_empty_flag_type                                        : string  := "empty_rd_side";
			hssi_10g_tx_pcs_enc_64b66b_txsm_bypass                                 : string  := "enc_64b66b_txsm_bypass_dis";
			hssi_10g_tx_pcs_enc64b66b_txsm_clken                                   : string  := "enc64b66b_txsm_clk_dis";
			hssi_10g_tx_pcs_fastpath                                               : string  := "fastpath_dis";
			hssi_10g_tx_pcs_fec_clken                                              : string  := "fec_clk_dis";
			hssi_10g_tx_pcs_fec_enable                                             : string  := "fec_dis";
			hssi_10g_tx_pcs_fifo_double_write                                      : string  := "fifo_double_write_dis";
			hssi_10g_tx_pcs_fifo_reg_fast                                          : string  := "fifo_reg_fast_dis";
			hssi_10g_tx_pcs_fifo_stop_rd                                           : string  := "n_rd_empty";
			hssi_10g_tx_pcs_fifo_stop_wr                                           : string  := "n_wr_full";
			hssi_10g_tx_pcs_frmgen_burst                                           : string  := "frmgen_burst_dis";
			hssi_10g_tx_pcs_frmgen_bypass                                          : string  := "frmgen_bypass_dis";
			hssi_10g_tx_pcs_frmgen_clken                                           : string  := "frmgen_clk_dis";
			hssi_10g_tx_pcs_frmgen_mfrm_length                                     : integer := 2048;
			hssi_10g_tx_pcs_frmgen_pipeln                                          : string  := "frmgen_pipeln_dis";
			hssi_10g_tx_pcs_frmgen_pyld_ins                                        : string  := "frmgen_pyld_ins_dis";
			hssi_10g_tx_pcs_frmgen_wordslip                                        : string  := "frmgen_wordslip_dis";
			hssi_10g_tx_pcs_full_flag_type                                         : string  := "full_wr_side";
			hssi_10g_tx_pcs_gb_pipeln_bypass                                       : string  := "disable";
			hssi_10g_tx_pcs_gb_tx_idwidth                                          : string  := "width_50";
			hssi_10g_tx_pcs_gb_tx_odwidth                                          : string  := "width_32";
			hssi_10g_tx_pcs_gbred_clken                                            : string  := "gbred_clk_dis";
			hssi_10g_tx_pcs_low_latency_en                                         : string  := "enable";
			hssi_10g_tx_pcs_master_clk_sel                                         : string  := "master_tx_pma_clk";
			hssi_10g_tx_pcs_pempty_flag_type                                       : string  := "pempty_rd_side";
			hssi_10g_tx_pcs_pfull_flag_type                                        : string  := "pfull_wr_side";
			hssi_10g_tx_pcs_phcomp_rd_del                                          : string  := "phcomp_rd_del2";
			hssi_10g_tx_pcs_pld_if_type                                            : string  := "fifo";
			hssi_10g_tx_pcs_prot_mode                                              : string  := "disable_mode";
			hssi_10g_tx_pcs_pseudo_random                                          : string  := "all_0";
			hssi_10g_tx_pcs_pseudo_seed_a                                          : string  := "288230376151711743";
			hssi_10g_tx_pcs_pseudo_seed_b                                          : string  := "288230376151711743";
			hssi_10g_tx_pcs_random_disp                                            : string  := "disable";
			hssi_10g_tx_pcs_rdfifo_clken                                           : string  := "rdfifo_clk_dis";
			hssi_10g_tx_pcs_scrm_bypass                                            : string  := "scrm_bypass_dis";
			hssi_10g_tx_pcs_scrm_clken                                             : string  := "scrm_clk_dis";
			hssi_10g_tx_pcs_scrm_mode                                              : string  := "async";
			hssi_10g_tx_pcs_scrm_pipeln                                            : string  := "enable";
			hssi_10g_tx_pcs_sh_err                                                 : string  := "sh_err_dis";
			hssi_10g_tx_pcs_sop_mark                                               : string  := "sop_mark_dis";
			hssi_10g_tx_pcs_stretch_num_stages                                     : string  := "zero_stage";
			hssi_10g_tx_pcs_sup_mode                                               : string  := "user_mode";
			hssi_10g_tx_pcs_test_mode                                              : string  := "test_off";
			hssi_10g_tx_pcs_tx_scrm_err                                            : string  := "scrm_err_dis";
			hssi_10g_tx_pcs_tx_scrm_width                                          : string  := "bit64";
			hssi_10g_tx_pcs_tx_sh_location                                         : string  := "lsb";
			hssi_10g_tx_pcs_tx_sm_bypass                                           : string  := "tx_sm_bypass_dis";
			hssi_10g_tx_pcs_tx_sm_pipeln                                           : string  := "tx_sm_pipeln_dis";
			hssi_10g_tx_pcs_tx_testbus_sel                                         : string  := "tx_fifo_testbus1";
			hssi_10g_tx_pcs_txfifo_empty                                           : string  := "empty_default";
			hssi_10g_tx_pcs_txfifo_full                                            : string  := "full_default";
			hssi_10g_tx_pcs_txfifo_mode                                            : string  := "phase_comp";
			hssi_10g_tx_pcs_txfifo_pempty                                          : integer := 2;
			hssi_10g_tx_pcs_txfifo_pfull                                           : integer := 11;
			hssi_10g_tx_pcs_wr_clk_sel                                             : string  := "wr_tx_pma_clk";
			hssi_10g_tx_pcs_wrfifo_clken                                           : string  := "wrfifo_clk_dis";
			hssi_10g_tx_pcs_advanced_user_mode                                     : string  := "disable";
			hssi_8g_rx_pcs_auto_error_replacement                                  : string  := "dis_err_replace";
			hssi_8g_rx_pcs_bit_reversal                                            : string  := "dis_bit_reversal";
			hssi_8g_rx_pcs_bonding_dft_en                                          : string  := "dft_dis";
			hssi_8g_rx_pcs_bonding_dft_val                                         : string  := "dft_0";
			hssi_8g_rx_pcs_bypass_pipeline_reg                                     : string  := "dis_bypass_pipeline";
			hssi_8g_rx_pcs_byte_deserializer                                       : string  := "dis_bds";
			hssi_8g_rx_pcs_cdr_ctrl_rxvalid_mask                                   : string  := "dis_rxvalid_mask";
			hssi_8g_rx_pcs_clkcmp_pattern_n                                        : integer := 0;
			hssi_8g_rx_pcs_clkcmp_pattern_p                                        : integer := 0;
			hssi_8g_rx_pcs_clock_gate_bds_dec_asn                                  : string  := "dis_bds_dec_asn_clk_gating";
			hssi_8g_rx_pcs_clock_gate_cdr_eidle                                    : string  := "dis_cdr_eidle_clk_gating";
			hssi_8g_rx_pcs_clock_gate_dw_pc_wrclk                                  : string  := "dis_dw_pc_wrclk_gating";
			hssi_8g_rx_pcs_clock_gate_dw_rm_rd                                     : string  := "dis_dw_rm_rdclk_gating";
			hssi_8g_rx_pcs_clock_gate_dw_rm_wr                                     : string  := "dis_dw_rm_wrclk_gating";
			hssi_8g_rx_pcs_clock_gate_dw_wa                                        : string  := "dis_dw_wa_clk_gating";
			hssi_8g_rx_pcs_clock_gate_pc_rdclk                                     : string  := "dis_pc_rdclk_gating";
			hssi_8g_rx_pcs_clock_gate_sw_pc_wrclk                                  : string  := "dis_sw_pc_wrclk_gating";
			hssi_8g_rx_pcs_clock_gate_sw_rm_rd                                     : string  := "dis_sw_rm_rdclk_gating";
			hssi_8g_rx_pcs_clock_gate_sw_rm_wr                                     : string  := "dis_sw_rm_wrclk_gating";
			hssi_8g_rx_pcs_clock_gate_sw_wa                                        : string  := "dis_sw_wa_clk_gating";
			hssi_8g_rx_pcs_clock_observation_in_pld_core                           : string  := "internal_sw_wa_clk";
			hssi_8g_rx_pcs_eidle_entry_eios                                        : string  := "dis_eidle_eios";
			hssi_8g_rx_pcs_eidle_entry_iei                                         : string  := "dis_eidle_iei";
			hssi_8g_rx_pcs_eidle_entry_sd                                          : string  := "dis_eidle_sd";
			hssi_8g_rx_pcs_eightb_tenb_decoder                                     : string  := "dis_8b10b";
			hssi_8g_rx_pcs_err_flags_sel                                           : string  := "err_flags_wa";
			hssi_8g_rx_pcs_fixed_pat_det                                           : string  := "dis_fixed_patdet";
			hssi_8g_rx_pcs_fixed_pat_num                                           : integer := 15;
			hssi_8g_rx_pcs_force_signal_detect                                     : string  := "en_force_signal_detect";
			hssi_8g_rx_pcs_gen3_clk_en                                             : string  := "disable_clk";
			hssi_8g_rx_pcs_gen3_rx_clk_sel                                         : string  := "rcvd_clk";
			hssi_8g_rx_pcs_gen3_tx_clk_sel                                         : string  := "tx_pma_clk";
			hssi_8g_rx_pcs_hip_mode                                                : string  := "dis_hip";
			hssi_8g_rx_pcs_ibm_invalid_code                                        : string  := "dis_ibm_invalid_code";
			hssi_8g_rx_pcs_invalid_code_flag_only                                  : string  := "dis_invalid_code_only";
			hssi_8g_rx_pcs_pad_or_edb_error_replace                                : string  := "replace_edb";
			hssi_8g_rx_pcs_pcs_bypass                                              : string  := "dis_pcs_bypass";
			hssi_8g_rx_pcs_phase_comp_rdptr                                        : string  := "enable_rdptr";
			hssi_8g_rx_pcs_phase_compensation_fifo                                 : string  := "low_latency";
			hssi_8g_rx_pcs_pipe_if_enable                                          : string  := "dis_pipe_rx";
			hssi_8g_rx_pcs_pma_dw                                                  : string  := "eight_bit";
			hssi_8g_rx_pcs_polinv_8b10b_dec                                        : string  := "dis_polinv_8b10b_dec";
			hssi_8g_rx_pcs_prot_mode                                               : string  := "gige";
			hssi_8g_rx_pcs_rate_match                                              : string  := "dis_rm";
			hssi_8g_rx_pcs_rate_match_del_thres                                    : string  := "dis_rm_del_thres";
			hssi_8g_rx_pcs_rate_match_empty_thres                                  : string  := "dis_rm_empty_thres";
			hssi_8g_rx_pcs_rate_match_full_thres                                   : string  := "dis_rm_full_thres";
			hssi_8g_rx_pcs_rate_match_ins_thres                                    : string  := "dis_rm_ins_thres";
			hssi_8g_rx_pcs_rate_match_start_thres                                  : string  := "dis_rm_start_thres";
			hssi_8g_rx_pcs_rx_clk_free_running                                     : string  := "en_rx_clk_free_run";
			hssi_8g_rx_pcs_rx_clk2                                                 : string  := "rcvd_clk_clk2";
			hssi_8g_rx_pcs_rx_pcs_urst                                             : string  := "en_rx_pcs_urst";
			hssi_8g_rx_pcs_rx_rcvd_clk                                             : string  := "rcvd_clk_rcvd_clk";
			hssi_8g_rx_pcs_rx_rd_clk                                               : string  := "pld_rx_clk";
			hssi_8g_rx_pcs_rx_refclk                                               : string  := "dis_refclk_sel";
			hssi_8g_rx_pcs_rx_wr_clk                                               : string  := "rx_clk2_div_1_2_4";
			hssi_8g_rx_pcs_sup_mode                                                : string  := "user_mode";
			hssi_8g_rx_pcs_symbol_swap                                             : string  := "dis_symbol_swap";
			hssi_8g_rx_pcs_sync_sm_idle_eios                                       : string  := "dis_syncsm_idle";
			hssi_8g_rx_pcs_test_bus_sel                                            : string  := "tx_testbus";
			hssi_8g_rx_pcs_tx_rx_parallel_loopback                                 : string  := "dis_plpbk";
			hssi_8g_rx_pcs_wa_boundary_lock_ctrl                                   : string  := "bit_slip";
			hssi_8g_rx_pcs_wa_clk_slip_spacing                                     : integer := 16;
			hssi_8g_rx_pcs_wa_det_latency_sync_status_beh                          : string  := "dont_care_assert_sync";
			hssi_8g_rx_pcs_wa_disp_err_flag                                        : string  := "dis_disp_err_flag";
			hssi_8g_rx_pcs_wa_kchar                                                : string  := "dis_kchar";
			hssi_8g_rx_pcs_wa_pd                                                   : string  := "wa_pd_10";
			hssi_8g_rx_pcs_wa_pd_data                                              : string  := "0";
			hssi_8g_rx_pcs_wa_pd_polarity                                          : string  := "dis_pd_both_pol";
			hssi_8g_rx_pcs_wa_pld_controlled                                       : string  := "dis_pld_ctrl";
			hssi_8g_rx_pcs_wa_renumber_data                                        : integer := 0;
			hssi_8g_rx_pcs_wa_rgnumber_data                                        : integer := 0;
			hssi_8g_rx_pcs_wa_rknumber_data                                        : integer := 0;
			hssi_8g_rx_pcs_wa_rosnumber_data                                       : integer := 0;
			hssi_8g_rx_pcs_wa_rvnumber_data                                        : integer := 0;
			hssi_8g_rx_pcs_wa_sync_sm_ctrl                                         : string  := "gige_sync_sm";
			hssi_8g_rx_pcs_wait_cnt                                                : integer := 0;
			hssi_8g_tx_pcs_bit_reversal                                            : string  := "dis_bit_reversal";
			hssi_8g_tx_pcs_bonding_dft_en                                          : string  := "dft_dis";
			hssi_8g_tx_pcs_bonding_dft_val                                         : string  := "dft_0";
			hssi_8g_tx_pcs_bypass_pipeline_reg                                     : string  := "dis_bypass_pipeline";
			hssi_8g_tx_pcs_byte_serializer                                         : string  := "dis_bs";
			hssi_8g_tx_pcs_clock_gate_bs_enc                                       : string  := "dis_bs_enc_clk_gating";
			hssi_8g_tx_pcs_clock_gate_dw_fifowr                                    : string  := "dis_dw_fifowr_clk_gating";
			hssi_8g_tx_pcs_clock_gate_fiford                                       : string  := "dis_fiford_clk_gating";
			hssi_8g_tx_pcs_clock_gate_sw_fifowr                                    : string  := "dis_sw_fifowr_clk_gating";
			hssi_8g_tx_pcs_clock_observation_in_pld_core                           : string  := "internal_refclk_b";
			hssi_8g_tx_pcs_data_selection_8b10b_encoder_input                      : string  := "normal_data_path";
			hssi_8g_tx_pcs_dynamic_clk_switch                                      : string  := "dis_dyn_clk_switch";
			hssi_8g_tx_pcs_eightb_tenb_disp_ctrl                                   : string  := "dis_disp_ctrl";
			hssi_8g_tx_pcs_eightb_tenb_encoder                                     : string  := "dis_8b10b";
			hssi_8g_tx_pcs_force_echar                                             : string  := "dis_force_echar";
			hssi_8g_tx_pcs_force_kchar                                             : string  := "dis_force_kchar";
			hssi_8g_tx_pcs_gen3_tx_clk_sel                                         : string  := "tx_pma_clk";
			hssi_8g_tx_pcs_gen3_tx_pipe_clk_sel                                    : string  := "func_clk";
			hssi_8g_tx_pcs_hip_mode                                                : string  := "dis_hip";
			hssi_8g_tx_pcs_pcs_bypass                                              : string  := "dis_pcs_bypass";
			hssi_8g_tx_pcs_phase_comp_rdptr                                        : string  := "enable_rdptr";
			hssi_8g_tx_pcs_phase_compensation_fifo                                 : string  := "low_latency";
			hssi_8g_tx_pcs_phfifo_write_clk_sel                                    : string  := "pld_tx_clk";
			hssi_8g_tx_pcs_pma_dw                                                  : string  := "eight_bit";
			hssi_8g_tx_pcs_prot_mode                                               : string  := "basic";
			hssi_8g_tx_pcs_refclk_b_clk_sel                                        : string  := "tx_pma_clock";
			hssi_8g_tx_pcs_revloop_back_rm                                         : string  := "dis_rev_loopback_rx_rm";
			hssi_8g_tx_pcs_sup_mode                                                : string  := "user_mode";
			hssi_8g_tx_pcs_symbol_swap                                             : string  := "dis_symbol_swap";
			hssi_8g_tx_pcs_tx_bitslip                                              : string  := "dis_tx_bitslip";
			hssi_8g_tx_pcs_tx_compliance_controlled_disparity                      : string  := "dis_txcompliance";
			hssi_8g_tx_pcs_tx_fast_pld_reg                                         : string  := "dis_tx_fast_pld_reg";
			hssi_8g_tx_pcs_txclk_freerun                                           : string  := "dis_freerun_tx";
			hssi_8g_tx_pcs_txpcs_urst                                              : string  := "en_txpcs_urst";
			hssi_tx_pld_pcs_interface_hd_chnl_hip_en                               : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_chnl_hrdrstctl_en                         : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_chnl_prot_mode_tx                         : string  := "disabled_prot_mode_tx";
			hssi_tx_pld_pcs_interface_hd_chnl_ctrl_plane_bonding_tx                : string  := "individual_tx";
			hssi_tx_pld_pcs_interface_hd_chnl_pma_dw_tx                            : string  := "pma_8b_tx";
			hssi_tx_pld_pcs_interface_hd_chnl_pld_fifo_mode_tx                     : string  := "fifo_tx";
			hssi_tx_pld_pcs_interface_hd_chnl_shared_fifo_width_tx                 : string  := "single_tx";
			hssi_tx_pld_pcs_interface_hd_chnl_low_latency_en_tx                    : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_chnl_func_mode                            : string  := "enable";
			hssi_tx_pld_pcs_interface_hd_chnl_channel_operation_mode               : string  := "tx_rx_pair_enabled";
			hssi_tx_pld_pcs_interface_hd_chnl_lpbk_en                              : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_chnl_frequency_rules_en                   : string  := "enable";
			hssi_tx_pld_pcs_interface_hd_chnl_pma_tx_clk_hz                        : integer := 0;
			hssi_tx_pld_pcs_interface_hd_chnl_pld_tx_clk_hz                        : integer := 0;
			hssi_tx_pld_pcs_interface_hd_chnl_pld_uhsif_tx_clk_hz                  : integer := 0;
			hssi_tx_pld_pcs_interface_hd_fifo_channel_operation_mode               : string  := "tx_rx_pair_enabled";
			hssi_tx_pld_pcs_interface_hd_fifo_prot_mode_tx                         : string  := "teng_mode_tx";
			hssi_tx_pld_pcs_interface_hd_fifo_shared_fifo_width_tx                 : string  := "single_tx";
			hssi_tx_pld_pcs_interface_hd_10g_channel_operation_mode                : string  := "tx_rx_pair_enabled";
			hssi_tx_pld_pcs_interface_hd_10g_lpbk_en                               : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_10g_advanced_user_mode_tx                 : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_10g_pma_dw_tx                             : string  := "pma_64b_tx";
			hssi_tx_pld_pcs_interface_hd_10g_fifo_mode_tx                          : string  := "fifo_tx";
			hssi_tx_pld_pcs_interface_hd_10g_prot_mode_tx                          : string  := "disabled_prot_mode_tx";
			hssi_tx_pld_pcs_interface_hd_10g_low_latency_en_tx                     : string  := "enable";
			hssi_tx_pld_pcs_interface_hd_10g_shared_fifo_width_tx                  : string  := "single_tx";
			hssi_tx_pld_pcs_interface_hd_8g_channel_operation_mode                 : string  := "tx_rx_pair_enabled";
			hssi_tx_pld_pcs_interface_hd_8g_lpbk_en                                : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_8g_prot_mode_tx                           : string  := "disabled_prot_mode_tx";
			hssi_tx_pld_pcs_interface_hd_8g_hip_mode                               : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_8g_pma_dw_tx                              : string  := "pma_8b_tx";
			hssi_tx_pld_pcs_interface_hd_8g_fifo_mode_tx                           : string  := "fifo_tx";
			hssi_tx_pld_pcs_interface_hd_g3_prot_mode                              : string  := "disabled_prot_mode";
			hssi_tx_pld_pcs_interface_hd_krfec_channel_operation_mode              : string  := "tx_rx_pair_enabled";
			hssi_tx_pld_pcs_interface_hd_krfec_lpbk_en                             : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_krfec_prot_mode_tx                        : string  := "disabled_prot_mode_tx";
			hssi_tx_pld_pcs_interface_hd_krfec_low_latency_en_tx                   : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_pmaif_lpbk_en                             : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_pmaif_channel_operation_mode              : string  := "tx_rx_pair_enabled";
			hssi_tx_pld_pcs_interface_hd_pmaif_sim_mode                            : string  := "disable";
			hssi_tx_pld_pcs_interface_hd_pmaif_prot_mode_tx                        : string  := "disabled_prot_mode_tx";
			hssi_tx_pld_pcs_interface_hd_pmaif_pma_dw_tx                           : string  := "pma_8b_tx";
			hssi_tx_pld_pcs_interface_hd_pldif_prot_mode_tx                        : string  := "disabled_prot_mode_tx";
			hssi_tx_pld_pcs_interface_hd_pldif_hrdrstctl_en                        : string  := "disable";
			hssi_tx_pld_pcs_interface_pcs_tx_clk_source                            : string  := "teng";
			hssi_tx_pld_pcs_interface_pcs_tx_data_source                           : string  := "hip_disable";
			hssi_tx_pld_pcs_interface_pcs_tx_delay1_clk_en                         : string  := "delay1_clk_disable";
			hssi_tx_pld_pcs_interface_pcs_tx_delay1_clk_sel                        : string  := "pld_tx_clk";
			hssi_tx_pld_pcs_interface_pcs_tx_delay1_ctrl                           : string  := "delay1_path0";
			hssi_tx_pld_pcs_interface_pcs_tx_delay1_data_sel                       : string  := "one_ff_delay";
			hssi_tx_pld_pcs_interface_pcs_tx_delay2_clk_en                         : string  := "delay2_clk_disable";
			hssi_tx_pld_pcs_interface_pcs_tx_delay2_ctrl                           : string  := "delay2_path0";
			hssi_tx_pld_pcs_interface_pcs_tx_output_sel                            : string  := "teng_output";
			hssi_tx_pld_pcs_interface_pcs_tx_clk_out_sel                           : string  := "teng_clk_out";
			hssi_rx_pld_pcs_interface_hd_chnl_hip_en                               : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_chnl_transparent_pcs_rx                   : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_chnl_hrdrstctl_en                         : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_chnl_prot_mode_rx                         : string  := "disabled_prot_mode_rx";
			hssi_rx_pld_pcs_interface_hd_chnl_ctrl_plane_bonding_rx                : string  := "individual_rx";
			hssi_rx_pld_pcs_interface_hd_chnl_pma_dw_rx                            : string  := "pma_8b_rx";
			hssi_rx_pld_pcs_interface_hd_chnl_pld_fifo_mode_rx                     : string  := "fifo_rx";
			hssi_rx_pld_pcs_interface_hd_chnl_shared_fifo_width_rx                 : string  := "single_rx";
			hssi_rx_pld_pcs_interface_hd_chnl_low_latency_en_rx                    : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_chnl_func_mode                            : string  := "enable";
			hssi_rx_pld_pcs_interface_hd_chnl_channel_operation_mode               : string  := "tx_rx_pair_enabled";
			hssi_rx_pld_pcs_interface_hd_chnl_lpbk_en                              : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_10g_advanced_user_mode_rx                 : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_chnl_frequency_rules_en                   : string  := "enable";
			hssi_rx_pld_pcs_interface_hd_chnl_pma_rx_clk_hz                        : integer := 0;
			hssi_rx_pld_pcs_interface_hd_chnl_pld_rx_clk_hz                        : integer := 0;
			hssi_rx_pld_pcs_interface_hd_chnl_fref_clk_hz                          : integer := 0;
			hssi_rx_pld_pcs_interface_hd_chnl_clklow_clk_hz                        : integer := 0;
			hssi_rx_pld_pcs_interface_hd_fifo_channel_operation_mode               : string  := "tx_rx_pair_enabled";
			hssi_rx_pld_pcs_interface_hd_fifo_prot_mode_rx                         : string  := "teng_mode_rx";
			hssi_rx_pld_pcs_interface_hd_fifo_shared_fifo_width_rx                 : string  := "single_rx";
			hssi_rx_pld_pcs_interface_hd_10g_channel_operation_mode                : string  := "tx_rx_pair_enabled";
			hssi_rx_pld_pcs_interface_hd_10g_lpbk_en                               : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_10g_pma_dw_rx                             : string  := "pma_64b_rx";
			hssi_rx_pld_pcs_interface_hd_10g_fifo_mode_rx                          : string  := "fifo_rx";
			hssi_rx_pld_pcs_interface_hd_10g_prot_mode_rx                          : string  := "disabled_prot_mode_rx";
			hssi_rx_pld_pcs_interface_hd_10g_low_latency_en_rx                     : string  := "enable";
			hssi_rx_pld_pcs_interface_hd_10g_shared_fifo_width_rx                  : string  := "single_rx";
			hssi_rx_pld_pcs_interface_hd_10g_test_bus_mode                         : string  := "tx";
			hssi_rx_pld_pcs_interface_hd_8g_channel_operation_mode                 : string  := "tx_rx_pair_enabled";
			hssi_rx_pld_pcs_interface_hd_8g_lpbk_en                                : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_8g_prot_mode_rx                           : string  := "disabled_prot_mode_rx";
			hssi_rx_pld_pcs_interface_hd_8g_hip_mode                               : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_8g_pma_dw_rx                              : string  := "pma_8b_rx";
			hssi_rx_pld_pcs_interface_hd_8g_fifo_mode_rx                           : string  := "fifo_rx";
			hssi_rx_pld_pcs_interface_hd_g3_prot_mode                              : string  := "disabled_prot_mode";
			hssi_rx_pld_pcs_interface_hd_krfec_channel_operation_mode              : string  := "tx_rx_pair_enabled";
			hssi_rx_pld_pcs_interface_hd_krfec_lpbk_en                             : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_krfec_prot_mode_rx                        : string  := "disabled_prot_mode_rx";
			hssi_rx_pld_pcs_interface_hd_krfec_low_latency_en_rx                   : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_krfec_test_bus_mode                       : string  := "tx";
			hssi_rx_pld_pcs_interface_hd_pmaif_lpbk_en                             : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_pmaif_channel_operation_mode              : string  := "tx_rx_pair_enabled";
			hssi_rx_pld_pcs_interface_hd_pmaif_sim_mode                            : string  := "disable";
			hssi_rx_pld_pcs_interface_hd_pmaif_prot_mode_rx                        : string  := "disabled_prot_mode_rx";
			hssi_rx_pld_pcs_interface_hd_pmaif_pma_dw_rx                           : string  := "pma_8b_rx";
			hssi_rx_pld_pcs_interface_hd_pldif_prot_mode_rx                        : string  := "disabled_prot_mode_rx";
			hssi_rx_pld_pcs_interface_hd_pldif_hrdrstctl_en                        : string  := "disable";
			hssi_rx_pld_pcs_interface_pcs_rx_block_sel                             : string  := "pcs_direct";
			hssi_rx_pld_pcs_interface_pcs_rx_clk_sel                               : string  := "pld_rx_clk";
			hssi_rx_pld_pcs_interface_pcs_rx_hip_clk_en                            : string  := "hip_rx_enable";
			hssi_rx_pld_pcs_interface_pcs_rx_output_sel                            : string  := "teng_output";
			hssi_rx_pld_pcs_interface_pcs_rx_clk_out_sel                           : string  := "teng_clk_out";
			hssi_common_pld_pcs_interface_dft_clk_out_en                           : string  := "dft_clk_out_disable";
			hssi_common_pld_pcs_interface_dft_clk_out_sel                          : string  := "teng_rx_dft_clk";
			hssi_common_pld_pcs_interface_hrdrstctrl_en                            : string  := "hrst_dis";
			hssi_common_pld_pcs_interface_pcs_testbus_block_sel                    : string  := "pma_if";
			hssi_rx_pcs_pma_interface_block_sel                                    : string  := "eight_g_pcs";
			hssi_rx_pcs_pma_interface_channel_operation_mode                       : string  := "tx_rx_pair_enabled";
			hssi_rx_pcs_pma_interface_clkslip_sel                                  : string  := "pld";
			hssi_rx_pcs_pma_interface_lpbk_en                                      : string  := "disable";
			hssi_rx_pcs_pma_interface_master_clk_sel                               : string  := "master_rx_pma_clk";
			hssi_rx_pcs_pma_interface_pldif_datawidth_mode                         : string  := "pldif_data_10bit";
			hssi_rx_pcs_pma_interface_pma_dw_rx                                    : string  := "pma_8b_rx";
			hssi_rx_pcs_pma_interface_pma_if_dft_en                                : string  := "dft_dis";
			hssi_rx_pcs_pma_interface_pma_if_dft_val                               : string  := "dft_0";
			hssi_rx_pcs_pma_interface_prbs_clken                                   : string  := "prbs_clk_dis";
			hssi_rx_pcs_pma_interface_prbs_ver                                     : string  := "prbs_off";
			hssi_rx_pcs_pma_interface_prbs9_dwidth                                 : string  := "prbs9_64b";
			hssi_rx_pcs_pma_interface_prot_mode_rx                                 : string  := "disabled_prot_mode_rx";
			hssi_rx_pcs_pma_interface_rx_dyn_polarity_inversion                    : string  := "rx_dyn_polinv_dis";
			hssi_rx_pcs_pma_interface_rx_lpbk_en                                   : string  := "lpbk_dis";
			hssi_rx_pcs_pma_interface_rx_prbs_force_signal_ok                      : string  := "unforce_sig_ok";
			hssi_rx_pcs_pma_interface_rx_prbs_mask                                 : string  := "prbsmask128";
			hssi_rx_pcs_pma_interface_rx_prbs_mode                                 : string  := "teng_mode";
			hssi_rx_pcs_pma_interface_rx_signalok_signaldet_sel                    : string  := "sel_sig_det";
			hssi_rx_pcs_pma_interface_rx_static_polarity_inversion                 : string  := "rx_stat_polinv_dis";
			hssi_rx_pcs_pma_interface_rx_uhsif_lpbk_en                             : string  := "uhsif_lpbk_dis";
			hssi_rx_pcs_pma_interface_sup_mode                                     : string  := "user_mode";
			hssi_tx_pcs_pma_interface_bypass_pma_txelecidle                        : string  := "false";
			hssi_tx_pcs_pma_interface_channel_operation_mode                       : string  := "tx_rx_pair_enabled";
			hssi_tx_pcs_pma_interface_lpbk_en                                      : string  := "disable";
			hssi_tx_pcs_pma_interface_master_clk_sel                               : string  := "master_tx_pma_clk";
			hssi_tx_pcs_pma_interface_pcie_sub_prot_mode_tx                        : string  := "other_prot_mode";
			hssi_tx_pcs_pma_interface_pldif_datawidth_mode                         : string  := "pldif_data_10bit";
			hssi_tx_pcs_pma_interface_pma_dw_tx                                    : string  := "pma_8b_tx";
			hssi_tx_pcs_pma_interface_pma_if_dft_en                                : string  := "dft_dis";
			hssi_tx_pcs_pma_interface_pmagate_en                                   : string  := "pmagate_dis";
			hssi_tx_pcs_pma_interface_prbs_clken                                   : string  := "prbs_clk_dis";
			hssi_tx_pcs_pma_interface_prbs_gen_pat                                 : string  := "prbs_gen_dis";
			hssi_tx_pcs_pma_interface_prbs9_dwidth                                 : string  := "prbs9_64b";
			hssi_tx_pcs_pma_interface_prot_mode_tx                                 : string  := "disabled_prot_mode_tx";
			hssi_tx_pcs_pma_interface_sq_wave_num                                  : string  := "sq_wave_4";
			hssi_tx_pcs_pma_interface_sqwgen_clken                                 : string  := "sqwgen_clk_dis";
			hssi_tx_pcs_pma_interface_sup_mode                                     : string  := "user_mode";
			hssi_tx_pcs_pma_interface_tx_dyn_polarity_inversion                    : string  := "tx_dyn_polinv_dis";
			hssi_tx_pcs_pma_interface_tx_pma_data_sel                              : string  := "pld_dir";
			hssi_tx_pcs_pma_interface_tx_static_polarity_inversion                 : string  := "tx_stat_polinv_dis";
			hssi_tx_pcs_pma_interface_uhsif_cnt_step_filt_before_lock              : string  := "uhsif_filt_stepsz_b4lock_4";
			hssi_tx_pcs_pma_interface_uhsif_cnt_thresh_filt_after_lock_value       : integer := 11;
			hssi_tx_pcs_pma_interface_uhsif_cnt_thresh_filt_before_lock            : string  := "uhsif_filt_cntthr_b4lock_16";
			hssi_tx_pcs_pma_interface_uhsif_dcn_test_update_period                 : string  := "uhsif_dcn_test_period_4";
			hssi_tx_pcs_pma_interface_uhsif_dcn_testmode_enable                    : string  := "uhsif_dcn_test_mode_disable";
			hssi_tx_pcs_pma_interface_uhsif_dead_zone_count_thresh                 : string  := "uhsif_dzt_cnt_thr_4";
			hssi_tx_pcs_pma_interface_uhsif_dead_zone_detection_enable             : string  := "uhsif_dzt_enable";
			hssi_tx_pcs_pma_interface_uhsif_dead_zone_obser_window                 : string  := "uhsif_dzt_obr_win_32";
			hssi_tx_pcs_pma_interface_uhsif_dead_zone_skip_size                    : string  := "uhsif_dzt_skipsz_8";
			hssi_tx_pcs_pma_interface_uhsif_delay_cell_index_sel                   : string  := "uhsif_index_internal";
			hssi_tx_pcs_pma_interface_uhsif_delay_cell_margin                      : string  := "uhsif_dcn_margin_4";
			hssi_tx_pcs_pma_interface_uhsif_delay_cell_static_index_value          : integer := 128;
			hssi_tx_pcs_pma_interface_uhsif_dft_dead_zone_control                  : string  := "uhsif_dft_dz_det_val_0";
			hssi_tx_pcs_pma_interface_uhsif_dft_up_filt_control                    : string  := "uhsif_dft_up_val_0";
			hssi_tx_pcs_pma_interface_uhsif_enable                                 : string  := "uhsif_disable";
			hssi_tx_pcs_pma_interface_uhsif_lock_det_segsz_after_lock              : string  := "uhsif_lkd_segsz_aflock_2048";
			hssi_tx_pcs_pma_interface_uhsif_lock_det_segsz_before_lock             : string  := "uhsif_lkd_segsz_b4lock_32";
			hssi_tx_pcs_pma_interface_uhsif_lock_det_thresh_cnt_after_lock_value   : integer := 8;
			hssi_tx_pcs_pma_interface_uhsif_lock_det_thresh_cnt_before_lock_value  : integer := 8;
			hssi_tx_pcs_pma_interface_uhsif_lock_det_thresh_diff_after_lock_value  : integer := 3;
			hssi_tx_pcs_pma_interface_uhsif_lock_det_thresh_diff_before_lock_value : integer := 3;
			hssi_common_pcs_pma_interface_asn_clk_enable                           : string  := "false";
			hssi_common_pcs_pma_interface_asn_enable                               : string  := "dis_asn";
			hssi_common_pcs_pma_interface_block_sel                                : string  := "eight_g_pcs";
			hssi_common_pcs_pma_interface_bypass_early_eios                        : string  := "false";
			hssi_common_pcs_pma_interface_bypass_pcie_switch                       : string  := "false";
			hssi_common_pcs_pma_interface_bypass_pma_ltr                           : string  := "false";
			hssi_common_pcs_pma_interface_bypass_pma_sw_done                       : string  := "false";
			hssi_common_pcs_pma_interface_bypass_ppm_lock                          : string  := "false";
			hssi_common_pcs_pma_interface_bypass_send_syncp_fbkp                   : string  := "false";
			hssi_common_pcs_pma_interface_bypass_txdetectrx                        : string  := "false";
			hssi_common_pcs_pma_interface_cdr_control                              : string  := "en_cdr_ctrl";
			hssi_common_pcs_pma_interface_cid_enable                               : string  := "en_cid_mode";
			hssi_common_pcs_pma_interface_data_mask_count                          : integer := 2500;
			hssi_common_pcs_pma_interface_data_mask_count_multi                    : integer := 1;
			hssi_common_pcs_pma_interface_dft_observation_clock_selection          : string  := "dft_clk_obsrv_tx0";
			hssi_common_pcs_pma_interface_early_eios_counter                       : integer := 50;
			hssi_common_pcs_pma_interface_force_freqdet                            : string  := "force_freqdet_dis";
			hssi_common_pcs_pma_interface_free_run_clk_enable                      : string  := "true";
			hssi_common_pcs_pma_interface_ignore_sigdet_g23                        : string  := "false";
			hssi_common_pcs_pma_interface_pc_en_counter                            : integer := 55;
			hssi_common_pcs_pma_interface_pc_rst_counter                           : integer := 23;
			hssi_common_pcs_pma_interface_pcie_hip_mode                            : string  := "hip_disable";
			hssi_common_pcs_pma_interface_ph_fifo_reg_mode                         : string  := "phfifo_reg_mode_dis";
			hssi_common_pcs_pma_interface_phfifo_flush_wait                        : integer := 36;
			hssi_common_pcs_pma_interface_pipe_if_g3pcs                            : string  := "pipe_if_8gpcs";
			hssi_common_pcs_pma_interface_pma_done_counter                         : integer := 175000;
			hssi_common_pcs_pma_interface_pma_if_dft_en                            : string  := "dft_dis";
			hssi_common_pcs_pma_interface_pma_if_dft_val                           : string  := "dft_0";
			hssi_common_pcs_pma_interface_ppm_cnt_rst                              : string  := "ppm_cnt_rst_dis";
			hssi_common_pcs_pma_interface_ppm_deassert_early                       : string  := "deassert_early_dis";
			hssi_common_pcs_pma_interface_ppm_gen1_2_cnt                           : string  := "cnt_32k";
			hssi_common_pcs_pma_interface_ppm_post_eidle_delay                     : string  := "cnt_200_cycles";
			hssi_common_pcs_pma_interface_ppmsel                                   : string  := "ppmsel_300";
			hssi_common_pcs_pma_interface_prot_mode                                : string  := "disable_prot_mode";
			hssi_common_pcs_pma_interface_rxvalid_mask                             : string  := "rxvalid_mask_en";
			hssi_common_pcs_pma_interface_sigdet_wait_counter                      : integer := 2500;
			hssi_common_pcs_pma_interface_sigdet_wait_counter_multi                : integer := 1;
			hssi_common_pcs_pma_interface_sim_mode                                 : string  := "disable";
			hssi_common_pcs_pma_interface_spd_chg_rst_wait_cnt_en                  : string  := "true";
			hssi_common_pcs_pma_interface_sup_mode                                 : string  := "user_mode";
			hssi_common_pcs_pma_interface_testout_sel                              : string  := "asn_test";
			hssi_common_pcs_pma_interface_wait_clk_on_off_timer                    : integer := 4;
			hssi_common_pcs_pma_interface_wait_pipe_synchronizing                  : integer := 23;
			hssi_common_pcs_pma_interface_wait_send_syncp_fbkp                     : integer := 250;
			hssi_common_pcs_pma_interface_ppm_det_buckets                          : string  := "ppm_100_bucket";
			hssi_fifo_rx_pcs_double_read_mode                                      : string  := "double_read_dis";
			hssi_fifo_rx_pcs_prot_mode                                             : string  := "teng_mode";
			hssi_fifo_tx_pcs_double_write_mode                                     : string  := "double_write_dis";
			hssi_fifo_tx_pcs_prot_mode                                             : string  := "teng_mode";
			hssi_pipe_gen3_bypass_rx_detection_enable                              : string  := "false";
			hssi_pipe_gen3_bypass_rx_preset                                        : integer := 0;
			hssi_pipe_gen3_bypass_rx_preset_enable                                 : string  := "false";
			hssi_pipe_gen3_bypass_tx_coefficent                                    : integer := 0;
			hssi_pipe_gen3_bypass_tx_coefficent_enable                             : string  := "false";
			hssi_pipe_gen3_elecidle_delay_g3                                       : integer := 6;
			hssi_pipe_gen3_ind_error_reporting                                     : string  := "dis_ind_error_reporting";
			hssi_pipe_gen3_mode                                                    : string  := "pipe_g1";
			hssi_pipe_gen3_phy_status_delay_g12                                    : integer := 5;
			hssi_pipe_gen3_phy_status_delay_g3                                     : integer := 5;
			hssi_pipe_gen3_phystatus_rst_toggle_g12                                : string  := "dis_phystatus_rst_toggle";
			hssi_pipe_gen3_phystatus_rst_toggle_g3                                 : string  := "dis_phystatus_rst_toggle_g3";
			hssi_pipe_gen3_rate_match_pad_insertion                                : string  := "dis_rm_fifo_pad_ins";
			hssi_pipe_gen3_sup_mode                                                : string  := "user_mode";
			hssi_pipe_gen3_test_out_sel                                            : string  := "disable_test_out";
			hssi_pipe_gen1_2_elec_idle_delay_val                                   : integer := 0;
			hssi_pipe_gen1_2_error_replace_pad                                     : string  := "replace_edb";
			hssi_pipe_gen1_2_hip_mode                                              : string  := "dis_hip";
			hssi_pipe_gen1_2_ind_error_reporting                                   : string  := "dis_ind_error_reporting";
			hssi_pipe_gen1_2_phystatus_delay_val                                   : integer := 0;
			hssi_pipe_gen1_2_phystatus_rst_toggle                                  : string  := "dis_phystatus_rst_toggle";
			hssi_pipe_gen1_2_pipe_byte_de_serializer_en                            : string  := "dont_care_bds";
			hssi_pipe_gen1_2_prot_mode                                             : string  := "pipe_g1";
			hssi_pipe_gen1_2_rx_pipe_enable                                        : string  := "dis_pipe_rx";
			hssi_pipe_gen1_2_rxdetect_bypass                                       : string  := "dis_rxdetect_bypass";
			hssi_pipe_gen1_2_sup_mode                                              : string  := "user_mode";
			hssi_pipe_gen1_2_tx_pipe_enable                                        : string  := "dis_pipe_tx";
			hssi_pipe_gen1_2_txswing                                               : string  := "dis_txswing";
			pma_adapt_adp_1s_ctle_bypass                                           : string  := "radp_1s_ctle_bypass_0";
			pma_adapt_adp_4s_ctle_bypass                                           : string  := "radp_4s_ctle_bypass_0";
			pma_adapt_adp_ctle_en                                                  : string  := "radp_ctle_disable";
			pma_adapt_adp_dfe_fltap_bypass                                         : string  := "radp_dfe_fltap_bypass_0";
			pma_adapt_adp_dfe_fltap_en                                             : string  := "radp_dfe_fltap_disable";
			pma_adapt_adp_dfe_fxtap_bypass                                         : string  := "radp_dfe_fxtap_bypass_0";
			pma_adapt_adp_dfe_fxtap_en                                             : string  := "radp_dfe_fxtap_disable";
			pma_adapt_adp_dfe_fxtap_hold_en                                        : string  := "radp_dfe_fxtap_not_held";
			pma_adapt_adp_dfe_mode                                                 : string  := "radp_dfe_mode_0";
			pma_adapt_adp_vga_bypass                                               : string  := "radp_vga_bypass_0";
			pma_adapt_adp_vga_en                                                   : string  := "radp_vga_disable";
			pma_adapt_adp_vref_bypass                                              : string  := "radp_vref_bypass_0";
			pma_adapt_adp_vref_en                                                  : string  := "radp_vref_disable";
			pma_adapt_datarate                                                     : string  := "0 bps";
			pma_adapt_prot_mode                                                    : string  := "basic_rx";
			pma_adapt_sup_mode                                                     : string  := "user_mode";
			pma_adapt_adp_ctle_adapt_cycle_window                                  : string  := "radp_ctle_adapt_cycle_window_6";
			pma_adapt_odi_dfe_spec_en                                              : string  := "rodi_dfe_spec_en_0";
			pma_adapt_adapt_mode                                                   : string  := "dfe_vga";
			pma_adapt_adp_onetime_dfe                                              : string  := "radp_onetime_dfe_0";
			pma_adapt_adp_mode                                                     : string  := "radp_mode_0";
			pma_cdr_refclk_powerdown_mode                                          : string  := "powerup";
			pma_cdr_refclk_refclk_select                                           : string  := "ref_iqclk0";
			pma_cgb_bitslip_enable                                                 : string  := "enable_bitslip";
			pma_cgb_bonding_reset_enable                                           : string  := "disallow_bonding_reset";
			pma_cgb_datarate                                                       : string  := "0 bps";
			pma_cgb_pcie_gen3_bitwidth                                             : string  := "pciegen3_wide";
			pma_cgb_prot_mode                                                      : string  := "basic_tx";
			pma_cgb_ser_mode                                                       : string  := "eight_bit";
			pma_cgb_sup_mode                                                       : string  := "user_mode";
			pma_cgb_x1_div_m_sel                                                   : string  := "divbypass";
			pma_cgb_input_select_x1                                                : string  := "fpll_bot";
			pma_cgb_input_select_gen3                                              : string  := "unused";
			pma_cgb_input_select_xn                                                : string  := "unused";
			pma_cgb_tx_ucontrol_en                                                 : string  := "disable";
			pma_rx_dfe_datarate                                                    : string  := "0 bps";
			pma_rx_dfe_dft_en                                                      : string  := "dft_disable";
			pma_rx_dfe_pdb                                                         : string  := "dfe_enable";
			pma_rx_dfe_pdb_fixedtap                                                : string  := "fixtap_dfe_powerdown";
			pma_rx_dfe_pdb_floattap                                                : string  := "floattap_dfe_powerdown";
			pma_rx_dfe_pdb_fxtap4t7                                                : string  := "fxtap4t7_powerdown";
			pma_rx_dfe_sup_mode                                                    : string  := "user_mode";
			pma_rx_dfe_prot_mode                                                   : string  := "basic_rx";
			pma_rx_odi_datarate                                                    : string  := "0 bps";
			pma_rx_odi_sup_mode                                                    : string  := "user_mode";
			pma_rx_odi_step_ctrl_sel                                               : string  := "feedback_mode";
			pma_rx_odi_prot_mode                                                   : string  := "basic_rx";
			pma_rx_buf_bypass_eqz_stages_234                                       : string  := "bypass_off";
			pma_rx_buf_datarate                                                    : string  := "0 bps";
			pma_rx_buf_diag_lp_en                                                  : string  := "dlp_off";
			pma_rx_buf_prot_mode                                                   : string  := "basic_rx";
			pma_rx_buf_qpi_enable                                                  : string  := "non_qpi_mode";
			pma_rx_buf_rx_refclk_divider                                           : string  := "bypass_divider";
			pma_rx_buf_sup_mode                                                    : string  := "user_mode";
			pma_rx_buf_loopback_modes                                              : string  := "lpbk_disable";
			pma_rx_buf_refclk_en                                                   : string  := "enable";
			pma_rx_buf_pm_tx_rx_pcie_gen                                           : string  := "non_pcie";
			pma_rx_buf_pm_tx_rx_pcie_gen_bitwidth                                  : string  := "pcie_gen3_32b";
			pma_rx_buf_pm_tx_rx_cvp_mode                                           : string  := "cvp_off";
			pma_rx_buf_xrx_path_uc_cal_enable                                      : string  := "rx_cal_off";
			pma_rx_buf_xrx_path_sup_mode                                           : string  := "user_mode";
			pma_rx_buf_xrx_path_prot_mode                                          : string  := "unused";
			pma_rx_buf_xrx_path_datarate                                           : string  := "0 bps";
			pma_rx_buf_xrx_path_datawidth                                          : integer := 0;
			pma_rx_buf_xrx_path_pma_rx_divclk_hz                                   : string  := "0";
			pma_rx_sd_prot_mode                                                    : string  := "basic_rx";
			pma_rx_sd_sd_output_off                                                : integer := 1;
			pma_rx_sd_sd_output_on                                                 : integer := 1;
			pma_rx_sd_sd_pdb                                                       : string  := "sd_off";
			pma_rx_sd_sup_mode                                                     : string  := "user_mode";
			pma_tx_ser_ser_clk_divtx_user_sel                                      : string  := "divtx_user_33";
			pma_tx_ser_sup_mode                                                    : string  := "user_mode";
			pma_tx_ser_prot_mode                                                   : string  := "basic_tx";
			pma_tx_buf_datarate                                                    : string  := "0 bps";
			pma_tx_buf_prot_mode                                                   : string  := "basic_tx";
			pma_tx_buf_rx_det                                                      : string  := "mode_0";
			pma_tx_buf_rx_det_output_sel                                           : string  := "rx_det_pcie_out";
			pma_tx_buf_rx_det_pdb                                                  : string  := "rx_det_off";
			pma_tx_buf_sup_mode                                                    : string  := "user_mode";
			pma_tx_buf_user_fir_coeff_ctrl_sel                                     : string  := "ram_ctl";
			pma_tx_buf_xtx_path_prot_mode                                          : string  := "basic_tx";
			pma_tx_buf_xtx_path_datarate                                           : string  := "0 bps";
			pma_tx_buf_xtx_path_datawidth                                          : integer := 0;
			pma_tx_buf_xtx_path_clock_divider_ratio                                : integer := 0;
			pma_tx_buf_xtx_path_pma_tx_divclk_hz                                   : string  := "0";
			pma_tx_buf_xtx_path_tx_pll_clk_hz                                      : string  := "0 hz";
			pma_tx_buf_xtx_path_sup_mode                                           : string  := "user_mode";
			cdr_pll_pma_width                                                      : integer := 8;
			cdr_pll_cgb_div                                                        : integer := 1;
			cdr_pll_is_cascaded_pll                                                : string  := "false";
			cdr_pll_datarate                                                       : string  := "0 bps";
			cdr_pll_lpd_counter                                                    : integer := 1;
			cdr_pll_lpfd_counter                                                   : integer := 1;
			cdr_pll_n_counter_scratch                                              : integer := 1;
			cdr_pll_output_clock_frequency                                         : string  := "0 hz";
			cdr_pll_reference_clock_frequency                                      : string  := "0 hz";
			cdr_pll_set_cdr_vco_speed                                              : integer := 1;
			cdr_pll_set_cdr_vco_speed_fix                                          : integer := 0;
			cdr_pll_vco_freq                                                       : string  := "0 hz";
			cdr_pll_atb_select_control                                             : string  := "atb_off";
			cdr_pll_auto_reset_on                                                  : string  := "auto_reset_on";
			cdr_pll_bbpd_data_pattern_filter_select                                : string  := "bbpd_data_pat_off";
			cdr_pll_bw_sel                                                         : string  := "low";
			cdr_pll_cdr_odi_select                                                 : string  := "sel_cdr";
			cdr_pll_cdr_phaselock_mode                                             : string  := "no_ignore_lock";
			cdr_pll_cdr_powerdown_mode                                             : string  := "power_up";
			cdr_pll_chgpmp_current_pd                                              : string  := "cp_current_pd_setting0";
			cdr_pll_chgpmp_current_pfd                                             : string  := "cp_current_pfd_setting0";
			cdr_pll_chgpmp_replicate                                               : string  := "false";
			cdr_pll_chgpmp_testmode                                                : string  := "cp_test_disable";
			cdr_pll_clklow_mux_select                                              : string  := "clklow_mux_cdr_fbclk";
			cdr_pll_diag_loopback_enable                                           : string  := "false";
			cdr_pll_disable_up_dn                                                  : string  := "true";
			cdr_pll_fref_clklow_div                                                : integer := 1;
			cdr_pll_fref_mux_select                                                : string  := "fref_mux_cdr_refclk";
			cdr_pll_gpon_lck2ref_control                                           : string  := "gpon_lck2ref_off";
			cdr_pll_initial_settings                                               : string  := "true";
			cdr_pll_lck2ref_delay_control                                          : string  := "lck2ref_delay_off";
			cdr_pll_lf_resistor_pd                                                 : string  := "lf_pd_setting0";
			cdr_pll_lf_resistor_pfd                                                : string  := "lf_pfd_setting0";
			cdr_pll_lf_ripple_cap                                                  : string  := "lf_no_ripple";
			cdr_pll_loop_filter_bias_select                                        : string  := "lpflt_bias_off";
			cdr_pll_loopback_mode                                                  : string  := "loopback_disabled";
			cdr_pll_ltd_ltr_micro_controller_select                                : string  := "ltd_ltr_pcs";
			cdr_pll_m_counter                                                      : integer := 1;
			cdr_pll_n_counter                                                      : integer := 1;
			cdr_pll_pd_fastlock_mode                                               : string  := "false";
			cdr_pll_pd_l_counter                                                   : integer := 1;
			cdr_pll_pfd_l_counter                                                  : integer := 1;
			cdr_pll_primary_use                                                    : string  := "cdr";
			cdr_pll_prot_mode                                                      : string  := "unused";
			cdr_pll_reverse_serial_loopback                                        : string  := "no_loopback";
			cdr_pll_set_cdr_v2i_enable                                             : string  := "true";
			cdr_pll_set_cdr_vco_reset                                              : string  := "false";
			cdr_pll_set_cdr_vco_speed_pciegen3                                     : string  := "cdr_vco_max_speedbin_pciegen3";
			cdr_pll_sup_mode                                                       : string  := "user_mode";
			cdr_pll_tx_pll_prot_mode                                               : string  := "txpll_unused";
			cdr_pll_txpll_hclk_driver_enable                                       : string  := "false";
			cdr_pll_vco_overrange_voltage                                          : string  := "vco_overrange_off";
			cdr_pll_vco_underrange_voltage                                         : string  := "vco_underange_off";
			cdr_pll_fb_select                                                      : string  := "direct_fb";
			cdr_pll_uc_ro_cal                                                      : string  := "uc_ro_cal_off";
			cdr_pll_iqclk_mux_sel                                                  : string  := "power_down";
			cdr_pll_pcie_gen                                                       : string  := "non_pcie";
			cdr_pll_set_cdr_input_freq_range                                       : integer := 0;
			cdr_pll_chgpmp_current_dn_trim                                         : string  := "cp_current_trimming_dn_setting0";
			cdr_pll_chgpmp_up_pd_trim_double                                       : string  := "normal_up_trim_current";
			cdr_pll_chgpmp_current_up_pd                                           : string  := "cp_current_pd_up_setting0";
			cdr_pll_chgpmp_current_up_trim                                         : string  := "cp_current_trimming_up_setting0";
			cdr_pll_chgpmp_dn_pd_trim_double                                       : string  := "normal_dn_trim_current";
			cdr_pll_cal_vco_count_length                                           : string  := "sel_8b_count";
			cdr_pll_chgpmp_current_dn_pd                                           : string  := "cp_current_pd_dn_setting0";
			pma_rx_deser_clkdiv_source                                             : string  := "vco_bypass_normal";
			pma_rx_deser_clkdivrx_user_mode                                        : string  := "clkdivrx_user_disabled";
			pma_rx_deser_datarate                                                  : string  := "0 bps";
			pma_rx_deser_deser_factor                                              : integer := 8;
			pma_rx_deser_force_clkdiv_for_testing                                  : string  := "normal_clkdiv";
			pma_rx_deser_sdclk_enable                                              : string  := "false";
			pma_rx_deser_sup_mode                                                  : string  := "user_mode";
			pma_rx_deser_rst_n_adapt_odi                                           : string  := "no_rst_adapt_odi";
			pma_rx_deser_bitslip_bypass                                            : string  := "bs_bypass_no";
			pma_rx_deser_prot_mode                                                 : string  := "basic_rx";
			pma_rx_deser_pcie_gen                                                  : string  := "non_pcie";
			pma_rx_deser_pcie_gen_bitwidth                                         : string  := "pcie_gen3_32b"
		);
		port (
			hip_pipe_pclk             : out std_logic;                                          -- hip_pipe_pclk
			hip_fixedclk              : out std_logic;                                          -- hip_fixedclk
			ltssm_detect_quiet        : in  std_logic                       := 'X';             -- ltssm_detect_quiet
			ltssm_detect_active       : in  std_logic                       := 'X';             -- ltssm_detect_active
			ltssm_rcvr_phase_two      : in  std_logic                       := 'X';             -- ltssm_rcvr_phase_two
			hip_reduce_counters       : in  std_logic                       := 'X';             -- hip_reduce_counters
			pcie_rate                 : in  std_logic_vector(1 downto 0)    := (others => 'X'); -- pcie_rate
			pipe_rate                 : in  std_logic_vector(15 downto 0)   := (others => 'X'); -- pipe_rate
			pipe_sw_done              : in  std_logic_vector(1 downto 0)    := (others => 'X'); -- pipe_sw_done
			pipe_sw                   : out std_logic_vector(1 downto 0);                       -- pipe_sw
			tx_analogreset            : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- tx_analogreset
			tx_digitalreset           : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- tx_digitalreset
			rx_analogreset            : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_analogreset
			rx_digitalreset           : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_digitalreset
			tx_cal_busy               : out std_logic_vector(7 downto 0);                       -- tx_cal_busy
			rx_cal_busy               : out std_logic_vector(7 downto 0);                       -- rx_cal_busy
			tx_bonding_clocks         : in  std_logic_vector(47 downto 0)   := (others => 'X'); -- clk
			rx_cdr_refclk0            : in  std_logic                       := 'X';             -- clk
			tx_serial_data            : out std_logic_vector(7 downto 0);                       -- tx_serial_data
			rx_serial_data            : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_serial_data
			rx_set_locktodata         : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_set_locktodata
			rx_set_locktoref          : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_set_locktoref
			rx_is_lockedtoref         : out std_logic_vector(7 downto 0);                       -- rx_is_lockedtoref
			rx_is_lockedtodata        : out std_logic_vector(7 downto 0);                       -- rx_is_lockedtodata
			rx_polinv                 : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_polinv
			tx_hip_data               : in  std_logic_vector(511 downto 0)  := (others => 'X'); -- tx_hip_data
			rx_hip_data               : out std_logic_vector(407 downto 0);                     -- rx_hip_data
			hip_frefclk               : out std_logic_vector(7 downto 0);                       -- hip_frefclk
			hip_ctrl                  : out std_logic_vector(63 downto 0);                      -- hip_ctrl
			hip_cal_done              : out std_logic_vector(7 downto 0);                       -- hip_cal_done
			pipe_hclk_in              : in  std_logic                       := 'X';             -- clk
			pipe_rx_eidleinfersel     : in  std_logic_vector(23 downto 0)   := (others => 'X'); -- pipe_rx_eidleinfersel
			pipe_rx_elecidle          : out std_logic_vector(7 downto 0);                       -- pipe_rx_elecidle
			pipe_rx_polarity          : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- pipe_rx_polarity
			reconfig_clk              : in  std_logic_vector(0 downto 0)    := (others => 'X'); -- clk
			reconfig_reset            : in  std_logic_vector(0 downto 0)    := (others => 'X'); -- reset
			reconfig_write            : in  std_logic_vector(0 downto 0)    := (others => 'X'); -- write
			reconfig_read             : in  std_logic_vector(0 downto 0)    := (others => 'X'); -- read
			reconfig_address          : in  std_logic_vector(12 downto 0)   := (others => 'X'); -- address
			reconfig_writedata        : in  std_logic_vector(31 downto 0)   := (others => 'X'); -- writedata
			reconfig_readdata         : out std_logic_vector(31 downto 0);                      -- readdata
			reconfig_waitrequest      : out std_logic_vector(0 downto 0);                       -- waitrequest
			tx_analogreset_ack        : out std_logic_vector(7 downto 0);                       -- tx_analogreset_ack
			rx_analogreset_ack        : out std_logic_vector(7 downto 0);                       -- rx_analogreset_ack
			tx_serial_clk0            : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- clk
			tx_serial_clk1            : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- clk
			tx_serial_clk2            : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- clk
			tx_serial_clk3            : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- clk
			tx_bonding_clocks1        : in  std_logic_vector(47 downto 0)   := (others => 'X'); -- clk
			tx_bonding_clocks2        : in  std_logic_vector(47 downto 0)   := (others => 'X'); -- clk
			tx_bonding_clocks3        : in  std_logic_vector(47 downto 0)   := (others => 'X'); -- clk
			rx_cdr_refclk1            : in  std_logic                       := 'X';             -- clk
			rx_cdr_refclk2            : in  std_logic                       := 'X';             -- clk
			rx_cdr_refclk3            : in  std_logic                       := 'X';             -- clk
			rx_cdr_refclk4            : in  std_logic                       := 'X';             -- clk
			rx_pma_clkslip            : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_pma_clkslip
			rx_seriallpbken           : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_seriallpbken
			rx_pma_qpipulldn          : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_pma_qpipulldn
			tx_pma_qpipulldn          : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- tx_pma_qpipulldn
			tx_pma_qpipullup          : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- tx_pma_qpipullup
			tx_pma_txdetectrx         : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- tx_pma_txdetectrx
			tx_pma_elecidle           : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- tx_pma_elecidle
			tx_pma_rxfound            : out std_logic_vector(7 downto 0);                       -- tx_pma_rxfound
			rx_clklow                 : out std_logic_vector(7 downto 0);                       -- rx_clklow
			rx_fref                   : out std_logic_vector(7 downto 0);                       -- rx_fref
			tx_coreclkin              : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- clk
			rx_coreclkin              : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- clk
			tx_clkout                 : out std_logic_vector(7 downto 0);                       -- clk
			rx_clkout                 : out std_logic_vector(7 downto 0);                       -- clk
			tx_pma_clkout             : out std_logic_vector(7 downto 0);                       -- clk
			tx_pma_div_clkout         : out std_logic_vector(7 downto 0);                       -- clk
			tx_pma_iqtxrx_clkout      : out std_logic_vector(7 downto 0);                       -- clk
			rx_pma_clkout             : out std_logic_vector(7 downto 0);                       -- clk
			rx_pma_div_clkout         : out std_logic_vector(7 downto 0);                       -- clk
			rx_pma_iqtxrx_clkout      : out std_logic_vector(7 downto 0);                       -- clk
			tx_parallel_data          : in  std_logic_vector(1023 downto 0) := (others => 'X'); -- tx_parallel_data
			tx_control                : in  std_logic_vector(143 downto 0)  := (others => 'X'); -- tx_control
			rx_parallel_data          : out std_logic_vector(1023 downto 0);                    -- rx_parallel_data
			rx_control                : out std_logic_vector(159 downto 0);                     -- rx_control
			rx_bitslip                : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_bitslip
			rx_adapt_reset            : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_adapt_reset
			rx_adapt_start            : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_adapt_start
			rx_prbs_err_clr           : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_prbs_err_clr
			rx_prbs_done              : out std_logic_vector(7 downto 0);                       -- rx_prbs_done
			rx_prbs_err               : out std_logic_vector(7 downto 0);                       -- rx_prbs_err
			tx_uhsif_clk              : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- clk
			tx_uhsif_clkout           : out std_logic_vector(7 downto 0);                       -- clk
			tx_uhsif_lock             : out std_logic_vector(7 downto 0);                       -- tx_uhsif_lock
			tx_std_pcfifo_full        : out std_logic_vector(7 downto 0);                       -- tx_std_pcfifo_full
			tx_std_pcfifo_empty       : out std_logic_vector(7 downto 0);                       -- tx_std_pcfifo_empty
			rx_std_pcfifo_full        : out std_logic_vector(7 downto 0);                       -- rx_std_pcfifo_full
			rx_std_pcfifo_empty       : out std_logic_vector(7 downto 0);                       -- rx_std_pcfifo_empty
			rx_std_bitrev_ena         : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_std_bitrev_ena
			rx_std_byterev_ena        : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_std_byterev_ena
			tx_polinv                 : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- tx_polinv
			tx_std_bitslipboundarysel : in  std_logic_vector(39 downto 0)   := (others => 'X'); -- tx_std_bitslipboundarysel
			rx_std_bitslipboundarysel : out std_logic_vector(39 downto 0);                      -- rx_std_bitslipboundarysel
			rx_std_wa_patternalign    : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_std_wa_patternalign
			rx_std_wa_a1a2size        : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_std_wa_a1a2size
			rx_std_rmfifo_full        : out std_logic_vector(7 downto 0);                       -- rx_std_rmfifo_full
			rx_std_rmfifo_empty       : out std_logic_vector(7 downto 0);                       -- rx_std_rmfifo_empty
			rx_std_signaldetect       : out std_logic_vector(7 downto 0);                       -- rx_std_signaldetect
			tx_enh_data_valid         : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- tx_enh_data_valid
			tx_enh_fifo_full          : out std_logic_vector(7 downto 0);                       -- tx_enh_fifo_full
			tx_enh_fifo_pfull         : out std_logic_vector(7 downto 0);                       -- tx_enh_fifo_pfull
			tx_enh_fifo_empty         : out std_logic_vector(7 downto 0);                       -- tx_enh_fifo_empty
			tx_enh_fifo_pempty        : out std_logic_vector(7 downto 0);                       -- tx_enh_fifo_pempty
			tx_enh_fifo_cnt           : out std_logic_vector(31 downto 0);                      -- tx_enh_fifo_cnt
			rx_enh_fifo_rd_en         : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_enh_fifo_rd_en
			rx_enh_data_valid         : out std_logic_vector(7 downto 0);                       -- rx_enh_data_valid
			rx_enh_fifo_full          : out std_logic_vector(7 downto 0);                       -- rx_enh_fifo_full
			rx_enh_fifo_pfull         : out std_logic_vector(7 downto 0);                       -- rx_enh_fifo_pfull
			rx_enh_fifo_empty         : out std_logic_vector(7 downto 0);                       -- rx_enh_fifo_empty
			rx_enh_fifo_pempty        : out std_logic_vector(7 downto 0);                       -- rx_enh_fifo_pempty
			rx_enh_fifo_del           : out std_logic_vector(7 downto 0);                       -- rx_enh_fifo_del
			rx_enh_fifo_insert        : out std_logic_vector(7 downto 0);                       -- rx_enh_fifo_insert
			rx_enh_fifo_cnt           : out std_logic_vector(39 downto 0);                      -- rx_enh_fifo_cnt
			rx_enh_fifo_align_val     : out std_logic_vector(7 downto 0);                       -- rx_enh_fifo_align_val
			rx_enh_fifo_align_clr     : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_enh_fifo_align_clr
			tx_enh_frame              : out std_logic_vector(7 downto 0);                       -- tx_enh_frame
			tx_enh_frame_burst_en     : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- tx_enh_frame_burst_en
			tx_enh_frame_diag_status  : in  std_logic_vector(15 downto 0)   := (others => 'X'); -- tx_enh_frame_diag_status
			rx_enh_frame              : out std_logic_vector(7 downto 0);                       -- rx_enh_frame
			rx_enh_frame_lock         : out std_logic_vector(7 downto 0);                       -- rx_enh_frame_lock
			rx_enh_frame_diag_status  : out std_logic_vector(15 downto 0);                      -- rx_enh_frame_diag_status
			rx_enh_crc32_err          : out std_logic_vector(7 downto 0);                       -- rx_enh_crc32err
			rx_enh_highber            : out std_logic_vector(7 downto 0);                       -- rx_enh_highber
			rx_enh_highber_clr_cnt    : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_enh_highber_clr_cnt
			rx_enh_clr_errblk_count   : in  std_logic_vector(7 downto 0)    := (others => 'X'); -- rx_enh_clr_errblk_count
			rx_enh_blk_lock           : out std_logic_vector(7 downto 0);                       -- rx_enh_blk_lock
			tx_enh_bitslip            : in  std_logic_vector(55 downto 0)   := (others => 'X'); -- tx_enh_bitslip
			pipe_hclk_out             : out std_logic;                                          -- clk
			pipe_g3_txdeemph          : in  std_logic_vector(143 downto 0)  := (others => 'X'); -- pipe_g3_txdeemph
			pipe_g3_rxpresethint      : in  std_logic_vector(23 downto 0)   := (others => 'X'); -- pipe_g3_rxpresethint
			avmm_busy                 : out std_logic_vector(7 downto 0)                        -- avmm_busy
		);
	end component gidel_hawkeye_pcie_altera_xcvr_native_a10_181_gmscoma;

end phy_g1x8_pkg;
