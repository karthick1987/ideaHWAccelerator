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

entity tb_control is
end tb_control;


architecture Behavioral of tb_control is
    Component control
    Port ( 
             CLK : in  STD_LOGIC;
             START : in  STD_LOGIC;
             ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
             READY : out  STD_LOGIC;
             EN : out  STD_LOGIC;
             S : out  STD_LOGIC
         );
end component control;

    signal Tb_Clk       : STD_LOGIC := '0';
    constant clk_period : time := 10 ns;
    signal Tb_START : STD_LOGIC := '0';
    signal Tb_ROUND : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
    signal Tb_READY : STD_LOGIC := '0';
    signal Tb_EN : STD_LOGIC := '0';
    signal Tb_S : STD_LOGIC := '0';

begin
    
    uut: control port map (Tb_Clk, Tb_START, Tb_ROUND, Tb_READY, Tb_EN, Tb_S);
    FSM: process
    begin
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '1';

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '1';

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '0';
				
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '0';

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '0';
				
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '0';

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '0';
				
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '0';

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '0';
				
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '0';

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '0';
				
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Tb_START <= '0';
				
    end process FSM;
end Behavioral;
