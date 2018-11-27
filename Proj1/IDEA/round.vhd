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
             X1 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             X2 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             X3 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             X4 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z1 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z2 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z3 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z4 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z5 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z6 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Y1 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Y2 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Y3 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Y4 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0)
         );
end round;

architecture Structural of round is
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
                O 		: 	out STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0));
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
    signal  OUTMOD1     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTMOD2     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTMOD3     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTMOD4     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');

    -- SIGNALS for the outputs of ADDER module
    signal  OUTADD1     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTADD2     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTADD3     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTADD4     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');

    -- SIGNALS for the outputs of XOR module
    signal  OUTXOR1     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTXOR2     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTXOR3     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTXOR4     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTXOR5     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');
    signal  OUTXOR6     :   STD_LOGIC_VECTOR(NIBBLE_BITS - 1 downto 0) := (others => '0');

begin

    -- instantiate and map the modulo
    M1: mulop generic map(NIBBLE_BITS) port map( X1, Z1, OUTMOD1 );
    A1: addop generic map(NIBBLE_BITS) port map( X2, Z2, OUTADD1 );
    A2: addop generic map(NIBBLE_BITS) port map( X3, Z3, OUTADD2 );
    M2: mulop generic map(NIBBLE_BITS) port map( X4, Z4, OUTMOD2 );

    XR1: xorop generic map(NIBBLE_BITS) port map( OUTMOD1, OUTADD2, OUTXOR1 );
    XR2: xorop generic map(NIBBLE_BITS) port map( OUTMOD2, OUTADD1, OUTXOR2 );

    M3: mulop generic map(NIBBLE_BITS) port map( Z5, OUTXOR1, OUTMOD3 );
    A3: addop generic map(NIBBLE_BITS) port map( OUTMOD3, OUTXOR2, OUTADD3 );

    M4: mulop generic map(NIBBLE_BITS) port map( Z6, OUTADD3, OUTMOD4 );
    A4: addop generic map(NIBBLE_BITS) port map( OUTMOD4, OUTMOD3, OUTADD4 );

    XR3: xorop generic map(NIBBLE_BITS) port map( OUTMOD4, OUTMOD1, Y1 );
    XR4: xorop generic map(NIBBLE_BITS) port map( OUTADD1, OUTADD4, Y3 );
    XR5: xorop generic map(NIBBLE_BITS) port map( OUTADD2, OUTMOD4, Y2 );
    XR6: xorop generic map(NIBBLE_BITS) port map( OUTMOD2, OUTADD4, Y4 );


end Structural;

