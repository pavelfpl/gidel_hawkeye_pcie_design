config gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky_cfg;
		design gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.mm_bridge_1_m0_translator use gidel_hawkeye_pcie_altera_merlin_master_translator_181.altera_merlin_master_translator;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.onchip_memory2_0_s2_translator use gidel_hawkeye_pcie_altera_merlin_slave_translator_181.altera_merlin_slave_translator;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.mm_bridge_1_m0_agent use gidel_hawkeye_pcie_altera_merlin_master_agent_181.altera_merlin_master_agent;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.onchip_memory2_0_s2_agent use gidel_hawkeye_pcie_altera_merlin_slave_agent_181.altera_merlin_slave_agent;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.onchip_memory2_0_s2_agent_rsp_fifo use gidel_hawkeye_pcie_altera_avalon_sc_fifo_181.altera_avalon_sc_fifo;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.router use gidel_hawkeye_pcie_altera_merlin_router_181.gidel_hawkeye_pcie_altera_merlin_router_181_rimmbqy;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.router_001 use gidel_hawkeye_pcie_altera_merlin_router_181.gidel_hawkeye_pcie_altera_merlin_router_181_v2xnjyq;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.cmd_demux use gidel_hawkeye_pcie_altera_merlin_demultiplexer_181.gidel_hawkeye_pcie_altera_merlin_demultiplexer_181_fkf75ui;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.cmd_mux use gidel_hawkeye_pcie_altera_merlin_multiplexer_181.gidel_hawkeye_pcie_altera_merlin_multiplexer_181_ambf7wa;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.rsp_demux use gidel_hawkeye_pcie_altera_merlin_demultiplexer_181.gidel_hawkeye_pcie_altera_merlin_demultiplexer_181_fkf75ui;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.rsp_mux use gidel_hawkeye_pcie_altera_merlin_multiplexer_181.gidel_hawkeye_pcie_altera_merlin_multiplexer_181_byxvdyi;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.onchip_memory2_0_s2_cmd_width_adapter use gidel_hawkeye_pcie_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.onchip_memory2_0_s2_rsp_width_adapter use gidel_hawkeye_pcie_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_f72zoky.avalon_st_adapter use gidel_hawkeye_pcie_altera_avalon_st_adapter_181.gidel_hawkeye_pcie_altera_avalon_st_adapter_181_f3s2n2q;
endconfig

