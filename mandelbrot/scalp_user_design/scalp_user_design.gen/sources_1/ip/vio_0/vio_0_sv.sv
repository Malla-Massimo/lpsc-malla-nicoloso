// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.

// MODULE VLNV: xilinx.com:ip:vio:3.0

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module vio_0_sv (
  (* X_INTERFACE_IGNORE = "true" *)
  input wire clk,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in0,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in1,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in2,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in3,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in4,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in5,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in6,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in7,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in8,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in9,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in10,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in11,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in12,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in13,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in14,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in15,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in16,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in17,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in18,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in19,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in20,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in21,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in22,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in23,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in24,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in25,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in26,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in27,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in28,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in29,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in30,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [0:0] probe_in31,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out1,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out2,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out3,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out4,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out5,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out6,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out7,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out8,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out9,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out10,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out11,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out12,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out13,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out14,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out15,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out16,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out17,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out18,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out19,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out20,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out21,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out22,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out23,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out24,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out25,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out26,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out27,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out28,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out29,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out30,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] probe_out31
);

  vio_0 inst (
    .clk(clk),
    .probe_in0(probe_in0),
    .probe_in1(probe_in1),
    .probe_in2(probe_in2),
    .probe_in3(probe_in3),
    .probe_in4(probe_in4),
    .probe_in5(probe_in5),
    .probe_in6(probe_in6),
    .probe_in7(probe_in7),
    .probe_in8(probe_in8),
    .probe_in9(probe_in9),
    .probe_in10(probe_in10),
    .probe_in11(probe_in11),
    .probe_in12(probe_in12),
    .probe_in13(probe_in13),
    .probe_in14(probe_in14),
    .probe_in15(probe_in15),
    .probe_in16(probe_in16),
    .probe_in17(probe_in17),
    .probe_in18(probe_in18),
    .probe_in19(probe_in19),
    .probe_in20(probe_in20),
    .probe_in21(probe_in21),
    .probe_in22(probe_in22),
    .probe_in23(probe_in23),
    .probe_in24(probe_in24),
    .probe_in25(probe_in25),
    .probe_in26(probe_in26),
    .probe_in27(probe_in27),
    .probe_in28(probe_in28),
    .probe_in29(probe_in29),
    .probe_in30(probe_in30),
    .probe_in31(probe_in31),
    .probe_out0(probe_out0),
    .probe_out1(probe_out1),
    .probe_out2(probe_out2),
    .probe_out3(probe_out3),
    .probe_out4(probe_out4),
    .probe_out5(probe_out5),
    .probe_out6(probe_out6),
    .probe_out7(probe_out7),
    .probe_out8(probe_out8),
    .probe_out9(probe_out9),
    .probe_out10(probe_out10),
    .probe_out11(probe_out11),
    .probe_out12(probe_out12),
    .probe_out13(probe_out13),
    .probe_out14(probe_out14),
    .probe_out15(probe_out15),
    .probe_out16(probe_out16),
    .probe_out17(probe_out17),
    .probe_out18(probe_out18),
    .probe_out19(probe_out19),
    .probe_out20(probe_out20),
    .probe_out21(probe_out21),
    .probe_out22(probe_out22),
    .probe_out23(probe_out23),
    .probe_out24(probe_out24),
    .probe_out25(probe_out25),
    .probe_out26(probe_out26),
    .probe_out27(probe_out27),
    .probe_out28(probe_out28),
    .probe_out29(probe_out29),
    .probe_out30(probe_out30),
    .probe_out31(probe_out31)
  );

endmodule
