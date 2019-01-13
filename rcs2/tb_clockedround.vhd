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

entity tb_clockedround is
end tb_clockedround;


architecture Behavioral of tb_clockedround is
    Component clockedround
        Port (
                 CLK : in  STD_LOGIC;
                 INIT : in  STD_LOGIC;
                 TRAFO : in STD_LOGIC;
                 X1 : in  STD_LOGIC_VECTOR (15 downto 0);
                 X2 : in  STD_LOGIC_VECTOR (15 downto 0);
                 X3 : in  STD_LOGIC_VECTOR (15 downto 0);
                 X4 : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z1 : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z2 : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z3 : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z4 : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z5 : in  STD_LOGIC_VECTOR (15 downto 0);
                 Z6 : in  STD_LOGIC_VECTOR (15 downto 0);
                 Y1 : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y2 : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y3 : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y4 : out  STD_LOGIC_VECTOR (15 downto 0);
                 RESULT : out STD_LOGIC;
                 Y1_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y2_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y3_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
                 Y4_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0)
             );
    end component clockedround;

    -- Input signals
    signal Tb_Clk   : STD_LOGIC := '0';
    signal Tb_INIT  : STD_LOGIC := '0';
    signal Tb_TRAFO : STD_LOGIC := '0';
    signal KEY      : STD_LOGIC_VECTOR (95 downto 0) := (OTHERS => '0');
    signal X        : STD_LOGIC_VECTOR (63 downto 0) := (OTHERS => '0');
    signal X1       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal X2       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal X3       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal X4       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Z1       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Z2       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Z3       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Z4       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Z5       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Z6       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');

    -- Output signals
    signal Y1       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Y2       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Y3       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Y4       : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Tb_RESULT: STD_LOGIC := '0';
    signal Y1_TRAFO : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0'); 
    signal Y2_TRAFO : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0'); 
    signal Y3_TRAFO : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
    signal Y4_TRAFO : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');

    constant clk_period : time := 10 ns;
    signal count    : integer := 0;

begin

	X1 <= X(63 downto 48);
	X2 <= X(47 downto 32);
	X3 <= X(31 downto 16);
	X4 <= X(15 downto 0);

	Z1 <= KEY(95 downto 80);
	Z2 <= KEY(79 downto 64);
	Z3 <= KEY(63 downto 48);
	Z4 <= KEY(47 downto 32);
	Z5 <= KEY(31 downto 16);
	Z6 <= KEY(15 downto 0);

    uut: clockedround port map (Tb_CLK, Tb_INIT, Tb_TRAFO, X1, X2, X3, X4, Z1, Z2, Z3, Z4, Z5, Z6, Y1, Y2, Y3, Y4, Tb_RESULT, Y1_TRAFO, Y2_TRAFO, Y3_TRAFO, Y4_TRAFO);
    FSM: process
    begin
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
			count <= count + 1;
		
		if count = 1 then
            Tb_INIT <= '1';
		end if;

		if count = 3 then
            Tb_INIT <= '0';
		end if;

		if count = 0 then
            X <= x"1111222244448888";
            KEY <= x"000100020003000400050006";
		end if;
		
		if count = 25 then
            Tb_INIT <= '1';
		end if;

		if count = 20 then
            X <= x"0001000200030004";
            KEY <= x"111122223333444455556666";
		end if;
		
		if count = 27 then
            Tb_INIT <= '0';
		end if;

--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '1';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--			X <= x"0000000100020003";
--			KEY <= x"00010002000300040005000600070008";
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '1';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '1';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--			X <= x"123456789ABCDEF0";
--			KEY <= x"11112222333344445555666677778888";
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '1';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '1';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';
--
--        Tb_Clk <= NOT Tb_Clk;
--        wait for clk_period/2;
--            Tb_INIT <= '0';

    end process FSM;
end Behavioral;
