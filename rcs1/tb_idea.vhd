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

entity tb_idea is
end tb_idea;


architecture Behavioral of tb_idea is
    Component idea_single
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
end component idea_single;

    constant clk_period : time := 10 ns;
    
	signal count	: integer := 0;
    signal Tb_Clk   : STD_LOGIC := '0';
    signal Tb_START : STD_LOGIC := '0';
    signal KEY      : STD_LOGIC_VECTOR (127 downto 0) := (OTHERS => '0');
    signal Tb_READY : STD_LOGIC := '0';
    
    signal X        : STD_LOGIC_VECTOR (63 downto 0) := (OTHERS => '0');

    signal X1       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal X2       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal X3       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal X4       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');

    signal Y1       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Y2       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Y3       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Y4       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
begin

	X1 <= X(63 downto 48);
	X2 <= X(47 downto 32);
	X3 <= X(31 downto 16);
	X4 <= X(15 downto 0);

    uut: idea_single port map (Tb_Clk, Tb_START, KEY, X1, X2, X3, X4, Y1, Y2, Y3, Y4, Tb_READY);
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
		
		if count = 25 then
            Tb_START <= '1';
		end if;

		if count = 20 then
            X <= x"0001000200030004";
            KEY <= x"11112222333344445555666677778888";
		end if;
		
		if count = 27 then
            Tb_START <= '0';
		end if;

--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '1';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--			X <= x"0000000100020003";
--			KEY <= x"00010002000300040005000600070008";
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '1';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '1';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--			X <= x"123456789ABCDEF0";
--			KEY <= x"11112222333344445555666677778888";
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '1';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '1';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_START <= '0';

    end process FSM;
end Behavioral;
