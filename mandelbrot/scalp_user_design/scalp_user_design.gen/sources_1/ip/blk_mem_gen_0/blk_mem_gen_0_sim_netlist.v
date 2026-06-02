// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Apr 14 19:17:26 2026
// Host        : LAPTOP-CHKLS7CN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/lpsc/mandelbrot/scalp_user_design/scalp_user_design.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20288)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
