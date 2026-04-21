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






create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list PSxB.ZynqxI/PlatformxB.ScalpZynqPSxI/sys_clock/inst/clk_125]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 3 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWProtxD][0]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWProtxD][1]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWProtxD][2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][0]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][1]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][2]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][3]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][4]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][5]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][6]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][7]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][8]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][9]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][10]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][11]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][12]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][13]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][14]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][15]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][16]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][17]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][18]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][19]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][20]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][21]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][22]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][23]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][24]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][25]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][26]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][27]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][28]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][29]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][30]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WDataxD][31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 2 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {FirmwareIDAxixD[WrxD][RespxD][S2MxD][BRespxD][0]} {FirmwareIDAxixD[WrxD][RespxD][S2MxD][BRespxD][1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][0]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][1]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][2]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][3]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][4]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][5]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][6]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][7]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][8]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][9]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][10]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][11]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][12]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][13]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][14]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][15]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][16]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][17]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][18]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][19]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][20]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][21]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][22]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][23]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][24]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][25]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][26]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][27]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][28]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][29]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][30]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARAddrxD][31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 4 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARCachexD][0]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARCachexD][1]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARCachexD][2]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARCachexD][3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 2 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RRespxD][0]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RRespxD][1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 4 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWCachexD][0]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWCachexD][1]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWCachexD][2]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWCachexD][3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 4 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WStrbxD][0]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WStrbxD][1]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WStrbxD][2]} {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WStrbxD][3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 3 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARProtxD][0]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARProtxD][1]} {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARProtxD][2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 32 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][0]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][1]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][2]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][3]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][4]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][5]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][6]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][7]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][8]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][9]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][10]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][11]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][12]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][13]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][14]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][15]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][16]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][17]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][18]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][19]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][20]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][21]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][22]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][23]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][24]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][25]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][26]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][27]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][28]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][29]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][30]} {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RDataxD][31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 32 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][0]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][1]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][2]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][3]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][4]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][5]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][6]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][7]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][8]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][9]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][10]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][11]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][12]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][13]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][14]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][15]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][16]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][17]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][18]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][19]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][20]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][21]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][22]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][23]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][24]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][25]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][26]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][27]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][28]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][29]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][30]} {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWAddrxD][31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {FirmwareIDAxixD[RdxD][AddrxD][M2SxD][ARValidxS]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {FirmwareIDAxixD[RdxD][AddrxD][S2MxD][ARReadyxS]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {FirmwareIDAxixD[RdxD][DataxD][M2SxD][RReadyxS]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {FirmwareIDAxixD[RdxD][DataxD][S2MxD][RValidxS]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {FirmwareIDAxixD[ResetxR][RstxRAN]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {FirmwareIDAxixD[WrxD][AddrxD][M2SxD][AWValidxS]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {FirmwareIDAxixD[WrxD][AddrxD][S2MxD][AWReadyxS]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list {FirmwareIDAxixD[WrxD][DataxD][M2SxD][WValidxS]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list {FirmwareIDAxixD[WrxD][DataxD][S2MxD][WReadyxS]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list {FirmwareIDAxixD[WrxD][RespxD][M2SxD][BReadyxS]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list {FirmwareIDAxixD[WrxD][RespxD][S2MxD][BValidxS]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list PLxB.PwmLedsxB.PwmRed1xS]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets Clk125xC]
