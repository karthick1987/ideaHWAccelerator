
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

entity keygen is
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
end keygen;

architecture Structural of keygen is

    constant KEYSHIFT   :   integer := 25;
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
   
    keygen: process( KEY, ROUND )
    begin

        case ROUND is
            when "0000" =>      K_1 <= iKey1(95 downto 80);
                                K_2 <= iKey1(79 downto 64);
                                K_3 <= iKey1(63 downto 48);
                                K_4 <= iKey1(47 downto 32);
                                K_5 <= iKey1(31 downto 16);
                                K_6 <= iKey1(15 downto 0);

            when "0001" =>      K_1 <= iKey2(95 downto 80);
                                K_2 <= iKey2(79 downto 64);
                                K_3 <= iKey2(63 downto 48);
                                K_4 <= iKey2(47 downto 32);
                                K_5 <= iKey2(31 downto 16);
                                K_6 <= iKey2(15 downto 0);

            when "0010" =>      K_1 <= iKey3(95 downto 80);
                                K_2 <= iKey3(79 downto 64);
                                K_3 <= iKey3(63 downto 48);
                                K_4 <= iKey3(47 downto 32);
                                K_5 <= iKey3(31 downto 16);
                                K_6 <= iKey3(15 downto 0);

            when "0011" =>      K_1 <= iKey4(95 downto 80);
                                K_2 <= iKey4(79 downto 64);
                                K_3 <= iKey4(63 downto 48);
                                K_4 <= iKey4(47 downto 32);
                                K_5 <= iKey4(31 downto 16);
                                K_6 <= iKey4(15 downto 0);

            when "0100" =>      K_1 <= iKey5(95 downto 80);
                                K_2 <= iKey5(79 downto 64);
                                K_3 <= iKey5(63 downto 48);
                                K_4 <= iKey5(47 downto 32);
                                K_5 <= iKey5(31 downto 16);
                                K_6 <= iKey5(15 downto 0);

            when "0101" =>      K_1 <= iKey6(95 downto 80);
                                K_2 <= iKey6(79 downto 64);
                                K_3 <= iKey6(63 downto 48);
                                K_4 <= iKey6(47 downto 32);
                                K_5 <= iKey6(31 downto 16);
                                K_6 <= iKey6(15 downto 0);

            when "0110" =>      K_1 <= iKey7(95 downto 80);
                                K_2 <= iKey7(79 downto 64);
                                K_3 <= iKey7(63 downto 48);
                                K_4 <= iKey7(47 downto 32);
                                K_5 <= iKey7(31 downto 16);
                                K_6 <= iKey7(15 downto 0);

            when "0111" =>      K_1 <= iKey8(95 downto 80);
                                K_2 <= iKey8(79 downto 64);
                                K_3 <= iKey8(63 downto 48);
                                K_4 <= iKey8(47 downto 32);
                                K_5 <= iKey8(31 downto 16);
                                K_6 <= iKey8(15 downto 0);

            when "1000" =>      K_1 <= iKey9(95 downto 80);
                                K_2 <= iKey9(79 downto 64);
                                K_3 <= iKey9(63 downto 48);
                                K_4 <= iKey9(47 downto 32);
                                K_5 <= iKey9(31 downto 16);
                                K_6 <= iKey9(15 downto 0);

            when others =>      K_1 <= (others => '0');
                                K_2 <= (others => '0');
                                K_3 <= (others => '0');
                                K_4 <= (others => '0');
                                K_5 <= (others => '0');
                                K_6 <= (others => '0');
        end case;
    end process keygen;
end Structural;
