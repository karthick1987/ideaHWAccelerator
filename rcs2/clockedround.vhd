----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:47 04/19/2016 
-- Design Name: 
-- Module Name:    clockedround - Structural 
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

entity clockedround is
    Port (
             CLK      : in  STD_LOGIC;
             INIT     : in  STD_LOGIC;
             TRAFO    : in STD_LOGIC;
             X1       : in  STD_LOGIC_VECTOR (15 downto 0);
             X2       : in  STD_LOGIC_VECTOR (15 downto 0);
             X3       : in  STD_LOGIC_VECTOR (15 downto 0);
             X4       : in  STD_LOGIC_VECTOR (15 downto 0);
             Z1       : in  STD_LOGIC_VECTOR (15 downto 0);
             Z2       : in  STD_LOGIC_VECTOR (15 downto 0);
             Z3       : in  STD_LOGIC_VECTOR (15 downto 0);
             Z4       : in  STD_LOGIC_VECTOR (15 downto 0);
             Z5       : in  STD_LOGIC_VECTOR (15 downto 0);
             Z6       : in  STD_LOGIC_VECTOR (15 downto 0);
             Y1       : out  STD_LOGIC_VECTOR (15 downto 0);
             Y2       : out  STD_LOGIC_VECTOR (15 downto 0);
             Y3       : out  STD_LOGIC_VECTOR (15 downto 0);
             Y4       : out  STD_LOGIC_VECTOR (15 downto 0);
             RESULT   : out STD_LOGIC;
             Y1_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
             Y2_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
             Y3_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
             Y4_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0)
         );
end clockedround;

architecture Structural of clockedround is

    -- CONTROL Module
    COMPONENT control
        Port (
                 CLK : in  STD_LOGIC;
                 INIT : in  STD_LOGIC;
                 TRAFO : in STD_LOGIC;
                 EN125 : out  STD_LOGIC;
                 EN346 : out  STD_LOGIC;
                 EN78 : out  STD_LOGIC;
                 RESULT : out  STD_LOGIC;
                 S : out  STD_LOGIC_VECTOR(1 downto 0);
                 S_T: out STD_LOGIC_VECTOR(1 downto 0)
             );
    END COMPONENT control;

    -- Datapath Module
    COMPONENT datapath
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
    END COMPONENT datapath;

signal  S : STD_LOGIC_VECTOR( 1 downto 0) := (OTHERS => '0');
signal  S_T : STD_LOGIC_VECTOR( 1 downto 0) := (OTHERS => '0');
signal  EN125 : STD_LOGIC;
signal  EN346 : STD_LOGIC;
signal  EN78  : STD_LOGIC;

begin

    D1: datapath port map(S, S_T, CLK, EN125, EN346, EN78, X1, X2, X3, X4, Z1, Z2, Z3, Z4, Z5, Z6, Y1, Y2, Y3, Y4, Y1_TRAFO, Y2_TRAFO, Y3_TRAFO, Y4_TRAFO);
    C1: control port map(CLK, INIT, TRAFO, EN125, EN346, EN78, RESULT, S, S_T);

end Structural;

