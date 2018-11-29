----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:27 11/26/2018 
-- Design Name: 
-- Module Name:    tb_idea - Behavioral 
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

entity tb_idea is
end tb_idea;

architecture Behavioral of tb_idea is
    Component idea
    Port (
             X1     : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X2     : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X3     : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X4     : in     STD_LOGIC_VECTOR( 15 downto 0 );
             KEY    : in     STD_LOGIC_VECTOR( 127 downto 0 );
             Y1     : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y2     : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y3     : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y4     : out    STD_LOGIC_VECTOR( 15 downto 0 )
         );
    End Component idea;

    -- Clk stuff
    signal Tb_Clk       : STD_LOGIC := '0';
    constant clk_period : time := 10 ns;
    signal X : STD_LOGIC_VECTOR( 63 downto 0) := (others => '0');
    signal Y : std_logic_vector( 63 downto 0) := (others => '0');

    signal X1 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');
    signal X2 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');
    signal X3 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');
    signal X4 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');

    signal K : STD_LOGIC_VECTOR( 127 downto 0) := (others => '0');

begin

    -- Inputs
    X1 <= X( 63 downto 48 );
    X2 <= X( 47 downto 32 );
    X3 <= X( 31 downto 16 );
    X4 <= X( 15 downto 0 );

   -- Instantiate the Unit Under Test (UUT)
    uut: idea port map(X1,X2,X3,X4,K,Y(63 downto 48), Y(47 downto 32) , Y(31 downto 16), Y(15 downto 0));

    ID_EN: process
    begin
        
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            X <= x"1111222244448888";
            K <= x"00010002000300040005000600070008";
        
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            X <= x"0001000200030004";
            K <= x"00010002000300040005000600070008";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            X <= x"0000000000000000";
            K <= x"00000000000000000000000000000000";
    end process ID_EN;
end Behavioral;

