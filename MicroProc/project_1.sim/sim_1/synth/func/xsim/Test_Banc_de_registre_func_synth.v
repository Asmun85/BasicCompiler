// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Tue May 16 09:45:40 2023
// Host        : insa-11284 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/kanane/Bureau/4A/ProjetSI/project_1/project_1.sim/sim_1/synth/func/xsim/Test_Banc_de_registre_func_synth.v
// Design      : Instruction_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Instruction_mem
   (Add,
    Clk,
    Vout);
  input [7:0]Add;
  input Clk;
  output [31:0]Vout;

  wire [31:0]Vout;

  OBUF \Vout_OBUF[0]_inst 
       (.I(1'b0),
        .O(Vout[0]));
  OBUF \Vout_OBUF[10]_inst 
       (.I(1'b0),
        .O(Vout[10]));
  OBUF \Vout_OBUF[11]_inst 
       (.I(1'b0),
        .O(Vout[11]));
  OBUF \Vout_OBUF[12]_inst 
       (.I(1'b0),
        .O(Vout[12]));
  OBUF \Vout_OBUF[13]_inst 
       (.I(1'b0),
        .O(Vout[13]));
  OBUF \Vout_OBUF[14]_inst 
       (.I(1'b0),
        .O(Vout[14]));
  OBUF \Vout_OBUF[15]_inst 
       (.I(1'b0),
        .O(Vout[15]));
  OBUF \Vout_OBUF[16]_inst 
       (.I(1'b0),
        .O(Vout[16]));
  OBUF \Vout_OBUF[17]_inst 
       (.I(1'b0),
        .O(Vout[17]));
  OBUF \Vout_OBUF[18]_inst 
       (.I(1'b0),
        .O(Vout[18]));
  OBUF \Vout_OBUF[19]_inst 
       (.I(1'b0),
        .O(Vout[19]));
  OBUF \Vout_OBUF[1]_inst 
       (.I(1'b0),
        .O(Vout[1]));
  OBUF \Vout_OBUF[20]_inst 
       (.I(1'b0),
        .O(Vout[20]));
  OBUF \Vout_OBUF[21]_inst 
       (.I(1'b0),
        .O(Vout[21]));
  OBUF \Vout_OBUF[22]_inst 
       (.I(1'b0),
        .O(Vout[22]));
  OBUF \Vout_OBUF[23]_inst 
       (.I(1'b0),
        .O(Vout[23]));
  OBUF \Vout_OBUF[24]_inst 
       (.I(1'b0),
        .O(Vout[24]));
  OBUF \Vout_OBUF[25]_inst 
       (.I(1'b0),
        .O(Vout[25]));
  OBUF \Vout_OBUF[26]_inst 
       (.I(1'b0),
        .O(Vout[26]));
  OBUF \Vout_OBUF[27]_inst 
       (.I(1'b0),
        .O(Vout[27]));
  OBUF \Vout_OBUF[28]_inst 
       (.I(1'b0),
        .O(Vout[28]));
  OBUF \Vout_OBUF[29]_inst 
       (.I(1'b0),
        .O(Vout[29]));
  OBUF \Vout_OBUF[2]_inst 
       (.I(1'b0),
        .O(Vout[2]));
  OBUF \Vout_OBUF[30]_inst 
       (.I(1'b0),
        .O(Vout[30]));
  OBUF \Vout_OBUF[31]_inst 
       (.I(1'b0),
        .O(Vout[31]));
  OBUF \Vout_OBUF[3]_inst 
       (.I(1'b0),
        .O(Vout[3]));
  OBUF \Vout_OBUF[4]_inst 
       (.I(1'b0),
        .O(Vout[4]));
  OBUF \Vout_OBUF[5]_inst 
       (.I(1'b0),
        .O(Vout[5]));
  OBUF \Vout_OBUF[6]_inst 
       (.I(1'b0),
        .O(Vout[6]));
  OBUF \Vout_OBUF[7]_inst 
       (.I(1'b0),
        .O(Vout[7]));
  OBUF \Vout_OBUF[8]_inst 
       (.I(1'b0),
        .O(Vout[8]));
  OBUF \Vout_OBUF[9]_inst 
       (.I(1'b0),
        .O(Vout[9]));
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
