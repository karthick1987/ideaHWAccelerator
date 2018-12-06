----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:08 11/26/2018 
-- Design Name: 
-- Module Name:    idea - Behavioral 
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity idea is
    Port (
             KEY    : in     STD_LOGIC_VECTOR( 127 downto 0 );
             X_1     : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X_2     : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X_3     : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X_4     : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Y_1     : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y_2     : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y_3     : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y_4     : out    STD_LOGIC_VECTOR( 15 downto 0 )
         );
end idea;

architecture Structural of idea is
    Component round
    Generic(
               NIBBLE_BITS: natural
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
    END COMPONENT round;

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

    constant NIBS       :   integer := 16;
    constant KEYSHIFT   :   integer := 25;
    -- Shifted Keys
    signal  iKey_SHIFTED1      :   STD_LOGIC_VECTOR( 127 downto 0 ):= (others => '0');
    signal  iKey_SHIFTED2      :   STD_LOGIC_VECTOR( 127 downto 0 ):= (others => '0');
    signal  iKey_SHIFTED3      :   STD_LOGIC_VECTOR( 127 downto 0 ):= (others => '0');
    signal  iKey_SHIFTED4      :   STD_LOGIC_VECTOR( 127 downto 0 ):= (others => '0');
    signal  iKey_SHIFTED5      :   STD_LOGIC_VECTOR( 127 downto 0 ):= (others => '0');
    signal  iKey_SHIFTED6      :   STD_LOGIC_VECTOR( 127 downto 0 ):= (others => '0');

    -- Individual round keys
    signal  iKey1       :   STD_LOGIC_VECTOR( 95 downto 0 ):= (others => '0');
    signal  iKey2       :   STD_LOGIC_VECTOR( 95 downto 0 ):= (others => '0');
    signal  iKey3       :   STD_LOGIC_VECTOR( 95 downto 0 ):= (others => '0');
    signal  iKey4       :   STD_LOGIC_VECTOR( 95 downto 0 ):= (others => '0');
    signal  iKey5       :   STD_LOGIC_VECTOR( 95 downto 0 ):= (others => '0');
    signal  iKey6       :   STD_LOGIC_VECTOR( 95 downto 0 ):= (others => '0');
    signal  iKey7       :   STD_LOGIC_VECTOR( 95 downto 0 ):= (others => '0');
    signal  iKey8       :   STD_LOGIC_VECTOR( 95 downto 0 ):= (others => '0');
    -- Key for output Transformation
    signal  iKey9       :   STD_LOGIC_VECTOR( 63 downto 0 ):= (others => '0');

    -- Round outs
    signal  roundOut1   :   STD_LOGIC_VECTOR( 63 downto 0 ):= (others => '0');
    signal  roundOut2   :   STD_LOGIC_VECTOR( 63 downto 0 ):= (others => '0');
    signal  roundOut3   :   STD_LOGIC_VECTOR( 63 downto 0 ):= (others => '0');
    signal  roundOut4   :   STD_LOGIC_VECTOR( 63 downto 0 ):= (others => '0');
    signal  roundOut5   :   STD_LOGIC_VECTOR( 63 downto 0 ):= (others => '0');
    signal  roundOut6   :   STD_LOGIC_VECTOR( 63 downto 0 ):= (others => '0');
    signal  roundOut7   :   STD_LOGIC_VECTOR( 63 downto 0 ):= (others => '0');
    signal  roundOut8   :   STD_LOGIC_VECTOR( 63 downto 0 ):= (others => '0');
begin

    -- Key generation
    iKey_SHIFTED1 <= To_StdLogicVector(to_bitvector(KEY) ROL KEYSHIFT);
    iKey_SHIFTED2 <= To_StdLogicVector(to_bitvector(iKey_SHIFTED1) ROL KEYSHIFT);
    iKey_SHIFTED3 <= To_StdLogicVector(to_bitvector(iKey_SHIFTED2) ROL KEYSHIFT);
    iKey_SHIFTED4 <= To_StdLogicVector(to_bitvector(iKey_SHIFTED3) ROL KEYSHIFT);
    iKey_SHIFTED5 <= To_StdLogicVector(to_bitvector(iKey_SHIFTED4) ROL KEYSHIFT);
    iKey_SHIFTED6 <= To_StdLogicVector(to_bitvector(iKey_SHIFTED5) ROL KEYSHIFT);

    iKey1 <= KEY(127 downto 32);
    iKey2 <= KEY(31 downto 0) & iKey_SHIFTED1(127 downto 64);
    iKey3 <= iKey_SHIFTED1(63 downto 0) & iKey_SHIFTED2(127 downto 96);
    iKey4 <= iKey_SHIFTED2(95 downto 0);
    iKey5 <= iKey_SHIFTED3(127 downto 32);
    iKey6 <= iKey_SHIFTED3(31 downto 0) & iKey_SHIFTED4(127 downto 64);
    iKey7 <= iKey_SHIFTED4(63 downto 0) & iKey_SHIFTED5(127 downto 96);
    iKey8 <= iKey_SHIFTED5(95 downto 0);
    iKey9 <= iKey_SHIFTED6(127 downto 64);

    -- Round Instantiation
    R1: round generic map(NIBS) port map( X_1, X_2, X_3, X_4, iKey1(95 downto 80), iKey1(79 downto 64), iKey1(63 downto 48), iKey1(47 downto 32), iKey1 (31 downto 16), iKey1(15 downto 0), roundOut1(63 downto 48), roundOut1(47 downto 32), roundOut1 (31 downto 16), roundOut1(15 downto 0) );

    R2: round generic map(NIBS) port map( roundOut1(63 downto 48), roundOut1(47 downto 32), roundOut1 (31 downto 16), roundOut1(15 downto 0), iKey2(95 downto 80), iKey2(79 downto 64), iKey2(63 downto 48), iKey2(47 downto 32), iKey2 (31 downto 16), iKey2(15 downto 0), roundOut2(63 downto 48), roundOut2(47 downto 32), roundOut2 (31 downto 16), roundOut2(15 downto 0) );
    R3: round generic map(NIBS) port map( roundOut2(63 downto 48), roundOut2(47 downto 32), roundOut2 (31 downto 16), roundOut2(15 downto 0), iKey3(95 downto 80), iKey3(79 downto 64), iKey3(63 downto 48), iKey3(47 downto 32), iKey3 (31 downto 16), iKey3(15 downto 0), roundOut3(63 downto 48), roundOut3(47 downto 32), roundOut3 (31 downto 16), roundOut3(15 downto 0) );
    R4: round generic map(NIBS) port map( roundOut3(63 downto 48), roundOut3(47 downto 32), roundOut3 (31 downto 16), roundOut3(15 downto 0), iKey4(95 downto 80), iKey4(79 downto 64), iKey4(63 downto 48), iKey4(47 downto 32), iKey4 (31 downto 16), iKey4(15 downto 0), roundOut4(63 downto 48), roundOut4(47 downto 32), roundOut4 (31 downto 16), roundOut4(15 downto 0) );
    R5: round generic map(NIBS) port map( roundOut4(63 downto 48), roundOut4(47 downto 32), roundOut4 (31 downto 16), roundOut4(15 downto 0), iKey5(95 downto 80), iKey5(79 downto 64), iKey5(63 downto 48), iKey5(47 downto 32), iKey5 (31 downto 16), iKey5(15 downto 0), roundOut5(63 downto 48), roundOut5(47 downto 32), roundOut5 (31 downto 16), roundOut5(15 downto 0) );
    R6: round generic map(NIBS) port map( roundOut5(63 downto 48), roundOut5(47 downto 32), roundOut5 (31 downto 16), roundOut5(15 downto 0), iKey6(95 downto 80), iKey6(79 downto 64), iKey6(63 downto 48), iKey6(47 downto 32), iKey6 (31 downto 16), iKey6(15 downto 0), roundOut6(63 downto 48), roundOut6(47 downto 32), roundOut6 (31 downto 16), roundOut6(15 downto 0) );
    R7: round generic map(NIBS) port map( roundOut6(63 downto 48), roundOut6(47 downto 32), roundOut6 (31 downto 16), roundOut6(15 downto 0), iKey7(95 downto 80), iKey7(79 downto 64), iKey7(63 downto 48), iKey7(47 downto 32), iKey7 (31 downto 16), iKey7(15 downto 0), roundOut7(63 downto 48), roundOut7(47 downto 32), roundOut7 (31 downto 16), roundOut7(15 downto 0) );
    R8: round generic map(NIBS) port map( roundOut7(63 downto 48), roundOut7(47 downto 32), roundOut7 (31 downto 16), roundOut7(15 downto 0), iKey8(95 downto 80), iKey8(79 downto 64), iKey8(63 downto 48), iKey8(47 downto 32), iKey8 (31 downto 16), iKey8(15 downto 0), roundOut8(63 downto 48), roundOut8(47 downto 32), roundOut8 (31 downto 16), roundOut8(15 downto 0) );

    T1: trafo port map( roundOut8(63 downto 48), roundOut8(47 downto 32), roundOut8 (31 downto 16), roundOut8(15 downto 0), iKey9(63 downto 48), iKey9(47 downto 32), iKey9 (31 downto 16), iKey9(15 downto 0), Y_1, Y_2, Y_3, Y_4);

end Structural;

