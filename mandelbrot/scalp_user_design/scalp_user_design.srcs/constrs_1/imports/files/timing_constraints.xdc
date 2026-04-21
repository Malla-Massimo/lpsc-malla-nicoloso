############################################################################
# Timing constraints                                                       #
############################################################################

##### PS_CLK (125 MHz) #####
create_clock -period 8.000 -waveform {0.000 4.000} [get_ports PSClkxCIO]

##### GTP reference clocks (125 MHz) #####
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets GTPRefClk0PxCI]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets GTPRefClk1xC]

##### Clocks from PLLs (125 MHz) #####
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_Local}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_North}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_South}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_Top}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_Bottom}]

##### Clocks from neighbours (125 MHz) #####
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_North}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_South}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_East}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_West}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_Top}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_Bottom}]

# Output delays
#create_clock -name clk_125 -period 8.000 [get_nets sys_clock_clk_125]
#set_output_delay 1.000 -clock [get_clocks clk_125] [get_ports Led12V5RxSO]
#set_output_delay 1.000 -clock [get_clocks clk_125] [get_ports Led12V5RxSO]
#set_output_delay 1.000 -clock [get_clocks clk_125] [get_ports Led12V5RxSO]






connect_debug_port u_ila_0/probe0 [get_nets [list {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWProtxD][0]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWProtxD][1]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWProtxD][2]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][0]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][1]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][2]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][3]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][4]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][5]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][6]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][7]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][8]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][9]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][10]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][11]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][12]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][13]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][14]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][15]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][16]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][17]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][18]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][19]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][20]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][21]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][22]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][23]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][24]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][25]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][26]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][27]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][28]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][29]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][30]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][31]}]]
connect_debug_port u_ila_0/probe4 [get_nets [list {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARCachexD][0]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARCachexD][1]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARCachexD][2]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARCachexD][3]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWCachexD][0]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWCachexD][1]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWCachexD][2]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWCachexD][3]}]]
connect_debug_port u_ila_0/probe8 [get_nets [list {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARProtxD][0]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARProtxD][1]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARProtxD][2]}]]
connect_debug_port u_ila_0/probe15 [get_nets [list {FirmwareIDAxixD[ResetxR][RstxRAN]}]]
connect_debug_port u_ila_0/probe17 [get_nets [list {FirmwareIDAxixD[WrxD][AddrxD][S2MxD][AWReadyxS]}]]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets Clk125xC]
