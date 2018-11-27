----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:44 11/26/2018 
-- Design Name: 
-- Module Name:    round - Behavioral 
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

entity round is
    Generic(
               constant NIBBLE_BITS: integer := 16
           );
    Port (
             X : in     STD_LOGIC_VECTOR( 4*NIBBLE_BITS - 1 downto 0);
             Z : in     STD_LOGIC_VECTOR( 6*NIBBLE_BITS - 1 downto 0);
             Y : out    STD_LOGIC_VECTOR( 4*NIBBLE_BITS - 1 downto 0)
         );
end round;

architecture Behavioral of round is
    -- MODMUL Component
    COMPONENT mulop
        GENERIC(
                    BIT_WIDTH   : natural
               );
        PORT(
             I1 : in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
             I2 : in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
             O : out STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0)
            );
    END COMPONENT mulop;
    -- ADD Component
    COMPONENT addop
        GENERIC(
                   BIT_WIDTH    : natural
               );
        PORT(
                I1  	: 	in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
                I2  	: 	in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
                O 		: 	out STD_LOGIC_VECTOR(BIT_WIDTH downto 0));
    END COMPONENT addop;
    -- XOR Component
    COMPONENT xorop
        GENERIC(
                   BIT_WIDTH    : natural
               );
        PORT(
                I1  	: 	in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
                I2  	: 	in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
                O 		: 	out STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0));
    END COMPONENT xorop;

    -- SIGNALS for the outputs of MODULO multiplier
    signal  OUTMOD1     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);
    signal  OUTMOD2     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);
    signal  OUTMOD3     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);
    signal  OUTMOD4     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);

    -- SIGNALS for the outputs of ADDER module
    signal  OUTADD1     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);
    signal  OUTADD2     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);
    signal  OUTADD3     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);
    signal  OUTADD4     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);

    -- SIGNALS for the outputs of XOR module
    signal  OUTXOR1     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);
    signal  OUTXOR2     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);
    signal  OUTXOR3     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);
    signal  OUTXOR4     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0);

begin

    -- instantiate and map the modulo

    ROUND: process (X,Z,Y)
    begin

    end process ROUND;

end Behavioral;

