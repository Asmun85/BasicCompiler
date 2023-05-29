// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu May 11 10:01:49 2023
// Host        : insa-10229 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/kanane/Bureau/4A/ProjetSI/project_1/project_1.sim/sim_1/synth/timing/xsim/Test_ALU_time_synth.v
// Design      : ALU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module ALU
   (A,
    B,
    Ctrl_Alu,
    N,
    O,
    Z,
    C,
    S);
  input [7:0]A;
  input [7:0]B;
  input [2:0]Ctrl_Alu;
  output N;
  output O;
  output Z;
  output C;
  output [7:0]S;

  wire [7:0]A;
  wire [7:0]A_IBUF;
  wire [7:0]B;
  wire [7:0]B_IBUF;
  wire C;
  wire C_OBUF;
  wire C_reg_i_1_n_0;
  wire [2:0]Ctrl_Alu;
  wire [2:0]Ctrl_Alu_IBUF;
  wire N;
  wire O;
  wire O_OBUF;
  wire O_reg_i_2_n_0;
  wire O_reg_i_3_n_0;
  wire [15:8]Res;
  wire \Res_reg[0]_i_1_n_0 ;
  wire \Res_reg[10]_i_10_n_0 ;
  wire \Res_reg[10]_i_11_n_0 ;
  wire \Res_reg[10]_i_12_n_0 ;
  wire \Res_reg[10]_i_13_n_0 ;
  wire \Res_reg[10]_i_14_n_0 ;
  wire \Res_reg[10]_i_14_n_1 ;
  wire \Res_reg[10]_i_14_n_2 ;
  wire \Res_reg[10]_i_14_n_3 ;
  wire \Res_reg[10]_i_14_n_4 ;
  wire \Res_reg[10]_i_14_n_5 ;
  wire \Res_reg[10]_i_14_n_6 ;
  wire \Res_reg[10]_i_14_n_7 ;
  wire \Res_reg[10]_i_15_n_0 ;
  wire \Res_reg[10]_i_16_n_0 ;
  wire \Res_reg[10]_i_17_n_0 ;
  wire \Res_reg[10]_i_18_n_0 ;
  wire \Res_reg[10]_i_19_n_0 ;
  wire \Res_reg[10]_i_1_n_0 ;
  wire \Res_reg[10]_i_20_n_0 ;
  wire \Res_reg[10]_i_21_n_0 ;
  wire \Res_reg[10]_i_22_n_0 ;
  wire \Res_reg[10]_i_23_n_0 ;
  wire \Res_reg[10]_i_24_n_0 ;
  wire \Res_reg[10]_i_25_n_0 ;
  wire \Res_reg[10]_i_26_n_0 ;
  wire \Res_reg[10]_i_27_n_0 ;
  wire \Res_reg[10]_i_28_n_0 ;
  wire \Res_reg[10]_i_29_n_0 ;
  wire \Res_reg[10]_i_2_n_0 ;
  wire \Res_reg[10]_i_2_n_1 ;
  wire \Res_reg[10]_i_2_n_2 ;
  wire \Res_reg[10]_i_2_n_3 ;
  wire \Res_reg[10]_i_30_n_0 ;
  wire \Res_reg[10]_i_31_n_0 ;
  wire \Res_reg[10]_i_3_n_0 ;
  wire \Res_reg[10]_i_4_n_0 ;
  wire \Res_reg[10]_i_5_n_0 ;
  wire \Res_reg[10]_i_6_n_0 ;
  wire \Res_reg[10]_i_7_n_0 ;
  wire \Res_reg[10]_i_8_n_0 ;
  wire \Res_reg[10]_i_9_n_0 ;
  wire \Res_reg[11]_i_1_n_0 ;
  wire \Res_reg[12]_i_1_n_0 ;
  wire \Res_reg[13]_i_1_n_0 ;
  wire \Res_reg[14]_i_10_n_0 ;
  wire \Res_reg[14]_i_11_n_0 ;
  wire \Res_reg[14]_i_12_n_0 ;
  wire \Res_reg[14]_i_13_n_0 ;
  wire \Res_reg[14]_i_14_n_0 ;
  wire \Res_reg[14]_i_15_n_0 ;
  wire \Res_reg[14]_i_16_n_0 ;
  wire \Res_reg[14]_i_17_n_0 ;
  wire \Res_reg[14]_i_18_n_0 ;
  wire \Res_reg[14]_i_19_n_0 ;
  wire \Res_reg[14]_i_1_n_0 ;
  wire \Res_reg[14]_i_20_n_0 ;
  wire \Res_reg[14]_i_21_n_0 ;
  wire \Res_reg[14]_i_22_n_1 ;
  wire \Res_reg[14]_i_22_n_3 ;
  wire \Res_reg[14]_i_22_n_6 ;
  wire \Res_reg[14]_i_22_n_7 ;
  wire \Res_reg[14]_i_23_n_0 ;
  wire \Res_reg[14]_i_24_n_0 ;
  wire \Res_reg[14]_i_25_n_0 ;
  wire \Res_reg[14]_i_26_n_0 ;
  wire \Res_reg[14]_i_2_n_0 ;
  wire \Res_reg[14]_i_2_n_1 ;
  wire \Res_reg[14]_i_2_n_2 ;
  wire \Res_reg[14]_i_2_n_3 ;
  wire \Res_reg[14]_i_3_n_0 ;
  wire \Res_reg[14]_i_4_n_0 ;
  wire \Res_reg[14]_i_5_n_0 ;
  wire \Res_reg[14]_i_6_n_0 ;
  wire \Res_reg[14]_i_7_n_0 ;
  wire \Res_reg[14]_i_8_n_0 ;
  wire \Res_reg[14]_i_9_n_0 ;
  wire \Res_reg[15]_i_10_n_0 ;
  wire \Res_reg[15]_i_1_n_0 ;
  wire \Res_reg[15]_i_2_n_0 ;
  wire \Res_reg[15]_i_5_n_0 ;
  wire \Res_reg[15]_i_6_n_1 ;
  wire \Res_reg[15]_i_6_n_3 ;
  wire \Res_reg[15]_i_6_n_6 ;
  wire \Res_reg[15]_i_6_n_7 ;
  wire \Res_reg[15]_i_7_n_0 ;
  wire \Res_reg[15]_i_8_n_0 ;
  wire \Res_reg[15]_i_9_n_0 ;
  wire \Res_reg[1]_i_1_n_0 ;
  wire \Res_reg[2]_i_1_n_0 ;
  wire \Res_reg[3]_i_10_n_0 ;
  wire \Res_reg[3]_i_11_n_0 ;
  wire \Res_reg[3]_i_12_n_0 ;
  wire \Res_reg[3]_i_13_n_0 ;
  wire \Res_reg[3]_i_14_n_0 ;
  wire \Res_reg[3]_i_15_n_0 ;
  wire \Res_reg[3]_i_16_n_0 ;
  wire \Res_reg[3]_i_17_n_0 ;
  wire \Res_reg[3]_i_18_n_0 ;
  wire \Res_reg[3]_i_19_n_0 ;
  wire \Res_reg[3]_i_1_n_0 ;
  wire \Res_reg[3]_i_20_n_0 ;
  wire \Res_reg[3]_i_21_n_0 ;
  wire \Res_reg[3]_i_22_n_0 ;
  wire \Res_reg[3]_i_23_n_0 ;
  wire \Res_reg[3]_i_24_n_0 ;
  wire \Res_reg[3]_i_25_n_0 ;
  wire \Res_reg[3]_i_26_n_0 ;
  wire \Res_reg[3]_i_27_n_0 ;
  wire \Res_reg[3]_i_28_n_0 ;
  wire \Res_reg[3]_i_29_n_0 ;
  wire \Res_reg[3]_i_2_n_0 ;
  wire \Res_reg[3]_i_2_n_1 ;
  wire \Res_reg[3]_i_2_n_2 ;
  wire \Res_reg[3]_i_2_n_3 ;
  wire \Res_reg[3]_i_2_n_4 ;
  wire \Res_reg[3]_i_3_n_0 ;
  wire \Res_reg[3]_i_3_n_1 ;
  wire \Res_reg[3]_i_3_n_2 ;
  wire \Res_reg[3]_i_3_n_3 ;
  wire \Res_reg[3]_i_3_n_4 ;
  wire \Res_reg[3]_i_3_n_5 ;
  wire \Res_reg[3]_i_3_n_6 ;
  wire \Res_reg[3]_i_3_n_7 ;
  wire \Res_reg[3]_i_4_n_0 ;
  wire \Res_reg[3]_i_4_n_1 ;
  wire \Res_reg[3]_i_4_n_2 ;
  wire \Res_reg[3]_i_4_n_3 ;
  wire \Res_reg[3]_i_5_n_0 ;
  wire \Res_reg[3]_i_5_n_1 ;
  wire \Res_reg[3]_i_5_n_2 ;
  wire \Res_reg[3]_i_5_n_3 ;
  wire \Res_reg[3]_i_6_n_0 ;
  wire \Res_reg[3]_i_7_n_0 ;
  wire \Res_reg[3]_i_8_n_0 ;
  wire \Res_reg[3]_i_9_n_0 ;
  wire \Res_reg[4]_i_1_n_0 ;
  wire \Res_reg[5]_i_1_n_0 ;
  wire \Res_reg[6]_i_10_n_0 ;
  wire \Res_reg[6]_i_11_n_0 ;
  wire \Res_reg[6]_i_12_n_0 ;
  wire \Res_reg[6]_i_13_n_0 ;
  wire \Res_reg[6]_i_14_n_0 ;
  wire \Res_reg[6]_i_15_n_0 ;
  wire \Res_reg[6]_i_16_n_0 ;
  wire \Res_reg[6]_i_17_n_0 ;
  wire \Res_reg[6]_i_18_n_0 ;
  wire \Res_reg[6]_i_19_n_0 ;
  wire \Res_reg[6]_i_1_n_0 ;
  wire \Res_reg[6]_i_20_n_0 ;
  wire \Res_reg[6]_i_2_n_0 ;
  wire \Res_reg[6]_i_2_n_1 ;
  wire \Res_reg[6]_i_2_n_2 ;
  wire \Res_reg[6]_i_2_n_3 ;
  wire \Res_reg[6]_i_3_n_0 ;
  wire \Res_reg[6]_i_4_n_0 ;
  wire \Res_reg[6]_i_4_n_1 ;
  wire \Res_reg[6]_i_4_n_2 ;
  wire \Res_reg[6]_i_4_n_3 ;
  wire \Res_reg[6]_i_4_n_4 ;
  wire \Res_reg[6]_i_4_n_5 ;
  wire \Res_reg[6]_i_4_n_6 ;
  wire \Res_reg[6]_i_4_n_7 ;
  wire \Res_reg[6]_i_5_n_0 ;
  wire \Res_reg[6]_i_6_n_0 ;
  wire \Res_reg[6]_i_7_n_0 ;
  wire \Res_reg[6]_i_9_n_0 ;
  wire \Res_reg[7]_i_10_n_0 ;
  wire \Res_reg[7]_i_11_n_0 ;
  wire \Res_reg[7]_i_1_n_0 ;
  wire \Res_reg[7]_i_2_n_0 ;
  wire \Res_reg[7]_i_2_n_1 ;
  wire \Res_reg[7]_i_2_n_2 ;
  wire \Res_reg[7]_i_2_n_3 ;
  wire \Res_reg[7]_i_3_n_0 ;
  wire \Res_reg[7]_i_3_n_1 ;
  wire \Res_reg[7]_i_3_n_2 ;
  wire \Res_reg[7]_i_3_n_3 ;
  wire \Res_reg[7]_i_4_n_0 ;
  wire \Res_reg[7]_i_5_n_0 ;
  wire \Res_reg[7]_i_6_n_0 ;
  wire \Res_reg[7]_i_7_n_0 ;
  wire \Res_reg[7]_i_8_n_0 ;
  wire \Res_reg[7]_i_9_n_0 ;
  wire \Res_reg[8]_i_1_n_0 ;
  wire \Res_reg[9]_i_1_n_0 ;
  wire [7:0]S;
  wire [7:0]S_OBUF;
  wire Z;
  wire Z_OBUF;
  wire Z_OBUF_inst_i_2_n_0;
  wire Z_OBUF_inst_i_3_n_0;
  wire [7:0]minusOp;
  wire [11:11]minusOp__0;
  wire [15:0]multOp;
  wire neqOp;
  wire [8:0]plusOp;
  wire [7:0]tmp_vector;
  wire \tmp_vector_reg[7]_i_1_n_0 ;
  wire [3:1]\NLW_Res_reg[14]_i_22_CO_UNCONNECTED ;
  wire [3:2]\NLW_Res_reg[14]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_Res_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Res_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_Res_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_Res_reg[15]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_Res_reg[15]_i_6_CO_UNCONNECTED ;
  wire [3:2]\NLW_Res_reg[15]_i_6_O_UNCONNECTED ;
  wire [0:0]\NLW_Res_reg[6]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_Res_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Res_reg[8]_i_2_O_UNCONNECTED ;

initial begin
 $sdf_annotate("Test_ALU_time_synth.sdf",,,,"tool_control");
end
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  OBUF C_OBUF_inst
       (.I(C_OBUF),
        .O(C));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    C_reg
       (.CLR(1'b0),
        .D(tmp_vector[0]),
        .G(C_reg_i_1_n_0),
        .GE(1'b1),
        .Q(C_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h01)) 
    C_reg_i_1
       (.I0(Ctrl_Alu_IBUF[2]),
        .I1(Ctrl_Alu_IBUF[0]),
        .I2(Ctrl_Alu_IBUF[1]),
        .O(C_reg_i_1_n_0));
  IBUF \Ctrl_Alu_IBUF[0]_inst 
       (.I(Ctrl_Alu[0]),
        .O(Ctrl_Alu_IBUF[0]));
  IBUF \Ctrl_Alu_IBUF[1]_inst 
       (.I(Ctrl_Alu[1]),
        .O(Ctrl_Alu_IBUF[1]));
  IBUF \Ctrl_Alu_IBUF[2]_inst 
       (.I(Ctrl_Alu[2]),
        .O(Ctrl_Alu_IBUF[2]));
  OBUF N_OBUF_inst
       (.I(1'b0),
        .O(N));
  OBUF O_OBUF_inst
       (.I(O_OBUF),
        .O(O));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    O_reg
       (.CLR(1'b0),
        .D(neqOp),
        .G(O_reg_i_2_n_0),
        .GE(1'b1),
        .Q(O_OBUF));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    O_reg_i_1
       (.I0(tmp_vector[0]),
        .I1(tmp_vector[1]),
        .I2(tmp_vector[2]),
        .I3(tmp_vector[3]),
        .I4(O_reg_i_3_n_0),
        .O(neqOp));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    O_reg_i_2
       (.I0(Ctrl_Alu_IBUF[0]),
        .I1(Ctrl_Alu_IBUF[2]),
        .I2(Ctrl_Alu_IBUF[1]),
        .O(O_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    O_reg_i_3
       (.I0(tmp_vector[6]),
        .I1(tmp_vector[7]),
        .I2(tmp_vector[5]),
        .I3(tmp_vector[4]),
        .O(O_reg_i_3_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[0] 
       (.CLR(1'b0),
        .D(\Res_reg[0]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[0]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \Res_reg[0]_i_1 
       (.I0(multOp[0]),
        .I1(minusOp[0]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(plusOp[0]),
        .I4(Ctrl_Alu_IBUF[2]),
        .O(\Res_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[10] 
       (.CLR(1'b0),
        .D(\Res_reg[10]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Res[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \Res_reg[10]_i_1 
       (.I0(Ctrl_Alu_IBUF[2]),
        .I1(multOp[10]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(minusOp__0),
        .O(\Res_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6A959595)) 
    \Res_reg[10]_i_10 
       (.I0(\Res_reg[10]_i_19_n_0 ),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[6]),
        .I3(\Res_reg[3]_i_3_n_4 ),
        .I4(\Res_reg[6]_i_4_n_5 ),
        .O(\Res_reg[10]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \Res_reg[10]_i_11 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[2]),
        .I2(\Res_reg[10]_i_14_n_5 ),
        .I3(\Res_reg[14]_i_22_n_6 ),
        .O(\Res_reg[10]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \Res_reg[10]_i_12 
       (.I0(\Res_reg[10]_i_14_n_6 ),
        .I1(\Res_reg[14]_i_22_n_7 ),
        .I2(B_IBUF[7]),
        .I3(A_IBUF[1]),
        .O(\Res_reg[10]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \Res_reg[10]_i_13 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[1]),
        .I2(\Res_reg[10]_i_14_n_6 ),
        .I3(\Res_reg[14]_i_22_n_7 ),
        .O(\Res_reg[10]_i_13_n_0 ));
  CARRY4 \Res_reg[10]_i_14 
       (.CI(\Res_reg[3]_i_3_n_0 ),
        .CO({\Res_reg[10]_i_14_n_0 ,\Res_reg[10]_i_14_n_1 ,\Res_reg[10]_i_14_n_2 ,\Res_reg[10]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\Res_reg[10]_i_20_n_0 ,\Res_reg[10]_i_21_n_0 ,\Res_reg[10]_i_22_n_0 ,\Res_reg[10]_i_23_n_0 }),
        .O({\Res_reg[10]_i_14_n_4 ,\Res_reg[10]_i_14_n_5 ,\Res_reg[10]_i_14_n_6 ,\Res_reg[10]_i_14_n_7 }),
        .S({\Res_reg[10]_i_24_n_0 ,\Res_reg[10]_i_25_n_0 ,\Res_reg[10]_i_26_n_0 ,\Res_reg[10]_i_27_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[10]_i_15 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[6]),
        .O(\Res_reg[10]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \Res_reg[10]_i_16 
       (.I0(\Res_reg[6]_i_4_n_5 ),
        .I1(\Res_reg[3]_i_3_n_4 ),
        .I2(B_IBUF[6]),
        .I3(A_IBUF[1]),
        .O(\Res_reg[10]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[10]_i_17 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[6]),
        .O(\Res_reg[10]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[10]_i_18 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[7]),
        .O(\Res_reg[10]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \Res_reg[10]_i_19 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[0]),
        .I2(\Res_reg[10]_i_14_n_7 ),
        .I3(\Res_reg[6]_i_4_n_4 ),
        .O(\Res_reg[10]_i_19_n_0 ));
  CARRY4 \Res_reg[10]_i_2 
       (.CI(\Res_reg[6]_i_2_n_0 ),
        .CO({\Res_reg[10]_i_2_n_0 ,\Res_reg[10]_i_2_n_1 ,\Res_reg[10]_i_2_n_2 ,\Res_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Res_reg[10]_i_3_n_0 ,\Res_reg[10]_i_4_n_0 ,\Res_reg[10]_i_5_n_0 ,\Res_reg[10]_i_6_n_0 }),
        .O(multOp[10:7]),
        .S({\Res_reg[10]_i_7_n_0 ,\Res_reg[10]_i_8_n_0 ,\Res_reg[10]_i_9_n_0 ,\Res_reg[10]_i_10_n_0 }));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \Res_reg[10]_i_20 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[4]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[5]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[6]),
        .O(\Res_reg[10]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \Res_reg[10]_i_21 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[4]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[5]),
        .O(\Res_reg[10]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \Res_reg[10]_i_22 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[4]),
        .O(\Res_reg[10]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \Res_reg[10]_i_23 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[2]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[3]),
        .O(\Res_reg[10]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \Res_reg[10]_i_24 
       (.I0(\Res_reg[10]_i_20_n_0 ),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[6]),
        .I3(\Res_reg[10]_i_28_n_0 ),
        .I4(A_IBUF[7]),
        .I5(B_IBUF[3]),
        .O(\Res_reg[10]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \Res_reg[10]_i_25 
       (.I0(\Res_reg[10]_i_21_n_0 ),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[5]),
        .I3(\Res_reg[10]_i_29_n_0 ),
        .I4(A_IBUF[6]),
        .I5(B_IBUF[3]),
        .O(\Res_reg[10]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \Res_reg[10]_i_26 
       (.I0(\Res_reg[10]_i_22_n_0 ),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[4]),
        .I3(\Res_reg[10]_i_30_n_0 ),
        .I4(A_IBUF[5]),
        .I5(B_IBUF[3]),
        .O(\Res_reg[10]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \Res_reg[10]_i_27 
       (.I0(\Res_reg[10]_i_23_n_0 ),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[3]),
        .I3(\Res_reg[10]_i_31_n_0 ),
        .I4(A_IBUF[4]),
        .I5(B_IBUF[3]),
        .O(\Res_reg[10]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[10]_i_28 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .O(\Res_reg[10]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[10]_i_29 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[5]),
        .O(\Res_reg[10]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \Res_reg[10]_i_3 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[3]),
        .I2(\Res_reg[10]_i_11_n_0 ),
        .I3(\Res_reg[10]_i_12_n_0 ),
        .O(\Res_reg[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[10]_i_30 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[5]),
        .O(\Res_reg[10]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[10]_i_31 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[5]),
        .O(\Res_reg[10]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h8A08080808080808)) 
    \Res_reg[10]_i_4 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[2]),
        .I2(\Res_reg[10]_i_13_n_0 ),
        .I3(A_IBUF[1]),
        .I4(\Res_reg[3]_i_3_n_4 ),
        .I5(\Res_reg[6]_i_4_n_5 ),
        .O(\Res_reg[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5995959595959595)) 
    \Res_reg[10]_i_5 
       (.I0(\Res_reg[10]_i_13_n_0 ),
        .I1(B_IBUF[6]),
        .I2(A_IBUF[2]),
        .I3(\Res_reg[6]_i_4_n_5 ),
        .I4(\Res_reg[3]_i_3_n_4 ),
        .I5(A_IBUF[1]),
        .O(\Res_reg[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \Res_reg[10]_i_6 
       (.I0(\Res_reg[6]_i_4_n_4 ),
        .I1(\Res_reg[10]_i_14_n_7 ),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[7]),
        .O(\Res_reg[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \Res_reg[10]_i_7 
       (.I0(\Res_reg[10]_i_12_n_0 ),
        .I1(\Res_reg[10]_i_11_n_0 ),
        .I2(\Res_reg[10]_i_15_n_0 ),
        .I3(\Res_reg[14]_i_14_n_0 ),
        .I4(\Res_reg[14]_i_20_n_0 ),
        .I5(\Res_reg[14]_i_15_n_0 ),
        .O(\Res_reg[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \Res_reg[10]_i_8 
       (.I0(\Res_reg[10]_i_16_n_0 ),
        .I1(\Res_reg[10]_i_13_n_0 ),
        .I2(\Res_reg[10]_i_17_n_0 ),
        .I3(\Res_reg[10]_i_11_n_0 ),
        .I4(\Res_reg[10]_i_15_n_0 ),
        .I5(\Res_reg[10]_i_12_n_0 ),
        .O(\Res_reg[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    \Res_reg[10]_i_9 
       (.I0(\Res_reg[10]_i_13_n_0 ),
        .I1(\Res_reg[10]_i_17_n_0 ),
        .I2(\Res_reg[10]_i_16_n_0 ),
        .I3(\Res_reg[10]_i_18_n_0 ),
        .I4(\Res_reg[6]_i_4_n_4 ),
        .I5(\Res_reg[10]_i_14_n_7 ),
        .O(\Res_reg[10]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[11] 
       (.CLR(1'b0),
        .D(\Res_reg[11]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Res[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \Res_reg[11]_i_1 
       (.I0(Ctrl_Alu_IBUF[2]),
        .I1(multOp[11]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(minusOp__0),
        .O(\Res_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[12] 
       (.CLR(1'b0),
        .D(\Res_reg[12]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Res[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \Res_reg[12]_i_1 
       (.I0(Ctrl_Alu_IBUF[2]),
        .I1(multOp[12]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(minusOp__0),
        .O(\Res_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[13] 
       (.CLR(1'b0),
        .D(\Res_reg[13]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Res[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \Res_reg[13]_i_1 
       (.I0(Ctrl_Alu_IBUF[2]),
        .I1(multOp[13]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(minusOp__0),
        .O(\Res_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[14] 
       (.CLR(1'b0),
        .D(\Res_reg[14]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Res[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \Res_reg[14]_i_1 
       (.I0(Ctrl_Alu_IBUF[2]),
        .I1(multOp[14]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(minusOp__0),
        .O(\Res_reg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \Res_reg[14]_i_10 
       (.I0(\Res_reg[14]_i_15_n_0 ),
        .I1(\Res_reg[14]_i_14_n_0 ),
        .I2(\Res_reg[14]_i_20_n_0 ),
        .I3(\Res_reg[14]_i_21_n_0 ),
        .I4(\Res_reg[14]_i_18_n_0 ),
        .I5(\Res_reg[14]_i_13_n_0 ),
        .O(\Res_reg[14]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[14]_i_11 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[6]),
        .O(\Res_reg[14]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[14]_i_12 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .O(\Res_reg[14]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \Res_reg[14]_i_13 
       (.I0(\Res_reg[10]_i_14_n_4 ),
        .I1(\Res_reg[14]_i_22_n_1 ),
        .I2(B_IBUF[7]),
        .I3(A_IBUF[3]),
        .O(\Res_reg[14]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \Res_reg[14]_i_14 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[3]),
        .I2(\Res_reg[10]_i_14_n_4 ),
        .I3(\Res_reg[14]_i_22_n_1 ),
        .O(\Res_reg[14]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \Res_reg[14]_i_15 
       (.I0(\Res_reg[10]_i_14_n_5 ),
        .I1(\Res_reg[14]_i_22_n_6 ),
        .I2(B_IBUF[7]),
        .I3(A_IBUF[2]),
        .O(\Res_reg[14]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \Res_reg[14]_i_16 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[5]),
        .I2(\Res_reg[15]_i_6_n_6 ),
        .O(\Res_reg[14]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \Res_reg[14]_i_17 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[6]),
        .I2(\Res_reg[15]_i_6_n_1 ),
        .O(\Res_reg[14]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[14]_i_18 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[6]),
        .O(\Res_reg[14]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    \Res_reg[14]_i_19 
       (.I0(\Res_reg[15]_i_6_n_6 ),
        .I1(A_IBUF[5]),
        .I2(B_IBUF[7]),
        .I3(B_IBUF[6]),
        .I4(A_IBUF[6]),
        .O(\Res_reg[14]_i_19_n_0 ));
  CARRY4 \Res_reg[14]_i_2 
       (.CI(\Res_reg[10]_i_2_n_0 ),
        .CO({\Res_reg[14]_i_2_n_0 ,\Res_reg[14]_i_2_n_1 ,\Res_reg[14]_i_2_n_2 ,\Res_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Res_reg[14]_i_3_n_0 ,\Res_reg[14]_i_4_n_0 ,\Res_reg[14]_i_5_n_0 ,\Res_reg[14]_i_6_n_0 }),
        .O(multOp[14:11]),
        .S({\Res_reg[14]_i_7_n_0 ,\Res_reg[14]_i_8_n_0 ,\Res_reg[14]_i_9_n_0 ,\Res_reg[14]_i_10_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[14]_i_20 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[6]),
        .O(\Res_reg[14]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \Res_reg[14]_i_21 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[4]),
        .I2(\Res_reg[15]_i_6_n_7 ),
        .O(\Res_reg[14]_i_21_n_0 ));
  CARRY4 \Res_reg[14]_i_22 
       (.CI(\Res_reg[6]_i_4_n_0 ),
        .CO({\NLW_Res_reg[14]_i_22_CO_UNCONNECTED [3],\Res_reg[14]_i_22_n_1 ,\NLW_Res_reg[14]_i_22_CO_UNCONNECTED [1],\Res_reg[14]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\Res_reg[14]_i_23_n_0 ,\Res_reg[14]_i_24_n_0 }),
        .O({\NLW_Res_reg[14]_i_22_O_UNCONNECTED [3:2],\Res_reg[14]_i_22_n_6 ,\Res_reg[14]_i_22_n_7 }),
        .S({1'b0,1'b1,\Res_reg[14]_i_25_n_0 ,\Res_reg[14]_i_26_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \Res_reg[14]_i_23 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[7]),
        .O(\Res_reg[14]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \Res_reg[14]_i_24 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[5]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[6]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[7]),
        .O(\Res_reg[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \Res_reg[14]_i_25 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[7]),
        .O(\Res_reg[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \Res_reg[14]_i_26 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[5]),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[2]),
        .I4(A_IBUF[7]),
        .I5(B_IBUF[1]),
        .O(\Res_reg[14]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \Res_reg[14]_i_3 
       (.I0(\Res_reg[14]_i_11_n_0 ),
        .I1(\Res_reg[15]_i_6_n_1 ),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[7]),
        .I4(\Res_reg[15]_i_6_n_6 ),
        .I5(A_IBUF[5]),
        .O(\Res_reg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \Res_reg[14]_i_4 
       (.I0(\Res_reg[14]_i_12_n_0 ),
        .I1(\Res_reg[15]_i_6_n_6 ),
        .I2(A_IBUF[5]),
        .I3(B_IBUF[7]),
        .I4(\Res_reg[15]_i_6_n_7 ),
        .I5(A_IBUF[4]),
        .O(\Res_reg[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F808808080)) 
    \Res_reg[14]_i_5 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[5]),
        .I2(\Res_reg[15]_i_6_n_7 ),
        .I3(A_IBUF[4]),
        .I4(B_IBUF[7]),
        .I5(\Res_reg[14]_i_13_n_0 ),
        .O(\Res_reg[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \Res_reg[14]_i_6 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[4]),
        .I2(\Res_reg[14]_i_14_n_0 ),
        .I3(\Res_reg[14]_i_15_n_0 ),
        .O(\Res_reg[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4FD525D52540B040)) 
    \Res_reg[14]_i_7 
       (.I0(\Res_reg[14]_i_16_n_0 ),
        .I1(B_IBUF[6]),
        .I2(A_IBUF[7]),
        .I3(B_IBUF[7]),
        .I4(A_IBUF[6]),
        .I5(\Res_reg[15]_i_6_n_1 ),
        .O(\Res_reg[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \Res_reg[14]_i_8 
       (.I0(\Res_reg[14]_i_4_n_0 ),
        .I1(\Res_reg[14]_i_17_n_0 ),
        .I2(B_IBUF[6]),
        .I3(A_IBUF[7]),
        .I4(\Res_reg[14]_i_16_n_0 ),
        .O(\Res_reg[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD2B4B4B4B42D2D2D)) 
    \Res_reg[14]_i_9 
       (.I0(\Res_reg[14]_i_13_n_0 ),
        .I1(\Res_reg[14]_i_18_n_0 ),
        .I2(\Res_reg[14]_i_19_n_0 ),
        .I3(B_IBUF[7]),
        .I4(A_IBUF[4]),
        .I5(\Res_reg[15]_i_6_n_7 ),
        .O(\Res_reg[14]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[15] 
       (.CLR(1'b0),
        .D(\Res_reg[15]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Res[15]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \Res_reg[15]_i_1 
       (.I0(Ctrl_Alu_IBUF[2]),
        .I1(multOp[15]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(minusOp__0),
        .O(\Res_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \Res_reg[15]_i_10 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[5]),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[5]),
        .I4(A_IBUF[7]),
        .I5(B_IBUF[4]),
        .O(\Res_reg[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \Res_reg[15]_i_2 
       (.I0(Ctrl_Alu_IBUF[1]),
        .I1(Ctrl_Alu_IBUF[2]),
        .I2(Ctrl_Alu_IBUF[0]),
        .O(\Res_reg[15]_i_2_n_0 ));
  CARRY4 \Res_reg[15]_i_3 
       (.CI(\Res_reg[14]_i_2_n_0 ),
        .CO(\NLW_Res_reg[15]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Res_reg[15]_i_3_O_UNCONNECTED [3:1],multOp[15]}),
        .S({1'b0,1'b0,1'b0,\Res_reg[15]_i_5_n_0 }));
  CARRY4 \Res_reg[15]_i_4 
       (.CI(\Res_reg[7]_i_2_n_0 ),
        .CO(\NLW_Res_reg[15]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Res_reg[15]_i_4_O_UNCONNECTED [3:1],minusOp__0}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h8000)) 
    \Res_reg[15]_i_5 
       (.I0(A_IBUF[7]),
        .I1(\Res_reg[15]_i_6_n_1 ),
        .I2(A_IBUF[6]),
        .I3(B_IBUF[7]),
        .O(\Res_reg[15]_i_5_n_0 ));
  CARRY4 \Res_reg[15]_i_6 
       (.CI(\Res_reg[10]_i_14_n_0 ),
        .CO({\NLW_Res_reg[15]_i_6_CO_UNCONNECTED [3],\Res_reg[15]_i_6_n_1 ,\NLW_Res_reg[15]_i_6_CO_UNCONNECTED [1],\Res_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\Res_reg[15]_i_7_n_0 ,\Res_reg[15]_i_8_n_0 }),
        .O({\NLW_Res_reg[15]_i_6_O_UNCONNECTED [3:2],\Res_reg[15]_i_6_n_6 ,\Res_reg[15]_i_6_n_7 }),
        .S({1'b0,1'b1,\Res_reg[15]_i_9_n_0 ,\Res_reg[15]_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \Res_reg[15]_i_7 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[7]),
        .O(\Res_reg[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \Res_reg[15]_i_8 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[5]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[6]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[7]),
        .O(\Res_reg[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \Res_reg[15]_i_9 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[5]),
        .I3(A_IBUF[7]),
        .O(\Res_reg[15]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[1] 
       (.CLR(1'b0),
        .D(\Res_reg[1]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[1]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \Res_reg[1]_i_1 
       (.I0(multOp[1]),
        .I1(minusOp[1]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(plusOp[1]),
        .I4(Ctrl_Alu_IBUF[2]),
        .O(\Res_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[2] 
       (.CLR(1'b0),
        .D(\Res_reg[2]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[2]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \Res_reg[2]_i_1 
       (.I0(multOp[2]),
        .I1(minusOp[2]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(plusOp[2]),
        .I4(Ctrl_Alu_IBUF[2]),
        .O(\Res_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[3] 
       (.CLR(1'b0),
        .D(\Res_reg[3]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[3]));
  LUT6 #(
    .INIT(64'h66666666F0FFF000)) 
    \Res_reg[3]_i_1 
       (.I0(\Res_reg[3]_i_2_n_4 ),
        .I1(\Res_reg[3]_i_3_n_7 ),
        .I2(minusOp[3]),
        .I3(Ctrl_Alu_IBUF[1]),
        .I4(plusOp[3]),
        .I5(Ctrl_Alu_IBUF[2]),
        .O(\Res_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \Res_reg[3]_i_10 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[1]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[2]),
        .O(\Res_reg[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \Res_reg[3]_i_11 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[0]),
        .O(\Res_reg[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Res_reg[3]_i_12 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .O(\Res_reg[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \Res_reg[3]_i_13 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[5]),
        .I3(A_IBUF[1]),
        .I4(A_IBUF[3]),
        .I5(B_IBUF[3]),
        .O(\Res_reg[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \Res_reg[3]_i_14 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[5]),
        .I3(A_IBUF[0]),
        .O(\Res_reg[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Res_reg[3]_i_15 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[1]),
        .O(\Res_reg[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \Res_reg[3]_i_16 
       (.I0(A_IBUF[2]),
        .I1(\Res_reg[3]_i_29_n_0 ),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[0]),
        .I5(B_IBUF[5]),
        .O(\Res_reg[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \Res_reg[3]_i_17 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[5]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[4]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[2]),
        .O(\Res_reg[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \Res_reg[3]_i_18 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[0]),
        .O(\Res_reg[3]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Res_reg[3]_i_19 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[3]),
        .O(\Res_reg[3]_i_19_n_0 ));
  CARRY4 \Res_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\Res_reg[3]_i_2_n_0 ,\Res_reg[3]_i_2_n_1 ,\Res_reg[3]_i_2_n_2 ,\Res_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Res_reg[3]_i_6_n_0 ,\Res_reg[3]_i_7_n_0 ,\Res_reg[3]_i_8_n_0 ,1'b0}),
        .O({\Res_reg[3]_i_2_n_4 ,multOp[2:0]}),
        .S({\Res_reg[3]_i_9_n_0 ,\Res_reg[3]_i_10_n_0 ,\Res_reg[3]_i_11_n_0 ,\Res_reg[3]_i_12_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \Res_reg[3]_i_20 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[3]),
        .O(\Res_reg[3]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Res_reg[3]_i_21 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .O(\Res_reg[3]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Res_reg[3]_i_22 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .O(\Res_reg[3]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Res_reg[3]_i_23 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .O(\Res_reg[3]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[3]_i_24 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(\Res_reg[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[3]_i_25 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(\Res_reg[3]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[3]_i_26 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .O(\Res_reg[3]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[3]_i_27 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .O(\Res_reg[3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[3]_i_28 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[0]),
        .O(\Res_reg[3]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[3]_i_29 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(\Res_reg[3]_i_29_n_0 ));
  CARRY4 \Res_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\Res_reg[3]_i_3_n_0 ,\Res_reg[3]_i_3_n_1 ,\Res_reg[3]_i_3_n_2 ,\Res_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\Res_reg[3]_i_13_n_0 ,\Res_reg[3]_i_14_n_0 ,\Res_reg[3]_i_15_n_0 ,1'b0}),
        .O({\Res_reg[3]_i_3_n_4 ,\Res_reg[3]_i_3_n_5 ,\Res_reg[3]_i_3_n_6 ,\Res_reg[3]_i_3_n_7 }),
        .S({\Res_reg[3]_i_16_n_0 ,\Res_reg[3]_i_17_n_0 ,\Res_reg[3]_i_18_n_0 ,\Res_reg[3]_i_19_n_0 }));
  CARRY4 \Res_reg[3]_i_4 
       (.CI(1'b0),
        .CO({\Res_reg[3]_i_4_n_0 ,\Res_reg[3]_i_4_n_1 ,\Res_reg[3]_i_4_n_2 ,\Res_reg[3]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI(A_IBUF[3:0]),
        .O(minusOp[3:0]),
        .S({\Res_reg[3]_i_20_n_0 ,\Res_reg[3]_i_21_n_0 ,\Res_reg[3]_i_22_n_0 ,\Res_reg[3]_i_23_n_0 }));
  CARRY4 \Res_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\Res_reg[3]_i_5_n_0 ,\Res_reg[3]_i_5_n_1 ,\Res_reg[3]_i_5_n_2 ,\Res_reg[3]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[3:0]),
        .O(plusOp[3:0]),
        .S({\Res_reg[3]_i_24_n_0 ,\Res_reg[3]_i_25_n_0 ,\Res_reg[3]_i_26_n_0 ,\Res_reg[3]_i_27_n_0 }));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \Res_reg[3]_i_6 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[1]),
        .I4(A_IBUF[3]),
        .I5(B_IBUF[0]),
        .O(\Res_reg[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \Res_reg[3]_i_7 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[0]),
        .O(\Res_reg[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Res_reg[3]_i_8 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[1]),
        .O(\Res_reg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \Res_reg[3]_i_9 
       (.I0(A_IBUF[2]),
        .I1(\Res_reg[3]_i_28_n_0 ),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[1]),
        .I4(A_IBUF[0]),
        .I5(B_IBUF[2]),
        .O(\Res_reg[3]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[4] 
       (.CLR(1'b0),
        .D(\Res_reg[4]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[4]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \Res_reg[4]_i_1 
       (.I0(multOp[4]),
        .I1(minusOp[4]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(plusOp[4]),
        .I4(Ctrl_Alu_IBUF[2]),
        .O(\Res_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[5] 
       (.CLR(1'b0),
        .D(\Res_reg[5]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[5]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \Res_reg[5]_i_1 
       (.I0(multOp[5]),
        .I1(minusOp[5]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(plusOp[5]),
        .I4(Ctrl_Alu_IBUF[2]),
        .O(\Res_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[6] 
       (.CLR(1'b0),
        .D(\Res_reg[6]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[6]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \Res_reg[6]_i_1 
       (.I0(multOp[6]),
        .I1(minusOp[6]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(plusOp[6]),
        .I4(Ctrl_Alu_IBUF[2]),
        .O(\Res_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \Res_reg[6]_i_10 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[4]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[5]),
        .O(\Res_reg[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \Res_reg[6]_i_11 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[4]),
        .O(\Res_reg[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \Res_reg[6]_i_12 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[2]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[3]),
        .O(\Res_reg[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \Res_reg[6]_i_13 
       (.I0(\Res_reg[6]_i_9_n_0 ),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[6]),
        .I3(\Res_reg[6]_i_17_n_0 ),
        .I4(A_IBUF[7]),
        .I5(B_IBUF[0]),
        .O(\Res_reg[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \Res_reg[6]_i_14 
       (.I0(\Res_reg[6]_i_10_n_0 ),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[5]),
        .I3(\Res_reg[6]_i_18_n_0 ),
        .I4(A_IBUF[6]),
        .I5(B_IBUF[0]),
        .O(\Res_reg[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \Res_reg[6]_i_15 
       (.I0(\Res_reg[6]_i_11_n_0 ),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[4]),
        .I3(\Res_reg[6]_i_19_n_0 ),
        .I4(A_IBUF[5]),
        .I5(B_IBUF[0]),
        .O(\Res_reg[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \Res_reg[6]_i_16 
       (.I0(\Res_reg[6]_i_12_n_0 ),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[3]),
        .I3(\Res_reg[6]_i_20_n_0 ),
        .I4(A_IBUF[4]),
        .I5(B_IBUF[0]),
        .O(\Res_reg[6]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[6]_i_17 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[2]),
        .O(\Res_reg[6]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[6]_i_18 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[2]),
        .O(\Res_reg[6]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[6]_i_19 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[2]),
        .O(\Res_reg[6]_i_19_n_0 ));
  CARRY4 \Res_reg[6]_i_2 
       (.CI(1'b0),
        .CO({\Res_reg[6]_i_2_n_0 ,\Res_reg[6]_i_2_n_1 ,\Res_reg[6]_i_2_n_2 ,\Res_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Res_reg[6]_i_3_n_0 ,\Res_reg[6]_i_4_n_6 ,\Res_reg[6]_i_4_n_7 ,\Res_reg[3]_i_2_n_4 }),
        .O({multOp[6:4],\NLW_Res_reg[6]_i_2_O_UNCONNECTED [0]}),
        .S({\Res_reg[6]_i_5_n_0 ,\Res_reg[6]_i_6_n_0 ,\Res_reg[6]_i_7_n_0 ,multOp[3]}));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Res_reg[6]_i_20 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(\Res_reg[6]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[6]_i_3 
       (.I0(\Res_reg[6]_i_4_n_5 ),
        .I1(\Res_reg[3]_i_3_n_4 ),
        .O(\Res_reg[6]_i_3_n_0 ));
  CARRY4 \Res_reg[6]_i_4 
       (.CI(\Res_reg[3]_i_2_n_0 ),
        .CO({\Res_reg[6]_i_4_n_0 ,\Res_reg[6]_i_4_n_1 ,\Res_reg[6]_i_4_n_2 ,\Res_reg[6]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\Res_reg[6]_i_9_n_0 ,\Res_reg[6]_i_10_n_0 ,\Res_reg[6]_i_11_n_0 ,\Res_reg[6]_i_12_n_0 }),
        .O({\Res_reg[6]_i_4_n_4 ,\Res_reg[6]_i_4_n_5 ,\Res_reg[6]_i_4_n_6 ,\Res_reg[6]_i_4_n_7 }),
        .S({\Res_reg[6]_i_13_n_0 ,\Res_reg[6]_i_14_n_0 ,\Res_reg[6]_i_15_n_0 ,\Res_reg[6]_i_16_n_0 }));
  LUT4 #(
    .INIT(16'h9666)) 
    \Res_reg[6]_i_5 
       (.I0(\Res_reg[3]_i_3_n_4 ),
        .I1(\Res_reg[6]_i_4_n_5 ),
        .I2(B_IBUF[6]),
        .I3(A_IBUF[0]),
        .O(\Res_reg[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[6]_i_6 
       (.I0(\Res_reg[6]_i_4_n_6 ),
        .I1(\Res_reg[3]_i_3_n_5 ),
        .O(\Res_reg[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[6]_i_7 
       (.I0(\Res_reg[6]_i_4_n_7 ),
        .I1(\Res_reg[3]_i_3_n_6 ),
        .O(\Res_reg[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[6]_i_8 
       (.I0(\Res_reg[3]_i_2_n_4 ),
        .I1(\Res_reg[3]_i_3_n_7 ),
        .O(multOp[3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \Res_reg[6]_i_9 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[4]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[5]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[6]),
        .O(\Res_reg[6]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[7] 
       (.CLR(1'b0),
        .D(\Res_reg[7]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(S_OBUF[7]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \Res_reg[7]_i_1 
       (.I0(multOp[7]),
        .I1(minusOp[7]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(plusOp[7]),
        .I4(Ctrl_Alu_IBUF[2]),
        .O(\Res_reg[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[7]_i_10 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .O(\Res_reg[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[7]_i_11 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .O(\Res_reg[7]_i_11_n_0 ));
  CARRY4 \Res_reg[7]_i_2 
       (.CI(\Res_reg[3]_i_4_n_0 ),
        .CO({\Res_reg[7]_i_2_n_0 ,\Res_reg[7]_i_2_n_1 ,\Res_reg[7]_i_2_n_2 ,\Res_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[7:4]),
        .O(minusOp[7:4]),
        .S({\Res_reg[7]_i_4_n_0 ,\Res_reg[7]_i_5_n_0 ,\Res_reg[7]_i_6_n_0 ,\Res_reg[7]_i_7_n_0 }));
  CARRY4 \Res_reg[7]_i_3 
       (.CI(\Res_reg[3]_i_5_n_0 ),
        .CO({\Res_reg[7]_i_3_n_0 ,\Res_reg[7]_i_3_n_1 ,\Res_reg[7]_i_3_n_2 ,\Res_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[7:4]),
        .O(plusOp[7:4]),
        .S({\Res_reg[7]_i_8_n_0 ,\Res_reg[7]_i_9_n_0 ,\Res_reg[7]_i_10_n_0 ,\Res_reg[7]_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \Res_reg[7]_i_4 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[7]),
        .O(\Res_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Res_reg[7]_i_5 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[6]),
        .O(\Res_reg[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Res_reg[7]_i_6 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[5]),
        .O(\Res_reg[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Res_reg[7]_i_7 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .O(\Res_reg[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[7]_i_8 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .O(\Res_reg[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Res_reg[7]_i_9 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .O(\Res_reg[7]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[8] 
       (.CLR(1'b0),
        .D(\Res_reg[8]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Res[8]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \Res_reg[8]_i_1 
       (.I0(multOp[8]),
        .I1(minusOp__0),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(plusOp[8]),
        .I4(Ctrl_Alu_IBUF[2]),
        .O(\Res_reg[8]_i_1_n_0 ));
  CARRY4 \Res_reg[8]_i_2 
       (.CI(\Res_reg[7]_i_3_n_0 ),
        .CO({\NLW_Res_reg[8]_i_2_CO_UNCONNECTED [3:1],plusOp[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Res_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Res_reg[9] 
       (.CLR(1'b0),
        .D(\Res_reg[9]_i_1_n_0 ),
        .G(\Res_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Res[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \Res_reg[9]_i_1 
       (.I0(Ctrl_Alu_IBUF[2]),
        .I1(multOp[9]),
        .I2(Ctrl_Alu_IBUF[1]),
        .I3(minusOp__0),
        .O(\Res_reg[9]_i_1_n_0 ));
  OBUF \S_OBUF[0]_inst 
       (.I(S_OBUF[0]),
        .O(S[0]));
  OBUF \S_OBUF[1]_inst 
       (.I(S_OBUF[1]),
        .O(S[1]));
  OBUF \S_OBUF[2]_inst 
       (.I(S_OBUF[2]),
        .O(S[2]));
  OBUF \S_OBUF[3]_inst 
       (.I(S_OBUF[3]),
        .O(S[3]));
  OBUF \S_OBUF[4]_inst 
       (.I(S_OBUF[4]),
        .O(S[4]));
  OBUF \S_OBUF[5]_inst 
       (.I(S_OBUF[5]),
        .O(S[5]));
  OBUF \S_OBUF[6]_inst 
       (.I(S_OBUF[6]),
        .O(S[6]));
  OBUF \S_OBUF[7]_inst 
       (.I(S_OBUF[7]),
        .O(S[7]));
  OBUF Z_OBUF_inst
       (.I(Z_OBUF),
        .O(Z));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    Z_OBUF_inst_i_1
       (.I0(Z_OBUF_inst_i_2_n_0),
        .I1(S_OBUF[1]),
        .I2(S_OBUF[0]),
        .I3(S_OBUF[3]),
        .I4(S_OBUF[2]),
        .I5(Z_OBUF_inst_i_3_n_0),
        .O(Z_OBUF));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    Z_OBUF_inst_i_2
       (.I0(Res[12]),
        .I1(Res[13]),
        .I2(Res[10]),
        .I3(Res[11]),
        .I4(Res[15]),
        .I5(Res[14]),
        .O(Z_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    Z_OBUF_inst_i_3
       (.I0(S_OBUF[6]),
        .I1(S_OBUF[7]),
        .I2(S_OBUF[4]),
        .I3(S_OBUF[5]),
        .I4(Res[9]),
        .I5(Res[8]),
        .O(Z_OBUF_inst_i_3_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_vector_reg[0] 
       (.CLR(1'b0),
        .D(Res[8]),
        .G(\tmp_vector_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tmp_vector[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_vector_reg[1] 
       (.CLR(1'b0),
        .D(Res[9]),
        .G(\tmp_vector_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tmp_vector[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_vector_reg[2] 
       (.CLR(1'b0),
        .D(Res[10]),
        .G(\tmp_vector_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tmp_vector[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_vector_reg[3] 
       (.CLR(1'b0),
        .D(Res[11]),
        .G(\tmp_vector_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tmp_vector[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_vector_reg[4] 
       (.CLR(1'b0),
        .D(Res[12]),
        .G(\tmp_vector_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tmp_vector[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_vector_reg[5] 
       (.CLR(1'b0),
        .D(Res[13]),
        .G(\tmp_vector_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tmp_vector[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_vector_reg[6] 
       (.CLR(1'b0),
        .D(Res[14]),
        .G(\tmp_vector_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tmp_vector[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_vector_reg[7] 
       (.CLR(1'b0),
        .D(Res[15]),
        .G(\tmp_vector_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tmp_vector[7]));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_vector_reg[7]_i_1 
       (.I0(Ctrl_Alu_IBUF[1]),
        .I1(Ctrl_Alu_IBUF[0]),
        .O(\tmp_vector_reg[7]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
