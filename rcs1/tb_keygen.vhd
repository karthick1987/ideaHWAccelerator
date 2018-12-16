----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    control - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_keygen is
    end tb_keygen;


architecture Behavioral of tb_keygen is
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

    signal Tb_Clk       : STD_LOGIC := '0';
    constant clk_period : time := 10 ns;
    signal Tb_KEY      : STD_LOGIC_VECTOR (127 downto 0) := (OTHERS => '0');
    signal Tb_ROUND : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
    signal Tb_K_1   : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Tb_K_2   : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Tb_K_3   : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Tb_K_4   : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Tb_K_5   : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Tb_K_6   : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');

begin

    uut: keygen port map (Tb_KEY, Tb_ROUND, Tb_K_1, Tb_K_2, Tb_K_3, Tb_K_4, Tb_K_5, Tb_K_6);
    Tb_KEY <= x"00010002000300040005000600070008";
   FSM: process
   begin
       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "0000";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "0001";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "0010";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "0011";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "0100";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/4;
       Tb_ROUND <= "0101";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "0110";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "0111";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "1000";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "1000";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "0000";

       Tb_Clk <= NOT Tb_Clk;
       wait for clk_period/2;
       Tb_ROUND <= "0010";

   end process FSM;
end Behavioral;
