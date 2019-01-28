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

entity tb_idea_rcs2plus is
end tb_idea_rcs2plus;


architecture Behavioral of tb_idea_rcs2plus is
    Component idea_rcs2plus
        Port (
                 CLOCK : in  STD_LOGIC;
                 START : in  STD_LOGIC;
                 KEY : in  STD_LOGIC_VECTOR (127 downto 0);
                 X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
                 X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
                 X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
                 X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
                 Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y_4 : out  STD_LOGIC_VECTOR (15 downto 0);
                 READY : out  STD_LOGIC
             );
    end component idea_rcs2plus;

    -- Input signals
    signal Tb_Clk   : STD_LOGIC := '0';
    signal Tb_START : STD_LOGIC := '0';
    signal KEY      : STD_LOGIC_VECTOR (127 downto 0) := (OTHERS => '0');
    signal X        : STD_LOGIC_VECTOR (63 downto 0) := (OTHERS => '0');
    signal X_1      : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal X_2      : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal X_3      : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal X_4      : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');

    -- Output signals
    signal Y_1      : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Y_2      : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Y_3      : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Y_4      : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');

    constant clk_period : time := 10 ns;
    signal count    : integer := 0;
    signal READY    : STD_LOGIC := '0';

begin

    X_1 <= X(63 downto 48);
    X_2 <= X(47 downto 32);
    X_3 <= X(31 downto 16);
    X_4 <= X(15 downto 0);

    uut: idea_rcs2plus port map ( Tb_Clk, Tb_START, KEY, X_1, X_2, X_3, X_4, Y_1, Y_2, Y_3, Y_4, READY );
    FSM: process
    begin
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
        count <= count + 1;

        if count = 1 then
            Tb_START <= '1';
        end if;

        if count = 3 then
            Tb_START <= '0';
        end if;

        if count = 0 then
            X <= x"1111222244448888";
            KEY <= x"00010002000300040005000600070008";
        end if;

--        if count = 6 then
--            Tb_START <= '1';
--        end if;
--
--        if count = 10 then
--            Tb_START <= '0';
--        end if;

        if count = 197 then
             X <= x"107745218e378e0d";
             KEY <= x"000700080400060008000a0000010002";
            Tb_START <= '1';
         end if;

        if count = 200 then
            Tb_START <= '0';
        end if;

    end process FSM;
end Behavioral;
