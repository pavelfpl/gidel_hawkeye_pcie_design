config gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai_cfg;
		design gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.pcie_a10_hip_0_rxm_bar4_translator use gidel_hawkeye_pcie_altera_merlin_master_translator_181.altera_merlin_master_translator;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.onchip_memory2_0_s1_translator use gidel_hawkeye_pcie_altera_merlin_slave_translator_181.altera_merlin_slave_translator;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.pcie_a10_hip_0_rxm_bar4_agent use gidel_hawkeye_pcie_altera_merlin_master_agent_181.altera_merlin_master_agent;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.onchip_memory2_0_s1_agent use gidel_hawkeye_pcie_altera_merlin_slave_agent_181.altera_merlin_slave_agent;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.onchip_memory2_0_s1_agent_rsp_fifo use gidel_hawkeye_pcie_altera_avalon_sc_fifo_181.altera_avalon_sc_fifo;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.router use gidel_hawkeye_pcie_altera_merlin_router_181.gidel_hawkeye_pcie_altera_merlin_router_181_xozklya;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.router_001 use gidel_hawkeye_pcie_altera_merlin_router_181.gidel_hawkeye_pcie_altera_merlin_router_181_5igdwei;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.onchip_memory2_0_s1_burst_adapter use gidel_hawkeye_pcie_altera_merlin_burst_adapter_181.altera_merlin_burst_adapter;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.cmd_demux use gidel_hawkeye_pcie_altera_merlin_demultiplexer_181.gidel_hawkeye_pcie_altera_merlin_demultiplexer_181_hwavjra;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.cmd_mux use gidel_hawkeye_pcie_altera_merlin_multiplexer_181.gidel_hawkeye_pcie_altera_merlin_multiplexer_181_w2a5qby;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.rsp_demux use gidel_hawkeye_pcie_altera_merlin_demultiplexer_181.gidel_hawkeye_pcie_altera_merlin_demultiplexer_181_hwavjra;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.rsp_mux use gidel_hawkeye_pcie_altera_merlin_multiplexer_181.gidel_hawkeye_pcie_altera_merlin_multiplexer_181_kt7sjfa;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.onchip_memory2_0_s1_rsp_width_adapter use gidel_hawkeye_pcie_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.onchip_memory2_0_s1_cmd_width_adapter use gidel_hawkeye_pcie_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
		instance gidel_hawkeye_pcie_altera_mm_interconnect_181_qdojyai.avalon_st_adapter use gidel_hawkeye_pcie_altera_avalon_st_adapter_181.gidel_hawkeye_pcie_altera_avalon_st_adapter_181_5kl3u4y;
endconfig

