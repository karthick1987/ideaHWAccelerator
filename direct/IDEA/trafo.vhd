----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:47 11/26/2018 
-- Design Name: 
-- Module Name:    trafo - Behavioral 
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

entity trafo is
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
end trafo;

architecture Behavioral of trafo is
    -- MODMUL Component
    COMPONENT mulop
        GENERIC(
                    BIT_WIDTH   : natural
               );
        PORT(
             I1 : in STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 );
             I2 : in STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 );
             O : out STD_LOGIC_VECTOR( BIT_WIDTH - 1 downto 0 )
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


    -- Signals
    constant NIBBLE_BITS: integer := 16;

begin
    M1: mulop generic map(NIBBLE_BITS) port map( X1, Z1, Y1 );
    A1: addop generic map(NIBBLE_BITS) port map( X3, Z2, Y2 );
    A2: addop generic map(NIBBLE_BITS) port map( X2, Z3, Y3 );
    M2: mulop generic map(NIBBLE_BITS) port map( X4, Z4, Y4 );

end Behavioral;

