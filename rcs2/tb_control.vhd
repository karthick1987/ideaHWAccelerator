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
             INIT : in  STD_LOGIC;
             TRAFO : in STD_LOGIC;
             EN125 : out  STD_LOGIC;
             EN346 : out  STD_LOGIC;
             EN78 : out  STD_LOGIC;
             RESULT : out  STD_LOGIC;
             S : out  STD_LOGIC_VECTOR(1 downto 0);
             S_T: out STD_LOGIC_VECTOR(1 downto 0)
         );
end component control;

    signal Tb_Clk       : STD_LOGIC := '0';
    signal Tb_INIT      : STD_LOGIC := '0';
    signal Tb_EN125     : STD_LOGIC := '0';
    signal Tb_EN346     : STD_LOGIC := '0';
    signal Tb_EN78      : STD_LOGIC := '0';
    signal Tb_RESULT    : STD_LOGIC := '0';
    signal Tb_S         : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal Tb_ST        : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal Tb_TRAFO     : STD_LOGIC := '0';

    constant clk_period : time := 10 ns;
    signal count    : integer := 0;
begin

    uut: control port map (Tb_Clk, Tb_INIT, Tb_TRAFO, Tb_EN125, Tb_EN346, Tb_EN78, Tb_RESULT, Tb_S, Tb_ST);
    FSM: process
    begin
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            count <= count + 1;

        if count = 05 then
            Tb_INIT <= '1';
            Tb_TRAFO <= '1';
        end if;

        if count = 9 then
            Tb_INIT <= '0';
        end if;

        if count = 40 then
            Tb_INIT <= '1';
            Tb_TRAFO <= '0';
        end if;
			
        if count = 80 then
            Tb_INIT <= '0';
            Tb_TRAFO <= '0';
        end if;

    end process FSM;
end Behavioral;
