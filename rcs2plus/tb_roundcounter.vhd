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

entity tb_roundcounter is
    end tb_roundcounter;


architecture Behavioral of tb_roundcounter is
    Component roundcounter
        Port (
                 CLK : in  STD_LOGIC;
                 START : in  STD_LOGIC;
                 RESULT : in  STD_LOGIC;
                 READY : out  STD_LOGIC;
                 S_i : out  STD_LOGIC;
                 INIT : out  STD_LOGIC;
                 TRAFO : out  STD_LOGIC;
                 ROUND : out  STD_LOGIC_VECTOR (3 downto 0)
             );
    end component roundcounter;

    -- Input signals
    signal Tb_Clk       : STD_LOGIC := '0';
    signal Tb_START     : STD_LOGIC := '0';
    signal Tb_RESULT    : STD_LOGIC := '0';

    -- Output signals
    signal Tb_READY     : STD_LOGIC := '0';
    signal Tb_Si        : STD_LOGIC := '0';
    signal Tb_INIT      : STD_LOGIC := '0';
    signal Tb_TRAFO     : STD_LOGIC := '0';
    signal Tb_ROUND     : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    constant clk_period : time := 10 ns;
    signal Clk_count    : integer := 0;

begin

    uut: roundcounter port map (Tb_CLK, Tb_START, Tb_RESULT, Tb_READY, Tb_Si, Tb_INIT, Tb_TRAFO, Tb_ROUND);
    FSM: process
        begin
            Tb_Clk <= NOT Tb_Clk;
            wait for clk_period/2;
            Clk_count <= Clk_count + 1;

            if Clk_count = 1 then
                Tb_START <= '1';
            end if;

            if Clk_count = 3 then
                Tb_START <= '0';
            end if;

            if Clk_count = 14 then
                Tb_RESULT <= '1';
            end if;

            if Clk_count = 18 then
                Tb_RESULT <= '1';
            end if;

            if Clk_count = 25 then
                Tb_START <= '1';
            end if;

            if Clk_count = 27 then
                Tb_START <= '0';
            end if;

            if Clk_count = 50 then
                Tb_Start <= '1';
            end if;

    end process FSM;
end Behavioral;
