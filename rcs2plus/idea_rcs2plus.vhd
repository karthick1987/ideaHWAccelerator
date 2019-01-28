----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_rcs2 - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity idea_rcs2plus is
    Port ( CLOCK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0);
           READY : out  STD_LOGIC);
end idea_rcs2plus;

architecture Structural of idea_rcs2plus is
    Component mux2x1
        Port (
                 S   : in  STD_LOGIC;
                 D0 : in  STD_LOGIC_VECTOR (15 downto 0);
                 D1 : in  STD_LOGIC_VECTOR (15 downto 0);
                 O  : out STD_LOGIC_VECTOR (15 downto 0)
             );
    end component mux2x1;

    Component reg
        Port (
                Clock,ENABLE   : in  STD_LOGIC;
                D : in  STD_LOGIC_VECTOR (15 downto 0);
                Q : out  STD_LOGIC_VECTOR (15 downto 0)
             );
    end component reg;

    Component keygen
        Port (
                 KEY    : in    STD_LOGIC_VECTOR( 127 downto 0 );
                 ROUND  : in    STD_LOGIC_VECTOR( 3 downto 0 );
                 K_1    : out   STD_LOGIC_VECTOR( 15 downto 0 );
                 K_2    : out   STD_LOGIC_VECTOR( 15 downto 0 );
                 K_3    : out   STD_LOGIC_VECTOR( 15 downto 0 );
                 K_4    : out   STD_LOGIC_VECTOR( 15 downto 0 );
                 K_5    : out   STD_LOGIC_VECTOR( 15 downto 0 );
                 K_6    : out   STD_LOGIC_VECTOR( 15 downto 0 )
             );
    end component keygen;

    Component roundcounter
        Port (
                 CLK    : in  STD_LOGIC;
                 START  : in  STD_LOGIC;
                 RESULT : in  STD_LOGIC;
                 READY  : out  STD_LOGIC;
                 S_i    : out  STD_LOGIC;
                 INIT   : out  STD_LOGIC;
                 TRAFO  : out  STD_LOGIC;
                 ROUND  : out  STD_LOGIC_VECTOR (3 downto 0)
             );
    end component roundcounter;

    Component clockedround
        Port (
                 CLK        : in  STD_LOGIC;
                 INIT       : in  STD_LOGIC;
                 TRAFO      : in STD_LOGIC;
                 X1         : in  STD_LOGIC_VECTOR (15 downto 0);
                 X2         : in  STD_LOGIC_VECTOR (15 downto 0);
                 X3         : in  STD_LOGIC_VECTOR (15 downto 0);
                 X4         : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z1         : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z2         : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z3         : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z4         : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z5         : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z6         : in  STD_LOGIC_VECTOR (15 downto 0);
                 Y1         : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y2         : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y3         : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y4         : out  STD_LOGIC_VECTOR (15 downto 0);
                 RESULT     : out STD_LOGIC;
                 Y1_TRAFO   : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y2_TRAFO   : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y3_TRAFO   : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y4_TRAFO   : out  STD_LOGIC_VECTOR (15 downto 0)
             );
    end component clockedround;

-- Signals

signal  ROUND   :   STD_LOGIC_VECTOR(3 downto 0) := (OTHERS => '0');
signal  K1      :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  K2      :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  K3      :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  K4      :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  K5      :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  K6      :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');

signal  R1OUT   :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  R2OUT   :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  R3OUT   :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  R4OUT   :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');

signal  MUXOUT1 :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  MUXOUT2 :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  MUXOUT3 :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  MUXOUT4 :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');

signal  YR1     :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  YR2     :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  YR3     :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
signal  YR4     :   STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');

signal  RESULT  :   STD_LOGIC := '0';
signal  Si      :   STD_LOGIC := '0';
signal  INIT    :   STD_LOGIC := '0';
signal  TRAFO   :   STD_LOGIC := '0';

begin

R1: reg port map( CLOCK, RESULT, YR1, R1OUT );
R2: reg port map( CLOCK, RESULT, YR2, R2OUT );
R3: reg port map( CLOCK, RESULT, YR3, R3OUT );
R4: reg port map( CLOCK, RESULT, YR4, R4OUT );

MUX1: mux2x1 port map( Si, R1OUT, X_1, MUXOUT1 );
MUX2: mux2x1 port map( Si, R2OUT, X_2, MUXOUT2 );
MUX3: mux2x1 port map( Si, R3OUT, X_3, MUXOUT3 );
MUX4: mux2x1 port map( Si, R4OUT, X_4, MUXOUT4 );

KG: keygen port map( KEY, ROUND, K1, K2, K3, K4, K5, K6 );

RC: roundcounter port map( CLOCK, START, RESULT, READY, Si, INIT, TRAFO, ROUND );

EXTRND: clockedround port map( CLOCK, INIT, TRAFO, MUXOUT1, MUXOUT2, MUXOUT3, MUXOUT4, K1, K2, K3, K4, K5, K6, YR1, YR2, YR3, YR4, RESULT, Y_1, Y_2, Y_3, Y_4);

end Structural;

