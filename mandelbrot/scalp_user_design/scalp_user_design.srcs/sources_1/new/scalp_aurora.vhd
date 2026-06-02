----------------------------------------------------------------------------------
-- Aurora 8B10B wrapper for SCALP
-- Adapts aurora_8b10b_support to SCALP single-ended init_clk
-- Includes frame_gen + frame_check for loopback testing
-- For 2-card communication: change G_LOOPBACK from "010" to "000"
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

entity scalp_aurora is
    generic (
        G_LOOPBACK : std_logic_vector(2 downto 0) := "010"
        -- "010" = Near-End PMA loopback (internal, single-card test)
        -- "000" = Normal operation (for 2-card communication)
    );
    port (
        -- Clocks and resets
        InitClkxCI       : in  std_logic;
        GtRefClkPxCI     : in  std_logic;
        GtRefClkNxCI     : in  std_logic;
        ResetxRANI       : in  std_logic;
        GtResetxRANI     : in  std_logic;

        -- GT serial I/O
        RxPxSI           : in  std_logic;
        RxNxSI           : in  std_logic;
        TxPxSO           : out std_logic;
        TxNxSO           : out std_logic;

        -- Status (wire to LEDs for debug)
        ChannelUpxSO     : out std_logic;
        LaneUpxSO        : out std_logic;
        HardErrxSO       : out std_logic;
        SoftErrxSO       : out std_logic;
        FrameErrxSO      : out std_logic;
        ErrorDetectedxSO : out std_logic;

        -- Frame check error count (for advanced debug)
        ErrCountxDO      : out std_logic_vector(0 to 7)
    );
end scalp_aurora;

architecture arch of scalp_aurora is

    -- LocalLink TX signals (from frame_gen)
    signal tx_d_i             : std_logic_vector(0 to 31);
    signal tx_rem_i           : std_logic_vector(0 to 1);
    signal tx_src_rdy_n_i     : std_logic;
    signal tx_sof_n_i         : std_logic;
    signal tx_eof_n_i         : std_logic;
    signal tx_dst_rdy_n_i     : std_logic;

    -- LocalLink RX signals (to frame_check)
    signal rx_d_i             : std_logic_vector(0 to 31);
    signal rx_rem_i           : std_logic_vector(0 to 1);
    signal rx_src_rdy_n_i     : std_logic;
    signal rx_sof_n_i         : std_logic;
    signal rx_eof_n_i         : std_logic;

    -- NFC TX
    signal nfc_req_n_i        : std_logic;
    signal nfc_nb_i           : std_logic_vector(0 to 3);
    signal nfc_ack_n_i        : std_logic;

    -- NFC RX
    signal rx_snf_i           : std_logic;
    signal rx_fc_nb_i         : std_logic_vector(0 to 3);

    -- UFC TX
    signal ufc_tx_req_n_i     : std_logic;
    signal ufc_tx_ms_i        : std_logic_vector(0 to 2);
    signal ufc_tx_ack_n_i     : std_logic;

    -- UFC RX
    signal ufc_rx_data_i      : std_logic_vector(0 to 31);
    signal ufc_rx_rem_i       : std_logic_vector(0 to 1);
    signal ufc_rx_src_rdy_n_i : std_logic;
    signal ufc_rx_sof_n_i     : std_logic;
    signal ufc_rx_eof_n_i     : std_logic;

    -- AXI TX PDU
    signal tx_data_i          : std_logic_vector(0 to 31);
    signal tx_tvalid_i        : std_logic;
    signal tx_tready_i        : std_logic;
    signal tx_tkeep_i         : std_logic_vector(0 to 3);
    signal tx_tlast_i         : std_logic;

    -- AXI RX PDU
    signal rx_data_i          : std_logic_vector(0 to 31);
    signal rx_tvalid_i        : std_logic;
    signal rx_tkeep_i         : std_logic_vector(0 to 3);
    signal rx_tlast_i         : std_logic;

    -- AXI UFC
    signal axi_ufc_tx_ms_i       : std_logic_vector(0 to 2);
    signal axi_ufc_tx_req_n_i    : std_logic;
    signal axi_ufc_tx_ack_n_i    : std_logic;
    signal axi_ufc_rx_data_i     : std_logic_vector(0 to 31);
    signal axi_ufc_rx_rem_i      : std_logic_vector(0 to 3);
    signal axi_ufc_rx_src_rdy_n_i: std_logic;
    signal axi_ufc_rx_eof_n_i    : std_logic;

    -- AXI NFC
    signal axi_nfc_nb_i       : std_logic_vector(0 to 3);
    signal axi_nfc_req_n_i    : std_logic;
    signal axi_nfc_ack_n_i    : std_logic;

    -- System
    signal user_clk_i         : std_logic;
    signal system_reset_i     : std_logic;
    signal channel_up_i       : std_logic;
    signal channel_up_r       : std_logic;
    signal lane_up_i_v        : std_logic_vector(0 downto 0);
    signal hard_err_i         : std_logic;
    signal soft_err_i         : std_logic;
    signal frame_err_i        : std_logic;
    signal err_count_i        : std_logic_vector(0 to 7);

    -- DRP (tied off)
    signal daddr_in_i         : std_logic_vector(8 downto 0) := (others => '0');
    signal den_in_i           : std_logic := '0';
    signal di_in_i            : std_logic_vector(15 downto 0) := (others => '0');
    signal dwe_in_i           : std_logic := '0';
    signal drdy_out_i         : std_logic;
    signal drpdo_out_i        : std_logic_vector(15 downto 0);

    signal tied_to_ground_i   : std_logic := '0';

    -- Component declarations
    component aurora_8b10b_support is
        port (
            s_axi_tx_tdata      : in  std_logic_vector(0 to 31);
            s_axi_tx_tkeep      : in  std_logic_vector(0 to 3);
            s_axi_tx_tvalid     : in  std_logic;
            s_axi_tx_tready     : out std_logic;
            s_axi_tx_tlast      : in  std_logic;
            m_axi_rx_tdata      : out std_logic_vector(0 to 31);
            m_axi_rx_tkeep      : out std_logic_vector(0 to 3);
            m_axi_rx_tvalid     : out std_logic;
            m_axi_rx_tlast      : out std_logic;
            s_axi_nfc_req       : in  std_logic;
            s_axi_nfc_nb        : in  std_logic_vector(0 to 3);
            s_axi_nfc_ack       : out std_logic;
            m_axi_rx_snf        : out std_logic;
            m_axi_rx_fc_nb      : out std_logic_vector(0 to 3);
            s_axi_ufc_tx_req    : in  std_logic;
            s_axi_ufc_tx_ms     : in  std_logic_vector(0 to 2);
            s_axi_ufc_tx_ack    : out std_logic;
            m_axi_ufc_rx_tdata  : out std_logic_vector(0 to 31);
            m_axi_ufc_rx_tkeep  : out std_logic_vector(0 to 3);
            m_axi_ufc_rx_tvalid : out std_logic;
            m_axi_ufc_rx_tlast  : out std_logic;
            rxp                 : in  std_logic_vector(0 downto 0);
            rxn                 : in  std_logic_vector(0 downto 0);
            txp                 : out std_logic_vector(0 downto 0);
            txn                 : out std_logic_vector(0 downto 0);
            gt_refclk1_p        : in  std_logic;
            gt_refclk1_n        : in  std_logic;
            frame_err           : out std_logic;
            hard_err            : out std_logic;
            soft_err            : out std_logic;
            channel_up          : out std_logic;
            lane_up             : out std_logic_vector(0 downto 0);
            user_clk_out        : out std_logic;
            reset               : in  std_logic;
            gt_reset            : in  std_logic;
            sys_reset_out       : out std_logic;
            power_down          : in  std_logic;
            loopback            : in  std_logic_vector(2 downto 0);
            tx_lock             : out std_logic;
            init_clk_in         : in  std_logic;
            init_clk_out        : out std_logic;
            tx_resetdone_out    : out std_logic;
            rx_resetdone_out    : out std_logic;
            link_reset_out      : out std_logic;
            drpclk_in           : in  std_logic;
            drpaddr_in          : in  std_logic_vector(8 downto 0);
            drpdi_in            : in  std_logic_vector(15 downto 0);
            drpdo_out           : out std_logic_vector(15 downto 0);
            drpen_in            : in  std_logic;
            drprdy_out          : out std_logic;
            drpwe_in            : in  std_logic;
            pll_not_locked_out  : out std_logic
        );
    end component;

    component aurora_8b10b_FRAME_GEN is
        port (
            TX_D         : out std_logic_vector(0 to 31);
            TX_REM       : out std_logic_vector(0 to 1);
            TX_SOF_N     : out std_logic;
            TX_EOF_N     : out std_logic;
            TX_SRC_RDY_N : out std_logic;
            TX_DST_RDY_N : in  std_logic;
            UFC_TX_REQ_N : out std_logic;
            UFC_TX_MS    : out std_logic_vector(0 to 2);
            UFC_TX_ACK_N : in  std_logic;
            NFC_REQ_N    : out std_logic;
            NFC_NB       : out std_logic_vector(0 to 3);
            NFC_ACK_N    : in  std_logic;
            USER_CLK     : in  std_logic;
            RESET        : in  std_logic;
            CHANNEL_UP   : in  std_logic
        );
    end component;

    component aurora_8b10b_FRAME_CHECK is
        port (
            RX_D             : in  std_logic_vector(0 to 31);
            RX_REM           : in  std_logic_vector(0 to 1);
            RX_SOF_N         : in  std_logic;
            RX_EOF_N         : in  std_logic;
            RX_SRC_RDY_N     : in  std_logic;
            RX_SNF           : in  std_logic;
            RX_FC_NB         : in  std_logic_vector(0 to 3);
            UFC_RX_DATA      : in  std_logic_vector(0 to 31);
            UFC_RX_REM       : in  std_logic_vector(0 to 1);
            UFC_RX_SRC_RDY_N : in  std_logic;
            UFC_RX_SOF_N     : in  std_logic;
            UFC_RX_EOF_N     : in  std_logic;
            USER_CLK         : in  std_logic;
            RESET            : in  std_logic;
            CHANNEL_UP       : in  std_logic;
            ERR_COUNT        : out std_logic_vector(0 to 7)
        );
    end component;

    component aurora_8b10b_LL_TO_AXI_EXDES is
        generic (
            DATA_WIDTH  : integer := 16;
            USE_UFC_REM : integer := 0;
            STRB_WIDTH  : integer := 2;
            USE_4_NFC   : integer := 0;
            REM_WIDTH   : integer := 1
        );
        port (
            AXI4_S_OP_TDATA  : out std_logic_vector(0 to DATA_WIDTH-1);
            AXI4_S_OP_TKEEP  : out std_logic_vector(0 to STRB_WIDTH-1);
            AXI4_S_OP_TVALID : out std_logic;
            AXI4_S_OP_TLAST  : out std_logic;
            AXI4_S_IP_TREADY : in  std_logic;
            LL_IP_DATA       : in  std_logic_vector(0 to DATA_WIDTH-1);
            LL_IP_REM        : in  std_logic_vector(0 to REM_WIDTH-1);
            LL_IP_SRC_RDY_N  : in  std_logic;
            LL_IP_SOF_N      : in  std_logic;
            LL_IP_EOF_N      : in  std_logic;
            LL_OP_DST_RDY_N  : out std_logic
        );
    end component;

    component aurora_8b10b_AXI_TO_LL_EXDES is
        generic (
            DATA_WIDTH  : integer := 16;
            STRB_WIDTH  : integer := 2;
            REM_WIDTH   : integer := 1;
            USE_UFC_REM : integer := 0
        );
        port (
            AXI4_S_IP_TX_TDATA  : in  std_logic_vector(0 to DATA_WIDTH-1);
            AXI4_S_IP_TX_TKEEP  : in  std_logic_vector(0 to STRB_WIDTH-1);
            AXI4_S_IP_TX_TVALID : in  std_logic;
            AXI4_S_IP_TX_TLAST  : in  std_logic;
            AXI4_S_OP_TX_TREADY : out std_logic;
            LL_OP_DATA          : out std_logic_vector(0 to DATA_WIDTH-1);
            LL_OP_REM           : out std_logic_vector(0 to REM_WIDTH-1);
            LL_OP_SRC_RDY_N     : out std_logic;
            LL_OP_SOF_N         : out std_logic;
            LL_OP_EOF_N         : out std_logic;
            LL_IP_DST_RDY_N     : in  std_logic;
            USER_CLK            : in  std_logic;
            RESET               : in  std_logic;
            CHANNEL_UP          : in  std_logic
        );
    end component;

begin

    -- Register channel_up to user_clk domain (needed by frame_gen/check)
    process(user_clk_i)
    begin
        if rising_edge(user_clk_i) then
            channel_up_r <= channel_up_i;
        end if;
    end process;

    ChannelUpxSO     <= channel_up_i;
    LaneUpxSO        <= lane_up_i_v(0);
    HardErrxSO       <= hard_err_i;
    SoftErrxSO       <= soft_err_i;
    FrameErrxSO      <= frame_err_i;
    ErrorDetectedxSO <= or_reduce(err_count_i);
    ErrCountxDO      <= err_count_i;

    -- RX AXI to LocalLink shim (for frame_check)
    rx_axi_to_ll : aurora_8b10b_AXI_TO_LL_EXDES
        generic map (
            DATA_WIDTH  => 32,
            STRB_WIDTH  => 4,
            REM_WIDTH   => 2,
            USE_UFC_REM => 0
        )
        port map (
            AXI4_S_IP_TX_TVALID => rx_tvalid_i,
            AXI4_S_OP_TX_TREADY => open,
            AXI4_S_IP_TX_TDATA  => rx_data_i,
            AXI4_S_IP_TX_TKEEP  => rx_tkeep_i,
            AXI4_S_IP_TX_TLAST  => rx_tlast_i,
            LL_OP_DATA          => rx_d_i,
            LL_OP_SOF_N         => rx_sof_n_i,
            LL_OP_EOF_N         => rx_eof_n_i,
            LL_OP_REM           => rx_rem_i,
            LL_OP_SRC_RDY_N     => rx_src_rdy_n_i,
            LL_IP_DST_RDY_N     => tied_to_ground_i,
            USER_CLK            => user_clk_i,
            RESET               => system_reset_i,
            CHANNEL_UP          => channel_up_r
        );

    -- UFC RX shim
    ufc_rx_axi_to_ll : aurora_8b10b_AXI_TO_LL_EXDES
        generic map (
            DATA_WIDTH  => 32,
            STRB_WIDTH  => 4,
            REM_WIDTH   => 2,
            USE_UFC_REM => 1
        )
        port map (
            AXI4_S_IP_TX_TVALID => axi_ufc_rx_src_rdy_n_i,
            AXI4_S_OP_TX_TREADY => open,
            AXI4_S_IP_TX_TDATA  => axi_ufc_rx_data_i,
            AXI4_S_IP_TX_TKEEP  => axi_ufc_rx_rem_i,
            AXI4_S_IP_TX_TLAST  => axi_ufc_rx_eof_n_i,
            LL_OP_DATA          => ufc_rx_data_i,
            LL_OP_SOF_N         => ufc_rx_sof_n_i,
            LL_OP_EOF_N         => ufc_rx_eof_n_i,
            LL_OP_REM           => ufc_rx_rem_i,
            LL_OP_SRC_RDY_N     => ufc_rx_src_rdy_n_i,
            LL_IP_DST_RDY_N     => tied_to_ground_i,
            USER_CLK            => user_clk_i,
            RESET               => system_reset_i,
            CHANNEL_UP          => channel_up_r
        );

    -- Frame checker
    frame_check_inst : aurora_8b10b_FRAME_CHECK
        port map (
            RX_D             => rx_d_i,
            RX_REM           => rx_rem_i,
            RX_SOF_N         => rx_sof_n_i,
            RX_EOF_N         => rx_eof_n_i,
            RX_SRC_RDY_N     => rx_src_rdy_n_i,
            RX_SNF           => rx_snf_i,
            RX_FC_NB         => rx_fc_nb_i,
            UFC_RX_DATA      => ufc_rx_data_i,
            UFC_RX_REM       => ufc_rx_rem_i,
            UFC_RX_SRC_RDY_N => ufc_rx_src_rdy_n_i,
            UFC_RX_SOF_N     => ufc_rx_sof_n_i,
            UFC_RX_EOF_N     => ufc_rx_eof_n_i,
            USER_CLK         => user_clk_i,
            RESET            => system_reset_i,
            CHANNEL_UP       => channel_up_r,
            ERR_COUNT        => err_count_i
        );

    -- TX LL to AXI shim (for frame_gen)
    tx_ll_to_axi : aurora_8b10b_LL_TO_AXI_EXDES
        generic map (
            DATA_WIDTH => 32,
            STRB_WIDTH => 4,
            USE_4_NFC  => 0,
            REM_WIDTH  => 2
        )
        port map (
            LL_IP_DATA       => tx_d_i,
            LL_IP_SOF_N      => tx_sof_n_i,
            LL_IP_EOF_N      => tx_eof_n_i,
            LL_IP_REM        => tx_rem_i,
            LL_IP_SRC_RDY_N  => tx_src_rdy_n_i,
            LL_OP_DST_RDY_N  => tx_dst_rdy_n_i,
            AXI4_S_OP_TVALID => tx_tvalid_i,
            AXI4_S_OP_TDATA  => tx_data_i,
            AXI4_S_OP_TKEEP  => tx_tkeep_i,
            AXI4_S_OP_TLAST  => tx_tlast_i,
            AXI4_S_IP_TREADY => tx_tready_i
        );

    -- UFC TX shim
    ufc_tx_ll_to_axi : aurora_8b10b_LL_TO_AXI_EXDES
        generic map (
            DATA_WIDTH  => 3,
            USE_UFC_REM => 1,
            STRB_WIDTH  => 4,
            USE_4_NFC   => 2,
            REM_WIDTH   => 2
        )
        port map (
            LL_IP_DATA       => ufc_tx_ms_i,
            LL_IP_SOF_N      => tied_to_ground_i,
            LL_IP_EOF_N      => tied_to_ground_i,
            LL_IP_REM        => "00",
            LL_IP_SRC_RDY_N  => ufc_tx_req_n_i,
            LL_OP_DST_RDY_N  => ufc_tx_ack_n_i,
            AXI4_S_OP_TVALID => axi_ufc_tx_req_n_i,
            AXI4_S_OP_TDATA  => axi_ufc_tx_ms_i,
            AXI4_S_OP_TKEEP  => open,
            AXI4_S_OP_TLAST  => open,
            AXI4_S_IP_TREADY => axi_ufc_tx_ack_n_i
        );

    -- NFC TX shim
    nfc_tx_ll_to_axi : aurora_8b10b_LL_TO_AXI_EXDES
        generic map (
            DATA_WIDTH => 4,
            STRB_WIDTH => 4,
            USE_4_NFC  => 1,
            REM_WIDTH  => 2
        )
        port map (
            LL_IP_DATA       => nfc_nb_i,
            LL_IP_SOF_N      => tied_to_ground_i,
            LL_IP_EOF_N      => tied_to_ground_i,
            LL_IP_REM        => "00",
            LL_IP_SRC_RDY_N  => nfc_req_n_i,
            LL_OP_DST_RDY_N  => nfc_ack_n_i,
            AXI4_S_OP_TVALID => axi_nfc_req_n_i,
            AXI4_S_OP_TDATA  => axi_nfc_nb_i,
            AXI4_S_OP_TKEEP  => open,
            AXI4_S_OP_TLAST  => open,
            AXI4_S_IP_TREADY => axi_nfc_ack_n_i
        );

    -- Frame generator
    frame_gen_inst : aurora_8b10b_FRAME_GEN
        port map (
            TX_D         => tx_d_i,
            TX_REM       => tx_rem_i,
            TX_SOF_N     => tx_sof_n_i,
            TX_EOF_N     => tx_eof_n_i,
            TX_SRC_RDY_N => tx_src_rdy_n_i,
            TX_DST_RDY_N => tx_dst_rdy_n_i,
            UFC_TX_REQ_N => ufc_tx_req_n_i,
            UFC_TX_MS    => ufc_tx_ms_i,
            UFC_TX_ACK_N => ufc_tx_ack_n_i,
            NFC_REQ_N    => nfc_req_n_i,
            NFC_NB       => nfc_nb_i,
            NFC_ACK_N    => nfc_ack_n_i,
            USER_CLK     => user_clk_i,
            RESET        => system_reset_i,
            CHANNEL_UP   => channel_up_r
        );

    -- Aurora support wrapper
    aurora_inst : aurora_8b10b_support
        port map (
            s_axi_tx_tdata      => tx_data_i,
            s_axi_tx_tkeep      => tx_tkeep_i,
            s_axi_tx_tvalid     => tx_tvalid_i,
            s_axi_tx_tlast      => tx_tlast_i,
            s_axi_tx_tready     => tx_tready_i,
            m_axi_rx_tdata      => rx_data_i,
            m_axi_rx_tkeep      => rx_tkeep_i,
            m_axi_rx_tvalid     => rx_tvalid_i,
            m_axi_rx_tlast      => rx_tlast_i,
            s_axi_nfc_req       => axi_nfc_req_n_i,
            s_axi_nfc_nb        => axi_nfc_nb_i,
            s_axi_nfc_ack       => axi_nfc_ack_n_i,
            m_axi_rx_snf        => rx_snf_i,
            m_axi_rx_fc_nb      => rx_fc_nb_i,
            s_axi_ufc_tx_req    => axi_ufc_tx_req_n_i,
            s_axi_ufc_tx_ms     => axi_ufc_tx_ms_i,
            s_axi_ufc_tx_ack    => axi_ufc_tx_ack_n_i,
            m_axi_ufc_rx_tdata  => axi_ufc_rx_data_i,
            m_axi_ufc_rx_tkeep  => axi_ufc_rx_rem_i,
            m_axi_ufc_rx_tvalid => axi_ufc_rx_src_rdy_n_i,
            m_axi_ufc_rx_tlast  => axi_ufc_rx_eof_n_i,
            rxp(0)              => RxPxSI,
            rxn(0)              => RxNxSI,
            txp(0)              => TxPxSO,
            txn(0)              => TxNxSO,
            gt_refclk1_p        => GtRefClkPxCI,
            gt_refclk1_n        => GtRefClkNxCI,
            frame_err           => frame_err_i,
            hard_err            => hard_err_i,
            soft_err            => soft_err_i,
            channel_up          => channel_up_i,
            lane_up             => lane_up_i_v,
            user_clk_out        => user_clk_i,
            reset               => ResetxRANI,
            gt_reset            => GtResetxRANI,
            sys_reset_out       => system_reset_i,
            power_down          => '0',
            loopback            => G_LOOPBACK,
            tx_lock             => open,
            init_clk_in         => InitClkxCI,
            init_clk_out        => open,
            tx_resetdone_out    => open,
            rx_resetdone_out    => open,
            link_reset_out      => open,
            drpclk_in           => InitClkxCI,
            drpaddr_in          => daddr_in_i,
            drpdi_in            => di_in_i,
            drpdo_out           => drpdo_out_i,
            drpen_in            => den_in_i,
            drprdy_out          => drdy_out_i,
            drpwe_in            => dwe_in_i,
            pll_not_locked_out  => open
        );

end arch;
