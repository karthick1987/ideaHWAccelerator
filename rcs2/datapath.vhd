----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:47 11/26/2018 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
    Port (
             S      : in    STD_LOGIC_VECTOR( 1 downto 0);
             S_T    : in    STD_LOGIC_VECTOR( 1 downto 0);
             CLK    : in    STD_LOGIC;
             EN125  : in    STD_LOGIC;
             EN346  : in    STD_LOGIC;
             EN78   : in    STD_LOGIC;
             X1     : in    STD_LOGIC_VECTOR( 15 downto 0 );
             X2     : in    STD_LOGIC_VECTOR( 15 downto 0 );
             X3     : in    STD_LOGIC_VECTOR( 15 downto 0 );
             X4     : in    STD_LOGIC_VECTOR( 15 downto 0 );
             Z1     : in    STD_LOGIC_VECTOR( 15 downto 0 );
             Z2     : in    STD_LOGIC_VECTOR( 15 downto 0 );
             Z3     : in    STD_LOGIC_VECTOR( 15 downto 0 );
             Z4     : in    STD_LOGIC_VECTOR( 15 downto 0 );
             Z5     : in    STD_LOGIC_VECTOR( 15 downto 0 );
             Z6     : in    STD_LOGIC_VECTOR( 15 downto 0 );
             Y1     : out   STD_LOGIC_VECTOR( 15 downto 0 );
             Y2     : out   STD_LOGIC_VECTOR( 15 downto 0 );
             Y3     : out   STD_LOGIC_VECTOR( 15 downto 0 );
             Y4     : out   STD_LOGIC_VECTOR( 15 downto 0 );
             Y1_T   : out   STD_LOGIC_VECTOR( 15 downto 0 );
             Y2_T   : out   STD_LOGIC_VECTOR( 15 downto 0 );
             Y3_T   : out   STD_LOGIC_VECTOR( 15 downto 0 );
             Y4_T   : out   STD_LOGIC_VECTOR( 15 downto 0 )
);
end datapath;

architecture Behavioral of datapath is
    -- MODMUL Component
    COMPONENT mulop
        GENERIC(
                    BIT_WIDTH   : natural
               );
        PORT(
             I_1 : in STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 );
             I_2 : in STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 );
             O_1 : out STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 )
            );
    END COMPONENT mulop;

    -- ADD Component
    COMPONENT addop
        GENERIC(
                   BIT_WIDTH    : natural
               );
        PORT(
                I1  	: 	in STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 );
                I2  	: 	in STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 );
                O 		: 	out STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 )
            );
    END COMPONENT addop;

    -- XOR Component
    COMPONENT xorop
        GENERIC(
                   BIT_WIDTH    : natural
               );
        PORT(
                I1  	: 	in STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 );
                I2  	: 	in STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 );
                O 		: 	out STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 )
            );
    END COMPONENT xorop;

    -- Register 
    COMPONENT reg
    Port (
             Clock,ENABLE   : in  STD_LOGIC;
             D : in  STD_LOGIC_VECTOR (15 downto 0);
             Q : out  STD_LOGIC_VECTOR (15 downto 0)
         );
    END COMPONENT reg;

    -- Mux 4 to 1
    COMPONENT mux4x1
        PORT(
                S  : in STD_LOGIC_VECTOR (1 downto 0);
                D0 : in  STD_LOGIC_VECTOR (15 downto 0);
                D1 : in  STD_LOGIC_VECTOR (15 downto 0);
                D2 : in  STD_LOGIC_VECTOR (15 downto 0);
                D3 : in  STD_LOGIC_VECTOR (15 downto 0);
                O  : out STD_LOGIC_VECTOR (15 downto 0)
            );
    END COMPONENT mux4x1;

    -- Signals
    constant NIBBLE_BITS: integer := 16;

    -- Signals for Registers
    signal R1OUT : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal R2OUT : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal R3OUT : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal R4OUT : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal R5OUT : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal R6OUT : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal R7OUT : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal R8OUT : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');

    -- Signals for Mux
    signal MXOUT1 : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal MXOUT2 : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal MXOUT3 : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal MXOUT4 : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');

    -- Signals for MUL and ADD out
    signal MULOUT : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
    signal ADDOUT : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');

    -- Signals for XOR
    signal XOROUT5 : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');

begin

    Y1_T <= R1OUT;
    Y2_T <= R2OUT;
    Y3_T <= R3OUT;
    Y4_T <= R4OUT;

    M1: mulop generic map(NIBBLE_BITS) port map( MXOUT1, MXOUT2, MULOUT);
    A1: addop generic map(NIBBLE_BITS) port map( MXOUT3, MXOUT4, ADDOUT);

    XOR1: xorop generic map(NIBBLE_BITS) port map( R1OUT, MULOUT, Y1);
    XOR2: xorop generic map(NIBBLE_BITS) port map( R2OUT, MULOUT, Y2);
    XOR3: xorop generic map(NIBBLE_BITS) port map( R3OUT, ADDOUT, Y3);
    XOR4: xorop generic map(NIBBLE_BITS) port map( R4OUT, ADDOUT ,Y4);
    XOR5: xorop generic map(NIBBLE_BITS) port map( ADDOUT, MULOUT, XOROUT5);

    R1: reg port map( CLK, EN125, MULOUT, R1OUT);
    R2: reg port map( CLK, EN125, ADDOUT, R2OUT);
    R5: reg port map( CLK, EN125, XOROUT5, R5OUT);
    
    R3: reg port map( CLK, EN346, ADDOUT, R3OUT);
    R4: reg port map( CLK, EN346, MULOUT, R4OUT);
    R6: reg port map( CLK, EN346, XOROUT5, R6OUT);
    
    R7: reg port map( CLK, EN78, MULOUT, R7OUT);
    R8: reg port map( CLK, EN78, ADDOUT, R8OUT);

    MX1: mux4x1 port map( S, X1, X4, Z5, Z6, MXOUT1);
    MX2: mux4x1 port map( S, Z1, Z4, R5OUT, R8OUT, MXOUT2);
    MX3: mux4x1 port map( S, X3, X2, R6OUT, R7OUT, MXOUT3);
    MX4: mux4x1 port map( S_T, Z3, Z2, MULOUT, MULOUT, MXOUT4);

end Behavioral;

