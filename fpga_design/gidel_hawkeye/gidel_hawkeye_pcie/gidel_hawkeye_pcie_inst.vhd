	component gidel_hawkeye_pcie is
		port (
			pcie_a10_hip_0_hip_ctrl_test_in          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- test_in
			pcie_a10_hip_0_hip_ctrl_simu_mode_pipe   : in  std_logic                     := 'X';             -- simu_mode_pipe
			pcie_a10_hip_0_hip_pipe_sim_pipe_pclk_in : in  std_logic                     := 'X';             -- sim_pipe_pclk_in
			pcie_a10_hip_0_hip_pipe_sim_pipe_rate    : out std_logic_vector(1 downto 0);                     -- sim_pipe_rate
			pcie_a10_hip_0_hip_pipe_sim_ltssmstate   : out std_logic_vector(4 downto 0);                     -- sim_ltssmstate
			pcie_a10_hip_0_hip_pipe_eidleinfersel0   : out std_logic_vector(2 downto 0);                     -- eidleinfersel0
			pcie_a10_hip_0_hip_pipe_eidleinfersel1   : out std_logic_vector(2 downto 0);                     -- eidleinfersel1
			pcie_a10_hip_0_hip_pipe_eidleinfersel2   : out std_logic_vector(2 downto 0);                     -- eidleinfersel2
			pcie_a10_hip_0_hip_pipe_eidleinfersel3   : out std_logic_vector(2 downto 0);                     -- eidleinfersel3
			pcie_a10_hip_0_hip_pipe_eidleinfersel4   : out std_logic_vector(2 downto 0);                     -- eidleinfersel4
			pcie_a10_hip_0_hip_pipe_eidleinfersel5   : out std_logic_vector(2 downto 0);                     -- eidleinfersel5
			pcie_a10_hip_0_hip_pipe_eidleinfersel6   : out std_logic_vector(2 downto 0);                     -- eidleinfersel6
			pcie_a10_hip_0_hip_pipe_eidleinfersel7   : out std_logic_vector(2 downto 0);                     -- eidleinfersel7
			pcie_a10_hip_0_hip_pipe_powerdown0       : out std_logic_vector(1 downto 0);                     -- powerdown0
			pcie_a10_hip_0_hip_pipe_powerdown1       : out std_logic_vector(1 downto 0);                     -- powerdown1
			pcie_a10_hip_0_hip_pipe_powerdown2       : out std_logic_vector(1 downto 0);                     -- powerdown2
			pcie_a10_hip_0_hip_pipe_powerdown3       : out std_logic_vector(1 downto 0);                     -- powerdown3
			pcie_a10_hip_0_hip_pipe_powerdown4       : out std_logic_vector(1 downto 0);                     -- powerdown4
			pcie_a10_hip_0_hip_pipe_powerdown5       : out std_logic_vector(1 downto 0);                     -- powerdown5
			pcie_a10_hip_0_hip_pipe_powerdown6       : out std_logic_vector(1 downto 0);                     -- powerdown6
			pcie_a10_hip_0_hip_pipe_powerdown7       : out std_logic_vector(1 downto 0);                     -- powerdown7
			pcie_a10_hip_0_hip_pipe_rxpolarity0      : out std_logic;                                        -- rxpolarity0
			pcie_a10_hip_0_hip_pipe_rxpolarity1      : out std_logic;                                        -- rxpolarity1
			pcie_a10_hip_0_hip_pipe_rxpolarity2      : out std_logic;                                        -- rxpolarity2
			pcie_a10_hip_0_hip_pipe_rxpolarity3      : out std_logic;                                        -- rxpolarity3
			pcie_a10_hip_0_hip_pipe_rxpolarity4      : out std_logic;                                        -- rxpolarity4
			pcie_a10_hip_0_hip_pipe_rxpolarity5      : out std_logic;                                        -- rxpolarity5
			pcie_a10_hip_0_hip_pipe_rxpolarity6      : out std_logic;                                        -- rxpolarity6
			pcie_a10_hip_0_hip_pipe_rxpolarity7      : out std_logic;                                        -- rxpolarity7
			pcie_a10_hip_0_hip_pipe_txcompl0         : out std_logic;                                        -- txcompl0
			pcie_a10_hip_0_hip_pipe_txcompl1         : out std_logic;                                        -- txcompl1
			pcie_a10_hip_0_hip_pipe_txcompl2         : out std_logic;                                        -- txcompl2
			pcie_a10_hip_0_hip_pipe_txcompl3         : out std_logic;                                        -- txcompl3
			pcie_a10_hip_0_hip_pipe_txcompl4         : out std_logic;                                        -- txcompl4
			pcie_a10_hip_0_hip_pipe_txcompl5         : out std_logic;                                        -- txcompl5
			pcie_a10_hip_0_hip_pipe_txcompl6         : out std_logic;                                        -- txcompl6
			pcie_a10_hip_0_hip_pipe_txcompl7         : out std_logic;                                        -- txcompl7
			pcie_a10_hip_0_hip_pipe_txdata0          : out std_logic_vector(31 downto 0);                    -- txdata0
			pcie_a10_hip_0_hip_pipe_txdata1          : out std_logic_vector(31 downto 0);                    -- txdata1
			pcie_a10_hip_0_hip_pipe_txdata2          : out std_logic_vector(31 downto 0);                    -- txdata2
			pcie_a10_hip_0_hip_pipe_txdata3          : out std_logic_vector(31 downto 0);                    -- txdata3
			pcie_a10_hip_0_hip_pipe_txdata4          : out std_logic_vector(31 downto 0);                    -- txdata4
			pcie_a10_hip_0_hip_pipe_txdata5          : out std_logic_vector(31 downto 0);                    -- txdata5
			pcie_a10_hip_0_hip_pipe_txdata6          : out std_logic_vector(31 downto 0);                    -- txdata6
			pcie_a10_hip_0_hip_pipe_txdata7          : out std_logic_vector(31 downto 0);                    -- txdata7
			pcie_a10_hip_0_hip_pipe_txdatak0         : out std_logic_vector(3 downto 0);                     -- txdatak0
			pcie_a10_hip_0_hip_pipe_txdatak1         : out std_logic_vector(3 downto 0);                     -- txdatak1
			pcie_a10_hip_0_hip_pipe_txdatak2         : out std_logic_vector(3 downto 0);                     -- txdatak2
			pcie_a10_hip_0_hip_pipe_txdatak3         : out std_logic_vector(3 downto 0);                     -- txdatak3
			pcie_a10_hip_0_hip_pipe_txdatak4         : out std_logic_vector(3 downto 0);                     -- txdatak4
			pcie_a10_hip_0_hip_pipe_txdatak5         : out std_logic_vector(3 downto 0);                     -- txdatak5
			pcie_a10_hip_0_hip_pipe_txdatak6         : out std_logic_vector(3 downto 0);                     -- txdatak6
			pcie_a10_hip_0_hip_pipe_txdatak7         : out std_logic_vector(3 downto 0);                     -- txdatak7
			pcie_a10_hip_0_hip_pipe_txdetectrx0      : out std_logic;                                        -- txdetectrx0
			pcie_a10_hip_0_hip_pipe_txdetectrx1      : out std_logic;                                        -- txdetectrx1
			pcie_a10_hip_0_hip_pipe_txdetectrx2      : out std_logic;                                        -- txdetectrx2
			pcie_a10_hip_0_hip_pipe_txdetectrx3      : out std_logic;                                        -- txdetectrx3
			pcie_a10_hip_0_hip_pipe_txdetectrx4      : out std_logic;                                        -- txdetectrx4
			pcie_a10_hip_0_hip_pipe_txdetectrx5      : out std_logic;                                        -- txdetectrx5
			pcie_a10_hip_0_hip_pipe_txdetectrx6      : out std_logic;                                        -- txdetectrx6
			pcie_a10_hip_0_hip_pipe_txdetectrx7      : out std_logic;                                        -- txdetectrx7
			pcie_a10_hip_0_hip_pipe_txelecidle0      : out std_logic;                                        -- txelecidle0
			pcie_a10_hip_0_hip_pipe_txelecidle1      : out std_logic;                                        -- txelecidle1
			pcie_a10_hip_0_hip_pipe_txelecidle2      : out std_logic;                                        -- txelecidle2
			pcie_a10_hip_0_hip_pipe_txelecidle3      : out std_logic;                                        -- txelecidle3
			pcie_a10_hip_0_hip_pipe_txelecidle4      : out std_logic;                                        -- txelecidle4
			pcie_a10_hip_0_hip_pipe_txelecidle5      : out std_logic;                                        -- txelecidle5
			pcie_a10_hip_0_hip_pipe_txelecidle6      : out std_logic;                                        -- txelecidle6
			pcie_a10_hip_0_hip_pipe_txelecidle7      : out std_logic;                                        -- txelecidle7
			pcie_a10_hip_0_hip_pipe_txdeemph0        : out std_logic;                                        -- txdeemph0
			pcie_a10_hip_0_hip_pipe_txdeemph1        : out std_logic;                                        -- txdeemph1
			pcie_a10_hip_0_hip_pipe_txdeemph2        : out std_logic;                                        -- txdeemph2
			pcie_a10_hip_0_hip_pipe_txdeemph3        : out std_logic;                                        -- txdeemph3
			pcie_a10_hip_0_hip_pipe_txdeemph4        : out std_logic;                                        -- txdeemph4
			pcie_a10_hip_0_hip_pipe_txdeemph5        : out std_logic;                                        -- txdeemph5
			pcie_a10_hip_0_hip_pipe_txdeemph6        : out std_logic;                                        -- txdeemph6
			pcie_a10_hip_0_hip_pipe_txdeemph7        : out std_logic;                                        -- txdeemph7
			pcie_a10_hip_0_hip_pipe_txmargin0        : out std_logic_vector(2 downto 0);                     -- txmargin0
			pcie_a10_hip_0_hip_pipe_txmargin1        : out std_logic_vector(2 downto 0);                     -- txmargin1
			pcie_a10_hip_0_hip_pipe_txmargin2        : out std_logic_vector(2 downto 0);                     -- txmargin2
			pcie_a10_hip_0_hip_pipe_txmargin3        : out std_logic_vector(2 downto 0);                     -- txmargin3
			pcie_a10_hip_0_hip_pipe_txmargin4        : out std_logic_vector(2 downto 0);                     -- txmargin4
			pcie_a10_hip_0_hip_pipe_txmargin5        : out std_logic_vector(2 downto 0);                     -- txmargin5
			pcie_a10_hip_0_hip_pipe_txmargin6        : out std_logic_vector(2 downto 0);                     -- txmargin6
			pcie_a10_hip_0_hip_pipe_txmargin7        : out std_logic_vector(2 downto 0);                     -- txmargin7
			pcie_a10_hip_0_hip_pipe_txswing0         : out std_logic;                                        -- txswing0
			pcie_a10_hip_0_hip_pipe_txswing1         : out std_logic;                                        -- txswing1
			pcie_a10_hip_0_hip_pipe_txswing2         : out std_logic;                                        -- txswing2
			pcie_a10_hip_0_hip_pipe_txswing3         : out std_logic;                                        -- txswing3
			pcie_a10_hip_0_hip_pipe_txswing4         : out std_logic;                                        -- txswing4
			pcie_a10_hip_0_hip_pipe_txswing5         : out std_logic;                                        -- txswing5
			pcie_a10_hip_0_hip_pipe_txswing6         : out std_logic;                                        -- txswing6
			pcie_a10_hip_0_hip_pipe_txswing7         : out std_logic;                                        -- txswing7
			pcie_a10_hip_0_hip_pipe_phystatus0       : in  std_logic                     := 'X';             -- phystatus0
			pcie_a10_hip_0_hip_pipe_phystatus1       : in  std_logic                     := 'X';             -- phystatus1
			pcie_a10_hip_0_hip_pipe_phystatus2       : in  std_logic                     := 'X';             -- phystatus2
			pcie_a10_hip_0_hip_pipe_phystatus3       : in  std_logic                     := 'X';             -- phystatus3
			pcie_a10_hip_0_hip_pipe_phystatus4       : in  std_logic                     := 'X';             -- phystatus4
			pcie_a10_hip_0_hip_pipe_phystatus5       : in  std_logic                     := 'X';             -- phystatus5
			pcie_a10_hip_0_hip_pipe_phystatus6       : in  std_logic                     := 'X';             -- phystatus6
			pcie_a10_hip_0_hip_pipe_phystatus7       : in  std_logic                     := 'X';             -- phystatus7
			pcie_a10_hip_0_hip_pipe_rxdata0          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- rxdata0
			pcie_a10_hip_0_hip_pipe_rxdata1          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- rxdata1
			pcie_a10_hip_0_hip_pipe_rxdata2          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- rxdata2
			pcie_a10_hip_0_hip_pipe_rxdata3          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- rxdata3
			pcie_a10_hip_0_hip_pipe_rxdata4          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- rxdata4
			pcie_a10_hip_0_hip_pipe_rxdata5          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- rxdata5
			pcie_a10_hip_0_hip_pipe_rxdata6          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- rxdata6
			pcie_a10_hip_0_hip_pipe_rxdata7          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- rxdata7
			pcie_a10_hip_0_hip_pipe_rxdatak0         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- rxdatak0
			pcie_a10_hip_0_hip_pipe_rxdatak1         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- rxdatak1
			pcie_a10_hip_0_hip_pipe_rxdatak2         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- rxdatak2
			pcie_a10_hip_0_hip_pipe_rxdatak3         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- rxdatak3
			pcie_a10_hip_0_hip_pipe_rxdatak4         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- rxdatak4
			pcie_a10_hip_0_hip_pipe_rxdatak5         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- rxdatak5
			pcie_a10_hip_0_hip_pipe_rxdatak6         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- rxdatak6
			pcie_a10_hip_0_hip_pipe_rxdatak7         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- rxdatak7
			pcie_a10_hip_0_hip_pipe_rxelecidle0      : in  std_logic                     := 'X';             -- rxelecidle0
			pcie_a10_hip_0_hip_pipe_rxelecidle1      : in  std_logic                     := 'X';             -- rxelecidle1
			pcie_a10_hip_0_hip_pipe_rxelecidle2      : in  std_logic                     := 'X';             -- rxelecidle2
			pcie_a10_hip_0_hip_pipe_rxelecidle3      : in  std_logic                     := 'X';             -- rxelecidle3
			pcie_a10_hip_0_hip_pipe_rxelecidle4      : in  std_logic                     := 'X';             -- rxelecidle4
			pcie_a10_hip_0_hip_pipe_rxelecidle5      : in  std_logic                     := 'X';             -- rxelecidle5
			pcie_a10_hip_0_hip_pipe_rxelecidle6      : in  std_logic                     := 'X';             -- rxelecidle6
			pcie_a10_hip_0_hip_pipe_rxelecidle7      : in  std_logic                     := 'X';             -- rxelecidle7
			pcie_a10_hip_0_hip_pipe_rxstatus0        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus0
			pcie_a10_hip_0_hip_pipe_rxstatus1        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus1
			pcie_a10_hip_0_hip_pipe_rxstatus2        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus2
			pcie_a10_hip_0_hip_pipe_rxstatus3        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus3
			pcie_a10_hip_0_hip_pipe_rxstatus4        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus4
			pcie_a10_hip_0_hip_pipe_rxstatus5        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus5
			pcie_a10_hip_0_hip_pipe_rxstatus6        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus6
			pcie_a10_hip_0_hip_pipe_rxstatus7        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus7
			pcie_a10_hip_0_hip_pipe_rxvalid0         : in  std_logic                     := 'X';             -- rxvalid0
			pcie_a10_hip_0_hip_pipe_rxvalid1         : in  std_logic                     := 'X';             -- rxvalid1
			pcie_a10_hip_0_hip_pipe_rxvalid2         : in  std_logic                     := 'X';             -- rxvalid2
			pcie_a10_hip_0_hip_pipe_rxvalid3         : in  std_logic                     := 'X';             -- rxvalid3
			pcie_a10_hip_0_hip_pipe_rxvalid4         : in  std_logic                     := 'X';             -- rxvalid4
			pcie_a10_hip_0_hip_pipe_rxvalid5         : in  std_logic                     := 'X';             -- rxvalid5
			pcie_a10_hip_0_hip_pipe_rxvalid6         : in  std_logic                     := 'X';             -- rxvalid6
			pcie_a10_hip_0_hip_pipe_rxvalid7         : in  std_logic                     := 'X';             -- rxvalid7
			pcie_a10_hip_0_hip_pipe_rxdataskip0      : in  std_logic                     := 'X';             -- rxdataskip0
			pcie_a10_hip_0_hip_pipe_rxdataskip1      : in  std_logic                     := 'X';             -- rxdataskip1
			pcie_a10_hip_0_hip_pipe_rxdataskip2      : in  std_logic                     := 'X';             -- rxdataskip2
			pcie_a10_hip_0_hip_pipe_rxdataskip3      : in  std_logic                     := 'X';             -- rxdataskip3
			pcie_a10_hip_0_hip_pipe_rxdataskip4      : in  std_logic                     := 'X';             -- rxdataskip4
			pcie_a10_hip_0_hip_pipe_rxdataskip5      : in  std_logic                     := 'X';             -- rxdataskip5
			pcie_a10_hip_0_hip_pipe_rxdataskip6      : in  std_logic                     := 'X';             -- rxdataskip6
			pcie_a10_hip_0_hip_pipe_rxdataskip7      : in  std_logic                     := 'X';             -- rxdataskip7
			pcie_a10_hip_0_hip_pipe_rxblkst0         : in  std_logic                     := 'X';             -- rxblkst0
			pcie_a10_hip_0_hip_pipe_rxblkst1         : in  std_logic                     := 'X';             -- rxblkst1
			pcie_a10_hip_0_hip_pipe_rxblkst2         : in  std_logic                     := 'X';             -- rxblkst2
			pcie_a10_hip_0_hip_pipe_rxblkst3         : in  std_logic                     := 'X';             -- rxblkst3
			pcie_a10_hip_0_hip_pipe_rxblkst4         : in  std_logic                     := 'X';             -- rxblkst4
			pcie_a10_hip_0_hip_pipe_rxblkst5         : in  std_logic                     := 'X';             -- rxblkst5
			pcie_a10_hip_0_hip_pipe_rxblkst6         : in  std_logic                     := 'X';             -- rxblkst6
			pcie_a10_hip_0_hip_pipe_rxblkst7         : in  std_logic                     := 'X';             -- rxblkst7
			pcie_a10_hip_0_hip_pipe_rxsynchd0        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rxsynchd0
			pcie_a10_hip_0_hip_pipe_rxsynchd1        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rxsynchd1
			pcie_a10_hip_0_hip_pipe_rxsynchd2        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rxsynchd2
			pcie_a10_hip_0_hip_pipe_rxsynchd3        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rxsynchd3
			pcie_a10_hip_0_hip_pipe_rxsynchd4        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rxsynchd4
			pcie_a10_hip_0_hip_pipe_rxsynchd5        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rxsynchd5
			pcie_a10_hip_0_hip_pipe_rxsynchd6        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rxsynchd6
			pcie_a10_hip_0_hip_pipe_rxsynchd7        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rxsynchd7
			pcie_a10_hip_0_hip_pipe_currentcoeff0    : out std_logic_vector(17 downto 0);                    -- currentcoeff0
			pcie_a10_hip_0_hip_pipe_currentcoeff1    : out std_logic_vector(17 downto 0);                    -- currentcoeff1
			pcie_a10_hip_0_hip_pipe_currentcoeff2    : out std_logic_vector(17 downto 0);                    -- currentcoeff2
			pcie_a10_hip_0_hip_pipe_currentcoeff3    : out std_logic_vector(17 downto 0);                    -- currentcoeff3
			pcie_a10_hip_0_hip_pipe_currentcoeff4    : out std_logic_vector(17 downto 0);                    -- currentcoeff4
			pcie_a10_hip_0_hip_pipe_currentcoeff5    : out std_logic_vector(17 downto 0);                    -- currentcoeff5
			pcie_a10_hip_0_hip_pipe_currentcoeff6    : out std_logic_vector(17 downto 0);                    -- currentcoeff6
			pcie_a10_hip_0_hip_pipe_currentcoeff7    : out std_logic_vector(17 downto 0);                    -- currentcoeff7
			pcie_a10_hip_0_hip_pipe_currentrxpreset0 : out std_logic_vector(2 downto 0);                     -- currentrxpreset0
			pcie_a10_hip_0_hip_pipe_currentrxpreset1 : out std_logic_vector(2 downto 0);                     -- currentrxpreset1
			pcie_a10_hip_0_hip_pipe_currentrxpreset2 : out std_logic_vector(2 downto 0);                     -- currentrxpreset2
			pcie_a10_hip_0_hip_pipe_currentrxpreset3 : out std_logic_vector(2 downto 0);                     -- currentrxpreset3
			pcie_a10_hip_0_hip_pipe_currentrxpreset4 : out std_logic_vector(2 downto 0);                     -- currentrxpreset4
			pcie_a10_hip_0_hip_pipe_currentrxpreset5 : out std_logic_vector(2 downto 0);                     -- currentrxpreset5
			pcie_a10_hip_0_hip_pipe_currentrxpreset6 : out std_logic_vector(2 downto 0);                     -- currentrxpreset6
			pcie_a10_hip_0_hip_pipe_currentrxpreset7 : out std_logic_vector(2 downto 0);                     -- currentrxpreset7
			pcie_a10_hip_0_hip_pipe_txsynchd0        : out std_logic_vector(1 downto 0);                     -- txsynchd0
			pcie_a10_hip_0_hip_pipe_txsynchd1        : out std_logic_vector(1 downto 0);                     -- txsynchd1
			pcie_a10_hip_0_hip_pipe_txsynchd2        : out std_logic_vector(1 downto 0);                     -- txsynchd2
			pcie_a10_hip_0_hip_pipe_txsynchd3        : out std_logic_vector(1 downto 0);                     -- txsynchd3
			pcie_a10_hip_0_hip_pipe_txsynchd4        : out std_logic_vector(1 downto 0);                     -- txsynchd4
			pcie_a10_hip_0_hip_pipe_txsynchd5        : out std_logic_vector(1 downto 0);                     -- txsynchd5
			pcie_a10_hip_0_hip_pipe_txsynchd6        : out std_logic_vector(1 downto 0);                     -- txsynchd6
			pcie_a10_hip_0_hip_pipe_txsynchd7        : out std_logic_vector(1 downto 0);                     -- txsynchd7
			pcie_a10_hip_0_hip_pipe_txblkst0         : out std_logic;                                        -- txblkst0
			pcie_a10_hip_0_hip_pipe_txblkst1         : out std_logic;                                        -- txblkst1
			pcie_a10_hip_0_hip_pipe_txblkst2         : out std_logic;                                        -- txblkst2
			pcie_a10_hip_0_hip_pipe_txblkst3         : out std_logic;                                        -- txblkst3
			pcie_a10_hip_0_hip_pipe_txblkst4         : out std_logic;                                        -- txblkst4
			pcie_a10_hip_0_hip_pipe_txblkst5         : out std_logic;                                        -- txblkst5
			pcie_a10_hip_0_hip_pipe_txblkst6         : out std_logic;                                        -- txblkst6
			pcie_a10_hip_0_hip_pipe_txblkst7         : out std_logic;                                        -- txblkst7
			pcie_a10_hip_0_hip_pipe_txdataskip0      : out std_logic;                                        -- txdataskip0
			pcie_a10_hip_0_hip_pipe_txdataskip1      : out std_logic;                                        -- txdataskip1
			pcie_a10_hip_0_hip_pipe_txdataskip2      : out std_logic;                                        -- txdataskip2
			pcie_a10_hip_0_hip_pipe_txdataskip3      : out std_logic;                                        -- txdataskip3
			pcie_a10_hip_0_hip_pipe_txdataskip4      : out std_logic;                                        -- txdataskip4
			pcie_a10_hip_0_hip_pipe_txdataskip5      : out std_logic;                                        -- txdataskip5
			pcie_a10_hip_0_hip_pipe_txdataskip6      : out std_logic;                                        -- txdataskip6
			pcie_a10_hip_0_hip_pipe_txdataskip7      : out std_logic;                                        -- txdataskip7
			pcie_a10_hip_0_hip_pipe_rate0            : out std_logic_vector(1 downto 0);                     -- rate0
			pcie_a10_hip_0_hip_pipe_rate1            : out std_logic_vector(1 downto 0);                     -- rate1
			pcie_a10_hip_0_hip_pipe_rate2            : out std_logic_vector(1 downto 0);                     -- rate2
			pcie_a10_hip_0_hip_pipe_rate3            : out std_logic_vector(1 downto 0);                     -- rate3
			pcie_a10_hip_0_hip_pipe_rate4            : out std_logic_vector(1 downto 0);                     -- rate4
			pcie_a10_hip_0_hip_pipe_rate5            : out std_logic_vector(1 downto 0);                     -- rate5
			pcie_a10_hip_0_hip_pipe_rate6            : out std_logic_vector(1 downto 0);                     -- rate6
			pcie_a10_hip_0_hip_pipe_rate7            : out std_logic_vector(1 downto 0);                     -- rate7
			pcie_a10_hip_0_hip_serial_rx_in0         : in  std_logic                     := 'X';             -- rx_in0
			pcie_a10_hip_0_hip_serial_rx_in1         : in  std_logic                     := 'X';             -- rx_in1
			pcie_a10_hip_0_hip_serial_rx_in2         : in  std_logic                     := 'X';             -- rx_in2
			pcie_a10_hip_0_hip_serial_rx_in3         : in  std_logic                     := 'X';             -- rx_in3
			pcie_a10_hip_0_hip_serial_rx_in4         : in  std_logic                     := 'X';             -- rx_in4
			pcie_a10_hip_0_hip_serial_rx_in5         : in  std_logic                     := 'X';             -- rx_in5
			pcie_a10_hip_0_hip_serial_rx_in6         : in  std_logic                     := 'X';             -- rx_in6
			pcie_a10_hip_0_hip_serial_rx_in7         : in  std_logic                     := 'X';             -- rx_in7
			pcie_a10_hip_0_hip_serial_tx_out0        : out std_logic;                                        -- tx_out0
			pcie_a10_hip_0_hip_serial_tx_out1        : out std_logic;                                        -- tx_out1
			pcie_a10_hip_0_hip_serial_tx_out2        : out std_logic;                                        -- tx_out2
			pcie_a10_hip_0_hip_serial_tx_out3        : out std_logic;                                        -- tx_out3
			pcie_a10_hip_0_hip_serial_tx_out4        : out std_logic;                                        -- tx_out4
			pcie_a10_hip_0_hip_serial_tx_out5        : out std_logic;                                        -- tx_out5
			pcie_a10_hip_0_hip_serial_tx_out6        : out std_logic;                                        -- tx_out6
			pcie_a10_hip_0_hip_serial_tx_out7        : out std_logic;                                        -- tx_out7
			pcie_a10_hip_0_npor_npor                 : in  std_logic                     := 'X';             -- npor
			pcie_a10_hip_0_npor_pin_perst            : in  std_logic                     := 'X';             -- pin_perst
			refclk_clk                               : in  std_logic                     := 'X'              -- clk
		);
	end component gidel_hawkeye_pcie;

	u0 : component gidel_hawkeye_pcie
		port map (
			pcie_a10_hip_0_hip_ctrl_test_in          => CONNECTED_TO_pcie_a10_hip_0_hip_ctrl_test_in,          --   pcie_a10_hip_0_hip_ctrl.test_in
			pcie_a10_hip_0_hip_ctrl_simu_mode_pipe   => CONNECTED_TO_pcie_a10_hip_0_hip_ctrl_simu_mode_pipe,   --                          .simu_mode_pipe
			pcie_a10_hip_0_hip_pipe_sim_pipe_pclk_in => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_sim_pipe_pclk_in, --   pcie_a10_hip_0_hip_pipe.sim_pipe_pclk_in
			pcie_a10_hip_0_hip_pipe_sim_pipe_rate    => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_sim_pipe_rate,    --                          .sim_pipe_rate
			pcie_a10_hip_0_hip_pipe_sim_ltssmstate   => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_sim_ltssmstate,   --                          .sim_ltssmstate
			pcie_a10_hip_0_hip_pipe_eidleinfersel0   => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_eidleinfersel0,   --                          .eidleinfersel0
			pcie_a10_hip_0_hip_pipe_eidleinfersel1   => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_eidleinfersel1,   --                          .eidleinfersel1
			pcie_a10_hip_0_hip_pipe_eidleinfersel2   => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_eidleinfersel2,   --                          .eidleinfersel2
			pcie_a10_hip_0_hip_pipe_eidleinfersel3   => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_eidleinfersel3,   --                          .eidleinfersel3
			pcie_a10_hip_0_hip_pipe_eidleinfersel4   => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_eidleinfersel4,   --                          .eidleinfersel4
			pcie_a10_hip_0_hip_pipe_eidleinfersel5   => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_eidleinfersel5,   --                          .eidleinfersel5
			pcie_a10_hip_0_hip_pipe_eidleinfersel6   => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_eidleinfersel6,   --                          .eidleinfersel6
			pcie_a10_hip_0_hip_pipe_eidleinfersel7   => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_eidleinfersel7,   --                          .eidleinfersel7
			pcie_a10_hip_0_hip_pipe_powerdown0       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_powerdown0,       --                          .powerdown0
			pcie_a10_hip_0_hip_pipe_powerdown1       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_powerdown1,       --                          .powerdown1
			pcie_a10_hip_0_hip_pipe_powerdown2       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_powerdown2,       --                          .powerdown2
			pcie_a10_hip_0_hip_pipe_powerdown3       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_powerdown3,       --                          .powerdown3
			pcie_a10_hip_0_hip_pipe_powerdown4       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_powerdown4,       --                          .powerdown4
			pcie_a10_hip_0_hip_pipe_powerdown5       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_powerdown5,       --                          .powerdown5
			pcie_a10_hip_0_hip_pipe_powerdown6       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_powerdown6,       --                          .powerdown6
			pcie_a10_hip_0_hip_pipe_powerdown7       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_powerdown7,       --                          .powerdown7
			pcie_a10_hip_0_hip_pipe_rxpolarity0      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxpolarity0,      --                          .rxpolarity0
			pcie_a10_hip_0_hip_pipe_rxpolarity1      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxpolarity1,      --                          .rxpolarity1
			pcie_a10_hip_0_hip_pipe_rxpolarity2      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxpolarity2,      --                          .rxpolarity2
			pcie_a10_hip_0_hip_pipe_rxpolarity3      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxpolarity3,      --                          .rxpolarity3
			pcie_a10_hip_0_hip_pipe_rxpolarity4      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxpolarity4,      --                          .rxpolarity4
			pcie_a10_hip_0_hip_pipe_rxpolarity5      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxpolarity5,      --                          .rxpolarity5
			pcie_a10_hip_0_hip_pipe_rxpolarity6      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxpolarity6,      --                          .rxpolarity6
			pcie_a10_hip_0_hip_pipe_rxpolarity7      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxpolarity7,      --                          .rxpolarity7
			pcie_a10_hip_0_hip_pipe_txcompl0         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txcompl0,         --                          .txcompl0
			pcie_a10_hip_0_hip_pipe_txcompl1         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txcompl1,         --                          .txcompl1
			pcie_a10_hip_0_hip_pipe_txcompl2         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txcompl2,         --                          .txcompl2
			pcie_a10_hip_0_hip_pipe_txcompl3         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txcompl3,         --                          .txcompl3
			pcie_a10_hip_0_hip_pipe_txcompl4         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txcompl4,         --                          .txcompl4
			pcie_a10_hip_0_hip_pipe_txcompl5         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txcompl5,         --                          .txcompl5
			pcie_a10_hip_0_hip_pipe_txcompl6         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txcompl6,         --                          .txcompl6
			pcie_a10_hip_0_hip_pipe_txcompl7         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txcompl7,         --                          .txcompl7
			pcie_a10_hip_0_hip_pipe_txdata0          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdata0,          --                          .txdata0
			pcie_a10_hip_0_hip_pipe_txdata1          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdata1,          --                          .txdata1
			pcie_a10_hip_0_hip_pipe_txdata2          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdata2,          --                          .txdata2
			pcie_a10_hip_0_hip_pipe_txdata3          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdata3,          --                          .txdata3
			pcie_a10_hip_0_hip_pipe_txdata4          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdata4,          --                          .txdata4
			pcie_a10_hip_0_hip_pipe_txdata5          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdata5,          --                          .txdata5
			pcie_a10_hip_0_hip_pipe_txdata6          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdata6,          --                          .txdata6
			pcie_a10_hip_0_hip_pipe_txdata7          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdata7,          --                          .txdata7
			pcie_a10_hip_0_hip_pipe_txdatak0         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdatak0,         --                          .txdatak0
			pcie_a10_hip_0_hip_pipe_txdatak1         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdatak1,         --                          .txdatak1
			pcie_a10_hip_0_hip_pipe_txdatak2         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdatak2,         --                          .txdatak2
			pcie_a10_hip_0_hip_pipe_txdatak3         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdatak3,         --                          .txdatak3
			pcie_a10_hip_0_hip_pipe_txdatak4         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdatak4,         --                          .txdatak4
			pcie_a10_hip_0_hip_pipe_txdatak5         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdatak5,         --                          .txdatak5
			pcie_a10_hip_0_hip_pipe_txdatak6         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdatak6,         --                          .txdatak6
			pcie_a10_hip_0_hip_pipe_txdatak7         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdatak7,         --                          .txdatak7
			pcie_a10_hip_0_hip_pipe_txdetectrx0      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdetectrx0,      --                          .txdetectrx0
			pcie_a10_hip_0_hip_pipe_txdetectrx1      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdetectrx1,      --                          .txdetectrx1
			pcie_a10_hip_0_hip_pipe_txdetectrx2      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdetectrx2,      --                          .txdetectrx2
			pcie_a10_hip_0_hip_pipe_txdetectrx3      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdetectrx3,      --                          .txdetectrx3
			pcie_a10_hip_0_hip_pipe_txdetectrx4      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdetectrx4,      --                          .txdetectrx4
			pcie_a10_hip_0_hip_pipe_txdetectrx5      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdetectrx5,      --                          .txdetectrx5
			pcie_a10_hip_0_hip_pipe_txdetectrx6      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdetectrx6,      --                          .txdetectrx6
			pcie_a10_hip_0_hip_pipe_txdetectrx7      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdetectrx7,      --                          .txdetectrx7
			pcie_a10_hip_0_hip_pipe_txelecidle0      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txelecidle0,      --                          .txelecidle0
			pcie_a10_hip_0_hip_pipe_txelecidle1      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txelecidle1,      --                          .txelecidle1
			pcie_a10_hip_0_hip_pipe_txelecidle2      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txelecidle2,      --                          .txelecidle2
			pcie_a10_hip_0_hip_pipe_txelecidle3      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txelecidle3,      --                          .txelecidle3
			pcie_a10_hip_0_hip_pipe_txelecidle4      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txelecidle4,      --                          .txelecidle4
			pcie_a10_hip_0_hip_pipe_txelecidle5      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txelecidle5,      --                          .txelecidle5
			pcie_a10_hip_0_hip_pipe_txelecidle6      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txelecidle6,      --                          .txelecidle6
			pcie_a10_hip_0_hip_pipe_txelecidle7      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txelecidle7,      --                          .txelecidle7
			pcie_a10_hip_0_hip_pipe_txdeemph0        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdeemph0,        --                          .txdeemph0
			pcie_a10_hip_0_hip_pipe_txdeemph1        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdeemph1,        --                          .txdeemph1
			pcie_a10_hip_0_hip_pipe_txdeemph2        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdeemph2,        --                          .txdeemph2
			pcie_a10_hip_0_hip_pipe_txdeemph3        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdeemph3,        --                          .txdeemph3
			pcie_a10_hip_0_hip_pipe_txdeemph4        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdeemph4,        --                          .txdeemph4
			pcie_a10_hip_0_hip_pipe_txdeemph5        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdeemph5,        --                          .txdeemph5
			pcie_a10_hip_0_hip_pipe_txdeemph6        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdeemph6,        --                          .txdeemph6
			pcie_a10_hip_0_hip_pipe_txdeemph7        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdeemph7,        --                          .txdeemph7
			pcie_a10_hip_0_hip_pipe_txmargin0        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txmargin0,        --                          .txmargin0
			pcie_a10_hip_0_hip_pipe_txmargin1        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txmargin1,        --                          .txmargin1
			pcie_a10_hip_0_hip_pipe_txmargin2        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txmargin2,        --                          .txmargin2
			pcie_a10_hip_0_hip_pipe_txmargin3        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txmargin3,        --                          .txmargin3
			pcie_a10_hip_0_hip_pipe_txmargin4        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txmargin4,        --                          .txmargin4
			pcie_a10_hip_0_hip_pipe_txmargin5        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txmargin5,        --                          .txmargin5
			pcie_a10_hip_0_hip_pipe_txmargin6        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txmargin6,        --                          .txmargin6
			pcie_a10_hip_0_hip_pipe_txmargin7        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txmargin7,        --                          .txmargin7
			pcie_a10_hip_0_hip_pipe_txswing0         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txswing0,         --                          .txswing0
			pcie_a10_hip_0_hip_pipe_txswing1         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txswing1,         --                          .txswing1
			pcie_a10_hip_0_hip_pipe_txswing2         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txswing2,         --                          .txswing2
			pcie_a10_hip_0_hip_pipe_txswing3         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txswing3,         --                          .txswing3
			pcie_a10_hip_0_hip_pipe_txswing4         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txswing4,         --                          .txswing4
			pcie_a10_hip_0_hip_pipe_txswing5         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txswing5,         --                          .txswing5
			pcie_a10_hip_0_hip_pipe_txswing6         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txswing6,         --                          .txswing6
			pcie_a10_hip_0_hip_pipe_txswing7         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txswing7,         --                          .txswing7
			pcie_a10_hip_0_hip_pipe_phystatus0       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_phystatus0,       --                          .phystatus0
			pcie_a10_hip_0_hip_pipe_phystatus1       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_phystatus1,       --                          .phystatus1
			pcie_a10_hip_0_hip_pipe_phystatus2       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_phystatus2,       --                          .phystatus2
			pcie_a10_hip_0_hip_pipe_phystatus3       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_phystatus3,       --                          .phystatus3
			pcie_a10_hip_0_hip_pipe_phystatus4       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_phystatus4,       --                          .phystatus4
			pcie_a10_hip_0_hip_pipe_phystatus5       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_phystatus5,       --                          .phystatus5
			pcie_a10_hip_0_hip_pipe_phystatus6       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_phystatus6,       --                          .phystatus6
			pcie_a10_hip_0_hip_pipe_phystatus7       => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_phystatus7,       --                          .phystatus7
			pcie_a10_hip_0_hip_pipe_rxdata0          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdata0,          --                          .rxdata0
			pcie_a10_hip_0_hip_pipe_rxdata1          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdata1,          --                          .rxdata1
			pcie_a10_hip_0_hip_pipe_rxdata2          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdata2,          --                          .rxdata2
			pcie_a10_hip_0_hip_pipe_rxdata3          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdata3,          --                          .rxdata3
			pcie_a10_hip_0_hip_pipe_rxdata4          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdata4,          --                          .rxdata4
			pcie_a10_hip_0_hip_pipe_rxdata5          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdata5,          --                          .rxdata5
			pcie_a10_hip_0_hip_pipe_rxdata6          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdata6,          --                          .rxdata6
			pcie_a10_hip_0_hip_pipe_rxdata7          => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdata7,          --                          .rxdata7
			pcie_a10_hip_0_hip_pipe_rxdatak0         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdatak0,         --                          .rxdatak0
			pcie_a10_hip_0_hip_pipe_rxdatak1         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdatak1,         --                          .rxdatak1
			pcie_a10_hip_0_hip_pipe_rxdatak2         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdatak2,         --                          .rxdatak2
			pcie_a10_hip_0_hip_pipe_rxdatak3         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdatak3,         --                          .rxdatak3
			pcie_a10_hip_0_hip_pipe_rxdatak4         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdatak4,         --                          .rxdatak4
			pcie_a10_hip_0_hip_pipe_rxdatak5         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdatak5,         --                          .rxdatak5
			pcie_a10_hip_0_hip_pipe_rxdatak6         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdatak6,         --                          .rxdatak6
			pcie_a10_hip_0_hip_pipe_rxdatak7         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdatak7,         --                          .rxdatak7
			pcie_a10_hip_0_hip_pipe_rxelecidle0      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxelecidle0,      --                          .rxelecidle0
			pcie_a10_hip_0_hip_pipe_rxelecidle1      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxelecidle1,      --                          .rxelecidle1
			pcie_a10_hip_0_hip_pipe_rxelecidle2      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxelecidle2,      --                          .rxelecidle2
			pcie_a10_hip_0_hip_pipe_rxelecidle3      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxelecidle3,      --                          .rxelecidle3
			pcie_a10_hip_0_hip_pipe_rxelecidle4      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxelecidle4,      --                          .rxelecidle4
			pcie_a10_hip_0_hip_pipe_rxelecidle5      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxelecidle5,      --                          .rxelecidle5
			pcie_a10_hip_0_hip_pipe_rxelecidle6      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxelecidle6,      --                          .rxelecidle6
			pcie_a10_hip_0_hip_pipe_rxelecidle7      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxelecidle7,      --                          .rxelecidle7
			pcie_a10_hip_0_hip_pipe_rxstatus0        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxstatus0,        --                          .rxstatus0
			pcie_a10_hip_0_hip_pipe_rxstatus1        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxstatus1,        --                          .rxstatus1
			pcie_a10_hip_0_hip_pipe_rxstatus2        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxstatus2,        --                          .rxstatus2
			pcie_a10_hip_0_hip_pipe_rxstatus3        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxstatus3,        --                          .rxstatus3
			pcie_a10_hip_0_hip_pipe_rxstatus4        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxstatus4,        --                          .rxstatus4
			pcie_a10_hip_0_hip_pipe_rxstatus5        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxstatus5,        --                          .rxstatus5
			pcie_a10_hip_0_hip_pipe_rxstatus6        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxstatus6,        --                          .rxstatus6
			pcie_a10_hip_0_hip_pipe_rxstatus7        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxstatus7,        --                          .rxstatus7
			pcie_a10_hip_0_hip_pipe_rxvalid0         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxvalid0,         --                          .rxvalid0
			pcie_a10_hip_0_hip_pipe_rxvalid1         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxvalid1,         --                          .rxvalid1
			pcie_a10_hip_0_hip_pipe_rxvalid2         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxvalid2,         --                          .rxvalid2
			pcie_a10_hip_0_hip_pipe_rxvalid3         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxvalid3,         --                          .rxvalid3
			pcie_a10_hip_0_hip_pipe_rxvalid4         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxvalid4,         --                          .rxvalid4
			pcie_a10_hip_0_hip_pipe_rxvalid5         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxvalid5,         --                          .rxvalid5
			pcie_a10_hip_0_hip_pipe_rxvalid6         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxvalid6,         --                          .rxvalid6
			pcie_a10_hip_0_hip_pipe_rxvalid7         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxvalid7,         --                          .rxvalid7
			pcie_a10_hip_0_hip_pipe_rxdataskip0      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdataskip0,      --                          .rxdataskip0
			pcie_a10_hip_0_hip_pipe_rxdataskip1      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdataskip1,      --                          .rxdataskip1
			pcie_a10_hip_0_hip_pipe_rxdataskip2      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdataskip2,      --                          .rxdataskip2
			pcie_a10_hip_0_hip_pipe_rxdataskip3      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdataskip3,      --                          .rxdataskip3
			pcie_a10_hip_0_hip_pipe_rxdataskip4      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdataskip4,      --                          .rxdataskip4
			pcie_a10_hip_0_hip_pipe_rxdataskip5      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdataskip5,      --                          .rxdataskip5
			pcie_a10_hip_0_hip_pipe_rxdataskip6      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdataskip6,      --                          .rxdataskip6
			pcie_a10_hip_0_hip_pipe_rxdataskip7      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxdataskip7,      --                          .rxdataskip7
			pcie_a10_hip_0_hip_pipe_rxblkst0         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxblkst0,         --                          .rxblkst0
			pcie_a10_hip_0_hip_pipe_rxblkst1         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxblkst1,         --                          .rxblkst1
			pcie_a10_hip_0_hip_pipe_rxblkst2         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxblkst2,         --                          .rxblkst2
			pcie_a10_hip_0_hip_pipe_rxblkst3         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxblkst3,         --                          .rxblkst3
			pcie_a10_hip_0_hip_pipe_rxblkst4         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxblkst4,         --                          .rxblkst4
			pcie_a10_hip_0_hip_pipe_rxblkst5         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxblkst5,         --                          .rxblkst5
			pcie_a10_hip_0_hip_pipe_rxblkst6         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxblkst6,         --                          .rxblkst6
			pcie_a10_hip_0_hip_pipe_rxblkst7         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxblkst7,         --                          .rxblkst7
			pcie_a10_hip_0_hip_pipe_rxsynchd0        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxsynchd0,        --                          .rxsynchd0
			pcie_a10_hip_0_hip_pipe_rxsynchd1        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxsynchd1,        --                          .rxsynchd1
			pcie_a10_hip_0_hip_pipe_rxsynchd2        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxsynchd2,        --                          .rxsynchd2
			pcie_a10_hip_0_hip_pipe_rxsynchd3        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxsynchd3,        --                          .rxsynchd3
			pcie_a10_hip_0_hip_pipe_rxsynchd4        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxsynchd4,        --                          .rxsynchd4
			pcie_a10_hip_0_hip_pipe_rxsynchd5        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxsynchd5,        --                          .rxsynchd5
			pcie_a10_hip_0_hip_pipe_rxsynchd6        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxsynchd6,        --                          .rxsynchd6
			pcie_a10_hip_0_hip_pipe_rxsynchd7        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rxsynchd7,        --                          .rxsynchd7
			pcie_a10_hip_0_hip_pipe_currentcoeff0    => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentcoeff0,    --                          .currentcoeff0
			pcie_a10_hip_0_hip_pipe_currentcoeff1    => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentcoeff1,    --                          .currentcoeff1
			pcie_a10_hip_0_hip_pipe_currentcoeff2    => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentcoeff2,    --                          .currentcoeff2
			pcie_a10_hip_0_hip_pipe_currentcoeff3    => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentcoeff3,    --                          .currentcoeff3
			pcie_a10_hip_0_hip_pipe_currentcoeff4    => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentcoeff4,    --                          .currentcoeff4
			pcie_a10_hip_0_hip_pipe_currentcoeff5    => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentcoeff5,    --                          .currentcoeff5
			pcie_a10_hip_0_hip_pipe_currentcoeff6    => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentcoeff6,    --                          .currentcoeff6
			pcie_a10_hip_0_hip_pipe_currentcoeff7    => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentcoeff7,    --                          .currentcoeff7
			pcie_a10_hip_0_hip_pipe_currentrxpreset0 => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentrxpreset0, --                          .currentrxpreset0
			pcie_a10_hip_0_hip_pipe_currentrxpreset1 => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentrxpreset1, --                          .currentrxpreset1
			pcie_a10_hip_0_hip_pipe_currentrxpreset2 => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentrxpreset2, --                          .currentrxpreset2
			pcie_a10_hip_0_hip_pipe_currentrxpreset3 => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentrxpreset3, --                          .currentrxpreset3
			pcie_a10_hip_0_hip_pipe_currentrxpreset4 => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentrxpreset4, --                          .currentrxpreset4
			pcie_a10_hip_0_hip_pipe_currentrxpreset5 => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentrxpreset5, --                          .currentrxpreset5
			pcie_a10_hip_0_hip_pipe_currentrxpreset6 => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentrxpreset6, --                          .currentrxpreset6
			pcie_a10_hip_0_hip_pipe_currentrxpreset7 => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_currentrxpreset7, --                          .currentrxpreset7
			pcie_a10_hip_0_hip_pipe_txsynchd0        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txsynchd0,        --                          .txsynchd0
			pcie_a10_hip_0_hip_pipe_txsynchd1        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txsynchd1,        --                          .txsynchd1
			pcie_a10_hip_0_hip_pipe_txsynchd2        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txsynchd2,        --                          .txsynchd2
			pcie_a10_hip_0_hip_pipe_txsynchd3        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txsynchd3,        --                          .txsynchd3
			pcie_a10_hip_0_hip_pipe_txsynchd4        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txsynchd4,        --                          .txsynchd4
			pcie_a10_hip_0_hip_pipe_txsynchd5        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txsynchd5,        --                          .txsynchd5
			pcie_a10_hip_0_hip_pipe_txsynchd6        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txsynchd6,        --                          .txsynchd6
			pcie_a10_hip_0_hip_pipe_txsynchd7        => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txsynchd7,        --                          .txsynchd7
			pcie_a10_hip_0_hip_pipe_txblkst0         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txblkst0,         --                          .txblkst0
			pcie_a10_hip_0_hip_pipe_txblkst1         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txblkst1,         --                          .txblkst1
			pcie_a10_hip_0_hip_pipe_txblkst2         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txblkst2,         --                          .txblkst2
			pcie_a10_hip_0_hip_pipe_txblkst3         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txblkst3,         --                          .txblkst3
			pcie_a10_hip_0_hip_pipe_txblkst4         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txblkst4,         --                          .txblkst4
			pcie_a10_hip_0_hip_pipe_txblkst5         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txblkst5,         --                          .txblkst5
			pcie_a10_hip_0_hip_pipe_txblkst6         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txblkst6,         --                          .txblkst6
			pcie_a10_hip_0_hip_pipe_txblkst7         => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txblkst7,         --                          .txblkst7
			pcie_a10_hip_0_hip_pipe_txdataskip0      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdataskip0,      --                          .txdataskip0
			pcie_a10_hip_0_hip_pipe_txdataskip1      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdataskip1,      --                          .txdataskip1
			pcie_a10_hip_0_hip_pipe_txdataskip2      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdataskip2,      --                          .txdataskip2
			pcie_a10_hip_0_hip_pipe_txdataskip3      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdataskip3,      --                          .txdataskip3
			pcie_a10_hip_0_hip_pipe_txdataskip4      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdataskip4,      --                          .txdataskip4
			pcie_a10_hip_0_hip_pipe_txdataskip5      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdataskip5,      --                          .txdataskip5
			pcie_a10_hip_0_hip_pipe_txdataskip6      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdataskip6,      --                          .txdataskip6
			pcie_a10_hip_0_hip_pipe_txdataskip7      => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_txdataskip7,      --                          .txdataskip7
			pcie_a10_hip_0_hip_pipe_rate0            => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rate0,            --                          .rate0
			pcie_a10_hip_0_hip_pipe_rate1            => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rate1,            --                          .rate1
			pcie_a10_hip_0_hip_pipe_rate2            => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rate2,            --                          .rate2
			pcie_a10_hip_0_hip_pipe_rate3            => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rate3,            --                          .rate3
			pcie_a10_hip_0_hip_pipe_rate4            => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rate4,            --                          .rate4
			pcie_a10_hip_0_hip_pipe_rate5            => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rate5,            --                          .rate5
			pcie_a10_hip_0_hip_pipe_rate6            => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rate6,            --                          .rate6
			pcie_a10_hip_0_hip_pipe_rate7            => CONNECTED_TO_pcie_a10_hip_0_hip_pipe_rate7,            --                          .rate7
			pcie_a10_hip_0_hip_serial_rx_in0         => CONNECTED_TO_pcie_a10_hip_0_hip_serial_rx_in0,         -- pcie_a10_hip_0_hip_serial.rx_in0
			pcie_a10_hip_0_hip_serial_rx_in1         => CONNECTED_TO_pcie_a10_hip_0_hip_serial_rx_in1,         --                          .rx_in1
			pcie_a10_hip_0_hip_serial_rx_in2         => CONNECTED_TO_pcie_a10_hip_0_hip_serial_rx_in2,         --                          .rx_in2
			pcie_a10_hip_0_hip_serial_rx_in3         => CONNECTED_TO_pcie_a10_hip_0_hip_serial_rx_in3,         --                          .rx_in3
			pcie_a10_hip_0_hip_serial_rx_in4         => CONNECTED_TO_pcie_a10_hip_0_hip_serial_rx_in4,         --                          .rx_in4
			pcie_a10_hip_0_hip_serial_rx_in5         => CONNECTED_TO_pcie_a10_hip_0_hip_serial_rx_in5,         --                          .rx_in5
			pcie_a10_hip_0_hip_serial_rx_in6         => CONNECTED_TO_pcie_a10_hip_0_hip_serial_rx_in6,         --                          .rx_in6
			pcie_a10_hip_0_hip_serial_rx_in7         => CONNECTED_TO_pcie_a10_hip_0_hip_serial_rx_in7,         --                          .rx_in7
			pcie_a10_hip_0_hip_serial_tx_out0        => CONNECTED_TO_pcie_a10_hip_0_hip_serial_tx_out0,        --                          .tx_out0
			pcie_a10_hip_0_hip_serial_tx_out1        => CONNECTED_TO_pcie_a10_hip_0_hip_serial_tx_out1,        --                          .tx_out1
			pcie_a10_hip_0_hip_serial_tx_out2        => CONNECTED_TO_pcie_a10_hip_0_hip_serial_tx_out2,        --                          .tx_out2
			pcie_a10_hip_0_hip_serial_tx_out3        => CONNECTED_TO_pcie_a10_hip_0_hip_serial_tx_out3,        --                          .tx_out3
			pcie_a10_hip_0_hip_serial_tx_out4        => CONNECTED_TO_pcie_a10_hip_0_hip_serial_tx_out4,        --                          .tx_out4
			pcie_a10_hip_0_hip_serial_tx_out5        => CONNECTED_TO_pcie_a10_hip_0_hip_serial_tx_out5,        --                          .tx_out5
			pcie_a10_hip_0_hip_serial_tx_out6        => CONNECTED_TO_pcie_a10_hip_0_hip_serial_tx_out6,        --                          .tx_out6
			pcie_a10_hip_0_hip_serial_tx_out7        => CONNECTED_TO_pcie_a10_hip_0_hip_serial_tx_out7,        --                          .tx_out7
			pcie_a10_hip_0_npor_npor                 => CONNECTED_TO_pcie_a10_hip_0_npor_npor,                 --       pcie_a10_hip_0_npor.npor
			pcie_a10_hip_0_npor_pin_perst            => CONNECTED_TO_pcie_a10_hip_0_npor_pin_perst,            --                          .pin_perst
			refclk_clk                               => CONNECTED_TO_refclk_clk                                --                    refclk.clk
		);

