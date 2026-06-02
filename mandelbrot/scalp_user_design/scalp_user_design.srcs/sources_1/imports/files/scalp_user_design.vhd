-- Company: The Fantastic Team of Malla and Nicoloso
-- Authors: Massimo MALLA <massimo.malla@master.hes-so.ch>
-- Authors: Matthias NICOLOSO <matthias.nicoloso@master.hes-so.ch>
--
-- Module Name: scalp_user_design - arch
-- Target Device: hepia-cores.ch:scalp_node:part0:0.2 xc7z015clg485-2
-- Tool version: 2023.2
-- Description: scalp_user_design
--
-- Last update: 13 may 2026
--
---------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use ieee.math_real.all;
use ieee.math_real."ceil";
use ieee.math_real."log2";
-- use ieee.std_logic_unsigned.all;
-- use ieee.std_logic_arith.all;
-- use ieee.std_logic_misc.all;
use ieee.fixed_pkg.all;

library unisim;
use unisim.vcomponents.all;

library unimacro;
use unimacro.vcomponents.all;

library scalp_lib;
use scalp_lib.scalp_axi_pkg.all;
use scalp_lib.scalp_hdmi_pkg.all;

entity scalp_user_design is

    generic (
        C_USE_IBERT          : boolean               := false;
        C_DEBUG_MODE         : boolean               := false;
        C_GPIO_SWITCHES_SIZE : integer range 0 to 32 := 2;
        C_GPIO_JOYSTICK_SIZE : integer range 0 to 32 := 5;
        C_HDMI_LANES         : integer range 0 to 3  := 3;
        JULIA_NEGATIVE_DEPTH : integer := 25;
        -- value scaled (0.0013888 * 2^25)
        SCREEN_STEP_SCALED   : integer := 46614
        );

    port (
        -----------------------------------------------------------------------
        -- Names defined and not described in the constraint file.
        -----------------------------------------------------------------------
        -- Zynq FIXED_IO
        PSClkxCIO          : inout std_logic;
        PSSRstxRNIO        : inout std_logic;
        PSPorxSNIO         : inout std_logic;
        -- DDR interface
        DDRClkxCNIO        : inout std_logic;
        DDRClkxCPIO        : inout std_logic;
        DDRDRstxRNIO       : inout std_logic;
        DDRCasxSNIO        : inout std_logic;
        DDRCkexSIO         : inout std_logic;
        DDRCsxSNIO         : inout std_logic;
        DDROdtxSIO         : inout std_logic;
        DDRRasxSNIO        : inout std_logic;
        DDRWexSNIO         : inout std_logic;
        DDRBankAddrxDIO    : inout std_logic_vector(2 downto 0);
        DDRAddrxDIO        : inout std_logic_vector(14 downto 0);
        DDRVrxSNIO         : inout std_logic;
        DDRVrxSPIO         : inout std_logic;
        DDRDmxDIO          : inout std_logic_vector(3 downto 0);
        DDRDqxDIO          : inout std_logic_vector(31 downto 0);
        DDRDqsxDNIO        : inout std_logic_vector(3 downto 0);
        DDRDqsxDPIO        : inout std_logic_vector(3 downto 0);
        -- MIO Interface
        MIOxDIO            : inout std_logic_vector(53 downto 0);
        -----------------------------------------------------------------------
        -- USB signals
        UsbVbusPwrFaultxSI : in    std_logic;
        -- PLL interface
        Pll2V5ClkuWirexCO  : out   std_logic;  -- Clock (from SPI1_SCLK)
        Pll2V5DatauWirexSO : out   std_logic;  -- Data (from SPI1_MOSI)
        Pll2V5LEuWirexSO   : out   std_logic;  -- Latch enable (from SPI1_SS)
        Pll2V5GOExSO       : out   std_logic;  -- Global Output Enable
        Pll2V5LDxSI        : in    std_logic;  -- Lock Detect
        Pll2V5SyncxSO      : out   std_logic;  -- Sync
        Pll2V5ClkIn0LOSxSI : in    std_logic;  -- FPGA clock Loss of Sync
        Pll2V5ClkIn1LOSxSI : in    std_logic;  -- External oscillator Loss of Sync
        -- GTP interfaces
        -- Clocks
        GTPRefClk0PxCI     : in    std_logic;
        GTPRefClk0NxCI     : in    std_logic;
        -- GTPRefClk1PxCI     : in    std_logic;
        -- GTPRefClk1NxCI     : in    std_logic;
        -- North
        -- GTPFromNorthPxSI   : in    std_logic;   -- CONNECT TO SOUTH AND UNCOMMENT FOR SOURTH ON 2ND SCALP
        -- GTPFromNorthNxSI   : in    std_logic;   -- CONNECT TO SOUTH AND UNCOMMENT FOR SOURTH ON 2ND SCALP
        -- GTPToNorthPxSO     : out   std_logic;   -- CONNECT TO SOUTH AND UNCOMMENT FOR SOURTH ON 2ND SCALP
        -- GTPToNorthNxSO     : out   std_logic;   -- CONNECT TO SOUTH AND UNCOMMENT FOR SOURTH ON 2ND SCALP
        -- East
        -- GTPFromEastPxSI    : in    std_logic;
        -- GTPFromEastNxSI    : in    std_logic;
        -- GTPToEastPxSO      : out   std_logic;
        -- GTPToEastNxSO      : out   std_logic;
        -- South
--        GTPFromSouthPxSI   : in    std_logic;
--        GTPFromSouthNxSI   : in    std_logic;
--        GTPToSouthPxSO     : out   std_logic;
--        GTPToSouthNxSO     : out   std_logic;
        -- West
        -- GTPFromWestPxSI    : in    std_logic;
        -- GTPFromWestNxSI    : in    std_logic;
        -- GTPToWestPxSO      : out   std_logic;
        -- GTPToWestNxSO      : out   std_logic;
        -- LVDS links towards edge connectors
        -- North
        -- LVDS2V5North0PxSIO  : inout std_logic;
        -- LVDS2V5North0NxSIO  : inout std_logic;
        -- LVDS2V5North1PxSIO  : inout std_logic;
        -- LVDS2V5North1NxSIO  : inout std_logic;
        -- LVDS2V5North2PxSIO  : inout std_logic;
        -- LVDS2V5North2NxSIO  : inout std_logic;
        -- LVDS2V5North3PxSIO  : inout std_logic;
        -- LVDS2V5North3NxSIO  : inout std_logic;
        -- LVDS2V5North4PxSIO  : inout std_logic;
        -- LVDS2V5North4NxSIO  : inout std_logic;
        -- LVDS2V5North5PxSIO  : inout std_logic;
        -- LVDS2V5North5NxSIO  : inout std_logic;
        -- LVDS2V5North6PxSIO  : inout std_logic;
        -- LVDS2V5North6NxSIO  : inout std_logic;
        -- LVDS2V5North7PxSIO  : inout std_logic;
        -- LVDS2V5North7NxSIO  : inout std_logic;
        -- South
        -- LVDS2V5South0PxSIO  : inout std_logic;
        -- LVDS2V5South0NxSIO  : inout std_logic;
        -- LVDS2V5South1PxSIO  : inout std_logic;
        -- LVDS2V5South1NxSIO  : inout std_logic;
        -- LVDS2V5South2PxSIO  : inout std_logic;
        -- LVDS2V5South2NxSIO  : inout std_logic;
        -- LVDS2V5South3PxSIO  : inout std_logic;
        -- LVDS2V5South3NxSIO  : inout std_logic;
        -- LVDS2V5South4PxSIO  : inout std_logic;
        -- LVDS2V5South4NxSIO  : inout std_logic;
        -- LVDS2V5South5PxSIO  : inout std_logic;
        -- LVDS2V5South5NxSIO  : inout std_logic;
        -- LVDS2V5South6PxSIO  : inout std_logic;
        -- LVDS2V5South6NxSIO  : inout std_logic;
        -- LVDS2V5South7PxSIO  : inout std_logic;
        -- LVDS2V5South7NxSIO  : inout std_logic;
        -- East
        -- LVDS2V5East0PxSIO   : inout std_logic;
        -- LVDS2V5East0NxSIO   : inout std_logic;
        -- LVDS2V5East1PxSIO   : inout std_logic;
        -- LVDS2V5East1NxSIO   : inout std_logic;
        -- LVDS2V5East2PxSIO   : inout std_logic;
        -- LVDS2V5East2NxSIO   : inout std_logic;
        -- LVDS2V5East3PxSIO   : inout std_logic;
        -- LVDS2V5East3NxSIO   : inout std_logic;
        -- LVDS2V5East4PxSIO   : inout std_logic;
        -- LVDS2V5East4NxSIO   : inout std_logic;
        -- LVDS2V5East5PxSIO   : inout std_logic;
        -- LVDS2V5East5NxSIO   : inout std_logic;
        -- LVDS2V5East6PxSIO   : inout std_logic;
        -- LVDS2V5East6NxSIO   : inout std_logic;
        -- LVDS2V5East7PxSIO   : inout std_logic;
        -- LVDS2V5East7NxSIO   : inout std_logic;
        -- West
        -- LVDS2V5West0PxSIO   : inout std_logic;
        -- LVDS2V5West0NxSIO   : inout std_logic;
        -- LVDS2V5West1PxSIO   : inout std_logic;
        -- LVDS2V5West1NxSIO   : inout std_logic;
        -- LVDS2V5West2PxSIO   : inout std_logic;
        -- LVDS2V5West2NxSIO   : inout std_logic;
        -- LVDS2V5West3PxSIO   : inout std_logic;
        -- LVDS2V5West3NxSIO   : inout std_logic;
        -- LVDS2V5West4PxSIO   : inout std_logic;
        -- LVDS2V5West4NxSIO   : inout std_logic;
        -- LVDS2V5West5PxSIO   : inout std_logic;
        -- LVDS2V5West5NxSIO   : inout std_logic;
        -- LVDS2V5West6PxSIO   : inout std_logic;
        -- LVDS2V5West6NxSIO   : inout std_logic;
        -- LVDS2V5West7PxSIO   : inout std_logic;
        -- LVDS2V5West7NxSIO   : inout std_logic;
        -- LVDS links towards top-bottom connectors
        -- Top
        -- LVDS2V5Top0PxSIO    : inout std_logic;
        -- LVDS2V5Top0NxSIO    : inout std_logic;
        -- LVDS2V5Top1PxSIO    : inout std_logic;
        -- LVDS2V5Top1NxSIO    : inout std_logic;
        -- LVDS2V5Top2PxSIO    : inout std_logic;
        -- LVDS2V5Top2NxSIO    : inout std_logic;
        -- LVDS2V5Top3PxSIO    : inout std_logic;
        -- LVDS2V5Top3NxSIO    : inout std_logic;
        -- LVDS2V5Top4PxSIO    : inout std_logic;
        -- LVDS2V5Top4NxSIO    : inout std_logic;
        -- LVDS2V5Top5PxSIO    : inout std_logic;
        -- LVDS2V5Top5NxSIO    : inout std_logic;
        -- LVDS2V5Top6PxSIO    : inout std_logic;
        -- LVDS2V5Top6NxSIO    : inout std_logic;
        -- LVDS2V5Top7PxSIO    : inout std_logic;
        -- LVDS2V5Top7NxSIO    : inout std_logic;
        -- Bottom
        -- LVDS2V5Bottom0PxSIO : inout std_logic;
        -- LVDS2V5Bottom0NxSIO : inout std_logic;
        -- LVDS2V5Bottom1PxSIO : inout std_logic;
        -- LVDS2V5Bottom1NxSIO : inout std_logic;
        -- LVDS2V5Bottom2PxSIO : inout std_logic;
        -- LVDS2V5Bottom2NxSIO : inout std_logic;
        -- LVDS2V5Bottom3PxSIO : inout std_logic;
        -- LVDS2V5Bottom3NxSIO : inout std_logic;
        -- LVDS2V5Bottom4PxSIO : inout std_logic;
        -- LVDS2V5Bottom4NxSIO : inout std_logic;
        -- LVDS2V5Bottom5PxSIO : inout std_logic;
        -- LVDS2V5Bottom5NxSIO : inout std_logic;
        -- LVDS2V5Bottom6PxSIO : inout std_logic;
        -- LVDS2V5Bottom6NxSIO : inout std_logic;
        -- LVDS2V5Bottom7PxSIO : inout std_logic;
        -- LVDS2V5Bottom7NxSIO : inout std_logic;
        -----------------------------------------------------------------------
        -- HDMI TX
        -----------------------------------------------------------------------
        -- HdmiTXSdaxSIO      : inout std_logic;
        -- HdmiTXSclxSO       : out   std_logic;
        HdmiTXCecxSIO      : inout std_logic;
        HdmiTXHpdxSI       : in    std_logic;
        HdmiTXClkPxSO      : out   std_logic;
        HdmiTXClkNxSO      : out   std_logic;
        HdmiTXPxDO         : out   std_logic_vector((C_HDMI_LANES - 1) downto 0);
        HdmiTXNxDO         : out   std_logic_vector((C_HDMI_LANES - 1) downto 0);
        -----------------------------------------------------------------------
        -- Switches
        -----------------------------------------------------------------------
        SwitchesxDI        : in    std_logic_vector((C_GPIO_SWITCHES_SIZE - 1) downto 0);
        -----------------------------------------------------------------------
        -- Joystick
        -----------------------------------------------------------------------
        JoystickxDI        : in    std_logic_vector((C_GPIO_JOYSTICK_SIZE - 1) downto 0);
        -----------------------------------------------------------------------
        -- I2C IO Ext.
        -----------------------------------------------------------------------
        IoExtIICSclxDIO    : inout std_logic;
        IoExtIICSdaxDIO    : inout std_logic;
        -----------------------------------------------------------------------
        -- RGB LEDs
        -----------------------------------------------------------------------
        Led12V5RxSO        : out   std_logic;
        Led12V5GxSO        : out   std_logic;
        Led12V5BxSO        : out   std_logic;
        Led22V5RxSO        : out   std_logic;
        Led22V5GxSO        : out   std_logic;
        Led22V5BxSO        : out   std_logic;
        -----------------------------------------------------------------------
        -- Self reset (connected to PS_SRSTB)
        -----------------------------------------------------------------------
        SelfRstxRNO        : out   std_logic);
    -- Clocks from PLLs (connected to MRCC pins)
    -- Local
    -- PLLClk2V5LocalPxCI  : in    std_logic;
    -- PLLClk2V5LocalNxCI  : in    std_logic;
    -- -- North
    -- PLLClk2V5NorthPxCI  : in    std_logic;
    -- PLLClk2V5NorthNxCI  : in    std_logic;
    -- -- South
    -- PLLClk2V5SouthPxCI  : in    std_logic;
    -- PLLClk2V5SouthNxCI  : in    std_logic;
    -- -- Top
    -- PLLClk2V5TopxCI     : in    std_logic;  -- Single-ended
    -- -- Bottom
    -- PLLClk2V5BottomxCI  : in    std_logic;  -- Single-ended
    -- -- Clocks to/from neighbours
    -- -- North
    -- Clk2V5NorthPxCI     : in    std_logic;
    -- Clk2V5NorthNxCI     : in    std_logic;
    -- Clk2V5NorthPxCO     : out   std_logic;
    -- Clk2V5NorthNxCO     : out   std_logic;
    -- -- South
    -- Clk2V5SouthPxCI     : in    std_logic;
    -- Clk2V5SouthNxCI     : in    std_logic;
    -- Clk2V5SouthPxCO     : out   std_logic;
    -- Clk2V5SouthNxCO     : out   std_logic;
    -- -- East
    -- Clk2V5EastPxCI      : in    std_logic;
    -- Clk2V5EastNxCI      : in    std_logic;
    -- Clk2V5EastPxCO      : out   std_logic;
    -- Clk2V5EastNxCO      : out   std_logic;
    -- -- West
    -- Clk2V5WestPxCI      : in    std_logic;
    -- Clk2V5WestNxCI      : in    std_logic;
    -- Clk2V5WestPxCO      : out   std_logic;
    -- Clk2V5WestNxCO      : out   std_logic;
    -- -- Top
    -- Clk2V5TopPxCI       : in    std_logic;
    -- Clk2V5TopNxCI       : in    std_logic;
    -- Clk2V5TopPxCO       : out   std_logic;
    -- Clk2V5TopNxCO       : out   std_logic;
    -- -- Bottom
    -- Clk2V5BottomPxCI    : in    std_logic;
    -- Clk2V5BottomNxCI    : in    std_logic;
    -- Clk2V5BottomPxCO    : out   std_logic;
    -- Clk2V5BottomNxCO    : out   std_logic;
    -- -- Recovery
    -- Clk2V5RecoveryPxCO  : out   std_logic;
    -- Clk2V5RecoveryNxCO  : out   std_logic);

end scalp_user_design;

architecture arch of scalp_user_design is

    -- Constants
    constant C_REGS_DATA_SIZE            : integer range 0 to 32 := 32;
    constant C_REGS_ADDR_SIZE            : integer               := 4096;
    constant C_REGS_ADDR_BIT_SIZE        : integer range 0 to 32 := integer(ceil(log2(real(C_REGS_ADDR_SIZE))));
    constant C_AXI4_ARADDR_SIZE          : integer range 0 to 32 := 32;
    constant C_AXI4_RDATA_SIZE           : integer range 0 to 32 := 32;
    constant C_AXI4_RRESP_SIZE           : integer range 0 to 2  := 2;
    constant C_AXI4_AWADDR_SIZE          : integer range 0 to 32 := 32;
    constant C_AXI4_WDATA_SIZE           : integer range 0 to 32 := 32;
    constant C_AXI4_WSTRB_SIZE           : integer range 0 to 4  := 4;
    constant C_AXI4_BRESP_SIZE           : integer range 0 to 2  := 2;
    -- Scalp PWM
    constant C_PWM_SIZE                  : integer               := 8;
    constant C_CLK_CNT_LEN               : positive              := 256;
    -- Firmware ID
    constant C_FIRMWARE_ID_NB_REGS_IN    : integer               := 0;
    constant C_FIRMWARE_ID_NB_REGS_OUT   : integer               := 2;
    -- Complex number registers
    constant C_CPLX_NUM_REGS_NB_REGS_IN  : integer               := 0;
    constant C_CPLX_NUM_REGS_NB_REGS_OUT : integer               := 4;
    -- RGB Leds
    constant C_NB_RGB_LEDS               : integer               := 2;
    constant C_RGB_LED_1_IDX             : integer               := 0;
    constant C_RGB_LED_2_IDX             : integer               := 1;



    -- type state_t is (INIT_RANGE, INIT_STEP, INIT_COORD, CALCULATE, DONE);
    -- type state_t is (INIT_RANGE, INIT_STEP, INIT_COORD, CALCULATE, DONE);
    -- signal state : state_t := INIT_RANGE;

    signal v_sync_trigger  : std_logic := '0';
    signal v_sync_reg      : std_logic_vector(2 downto 0) := "000";
    signal v_sync_occurred : std_logic := '0';
    signal VidOn_delayed   : std_logic := '0';

    -- Components
    component scalp_zynqps_wrapper is
        generic (
            C_AXI4_ARADDR_SIZE   : integer range 0 to 32;
            C_AXI4_RDATA_SIZE    : integer range 0 to 32;
            C_AXI4_RRESP_SIZE    : integer range 0 to 2;
            C_AXI4_AWADDR_SIZE   : integer range 0 to 32;
            C_AXI4_WDATA_SIZE    : integer range 0 to 32;
            C_AXI4_WSTRB_SIZE    : integer range 0 to 4;
            C_AXI4_BRESP_SIZE    : integer range 0 to 2;
            C_GPIO_SWITCHES_SIZE : integer range 0 to 32;
            C_GPIO_JOYSTICK_SIZE : integer range 0 to 32);
        port (
            -- Processor interface
            FIXED_IO_ps_clk     : inout std_logic;
            FIXED_IO_ps_porb    : inout std_logic;
            FIXED_IO_ps_srstb   : inout std_logic;
            HdmiVgaClocksxCO    : out   t_hdmi_vga_clocks;
            Clk125xCO           : out   std_logic;
            Clk125RstxRO        : out   std_logic;
            Clk125RstxRNAO      : out   std_logic;
            Clk125PllLockedxSO  : out   std_logic;
            -- DDR interface
            DDR_addr            : inout std_logic_vector (14 downto 0);
            DDR_ba              : inout std_logic_vector (2 downto 0);
            DDR_cas_n           : inout std_logic;
            DDR_ck_n            : inout std_logic;
            DDR_ck_p            : inout std_logic;
            DDR_cke             : inout std_logic;
            DDR_cs_n            : inout std_logic;
            DDR_dm              : inout std_logic_vector (3 downto 0);
            DDR_dq              : inout std_logic_vector (31 downto 0);
            DDR_dqs_n           : inout std_logic_vector (3 downto 0);
            DDR_dqs_p           : inout std_logic_vector (3 downto 0);
            DDR_odt             : inout std_logic;
            DDR_ras_n           : inout std_logic;
            DDR_reset_n         : inout std_logic;
            DDR_we_n            : inout std_logic;
            FIXED_IO_ddr_vrn    : inout std_logic;
            FIXED_IO_ddr_vrp    : inout std_logic;
            -- USB interface
            Usb0VBusPwrFaultxSI : in    std_logic;
            -- SPI1 used as uWire master. Clk, Data and LE signals are outputs
            -- SPI1 inputs are unused. Clk is connected to SCLK, Data to MOSI and LE to SS
            Spi1MOSIxSO         : out   std_logic;
            Spi1SSxSO           : out   std_logic;
            Spi1SclkxCO         : out   std_logic;
            -- MIO
            FIXED_IO_mio        : inout std_logic_vector (53 downto 0);
            -- GPIOs
            GPIOSwitchesxDI     : in    std_logic_vector((C_GPIO_SWITCHES_SIZE - 1) downto 0);
            GPIOJoystickxDI     : in    std_logic_vector((C_GPIO_JOYSTICK_SIZE - 1) downto 0);
            GPIOResetBtnxRNO    : out   std_logic;
            -- I2C
            IoExtIICSclxDIO     : inout std_logic;
            IoExtIICSdaxDIO     : inout std_logic;
            -- Firmware ID AXI interface + (clk and rst)
            FirmwareIDAxixDIO   : inout t_axi_lite;
            -- Complex Numbers Registers AXI interface + (clk and rst)
            ClpxNumRegsAxixDIO  : inout t_axi_lite);
    end component scalp_zynqps_wrapper;

    component scalp_firmwareid is
        generic (
            C_REGS_ADDR_SIZE : integer;
            C_NB_REGS_IN     : integer;
            C_NB_REGS_OUT    : integer);
        port (
            AxiSlvxDIO  : inout t_axi_lite;
            -- RegPortsxDI : in    t_axi_bunch_of_registers((C_NB_REGS_IN - 1) downto 0);
            RegPortsxDO : out   t_axi_bunch_of_registers((C_NB_REGS_OUT - 1) downto 0));
    end component scalp_firmwareid;

    component scalp_cplx_num_regs is
        generic (
            C_REGS_ADDR_SIZE : integer;
            C_NB_REGS_IN     : integer;
            C_NB_REGS_OUT    : integer);
        port (
            AxiSlvxDIO  : inout t_axi_lite;
            -- RegPortsxDI : in    t_axi_bunch_of_registers((C_NB_REGS_IN - 1) downto 0);
            RegPortsxDO : out   t_axi_bunch_of_registers((C_NB_REGS_OUT - 1) downto 0));
    end component scalp_cplx_num_regs;

    component scalp_pwm is
        generic (
            C_PWM_SIZE    : integer;
            C_CLK_CNT_LEN : positive);
        port (
            ClkxCI       : in  std_logic;
            RstxRANI     : in  std_logic;
            DutyCyclexDI : in  unsigned((C_PWM_SIZE - 1) downto 0);
            PwmxSO       : out std_logic);
    end component scalp_pwm;

    component scalp_hdmi is
        generic (
            C_VGA_CONFIG : t_vga_config);
        port (
            ClocksxCI         : in    t_hdmi_vga_clocks;
            VgaPixCountersxDO : out   t_hdmi_vga_pix_counters;
            PixelxDI          : in    t_hdmi_vga_pix;
            HdmiTxxDIO        : inout t_hdmi_tx);
    end component scalp_hdmi;

    -- Signals
    -- Clocks
    -- Processing system clock
    signal Clk125xC                : std_logic         := '0';
    
    signal clk_100MHz : std_logic;
        
    -- Processing system pll locked
    signal Clk125PllLockedxS       : std_logic         := '0';
    -- Vga and Hdmi clocks
    signal HdmiVgaClocksxC         : t_hdmi_vga_clocks := C_HDMI_VGA_CLOCKS_IDLE;
    -- Resets
    -- Processing system reset
    signal Clk125RstxR             : std_logic         := '0';
    signal Clk125RstxRNA           : std_logic         := '1';
    ---------------------------------------------------------------------------
    -- Firmware ID
    ---------------------------------------------------------------------------
    signal FirmwareIDAxixD         : t_axi_lite        := C_AXI_LITE_IDLE;
    -- Register outputs
    signal FirmwareLedColorPortsxD : t_axi_bunch_of_registers((C_NB_RGB_LEDS - 1) downto 0) :=
        (others => C_AXI_REGISTER_IDLE);
    ---------------------------------------------------------------------------
    -- Complex Numbers Regs
    ---------------------------------------------------------------------------
    signal ClpxNumRegsAxixD : t_axi_lite                                            := C_AXI_LITE_IDLE;
    -- Register outputs
    signal PatternPortsxD   : t_axi_bunch_of_registers(1 downto 0)                  := (others => C_AXI_REGISTER_IDLE);
    signal ZImInPortxD      : t_axi_register                                        := C_AXI_REGISTER_IDLE;
    signal ZReInPortxD      : t_axi_register                                        := C_AXI_REGISTER_IDLE;
    ---------------------------------------------------------------------------
    -- Scalp Hdmi
    ---------------------------------------------------------------------------
    signal VgaPixCountersxD : t_hdmi_vga_pix_counters                               := C_HDMI_VGA_PIX_COUNTERS_IDLE;
    signal PixelxD          : t_hdmi_vga_pix                                        := C_HDMI_VGA_PIX_RED;
    signal HdmiTxxD         : t_hdmi_tx;
    ---------------------------------------------------------------------------
    -- GPIO Switches and Joystick
    ---------------------------------------------------------------------------
    signal GPIOSwitchesxD   : std_logic_vector((C_GPIO_SWITCHES_SIZE - 1) downto 0) := (others => '0');
    signal GPIOJoystickxD   : std_logic_vector((C_GPIO_JOYSTICK_SIZE - 1) downto 0) := (others => '0');

    
    ---------------------------------------------------------------------------
    -- Aurora 8B10B 
    ---------------------------------------------------------------------------
--    signal AuroraChannelUpxS : std_logic;
--    signal AuroraLaneUpxS    : std_logic;
--    signal AuroraHardErrxS   : std_logic;
--    signal AuroraSoftErrxS   : std_logic;
--    signal AuroraErrDetxS    : std_logic;
--    signal AuroraResetxR     : std_logic;

    -- Attributes
    attribute mark_debug       : string;
    attribute keep             : string;
    -- Clocks
    attribute keep of Clk125xC : signal is "true";
    -- Firmware ID
    -- attribute mark_debug of FirmwareIDAxixD  : signal is "true";
    -- attribute keep of FirmwareIDAxixD        : signal is "true";
    -- Complex Numbers Regs
    -- attribute mark_debug of ClpxNumRegsAxixD : signal is "true";
    -- attribute keep of ClpxNumRegsAxixD       : signal is "true";
    -- Hdmi
    -- attribute mark_debug of VgaPixCountersxD : signal is "true";
    -- attribute keep of VgaPixCountersxD       : signal is "true";
    -- attribute mark_debug of PixelxD          : signal is "true";
    -- attribute keep of PixelxD                : signal is "true";

begin

    PSxB : block is
    begin  -- block PSxB

        ZynqxI : entity work.scalp_zynqps_wrapper
            generic map (
                C_AXI4_ARADDR_SIZE   => C_AXI4_ARADDR_SIZE,
                C_AXI4_RDATA_SIZE    => C_AXI4_RDATA_SIZE,
                C_AXI4_RRESP_SIZE    => C_AXI4_RRESP_SIZE,
                C_AXI4_AWADDR_SIZE   => C_AXI4_AWADDR_SIZE,
                C_AXI4_WDATA_SIZE    => C_AXI4_WDATA_SIZE,
                C_AXI4_WSTRB_SIZE    => C_AXI4_WSTRB_SIZE,
                C_AXI4_BRESP_SIZE    => C_AXI4_BRESP_SIZE,
                C_GPIO_SWITCHES_SIZE => C_GPIO_SWITCHES_SIZE,
                C_GPIO_JOYSTICK_SIZE => C_GPIO_JOYSTICK_SIZE)
            port map (
                FIXED_IO_ps_clk     => PSClkxCIO,
                FIXED_IO_ps_porb    => PSPorxSNIO,
                FIXED_IO_ps_srstb   => PSSRstxRNIO,
                -- Clk and rst (125Mhz)
                HdmiVgaClocksxCO    => HdmiVgaClocksxC,
                Clk125xCO           => Clk125xC,
                Clk125RstxRO        => Clk125RstxR,
                Clk125RstxRNAO      => Clk125RstxRNA,
                Clk125PllLockedxSO  => Clk125PllLockedxS,
                Clk100xCO           => clk_100MHz,
                -- DDR interface
                DDR_addr            => DDRAddrxDIO,
                DDR_ba              => DDRBankAddrxDIO,
                DDR_cas_n           => DDRCasxSNIO,
                DDR_ck_n            => DDRClkxCNIO,
                DDR_ck_p            => DDRClkxCPIO,
                DDR_cke             => DDRCkexSIO,
                DDR_cs_n            => DDRCsxSNIO,
                DDR_dm              => DDRDmxDIO,
                DDR_dq              => DDRDqxDIO,
                DDR_dqs_n           => DDRDqsxDNIO,
                DDR_dqs_p           => DDRDqsxDPIO,
                DDR_odt             => DDROdtxSIO,
                DDR_ras_n           => DDRRasxSNIO,
                DDR_reset_n         => DDRDRstxRNIO,
                DDR_we_n            => DDRWexSNIO,
                FIXED_IO_ddr_vrn    => DDRVrxSNIO,
                FIXED_IO_ddr_vrp    => DDRVrxSPIO,
                -- USB interface
                Usb0VBusPwrFaultxSI => UsbVbusPwrFaultxSI,
                -- SPI1 used as uWire master. Clk, Data and LE signals are outputs
                -- SPI1 inputs are unused. Clk is connected to SCLK, Data to MOSI and LE to SS
                Spi1MOSIxSO         => Pll2V5DatauWirexSO,
                Spi1SSxSO           => Pll2V5LEuWirexSO,
                Spi1SclkxCO         => Pll2V5ClkuWirexCO,
                -- MIO
                FIXED_IO_mio        => MIOxDIO,
                -- GPIOs
                GPIOSwitchesxDI     => GPIOSwitchesxD,
                GPIOJoystickxDI     => GPIOJoystickxD,
                GPIOResetBtnxRNO    => SelfRstxRNO,
                -- I2C
                IoExtIICSclxDIO     => IoExtIICSclxDIO,
                IoExtIICSdaxDIO     => IoExtIICSdaxDIO,
                -- Firmware ID AXI interface + (clk and rst)
                FirmwareIDAxixDIO   => FirmwareIDAxixD,
                -- Complex Numbers Registers AXI interface + (clk and rst)
                ClpxNumRegsAxixDIO  => ClpxNumRegsAxixD);

    end block PSxB;

    PLxB : block is
        -- SECOND PLL INSTANCE
        component clk_wiz_0
        port (
            clk_in1  : in  std_logic;
            clk_out1 : out std_logic;
            locked   : out std_logic
        );
        end component;
        
        -- type state_t is (INIT_RANGE, INIT_STEP, INIT_COORD, CALCULATE, WAIT_FOR_ACK, DONE);
        type state_t is (INIT_RANGE, INIT_STEP_TMP, INIT_STEP, INIT_COORD, CALCULATE, DONE);

        signal palette_index_reg : std_logic_vector(4 downto 0);
        signal state: state_t := INIT_RANGE;

        -- Julia Pipelined
        signal v_sync_trigger: std_logic := '0';
        signal v_sync_reg : std_logic_vector(2 downto 0) := "000";
        signal v_sync_occurred:  std_logic := '0';
        signal VidOn_delayed : std_logic := '0';
        
        signal cores_done: std_logic_vector(1 downto 0) := "00";

        -- Julia parameters
        constant N_REGIONS     : integer := 4;
        constant REGION_HEIGHT : integer := 720 / N_REGIONS;
        -- Bram 128k
        type sfx_arr     is array (0 to N_REGIONS-1) of sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
        type ram_addr_t  is array (0 to N_REGIONS-1) of std_logic_vector(16 downto 0);
        type ram_data_t  is array (0 to N_REGIONS-1) of std_logic_vector(4 downto 0);
        type ram_we_t    is array (0 to N_REGIONS-1) of std_logic_vector(0 downto 0);
        -- interface
        signal r_ram_we          : ram_we_t;
        signal r_ram_wr_addr     : ram_addr_t;
        signal r_ram_data_in     : ram_data_t;
        signal r_ram_rd_addr     : std_logic_vector(16 downto 0);
        signal r_ram_data_out    : ram_data_t;
        -- regions declare
        signal region_x_init     : sfx_arr;
        signal region_y_init     : sfx_arr;

        -- 1 bit ber region
        -- when all bits are 1, frame is done
        signal region_done       : std_logic_vector(N_REGIONS-1 downto 0);
        -- 1 bit per region to start computing
        signal frame_start       : std_logic := '0';

        -- zoom window size from 3.0 to 0.05, step size of 0.01
        signal julia_range  : sfixed(3 downto -JULIA_NEGATIVE_DEPTH) := to_sfixed(3.0, 3, -JULIA_NEGATIVE_DEPTH);
        signal julia_x_step : sfixed(3 downto -JULIA_NEGATIVE_DEPTH) := to_sfixed(0.0041666, 3, -JULIA_NEGATIVE_DEPTH);
        signal julia_y_step : sfixed(3 downto -JULIA_NEGATIVE_DEPTH) := to_sfixed(0.0041666, 3, -JULIA_NEGATIVE_DEPTH);
        -- constant step size for julia set
        signal julia_step_const : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);

        -- for raw step size
        -- have to set the dont_touch attribute to keep 1 dispatch every 2 cycles
        signal julia_x_step_tmp : sfixed(4 downto -2*JULIA_NEGATIVE_DEPTH) := (others => '0');
        signal julia_y_step_tmp : sfixed(4 downto -2*JULIA_NEGATIVE_DEPTH) := (others => '0');
        attribute dont_touch : string;
        attribute dont_touch of julia_x_step_tmp : signal is "true";
        attribute dont_touch of julia_y_step_tmp : signal is "true";

        -- increment each cycle in CALCULATE
        signal probe_in0: std_logic_vector(31 downto 0) := (others => '0');
        signal probe_out0: std_logic_vector(0 downto 0) := (others => '0');
        signal probe_counter: unsigned(31 downto 0) := (others => '0');

        component JuliaRegion is
        generic (
            REGION_HEIGHT : integer := 180;
            REGION_WIDTH  : integer := 720;
            N_WORKERS     : integer := 4
        );
        Port (
            clk          : in  std_logic;
            rst          : in  std_logic;
            frame_start  : in  std_logic;
            c_re         : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
            c_im         : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
            julia_x_step : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
            julia_y_step : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
            x_coord_init : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
            y_coord_init : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
            ram_we       : out std_logic_vector(0 downto 0);
            ram_addr     : out std_logic_vector(16 downto 0);
            ram_data     : out std_logic_vector(4 downto 0);
            region_done  : out std_logic
        );
        end component;

        COMPONENT vio_0
        PORT (
            clk : IN STD_LOGIC;
            probe_in0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) 
        );
        END COMPONENT;

    -- component BRAM_5_500k is 
    --   PORT (
    --     clka : IN STD_LOGIC;
    --     ena : IN STD_LOGIC;
    --     wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    --     addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    --     dina : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    --     clkb : IN STD_LOGIC;
    --     enb : IN STD_LOGIC;
    --     addrb : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    --     doutb : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    --   );
    --   end component BRAM_5_500k;

    component BRAM_5_130k is
    PORT (
        clka  : IN  STD_LOGIC;
        ena   : IN  STD_LOGIC;
        wea   : IN  STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN  STD_LOGIC_VECTOR(16 DOWNTO 0);
        dina  : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
        clkb  : IN  STD_LOGIC;
        enb   : IN  STD_LOGIC;
        addrb : IN  STD_LOGIC_VECTOR(16 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
    end component;

    type color_pattern is array (0 to 31) of std_logic_vector(23 downto 0);
    constant COLOR_PALETTE : color_pattern := (
        -- 0-3: The Void (Pure Black)
        0  => x"000000", 1  => x"000000", 2  => x"000000", 3  => x"000000",
        
        -- 4-9: Deep Space Blues
        4  => x"00001A", 5  => x"000033", 6  => x"00004D", 
        7  => x"000066", 8  => x"000080", 9  => x"0A0099",
        
        -- 10-16: Electric Violet to Magenta
        10 => x"2900B3", 11 => x"4700CC", 12 => x"6600E6", 13 => x"8500FF",
        14 => x"A300E6", 15 => x"C200CC", 16 => x"E000B3",
        
        -- 17-23: Magenta to Intense Red/Orange
        17 => x"FF0099", 18 => x"FF0066", 19 => x"FF0033", 20 => x"FF1A00",
        21 => x"FF3300", 22 => x"FF4D00", 23 => x"FF6600",
        
        -- 24-31: Fire, Gold, and Hot White (The Edge)
        24 => x"FF8C00", 25 => x"FFB300", 26 => x"FFD900", 27 => x"FFFF00",
        28 => x"FFFF4D", 29 => x"FFFF80", 30 => x"FFFFB3", 31 => x"FFFFFF"
    );
      
--      COMPONENT aurora_8b10b
--  PORT (
--    s_axi_tx_tdata : IN STD_LOGIC_VECTOR(0 TO 31);
--    s_axi_tx_tkeep : IN STD_LOGIC_VECTOR(0 TO 3);
--    s_axi_tx_tlast : IN STD_LOGIC;
--    s_axi_tx_tvalid : IN STD_LOGIC;
--    s_axi_tx_tready : OUT STD_LOGIC;
--    s_axi_nfc_tx_tvalid : IN STD_LOGIC;
--    s_axi_nfc_tx_tdata : IN STD_LOGIC_VECTOR(0 TO 3);
--    s_axi_nfc_tx_tready : OUT STD_LOGIC;
--    m_axi_rx_tdata : OUT STD_LOGIC_VECTOR(0 TO 31);
--    m_axi_rx_tkeep : OUT STD_LOGIC_VECTOR(0 TO 3);
--    m_axi_rx_tlast : OUT STD_LOGIC;
--    m_axi_rx_tvalid : OUT STD_LOGIC;
--    hard_err : OUT STD_LOGIC;
--    soft_err : OUT STD_LOGIC;
--    frame_err : OUT STD_LOGIC;
--    channel_up : OUT STD_LOGIC;
--    lane_up : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--    txp : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--    txn : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--    reset : IN STD_LOGIC;
--    gt_reset : IN STD_LOGIC;
--    loopback : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
--    rxp : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    rxn : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    drpclk_in : IN STD_LOGIC;
--    drpaddr_in : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
--    drpen_in : IN STD_LOGIC;
--    drpdi_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--    drprdy_out : OUT STD_LOGIC;
--    drpdo_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--    drpwe_in : IN STD_LOGIC;
--    m_axi_nfc_rx_tvalid : OUT STD_LOGIC;
--    m_axi_nfc_rx_tdata : OUT STD_LOGIC_VECTOR(0 TO 3);
--    power_down : IN STD_LOGIC;
--    tx_lock : OUT STD_LOGIC;
--    tx_resetdone_out : OUT STD_LOGIC;
--    rx_resetdone_out : OUT STD_LOGIC;
--    link_reset_out : OUT STD_LOGIC;
--    gt_common_reset_out : OUT STD_LOGIC;
--    gt0_pll0outclk_in : IN STD_LOGIC;
--    gt0_pll1outclk_in : IN STD_LOGIC;
--    gt0_pll0outrefclk_in : IN STD_LOGIC;
--    gt0_pll1outrefclk_in : IN STD_LOGIC;
--    gt0_pll0refclklost_in : IN STD_LOGIC;
--    quad1_common_lock_in : IN STD_LOGIC;
--    init_clk_in : IN STD_LOGIC;
--    pll_not_locked : IN STD_LOGIC;
--    tx_out_clk : OUT STD_LOGIC;
--    sys_reset_out : OUT STD_LOGIC;
--    user_clk : IN STD_LOGIC;
--    sync_clk : IN STD_LOGIC;
--    gt_refclk1 : IN STD_LOGIC 
--  );
--END COMPONENT;
         
    begin  -- block PLxB
        
    -- Initialize BRAM
    gen_regions : for i in 0 to N_REGIONS-1 generate
            region_inst : entity work.JuliaRegion
                generic map (
                    REGION_HEIGHT => REGION_HEIGHT,
                    REGION_WIDTH  => 720,
                    N_WORKERS     => 3,
                    JULIA_NEGATIVE_DEPTH => JULIA_NEGATIVE_DEPTH
                )
                port map (
                    clk          => clk_100MHz,
                    rst          => '0',
                    frame_start  => frame_start,
                    c_re         => to_sfixed(-0.835, 3, -JULIA_NEGATIVE_DEPTH),
                    c_im         => to_sfixed(-0.232, 3, -JULIA_NEGATIVE_DEPTH),
                    julia_x_step => julia_x_step,
                    julia_y_step => julia_y_step,
                    x_coord_init => region_x_init(i),
                    y_coord_init => region_y_init(i),
                    ram_we       => r_ram_we(i),
                    ram_addr     => r_ram_wr_addr(i),
                    ram_data     => r_ram_data_in(i),
                    region_done  => region_done(i)
                );

        bram_inst : BRAM_5_130k
            port map (
                clka  => clk_100MHz,
                ena   => '1',
                wea   => r_ram_we(i),
                addra => r_ram_wr_addr(i),
                dina  => r_ram_data_in(i),
                clkb  => HdmiVgaClocksxC.VgaxC,
                enb   => '1',
                addrb => r_ram_rd_addr,
                doutb => r_ram_data_out(i)
            );
    end generate;

    vio : vio_0
    PORT MAP (
        clk => clk_100MHz,
        probe_in0 => probe_in0,
        probe_out0 => probe_out0
    );
    

    -- component color_palette_index is
    --     Port(
    --         iteration : in std_logic_vector(7 downto 0);
    --         palette_index : out std_logic_vector(4 downto 0)
    --     );
    -- end component;

    -- color_index: color_palette_index
    -- port map(
    --     iteration => julia_n_iter,
    --     palette_index => palette_index
    -- );

    -- color_index_1: color_palette_index
    -- port map(
    --     iteration => julia_n_iter_1,
    --     palette_index => palette_index_1
    -- );
    
    -- julia_pipelined_parra: JuliaPipelinedParallel



--    Aurora : aurora_8b10b
--  PORT MAP (
--    -- TRANSMITTER
--    s_axi_tx_tdata => s_axi_tx_tdata, -- Transmit data
--    s_axi_tx_tkeep => s_axi_tx_tkeep, -- Which last octects are valid
--    s_axi_tx_tlast => s_axi_tx_tlast, -- Indicate End of frame
--    s_axi_tx_tvalid => s_axi_tx_tvalid, -- Enable sending data
--    s_axi_tx_tready => s_axi_tx_tready, -- Select data source. Must be set to low when K char are transmitted

--    s_axi_nfc_tx_tvalid => s_axi_nfc_tx_tvalid,
--    s_axi_nfc_tx_tdata => s_axi_nfc_tx_tdata,
--    s_axi_nfc_tx_tready => s_axi_nfc_tx_tready,
    
--    -- RECEIVER
--    m_axi_rx_tdata => m_axi_rx_tdata,
--    m_axi_rx_tkeep => m_axi_rx_tkeep,
--    m_axi_rx_tlast => m_axi_rx_tlast,
--    m_axi_rx_tvalid => m_axi_rx_tvalid,
    
--    -- CLOCKS
--    init_clk_in => init_clk_in,
--    user_clk => user_clk, -- main clock
--    drpclk_in => drpclk_in, -- State machine RX side

--    -- RESETS ASYNCHRONES
--    reset => reset, -- with clock init_clk_in
--    gt_reset => gt_reset, -- with clock user_clk

--    hard_err => hard_err,
--    soft_err => soft_err,
--    frame_err => frame_err,
--    channel_up => channel_up,
--    lane_up => lane_up,
--    txp => txp,
--    txn => txn,
   
   
--    loopback => loopback,
--    rxp => rxp,
--    rxn => rxn,
    
--    drpaddr_in => drpaddr_in,
--    drpen_in => drpen_in,
--    drpdi_in => drpdi_in,
--    drprdy_out => drprdy_out,
--    drpdo_out => drpdo_out,
--    drpwe_in => drpwe_in,
--    m_axi_nfc_rx_tvalid => m_axi_nfc_rx_tvalid,
--    m_axi_nfc_rx_tdata => m_axi_nfc_rx_tdata,
--    power_down => power_down,
--    tx_lock => tx_lock,
--    tx_resetdone_out => tx_resetdone_out,
--    rx_resetdone_out => rx_resetdone_out,
--    link_reset_out => link_reset_out,
--    gt_common_reset_out => gt_common_reset_out,
--    gt0_pll0outclk_in => gt0_pll0outclk_in,
--    gt0_pll1outclk_in => gt0_pll1outclk_in,
--    gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
--    gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
--    gt0_pll0refclklost_in => gt0_pll0refclklost_in,
--    quad1_common_lock_in => quad1_common_lock_in,
    
--    pll_not_locked => pll_not_locked,
--    tx_out_clk => tx_out_clk,
--    sys_reset_out => sys_reset_out,
    
--    sync_clk => sync_clk,
--    gt_refclk1 => gt_refclk1
--  );
    
        ScalpFirmwareIDxI : entity work.scalp_firmwareid
            generic map (
                C_REGS_ADDR_SIZE => C_REGS_ADDR_SIZE,
                C_NB_REGS_IN     => C_FIRMWARE_ID_NB_REGS_IN,
                C_NB_REGS_OUT    => C_FIRMWARE_ID_NB_REGS_OUT)
            port map (
                AxiSlvxDIO  => FirmwareIDAxixD,
                -- RegPortsxDI => RegPortsxD,
                RegPortsxDO => FirmwareLedColorPortsxD);

        PwmLedsxB : block is

            -- PWM led signals
            signal PwmRed1xS   : std_logic := '0';
            signal PwmRed2xS   : std_logic := '0';
            signal PwmGreen1xS : std_logic := '0';
            signal PwmGreen2xS : std_logic := '0';
            signal PwmBlue1xS  : std_logic := '0';
            signal PwmBlue2xS  : std_logic := '0';

            -- Attributes
            attribute mark_debug : string;
            attribute keep       : string;

            -- attribute mark_debug of PwmRedxS   : signal is "true"; -- ! old 
            -- attribute keep of PwmRedxS         : signal is "true"; -- ! old 
            -- attribute mark_debug of PwmRed1xS  : signal is "true";
            -- attribute keep of PwmRed1xS        : signal is "true";

            -- attribute mark_debug of PwmGreenxS : signal is "true";
            -- attribute keep of PwmGreenxS       : signal is "true";
            -- attribute mark_debug of PwmBluexS  : signal is "true";
            -- attribute keep of PwmBluexS        : signal is "true";

        begin  -- block PwmLedsxB

            PwmRed1xI : entity work.scalp_pwm
                generic map (
                    C_PWM_SIZE    => C_PWM_SIZE,
                    C_CLK_CNT_LEN => C_CLK_CNT_LEN)
                port map (
                    ClkxCI       => FirmwareIDAxixD.ClockxC.ClkxC,
                    RstxRANI     => FirmwareIDAxixD.ResetxR.RstxRAN,
                    DutyCyclexDI => unsigned(FirmwareLedColorPortsxD(C_RGB_LED_1_IDX).RegxD(23 downto 16)),
                    PwmxSO       => PwmRed1xS);

            PwmRed2xI : entity work.scalp_pwm
                generic map (
                    C_PWM_SIZE    => C_PWM_SIZE,
                    C_CLK_CNT_LEN => C_CLK_CNT_LEN)
                port map (
                    ClkxCI       => FirmwareIDAxixD.ClockxC.ClkxC,
                    RstxRANI     => FirmwareIDAxixD.ResetxR.RstxRAN,
                    DutyCyclexDI => unsigned(FirmwareLedColorPortsxD(C_RGB_LED_2_IDX).RegxD(23 downto 16)),
                    PwmxSO       => PwmRed2xS);

            OBufRedxB : block is
            begin  -- block OBufRedxB

                OutBufLed1RxI : OBUF
                    generic map (
                        DRIVE      => 12,
                        IOSTANDARD => "DEFAULT",
                        SLEW       => "SLOW")
                    port map (
                        O => Led12V5RxSO,
                        I => PwmRed1xS);

--                OutBufLed2RxI : OBUF
--                    generic map (
--                        DRIVE      => 12,
--                        IOSTANDARD => "DEFAULT",
--                        SLEW       => "SLOW")
--                    port map (
--                        O => Led22V5RxSO,
--                        -- I => PwmRed2xS);
--                        I => AuroraErrDetxS); -- rouge = erreur détectée

            end block OBufRedxB;

            PwmGreen1xI : entity work.scalp_pwm
                generic map (
                    C_PWM_SIZE    => C_PWM_SIZE,
                    C_CLK_CNT_LEN => C_CLK_CNT_LEN)
                port map (
                    ClkxCI       => FirmwareIDAxixD.ClockxC.ClkxC,
                    RstxRANI     => FirmwareIDAxixD.ResetxR.RstxRAN,
                    DutyCyclexDI => unsigned(FirmwareLedColorPortsxD(C_RGB_LED_1_IDX).RegxD(15 downto 8)),
                    PwmxSO       => PwmGreen1xS);

            PwmGreen2xI : entity work.scalp_pwm
                generic map (
                    C_PWM_SIZE    => C_PWM_SIZE,
                    C_CLK_CNT_LEN => C_CLK_CNT_LEN)
                port map (
                    ClkxCI       => FirmwareIDAxixD.ClockxC.ClkxC,
                    RstxRANI     => FirmwareIDAxixD.ResetxR.RstxRAN,
                    DutyCyclexDI => unsigned(FirmwareLedColorPortsxD(C_RGB_LED_2_IDX).RegxD(15 downto 8)),
                    PwmxSO       => PwmGreen2xS);

            OBufGreenxB : block is
            begin  -- block OBufGreenxB

                OutBufLed1GxI : OBUF
                    generic map (
                        DRIVE      => 12,
                        IOSTANDARD => "DEFAULT",
                        SLEW       => "SLOW")
                    port map (
                        O => Led12V5GxSO,
                        I => PwmGreen1xS);

                -- OutBufLed2RxI : OBUF
--                OutBufLed2GxI : OBUF
--                    generic map (
--                        DRIVE      => 12,
--                        IOSTANDARD => "DEFAULT",
--                        SLEW       => "SLOW")
--                    port map (
--                        O => Led22V5GxSO,
--                        -- I => PwmGreen2xS);
--                        I => AuroraChannelUpxS); -- vert = channel up, tout est ok

            end block OBufGreenxB;

            PwmBlue1xI : entity work.scalp_pwm
                generic map (
                    C_PWM_SIZE    => C_PWM_SIZE,
                    C_CLK_CNT_LEN => C_CLK_CNT_LEN)
                port map (
                    ClkxCI       => FirmwareIDAxixD.ClockxC.ClkxC,
                    RstxRANI     => FirmwareIDAxixD.ResetxR.RstxRAN,
                    DutyCyclexDI => unsigned(FirmwareLedColorPortsxD(C_RGB_LED_1_IDX).RegxD(7 downto 0)),
                    PwmxSO       => PwmBlue1xS);

            PwmBlue2xI : entity work.scalp_pwm
                generic map (
                    C_PWM_SIZE    => C_PWM_SIZE,
                    C_CLK_CNT_LEN => C_CLK_CNT_LEN)
                port map (
                    ClkxCI       => FirmwareIDAxixD.ClockxC.ClkxC,
                    RstxRANI     => FirmwareIDAxixD.ResetxR.RstxRAN,
                    DutyCyclexDI => unsigned(FirmwareLedColorPortsxD(C_RGB_LED_2_IDX).RegxD(7 downto 0)),
                    PwmxSO       => PwmBlue2xS);

            OBufBluexB : block is
            begin  -- block OBufBluexB

                OutBufLed1BxI : OBUF
                    generic map (
                        DRIVE      => 12,
                        IOSTANDARD => "DEFAULT",
                        SLEW       => "SLOW")
                    port map (
                        O => Led12V5BxSO,
                        I => PwmBlue1xS);

--                OutBufLed2BxI : OBUF
--                    generic map (
--                        DRIVE      => 12,
--                        IOSTANDARD => "DEFAULT",
--                        SLEW       => "SLOW")
--                    port map (
--                        O => Led22V5BxSO,
--                        -- I => PwmBlue2xS);
--                        I => AuroraLaneUpxS); -- bleu = lane up

            end block OBufBluexB;

        end block PwmLedsxB;

        SwitchesxB : block is
        begin  -- block SwitchesxB

            InBufSwitchesxG : for i in 0 to (C_GPIO_SWITCHES_SIZE - 1) generate
                InBufSwitch0xI : IBUF
                    generic map (
                        IBUF_LOW_PWR => true,
                        IOSTANDARD   => "DEFAULT")
                    port map (
                        O => GPIOSwitchesxD(i),
                        I => SwitchesxDI(i));
            end generate InBufSwitchesxG;

        end block SwitchesxB;

        JoystickxB : block is
        begin  -- block JoystickxB

            InBufJoystickxG : for i in 0 to (C_GPIO_JOYSTICK_SIZE - 1) generate
                InBufJoystickIdxxI : IBUF
                    generic map (
                        IBUF_LOW_PWR => true,
                        IOSTANDARD   => "DEFAULT")
                    port map (
                        O => GPIOJoystickxD(i),
                        I => JoystickxDI(i));
            end generate InBufJoystickxG;

        end block JoystickxB;

        ScalpClpxNumRegsxI : entity work.scalp_cplx_num_regs
            generic map (
                C_REGS_ADDR_SIZE => C_REGS_ADDR_SIZE,
                C_NB_REGS_IN     => C_CPLX_NUM_REGS_NB_REGS_IN,
                C_NB_REGS_OUT    => C_CPLX_NUM_REGS_NB_REGS_OUT)
            port map (
                AxiSlvxDIO              => ClpxNumRegsAxixD,
                -- RegPortsxDI => ,
                RegPortsxDO(1 downto 0) => PatternPortsxD,
                RegPortsxDO(2)          => ZImInPortxD,
                RegPortsxDO(3)          => ZReInPortxD);

        HdmixB : block is
        begin  -- block HdmixB

            HdmiIOxB : block is
            begin  -- block HdmiIOxB

                -- In
                HpdxAS  : HdmiTxxD.InxD.HpdxS <= HdmiTXHpdxSI;
                -- InOut
                -- SdaxAS  : HdmiTXSdaxSIO       <= HdmiTxxD.InOutxD.SdaxS;
                CecxAS  : HdmiTXCecxSIO       <= HdmiTxxD.InOutxD.CecxS;
                -- Out
                -- SclxAS  : HdmiTXSclxSO        <= HdmiTxxD.OutxD.SclxS;
                ClkPxAS : HdmiTXClkPxSO       <= HdmiTxxD.OutxD.ClkxC.PxC;
                ClkNxAS : HdmiTXClkNxSO       <= HdmiTxxD.OutxD.ClkxC.NxC;

                HdmiDataLanesxG : for i in 0 to (C_HDMI_LANES - 1) generate
                    DataPxAS : HdmiTXPxDO(i) <= HdmiTxxD.OutxD.DataxD.PxD(i);
                    DataNxAS : HdmiTXNxDO(i) <= HdmiTxxD.OutxD.DataxD.NxD(i);
                end generate HdmiDataLanesxG;

            end block HdmiIOxB;

            TxxI : entity work.scalp_hdmi
                generic map (
                    C_VGA_CONFIG => C_VGA_720X720_60HZ_CONFIG)
                port map (
                    ClocksxCI         => HdmiVgaClocksxC,
                    VgaPixCountersxDO => VgaPixCountersxD,
                    PixelxDI          => PixelxD,
                    HdmiTxxDIO        => HdmiTxxD);

        end block HdmixB;

        ImGenxB : block is

            -- Constants
            constant C_CDC_TYPE     : integer range 0 to 2  := 1;
            constant C_RESET_STATE  : integer range 0 to 1  := 1;
            constant C_SINGLE_BIT   : integer range 0 to 1  := 0;
            constant C_FLOP_INPUT   : integer range 0 to 1  := 1;
            constant C_VECTOR_WIDTH : integer range 0 to 32 := 32;
            constant C_MTBF_STAGES  : integer range 0 to 6  := 2;

            constant C_AXI_CROSS_REGISTER : t_axi_register := (RegxD => x"00ffffff");
            constant C_AXI_BG_REGISTER    : t_axi_register := (RegxD => x"00ff0000");

            -- Signals
            signal CDCPatternPortsxD : t_axi_bunch_of_registers(1 downto 0) := (0 => C_AXI_BG_REGISTER,
                                                                                1 => C_AXI_CROSS_REGISTER);
            signal BramAddrxD : std_logic_vector(8 downto 0) := (others => '0');
            signal BramWexD   : std_logic_vector(3 downto 0) := (others => '1');

            -- Attributes
            attribute mark_debug : string;
            attribute keep       : string;

            -- attribute mark_debug of CDCPatternPortsxD : signal is "true";
            -- attribute keep of CDCPatternPortsxD       : signal is "true";
            -- attribute mark_debug of BramAddrxD        : signal is "true";
            -- attribute keep of BramAddrxD              : signal is "true";
            -- attribute mark_debug of BramWexD          : signal is "true";
            -- attribute keep of BramWexD                : signal is "true";
            
            -- LUT for address
            type y_offset_arr_t is array(0 to REGION_HEIGHT-1) of integer;
            
            function init_y_lut return y_offset_arr_t is
                variable ret : y_offset_arr_t;
            begin
                for i in 0 to REGION_HEIGHT-1 loop
                    ret(i) := i * 720;
                end loop;
                return ret;
            end function;
            
            constant Y_MULT_LUT : y_offset_arr_t := init_y_lut;

        begin  -- block ImGenxB                
           
            -- JULIA PROCESS PIPELINED AND PARRALELIZED     
            JuliaTopFSM : process(clk_100MHz)
            begin
                -- convert SCREEN_STEP_SCALED to real value 1/720
                julia_step_const <= to_sfixed(real(SCREEN_STEP_SCALED) / (2.0**JULIA_NEGATIVE_DEPTH), 3, -JULIA_NEGATIVE_DEPTH);

                if rising_edge(clk_100MHz) then
                    -- run only if the PLL is stable
                    if Clk125PllLockedxS = '1' then
                        case state is
                           when INIT_RANGE =>
                                frame_start <= '0';
                                
                                -- wait for the screen to finish drawing
                                if v_sync_occurred = '1' then
                                    -- calculate new window range if above 0.05
                                    if julia_range > to_sfixed(0.05, 3, -JULIA_NEGATIVE_DEPTH) then
                                        -- zoom in by 0.01
                                        julia_range <= resize(julia_range - to_sfixed(0.01, 3, -JULIA_NEGATIVE_DEPTH), julia_range);
                                    -- else reset to 3.0
                                    else
                                        -- Reset window range to 3x3
                                        julia_range <= to_sfixed(3.0, 3, -JULIA_NEGATIVE_DEPTH);
                                    end if;
                                    state <= INIT_STEP_TMP;
                                    -- reset counter
                                    probe_counter <= (others => '0');
                                end if;
                                       
                            -- compute julia_range * (1/720)
                            when INIT_STEP_TMP =>
                                -- hold the precision for now
                                julia_x_step_tmp <= resize(julia_range * julia_step_const, julia_x_step_tmp);
                                julia_y_step_tmp <= resize(julia_range * julia_step_const, julia_y_step_tmp);
                                state <= INIT_STEP;

                            -- resize to original width
                            when INIT_STEP =>
                                -- 1/720 = 0.001388
                                julia_x_step <= resize(julia_x_step_tmp, 3, -JULIA_NEGATIVE_DEPTH);
                                julia_y_step <= resize(julia_y_step_tmp, 3, -JULIA_NEGATIVE_DEPTH);
                                state <= INIT_COORD;

                            -- get the top left corner of each region
                            when INIT_COORD =>
                                -- for all regions
                                for i in 0 to N_REGIONS-1 loop
                                    -- Center window in the middle of screen
                                    region_x_init(i) <= resize(to_sfixed(-360, 10, 0) * julia_x_step, 3, -JULIA_NEGATIVE_DEPTH);
                                    -- depend on the region height, it start at different y
                                    region_y_init(i) <= resize(to_sfixed(i * REGION_HEIGHT - 360, 10, 0) * julia_y_step, 3, -JULIA_NEGATIVE_DEPTH);
                                end loop;
                                state <= CALCULATE;

                            when CALCULATE =>
                                --  increment at each cycle
                                probe_counter <= probe_counter + 1;

                                -- if all the regions have finished
                                if region_done = (region_done'range => '1') then
                                    frame_start <= '0';
                                    state <= DONE;
                                else
                                    frame_start <= '1';
                                end if;

                            -- 1 cycle to send the counter value to the VIO and check the result
                            when DONE =>
                                probe_in0 <= std_logic_vector(probe_counter);
                                frame_start <= '0';
                                state <= INIT_RANGE;
                        end case;
                    end if;
                end if;
            end process JuliaTopFSM;

            -- Process in clk_100MHz domain
           sync_proc : process(clk_100MHz)
            begin
                if rising_edge(clk_100MHz) then
                    v_sync_reg <= v_sync_reg(1 downto 0) & v_sync_trigger;
                    
                    if state = INIT_RANGE then
                        -- Detect the toggle edge
                        if v_sync_reg(2) /= v_sync_reg(1) then
                            v_sync_occurred <= '1';
                        end if;
                    else
                        v_sync_occurred <= '0';
                    end if;
                end if;
            end process;

            -- reader proccess, read and send to hdmi
            DisplayRamxP : process(HdmiVgaClocksxC.VgaxC)
                variable idx        : integer range 0 to 31;
                variable v_int      : integer range 0 to 1023;
                variable v_local    : integer range 0 to REGION_HEIGHT-1;
                variable region_sel : integer range 0 to N_REGIONS-1;
                variable base_addr  : integer; -- NEW: Holds our instant LUT answer
            begin
                if rising_edge(HdmiVgaClocksxC.VgaxC) then
                    if (unsigned(VgaPixCountersxD.HxD) = 719) and (unsigned(VgaPixCountersxD.VxD) = 719) then
                        v_sync_trigger <= not v_sync_trigger;
                    end if;

                    if (HdmiVgaClocksxC.PllLockedxS = '0') or (HdmiVgaClocksxC.VgaResetxRNA = '0') then
                        PixelxD <= C_HDMI_VGA_PIX_IDLE;
                    elsif VgaPixCountersxD.VidOnxS = '1' then
                        if (unsigned(VgaPixCountersxD.HxD) < 720) and (unsigned(VgaPixCountersxD.VxD) < 720) then
                            v_int := to_integer(unsigned(VgaPixCountersxD.VxD));
                            
                            if    v_int < REGION_HEIGHT     then region_sel := 0;
                            elsif v_int < REGION_HEIGHT * 2 then region_sel := 1;
                            elsif v_int < REGION_HEIGHT * 3 then region_sel := 2;
                            else                                 region_sel := 3;
                            end if;
                            
                            v_local := v_int - region_sel * REGION_HEIGHT;

                            base_addr := Y_MULT_LUT(v_local);

                            r_ram_rd_addr <= std_logic_vector(to_unsigned(
                                base_addr + to_integer(unsigned(VgaPixCountersxD.HxD)), 17));

                            idx := to_integer(unsigned(r_ram_data_out(region_sel)));
                            PixelxD.RxD <= COLOR_PALETTE(idx)(23 downto 16);
                            PixelxD.GxD <= COLOR_PALETTE(idx)(15 downto 8);
                            PixelxD.BxD <= COLOR_PALETTE(idx)(7 downto 0);
                        end if;
                    else
                        PixelxD <= C_HDMI_VGA_PIX_IDLE;
                    end if;
                end if;
            end process DisplayRamxP;

        end block ImGenxB;

    end block PLxB;

end arch;
