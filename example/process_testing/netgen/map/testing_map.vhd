--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: testing_map.vhd
-- /___/   /\     Timestamp: Mon Jan 14 17:21:14 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf testing.pcf -rpw 100 -tpw 0 -ar Structure -tm testing -w -dir netgen/map -ofmt vhdl -sim testing_map.ncd testing_map.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: testing_map.ncd
-- Output file	: /home/ck/Documents/Master_TUM/WS_1819/VHDL/example/process_testing/netgen/map/testing_map.vhd
-- # of Entities	: 1
-- Design Name	: testing
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity testing is
  port (
    CLK : in STD_LOGIC := 'X'; 
    START : in STD_LOGIC := 'X'; 
    RESULT : in STD_LOGIC := 'X'; 
    S_i : out STD_LOGIC; 
    INIT : out STD_LOGIC; 
    TRAFO : out STD_LOGIC; 
    READY : out STD_LOGIC; 
    ROUND : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end testing;

architecture Structure of testing is
  signal state_FSM_FFd2_43 : STD_LOGIC; 
  signal START_IBUF_47 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal state_FSM_FFd1_50 : STD_LOGIC; 
  signal INIT_O : STD_LOGIC; 
  signal READY_O : STD_LOGIC; 
  signal TRAFO_O : STD_LOGIC; 
  signal ROUND_0_O : STD_LOGIC; 
  signal ROUND_1_O : STD_LOGIC; 
  signal ROUND_2_O : STD_LOGIC; 
  signal ROUND_3_O : STD_LOGIC; 
  signal START_INBUF : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal READY_OBUF_154 : STD_LOGIC; 
  signal state_FSM_FFd2_DYMUX_143 : STD_LOGIC; 
  signal state_FSM_FFd2_In1 : STD_LOGIC; 
  signal state_FSM_FFd2_SRINV_133 : STD_LOGIC; 
  signal state_FSM_FFd2_CLKINV_132 : STD_LOGIC; 
  signal state_FSM_FFd1_DYMUX_162 : STD_LOGIC; 
  signal state_FSM_FFd1_CLKINV_160 : STD_LOGIC; 
  signal TRAFO_OUTPUT_OFF_O1INV_74 : STD_LOGIC; 
  signal ROUND_0_OUTPUT_OFF_O1INV_82 : STD_LOGIC; 
  signal ROUND_1_OUTPUT_OFF_O1INV_90 : STD_LOGIC; 
  signal ROUND_2_OUTPUT_OFF_O1INV_98 : STD_LOGIC; 
  signal ROUND_3_OUTPUT_OFF_O1INV_106 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  INIT_OBUF : X_OBUF
    port map (
      I => INIT_O,
      O => INIT
    );
  READY_OBUF : X_OBUF
    port map (
      I => READY_O,
      O => READY
    );
  TRAFO_OBUF : X_OBUF
    port map (
      I => TRAFO_O,
      O => TRAFO
    );
  ROUND_0_OBUF : X_OBUF
    port map (
      I => ROUND_0_O,
      O => ROUND(0)
    );
  ROUND_1_OBUF : X_OBUF
    port map (
      I => ROUND_1_O,
      O => ROUND(1)
    );
  ROUND_2_OBUF : X_OBUF
    port map (
      I => ROUND_2_O,
      O => ROUND(2)
    );
  ROUND_3_OBUF : X_OBUF
    port map (
      I => ROUND_3_O,
      O => ROUND(3)
    );
  START_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => START,
      O => START_INBUF
    );
  START_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => START_INBUF,
      O => START_IBUF_47
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd2_In1,
      O => state_FSM_FFd2_DYMUX_143
    );
  state_FSM_FFd2_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd2_43,
      O => state_FSM_FFd2_SRINV_133
    );
  state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => state_FSM_FFd2_CLKINV_132
    );
  state_FSM_FFd2_In11 : X_LUT4
    generic map(
      INIT => X"2222"
    )
    port map (
      ADR0 => START_IBUF_47,
      ADR1 => state_FSM_FFd1_50,
      ADR2 => VCC,
      ADR3 => VCC,
      O => state_FSM_FFd2_In1
    );
  state_FSM_FFd1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd2_43,
      O => state_FSM_FFd1_DYMUX_162
    );
  state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => state_FSM_FFd1_CLKINV_160
    );
  state_FSM_FFd2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => state_FSM_FFd2_DYMUX_143,
      CE => VCC,
      CLK => state_FSM_FFd2_CLKINV_132,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => state_FSM_FFd2_SRINV_133,
      O => state_FSM_FFd2_43
    );
  state_FSM_Out01 : X_LUT4
    generic map(
      INIT => X"1111"
    )
    port map (
      ADR0 => state_FSM_FFd2_43,
      ADR1 => state_FSM_FFd1_50,
      ADR2 => VCC,
      ADR3 => VCC,
      O => READY_OBUF_154
    );
  state_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => state_FSM_FFd1_DYMUX_162,
      CE => VCC,
      CLK => state_FSM_FFd1_CLKINV_160,
      SET => GND,
      RST => GND,
      O => state_FSM_FFd1_50
    );
  INIT_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd2_43,
      O => INIT_O
    );
  READY_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => READY_OBUF_154,
      O => READY_O
    );
  TRAFO_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => TRAFO_OUTPUT_OFF_O1INV_74,
      O => TRAFO_O
    );
  TRAFO_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => TRAFO_OUTPUT_OFF_O1INV_74
    );
  ROUND_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ROUND_0_OUTPUT_OFF_O1INV_82,
      O => ROUND_0_O
    );
  ROUND_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => ROUND_0_OUTPUT_OFF_O1INV_82
    );
  ROUND_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ROUND_1_OUTPUT_OFF_O1INV_90,
      O => ROUND_1_O
    );
  ROUND_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => ROUND_1_OUTPUT_OFF_O1INV_90
    );
  ROUND_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ROUND_2_OUTPUT_OFF_O1INV_98,
      O => ROUND_2_O
    );
  ROUND_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => ROUND_2_OUTPUT_OFF_O1INV_98
    );
  ROUND_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ROUND_3_OUTPUT_OFF_O1INV_106,
      O => ROUND_3_O
    );
  ROUND_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => ROUND_3_OUTPUT_OFF_O1INV_106
    );
  NlwBlock_testing_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_testing_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

