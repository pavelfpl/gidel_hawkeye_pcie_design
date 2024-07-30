
module gidel_hawkeye_pcie (
	pcie_a10_hip_0_hip_ctrl_test_in,
	pcie_a10_hip_0_hip_ctrl_simu_mode_pipe,
	pcie_a10_hip_0_hip_pipe_sim_pipe_pclk_in,
	pcie_a10_hip_0_hip_pipe_sim_pipe_rate,
	pcie_a10_hip_0_hip_pipe_sim_ltssmstate,
	pcie_a10_hip_0_hip_pipe_eidleinfersel0,
	pcie_a10_hip_0_hip_pipe_eidleinfersel1,
	pcie_a10_hip_0_hip_pipe_eidleinfersel2,
	pcie_a10_hip_0_hip_pipe_eidleinfersel3,
	pcie_a10_hip_0_hip_pipe_eidleinfersel4,
	pcie_a10_hip_0_hip_pipe_eidleinfersel5,
	pcie_a10_hip_0_hip_pipe_eidleinfersel6,
	pcie_a10_hip_0_hip_pipe_eidleinfersel7,
	pcie_a10_hip_0_hip_pipe_powerdown0,
	pcie_a10_hip_0_hip_pipe_powerdown1,
	pcie_a10_hip_0_hip_pipe_powerdown2,
	pcie_a10_hip_0_hip_pipe_powerdown3,
	pcie_a10_hip_0_hip_pipe_powerdown4,
	pcie_a10_hip_0_hip_pipe_powerdown5,
	pcie_a10_hip_0_hip_pipe_powerdown6,
	pcie_a10_hip_0_hip_pipe_powerdown7,
	pcie_a10_hip_0_hip_pipe_rxpolarity0,
	pcie_a10_hip_0_hip_pipe_rxpolarity1,
	pcie_a10_hip_0_hip_pipe_rxpolarity2,
	pcie_a10_hip_0_hip_pipe_rxpolarity3,
	pcie_a10_hip_0_hip_pipe_rxpolarity4,
	pcie_a10_hip_0_hip_pipe_rxpolarity5,
	pcie_a10_hip_0_hip_pipe_rxpolarity6,
	pcie_a10_hip_0_hip_pipe_rxpolarity7,
	pcie_a10_hip_0_hip_pipe_txcompl0,
	pcie_a10_hip_0_hip_pipe_txcompl1,
	pcie_a10_hip_0_hip_pipe_txcompl2,
	pcie_a10_hip_0_hip_pipe_txcompl3,
	pcie_a10_hip_0_hip_pipe_txcompl4,
	pcie_a10_hip_0_hip_pipe_txcompl5,
	pcie_a10_hip_0_hip_pipe_txcompl6,
	pcie_a10_hip_0_hip_pipe_txcompl7,
	pcie_a10_hip_0_hip_pipe_txdata0,
	pcie_a10_hip_0_hip_pipe_txdata1,
	pcie_a10_hip_0_hip_pipe_txdata2,
	pcie_a10_hip_0_hip_pipe_txdata3,
	pcie_a10_hip_0_hip_pipe_txdata4,
	pcie_a10_hip_0_hip_pipe_txdata5,
	pcie_a10_hip_0_hip_pipe_txdata6,
	pcie_a10_hip_0_hip_pipe_txdata7,
	pcie_a10_hip_0_hip_pipe_txdatak0,
	pcie_a10_hip_0_hip_pipe_txdatak1,
	pcie_a10_hip_0_hip_pipe_txdatak2,
	pcie_a10_hip_0_hip_pipe_txdatak3,
	pcie_a10_hip_0_hip_pipe_txdatak4,
	pcie_a10_hip_0_hip_pipe_txdatak5,
	pcie_a10_hip_0_hip_pipe_txdatak6,
	pcie_a10_hip_0_hip_pipe_txdatak7,
	pcie_a10_hip_0_hip_pipe_txdetectrx0,
	pcie_a10_hip_0_hip_pipe_txdetectrx1,
	pcie_a10_hip_0_hip_pipe_txdetectrx2,
	pcie_a10_hip_0_hip_pipe_txdetectrx3,
	pcie_a10_hip_0_hip_pipe_txdetectrx4,
	pcie_a10_hip_0_hip_pipe_txdetectrx5,
	pcie_a10_hip_0_hip_pipe_txdetectrx6,
	pcie_a10_hip_0_hip_pipe_txdetectrx7,
	pcie_a10_hip_0_hip_pipe_txelecidle0,
	pcie_a10_hip_0_hip_pipe_txelecidle1,
	pcie_a10_hip_0_hip_pipe_txelecidle2,
	pcie_a10_hip_0_hip_pipe_txelecidle3,
	pcie_a10_hip_0_hip_pipe_txelecidle4,
	pcie_a10_hip_0_hip_pipe_txelecidle5,
	pcie_a10_hip_0_hip_pipe_txelecidle6,
	pcie_a10_hip_0_hip_pipe_txelecidle7,
	pcie_a10_hip_0_hip_pipe_txdeemph0,
	pcie_a10_hip_0_hip_pipe_txdeemph1,
	pcie_a10_hip_0_hip_pipe_txdeemph2,
	pcie_a10_hip_0_hip_pipe_txdeemph3,
	pcie_a10_hip_0_hip_pipe_txdeemph4,
	pcie_a10_hip_0_hip_pipe_txdeemph5,
	pcie_a10_hip_0_hip_pipe_txdeemph6,
	pcie_a10_hip_0_hip_pipe_txdeemph7,
	pcie_a10_hip_0_hip_pipe_txmargin0,
	pcie_a10_hip_0_hip_pipe_txmargin1,
	pcie_a10_hip_0_hip_pipe_txmargin2,
	pcie_a10_hip_0_hip_pipe_txmargin3,
	pcie_a10_hip_0_hip_pipe_txmargin4,
	pcie_a10_hip_0_hip_pipe_txmargin5,
	pcie_a10_hip_0_hip_pipe_txmargin6,
	pcie_a10_hip_0_hip_pipe_txmargin7,
	pcie_a10_hip_0_hip_pipe_txswing0,
	pcie_a10_hip_0_hip_pipe_txswing1,
	pcie_a10_hip_0_hip_pipe_txswing2,
	pcie_a10_hip_0_hip_pipe_txswing3,
	pcie_a10_hip_0_hip_pipe_txswing4,
	pcie_a10_hip_0_hip_pipe_txswing5,
	pcie_a10_hip_0_hip_pipe_txswing6,
	pcie_a10_hip_0_hip_pipe_txswing7,
	pcie_a10_hip_0_hip_pipe_phystatus0,
	pcie_a10_hip_0_hip_pipe_phystatus1,
	pcie_a10_hip_0_hip_pipe_phystatus2,
	pcie_a10_hip_0_hip_pipe_phystatus3,
	pcie_a10_hip_0_hip_pipe_phystatus4,
	pcie_a10_hip_0_hip_pipe_phystatus5,
	pcie_a10_hip_0_hip_pipe_phystatus6,
	pcie_a10_hip_0_hip_pipe_phystatus7,
	pcie_a10_hip_0_hip_pipe_rxdata0,
	pcie_a10_hip_0_hip_pipe_rxdata1,
	pcie_a10_hip_0_hip_pipe_rxdata2,
	pcie_a10_hip_0_hip_pipe_rxdata3,
	pcie_a10_hip_0_hip_pipe_rxdata4,
	pcie_a10_hip_0_hip_pipe_rxdata5,
	pcie_a10_hip_0_hip_pipe_rxdata6,
	pcie_a10_hip_0_hip_pipe_rxdata7,
	pcie_a10_hip_0_hip_pipe_rxdatak0,
	pcie_a10_hip_0_hip_pipe_rxdatak1,
	pcie_a10_hip_0_hip_pipe_rxdatak2,
	pcie_a10_hip_0_hip_pipe_rxdatak3,
	pcie_a10_hip_0_hip_pipe_rxdatak4,
	pcie_a10_hip_0_hip_pipe_rxdatak5,
	pcie_a10_hip_0_hip_pipe_rxdatak6,
	pcie_a10_hip_0_hip_pipe_rxdatak7,
	pcie_a10_hip_0_hip_pipe_rxelecidle0,
	pcie_a10_hip_0_hip_pipe_rxelecidle1,
	pcie_a10_hip_0_hip_pipe_rxelecidle2,
	pcie_a10_hip_0_hip_pipe_rxelecidle3,
	pcie_a10_hip_0_hip_pipe_rxelecidle4,
	pcie_a10_hip_0_hip_pipe_rxelecidle5,
	pcie_a10_hip_0_hip_pipe_rxelecidle6,
	pcie_a10_hip_0_hip_pipe_rxelecidle7,
	pcie_a10_hip_0_hip_pipe_rxstatus0,
	pcie_a10_hip_0_hip_pipe_rxstatus1,
	pcie_a10_hip_0_hip_pipe_rxstatus2,
	pcie_a10_hip_0_hip_pipe_rxstatus3,
	pcie_a10_hip_0_hip_pipe_rxstatus4,
	pcie_a10_hip_0_hip_pipe_rxstatus5,
	pcie_a10_hip_0_hip_pipe_rxstatus6,
	pcie_a10_hip_0_hip_pipe_rxstatus7,
	pcie_a10_hip_0_hip_pipe_rxvalid0,
	pcie_a10_hip_0_hip_pipe_rxvalid1,
	pcie_a10_hip_0_hip_pipe_rxvalid2,
	pcie_a10_hip_0_hip_pipe_rxvalid3,
	pcie_a10_hip_0_hip_pipe_rxvalid4,
	pcie_a10_hip_0_hip_pipe_rxvalid5,
	pcie_a10_hip_0_hip_pipe_rxvalid6,
	pcie_a10_hip_0_hip_pipe_rxvalid7,
	pcie_a10_hip_0_hip_pipe_rxdataskip0,
	pcie_a10_hip_0_hip_pipe_rxdataskip1,
	pcie_a10_hip_0_hip_pipe_rxdataskip2,
	pcie_a10_hip_0_hip_pipe_rxdataskip3,
	pcie_a10_hip_0_hip_pipe_rxdataskip4,
	pcie_a10_hip_0_hip_pipe_rxdataskip5,
	pcie_a10_hip_0_hip_pipe_rxdataskip6,
	pcie_a10_hip_0_hip_pipe_rxdataskip7,
	pcie_a10_hip_0_hip_pipe_rxblkst0,
	pcie_a10_hip_0_hip_pipe_rxblkst1,
	pcie_a10_hip_0_hip_pipe_rxblkst2,
	pcie_a10_hip_0_hip_pipe_rxblkst3,
	pcie_a10_hip_0_hip_pipe_rxblkst4,
	pcie_a10_hip_0_hip_pipe_rxblkst5,
	pcie_a10_hip_0_hip_pipe_rxblkst6,
	pcie_a10_hip_0_hip_pipe_rxblkst7,
	pcie_a10_hip_0_hip_pipe_rxsynchd0,
	pcie_a10_hip_0_hip_pipe_rxsynchd1,
	pcie_a10_hip_0_hip_pipe_rxsynchd2,
	pcie_a10_hip_0_hip_pipe_rxsynchd3,
	pcie_a10_hip_0_hip_pipe_rxsynchd4,
	pcie_a10_hip_0_hip_pipe_rxsynchd5,
	pcie_a10_hip_0_hip_pipe_rxsynchd6,
	pcie_a10_hip_0_hip_pipe_rxsynchd7,
	pcie_a10_hip_0_hip_pipe_currentcoeff0,
	pcie_a10_hip_0_hip_pipe_currentcoeff1,
	pcie_a10_hip_0_hip_pipe_currentcoeff2,
	pcie_a10_hip_0_hip_pipe_currentcoeff3,
	pcie_a10_hip_0_hip_pipe_currentcoeff4,
	pcie_a10_hip_0_hip_pipe_currentcoeff5,
	pcie_a10_hip_0_hip_pipe_currentcoeff6,
	pcie_a10_hip_0_hip_pipe_currentcoeff7,
	pcie_a10_hip_0_hip_pipe_currentrxpreset0,
	pcie_a10_hip_0_hip_pipe_currentrxpreset1,
	pcie_a10_hip_0_hip_pipe_currentrxpreset2,
	pcie_a10_hip_0_hip_pipe_currentrxpreset3,
	pcie_a10_hip_0_hip_pipe_currentrxpreset4,
	pcie_a10_hip_0_hip_pipe_currentrxpreset5,
	pcie_a10_hip_0_hip_pipe_currentrxpreset6,
	pcie_a10_hip_0_hip_pipe_currentrxpreset7,
	pcie_a10_hip_0_hip_pipe_txsynchd0,
	pcie_a10_hip_0_hip_pipe_txsynchd1,
	pcie_a10_hip_0_hip_pipe_txsynchd2,
	pcie_a10_hip_0_hip_pipe_txsynchd3,
	pcie_a10_hip_0_hip_pipe_txsynchd4,
	pcie_a10_hip_0_hip_pipe_txsynchd5,
	pcie_a10_hip_0_hip_pipe_txsynchd6,
	pcie_a10_hip_0_hip_pipe_txsynchd7,
	pcie_a10_hip_0_hip_pipe_txblkst0,
	pcie_a10_hip_0_hip_pipe_txblkst1,
	pcie_a10_hip_0_hip_pipe_txblkst2,
	pcie_a10_hip_0_hip_pipe_txblkst3,
	pcie_a10_hip_0_hip_pipe_txblkst4,
	pcie_a10_hip_0_hip_pipe_txblkst5,
	pcie_a10_hip_0_hip_pipe_txblkst6,
	pcie_a10_hip_0_hip_pipe_txblkst7,
	pcie_a10_hip_0_hip_pipe_txdataskip0,
	pcie_a10_hip_0_hip_pipe_txdataskip1,
	pcie_a10_hip_0_hip_pipe_txdataskip2,
	pcie_a10_hip_0_hip_pipe_txdataskip3,
	pcie_a10_hip_0_hip_pipe_txdataskip4,
	pcie_a10_hip_0_hip_pipe_txdataskip5,
	pcie_a10_hip_0_hip_pipe_txdataskip6,
	pcie_a10_hip_0_hip_pipe_txdataskip7,
	pcie_a10_hip_0_hip_pipe_rate0,
	pcie_a10_hip_0_hip_pipe_rate1,
	pcie_a10_hip_0_hip_pipe_rate2,
	pcie_a10_hip_0_hip_pipe_rate3,
	pcie_a10_hip_0_hip_pipe_rate4,
	pcie_a10_hip_0_hip_pipe_rate5,
	pcie_a10_hip_0_hip_pipe_rate6,
	pcie_a10_hip_0_hip_pipe_rate7,
	pcie_a10_hip_0_hip_serial_rx_in0,
	pcie_a10_hip_0_hip_serial_rx_in1,
	pcie_a10_hip_0_hip_serial_rx_in2,
	pcie_a10_hip_0_hip_serial_rx_in3,
	pcie_a10_hip_0_hip_serial_rx_in4,
	pcie_a10_hip_0_hip_serial_rx_in5,
	pcie_a10_hip_0_hip_serial_rx_in6,
	pcie_a10_hip_0_hip_serial_rx_in7,
	pcie_a10_hip_0_hip_serial_tx_out0,
	pcie_a10_hip_0_hip_serial_tx_out1,
	pcie_a10_hip_0_hip_serial_tx_out2,
	pcie_a10_hip_0_hip_serial_tx_out3,
	pcie_a10_hip_0_hip_serial_tx_out4,
	pcie_a10_hip_0_hip_serial_tx_out5,
	pcie_a10_hip_0_hip_serial_tx_out6,
	pcie_a10_hip_0_hip_serial_tx_out7,
	pcie_a10_hip_0_npor_npor,
	pcie_a10_hip_0_npor_pin_perst,
	refclk_clk);	

	input	[31:0]	pcie_a10_hip_0_hip_ctrl_test_in;
	input		pcie_a10_hip_0_hip_ctrl_simu_mode_pipe;
	input		pcie_a10_hip_0_hip_pipe_sim_pipe_pclk_in;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_sim_pipe_rate;
	output	[4:0]	pcie_a10_hip_0_hip_pipe_sim_ltssmstate;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_eidleinfersel0;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_eidleinfersel1;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_eidleinfersel2;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_eidleinfersel3;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_eidleinfersel4;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_eidleinfersel5;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_eidleinfersel6;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_eidleinfersel7;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_powerdown0;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_powerdown1;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_powerdown2;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_powerdown3;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_powerdown4;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_powerdown5;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_powerdown6;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_powerdown7;
	output		pcie_a10_hip_0_hip_pipe_rxpolarity0;
	output		pcie_a10_hip_0_hip_pipe_rxpolarity1;
	output		pcie_a10_hip_0_hip_pipe_rxpolarity2;
	output		pcie_a10_hip_0_hip_pipe_rxpolarity3;
	output		pcie_a10_hip_0_hip_pipe_rxpolarity4;
	output		pcie_a10_hip_0_hip_pipe_rxpolarity5;
	output		pcie_a10_hip_0_hip_pipe_rxpolarity6;
	output		pcie_a10_hip_0_hip_pipe_rxpolarity7;
	output		pcie_a10_hip_0_hip_pipe_txcompl0;
	output		pcie_a10_hip_0_hip_pipe_txcompl1;
	output		pcie_a10_hip_0_hip_pipe_txcompl2;
	output		pcie_a10_hip_0_hip_pipe_txcompl3;
	output		pcie_a10_hip_0_hip_pipe_txcompl4;
	output		pcie_a10_hip_0_hip_pipe_txcompl5;
	output		pcie_a10_hip_0_hip_pipe_txcompl6;
	output		pcie_a10_hip_0_hip_pipe_txcompl7;
	output	[31:0]	pcie_a10_hip_0_hip_pipe_txdata0;
	output	[31:0]	pcie_a10_hip_0_hip_pipe_txdata1;
	output	[31:0]	pcie_a10_hip_0_hip_pipe_txdata2;
	output	[31:0]	pcie_a10_hip_0_hip_pipe_txdata3;
	output	[31:0]	pcie_a10_hip_0_hip_pipe_txdata4;
	output	[31:0]	pcie_a10_hip_0_hip_pipe_txdata5;
	output	[31:0]	pcie_a10_hip_0_hip_pipe_txdata6;
	output	[31:0]	pcie_a10_hip_0_hip_pipe_txdata7;
	output	[3:0]	pcie_a10_hip_0_hip_pipe_txdatak0;
	output	[3:0]	pcie_a10_hip_0_hip_pipe_txdatak1;
	output	[3:0]	pcie_a10_hip_0_hip_pipe_txdatak2;
	output	[3:0]	pcie_a10_hip_0_hip_pipe_txdatak3;
	output	[3:0]	pcie_a10_hip_0_hip_pipe_txdatak4;
	output	[3:0]	pcie_a10_hip_0_hip_pipe_txdatak5;
	output	[3:0]	pcie_a10_hip_0_hip_pipe_txdatak6;
	output	[3:0]	pcie_a10_hip_0_hip_pipe_txdatak7;
	output		pcie_a10_hip_0_hip_pipe_txdetectrx0;
	output		pcie_a10_hip_0_hip_pipe_txdetectrx1;
	output		pcie_a10_hip_0_hip_pipe_txdetectrx2;
	output		pcie_a10_hip_0_hip_pipe_txdetectrx3;
	output		pcie_a10_hip_0_hip_pipe_txdetectrx4;
	output		pcie_a10_hip_0_hip_pipe_txdetectrx5;
	output		pcie_a10_hip_0_hip_pipe_txdetectrx6;
	output		pcie_a10_hip_0_hip_pipe_txdetectrx7;
	output		pcie_a10_hip_0_hip_pipe_txelecidle0;
	output		pcie_a10_hip_0_hip_pipe_txelecidle1;
	output		pcie_a10_hip_0_hip_pipe_txelecidle2;
	output		pcie_a10_hip_0_hip_pipe_txelecidle3;
	output		pcie_a10_hip_0_hip_pipe_txelecidle4;
	output		pcie_a10_hip_0_hip_pipe_txelecidle5;
	output		pcie_a10_hip_0_hip_pipe_txelecidle6;
	output		pcie_a10_hip_0_hip_pipe_txelecidle7;
	output		pcie_a10_hip_0_hip_pipe_txdeemph0;
	output		pcie_a10_hip_0_hip_pipe_txdeemph1;
	output		pcie_a10_hip_0_hip_pipe_txdeemph2;
	output		pcie_a10_hip_0_hip_pipe_txdeemph3;
	output		pcie_a10_hip_0_hip_pipe_txdeemph4;
	output		pcie_a10_hip_0_hip_pipe_txdeemph5;
	output		pcie_a10_hip_0_hip_pipe_txdeemph6;
	output		pcie_a10_hip_0_hip_pipe_txdeemph7;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_txmargin0;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_txmargin1;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_txmargin2;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_txmargin3;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_txmargin4;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_txmargin5;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_txmargin6;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_txmargin7;
	output		pcie_a10_hip_0_hip_pipe_txswing0;
	output		pcie_a10_hip_0_hip_pipe_txswing1;
	output		pcie_a10_hip_0_hip_pipe_txswing2;
	output		pcie_a10_hip_0_hip_pipe_txswing3;
	output		pcie_a10_hip_0_hip_pipe_txswing4;
	output		pcie_a10_hip_0_hip_pipe_txswing5;
	output		pcie_a10_hip_0_hip_pipe_txswing6;
	output		pcie_a10_hip_0_hip_pipe_txswing7;
	input		pcie_a10_hip_0_hip_pipe_phystatus0;
	input		pcie_a10_hip_0_hip_pipe_phystatus1;
	input		pcie_a10_hip_0_hip_pipe_phystatus2;
	input		pcie_a10_hip_0_hip_pipe_phystatus3;
	input		pcie_a10_hip_0_hip_pipe_phystatus4;
	input		pcie_a10_hip_0_hip_pipe_phystatus5;
	input		pcie_a10_hip_0_hip_pipe_phystatus6;
	input		pcie_a10_hip_0_hip_pipe_phystatus7;
	input	[31:0]	pcie_a10_hip_0_hip_pipe_rxdata0;
	input	[31:0]	pcie_a10_hip_0_hip_pipe_rxdata1;
	input	[31:0]	pcie_a10_hip_0_hip_pipe_rxdata2;
	input	[31:0]	pcie_a10_hip_0_hip_pipe_rxdata3;
	input	[31:0]	pcie_a10_hip_0_hip_pipe_rxdata4;
	input	[31:0]	pcie_a10_hip_0_hip_pipe_rxdata5;
	input	[31:0]	pcie_a10_hip_0_hip_pipe_rxdata6;
	input	[31:0]	pcie_a10_hip_0_hip_pipe_rxdata7;
	input	[3:0]	pcie_a10_hip_0_hip_pipe_rxdatak0;
	input	[3:0]	pcie_a10_hip_0_hip_pipe_rxdatak1;
	input	[3:0]	pcie_a10_hip_0_hip_pipe_rxdatak2;
	input	[3:0]	pcie_a10_hip_0_hip_pipe_rxdatak3;
	input	[3:0]	pcie_a10_hip_0_hip_pipe_rxdatak4;
	input	[3:0]	pcie_a10_hip_0_hip_pipe_rxdatak5;
	input	[3:0]	pcie_a10_hip_0_hip_pipe_rxdatak6;
	input	[3:0]	pcie_a10_hip_0_hip_pipe_rxdatak7;
	input		pcie_a10_hip_0_hip_pipe_rxelecidle0;
	input		pcie_a10_hip_0_hip_pipe_rxelecidle1;
	input		pcie_a10_hip_0_hip_pipe_rxelecidle2;
	input		pcie_a10_hip_0_hip_pipe_rxelecidle3;
	input		pcie_a10_hip_0_hip_pipe_rxelecidle4;
	input		pcie_a10_hip_0_hip_pipe_rxelecidle5;
	input		pcie_a10_hip_0_hip_pipe_rxelecidle6;
	input		pcie_a10_hip_0_hip_pipe_rxelecidle7;
	input	[2:0]	pcie_a10_hip_0_hip_pipe_rxstatus0;
	input	[2:0]	pcie_a10_hip_0_hip_pipe_rxstatus1;
	input	[2:0]	pcie_a10_hip_0_hip_pipe_rxstatus2;
	input	[2:0]	pcie_a10_hip_0_hip_pipe_rxstatus3;
	input	[2:0]	pcie_a10_hip_0_hip_pipe_rxstatus4;
	input	[2:0]	pcie_a10_hip_0_hip_pipe_rxstatus5;
	input	[2:0]	pcie_a10_hip_0_hip_pipe_rxstatus6;
	input	[2:0]	pcie_a10_hip_0_hip_pipe_rxstatus7;
	input		pcie_a10_hip_0_hip_pipe_rxvalid0;
	input		pcie_a10_hip_0_hip_pipe_rxvalid1;
	input		pcie_a10_hip_0_hip_pipe_rxvalid2;
	input		pcie_a10_hip_0_hip_pipe_rxvalid3;
	input		pcie_a10_hip_0_hip_pipe_rxvalid4;
	input		pcie_a10_hip_0_hip_pipe_rxvalid5;
	input		pcie_a10_hip_0_hip_pipe_rxvalid6;
	input		pcie_a10_hip_0_hip_pipe_rxvalid7;
	input		pcie_a10_hip_0_hip_pipe_rxdataskip0;
	input		pcie_a10_hip_0_hip_pipe_rxdataskip1;
	input		pcie_a10_hip_0_hip_pipe_rxdataskip2;
	input		pcie_a10_hip_0_hip_pipe_rxdataskip3;
	input		pcie_a10_hip_0_hip_pipe_rxdataskip4;
	input		pcie_a10_hip_0_hip_pipe_rxdataskip5;
	input		pcie_a10_hip_0_hip_pipe_rxdataskip6;
	input		pcie_a10_hip_0_hip_pipe_rxdataskip7;
	input		pcie_a10_hip_0_hip_pipe_rxblkst0;
	input		pcie_a10_hip_0_hip_pipe_rxblkst1;
	input		pcie_a10_hip_0_hip_pipe_rxblkst2;
	input		pcie_a10_hip_0_hip_pipe_rxblkst3;
	input		pcie_a10_hip_0_hip_pipe_rxblkst4;
	input		pcie_a10_hip_0_hip_pipe_rxblkst5;
	input		pcie_a10_hip_0_hip_pipe_rxblkst6;
	input		pcie_a10_hip_0_hip_pipe_rxblkst7;
	input	[1:0]	pcie_a10_hip_0_hip_pipe_rxsynchd0;
	input	[1:0]	pcie_a10_hip_0_hip_pipe_rxsynchd1;
	input	[1:0]	pcie_a10_hip_0_hip_pipe_rxsynchd2;
	input	[1:0]	pcie_a10_hip_0_hip_pipe_rxsynchd3;
	input	[1:0]	pcie_a10_hip_0_hip_pipe_rxsynchd4;
	input	[1:0]	pcie_a10_hip_0_hip_pipe_rxsynchd5;
	input	[1:0]	pcie_a10_hip_0_hip_pipe_rxsynchd6;
	input	[1:0]	pcie_a10_hip_0_hip_pipe_rxsynchd7;
	output	[17:0]	pcie_a10_hip_0_hip_pipe_currentcoeff0;
	output	[17:0]	pcie_a10_hip_0_hip_pipe_currentcoeff1;
	output	[17:0]	pcie_a10_hip_0_hip_pipe_currentcoeff2;
	output	[17:0]	pcie_a10_hip_0_hip_pipe_currentcoeff3;
	output	[17:0]	pcie_a10_hip_0_hip_pipe_currentcoeff4;
	output	[17:0]	pcie_a10_hip_0_hip_pipe_currentcoeff5;
	output	[17:0]	pcie_a10_hip_0_hip_pipe_currentcoeff6;
	output	[17:0]	pcie_a10_hip_0_hip_pipe_currentcoeff7;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_currentrxpreset0;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_currentrxpreset1;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_currentrxpreset2;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_currentrxpreset3;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_currentrxpreset4;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_currentrxpreset5;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_currentrxpreset6;
	output	[2:0]	pcie_a10_hip_0_hip_pipe_currentrxpreset7;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_txsynchd0;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_txsynchd1;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_txsynchd2;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_txsynchd3;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_txsynchd4;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_txsynchd5;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_txsynchd6;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_txsynchd7;
	output		pcie_a10_hip_0_hip_pipe_txblkst0;
	output		pcie_a10_hip_0_hip_pipe_txblkst1;
	output		pcie_a10_hip_0_hip_pipe_txblkst2;
	output		pcie_a10_hip_0_hip_pipe_txblkst3;
	output		pcie_a10_hip_0_hip_pipe_txblkst4;
	output		pcie_a10_hip_0_hip_pipe_txblkst5;
	output		pcie_a10_hip_0_hip_pipe_txblkst6;
	output		pcie_a10_hip_0_hip_pipe_txblkst7;
	output		pcie_a10_hip_0_hip_pipe_txdataskip0;
	output		pcie_a10_hip_0_hip_pipe_txdataskip1;
	output		pcie_a10_hip_0_hip_pipe_txdataskip2;
	output		pcie_a10_hip_0_hip_pipe_txdataskip3;
	output		pcie_a10_hip_0_hip_pipe_txdataskip4;
	output		pcie_a10_hip_0_hip_pipe_txdataskip5;
	output		pcie_a10_hip_0_hip_pipe_txdataskip6;
	output		pcie_a10_hip_0_hip_pipe_txdataskip7;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_rate0;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_rate1;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_rate2;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_rate3;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_rate4;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_rate5;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_rate6;
	output	[1:0]	pcie_a10_hip_0_hip_pipe_rate7;
	input		pcie_a10_hip_0_hip_serial_rx_in0;
	input		pcie_a10_hip_0_hip_serial_rx_in1;
	input		pcie_a10_hip_0_hip_serial_rx_in2;
	input		pcie_a10_hip_0_hip_serial_rx_in3;
	input		pcie_a10_hip_0_hip_serial_rx_in4;
	input		pcie_a10_hip_0_hip_serial_rx_in5;
	input		pcie_a10_hip_0_hip_serial_rx_in6;
	input		pcie_a10_hip_0_hip_serial_rx_in7;
	output		pcie_a10_hip_0_hip_serial_tx_out0;
	output		pcie_a10_hip_0_hip_serial_tx_out1;
	output		pcie_a10_hip_0_hip_serial_tx_out2;
	output		pcie_a10_hip_0_hip_serial_tx_out3;
	output		pcie_a10_hip_0_hip_serial_tx_out4;
	output		pcie_a10_hip_0_hip_serial_tx_out5;
	output		pcie_a10_hip_0_hip_serial_tx_out6;
	output		pcie_a10_hip_0_hip_serial_tx_out7;
	input		pcie_a10_hip_0_npor_npor;
	input		pcie_a10_hip_0_npor_pin_perst;
	input		refclk_clk;
endmodule
