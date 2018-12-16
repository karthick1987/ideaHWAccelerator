----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_single - Structural 
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

entity idea_single is
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
end idea_single;

architecture Structural of idea_single is

    Component control 
        Port (
                CLK : in  STD_LOGIC;
                START : in  STD_LOGIC;
                ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
                READY : out  STD_LOGIC;
                EN : out  STD_LOGIC;
                S : out  STD_LOGIC
           );
    END Component control;

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
    END Component keygen;

    Component round
        Generic(
                   constant NIBBLE_BITS: integer := 16
               );
        Port (
                 X1 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 X2 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 X3 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 X4 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 Z1 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 Z2 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 Z3 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 Z4 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 Z5 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 Z6 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 Y1 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 Y2 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 Y3 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 );
                 Y4 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0 )
             );
    END Component round;

    Component trafo
        Port (
             X1 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X2 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X3 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X4 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Z1 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Z2 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Z3 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Z4 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Y1 : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y2 : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y3 : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y4 : out    STD_LOGIC_VECTOR( 15 downto 0 )
         );
    END Component trafo;

    Component reg
        Port (
        Clock,ENABLE   : in  STD_LOGIC;
        D : in  STD_LOGIC_VECTOR (15 downto 0);
        Q : out  STD_LOGIC_VECTOR (15 downto 0)
    );
    END Component reg;

    Component mux2x1
        Port (
                 S   : in  STD_LOGIC;
                 D0 : in  STD_LOGIC_VECTOR (15 downto 0);
                 D1 : in  STD_LOGIC_VECTOR (15 downto 0);
                 O  : out STD_LOGIC_VECTOR (15 downto 0)
             );
    END Component mux2x1;

-- Reg Outputs
    signal  regOut1  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  regOut2  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  regOut3  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  regOut4  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');

-- Mux inputs
    signal  muxOut1  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  muxOut2  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  muxOut3  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  muxOut4  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');

-- round signals
    signal  roundOut1   :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  roundOut2   :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  roundOut3   :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  roundOut4   :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  roundcnt    :   STD_LOGIC_VECTOR( 3 downto 0 ):= (others => '0');
    signal  round_en    :   STD_LOGIC := '0';
    signal  round_S     :   STD_LOGIC := '0';

-- round key
    signal  roundKey1  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  roundKey2  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  roundKey3  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  roundKey4  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  roundKey5  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');
    signal  roundKey6  :   STD_LOGIC_VECTOR( 15 downto 0 ):= (others => '0');


begin

-- Control
C: control port map(CLOCK, START, roundcnt, READY, round_en, round_S);

-- Keygen
K: keygen port map(KEY, roundcnt, roundKey1, roundKey2, roundKey3, roundKey4, roundKey5, roundKey6);

-- Muxes
MUX1: mux2x1 port map( round_S, X_1, regOut1, muxOut1);
MUX2: mux2x1 port map( round_S, X_2, regOut2, muxOut2);
MUX3: mux2x1 port map( round_S, X_3, regOut3, muxOut3);
MUX4: mux2x1 port map( round_S, X_4, regOut4, muxOut4);

-- Round module
RND: round generic map(16) port map(MuxOut1, MuxOut2, MuxOut3, MuxOut4, roundKey1, roundKey2, roundKey3, roundKey4, roundKey5, roundKey6, roundOut1, roundOut2, roundOut3, roundOut4);

-- Registers
REG1: reg port map(CLOCK, round_en, roundOut1, regOut1 );
REG2: reg port map(CLOCK, round_en, roundOut2, regOut2 );
REG3: reg port map(CLOCK, round_en, roundOut3, regOut3 );
REG4: reg port map(CLOCK, round_en, roundOut4, regOut4 );

-- Output transform
OT: trafo port map(regOut1, regOut2, regOut3, regOut4, roundKey1, roundKey2, roundKey3, roundKey4, Y_1, Y_2, Y_3, Y_4);

end Structural;
