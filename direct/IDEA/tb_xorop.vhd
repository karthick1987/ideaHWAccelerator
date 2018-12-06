----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:42:47 11/26/2018 
-- Design Name: 
-- Module Name:    tb_xorop - Behavioral 
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

entity tb_xorop is
    end tb_xorop;

architecture Behavioral of tb_xorop is

    constant c_WIDTH	 :		integer := 16;
    signal r_XOR_1  : std_logic_vector(c_WIDTH-1 downto 0) := (others => '0');
    signal r_XOR_2  : std_logic_vector(c_WIDTH-1 downto 0) := (others => '0');
    signal w_RESULT : std_logic_vector(c_WIDTH-1 downto 0);

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT xorop
        GENERIC(
                   BIT_WIDTH	: natural
               );
        PORT(
                I1  	: 	in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
                I2  	: 	in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
                O 		: 	out STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0));
    END COMPONENT xorop;

     --Inputs
     --signal CLK,I1,I2 : std_logic := '0';

     --Outputs
     --signal O : std_logic;
     -- No clocks detected in port list. Replace <clock> below with 
     -- appropriate port name 

    signal Tb_Clk      : std_logic := '0';
    constant  Tb_I1	: STD_LOGIC_VECTOR(c_WIDTH - 1 downto 0) := x"0F0F";
    constant Tb_I2	: STD_LOGIC_VECTOR(c_WIDTH - 1 downto 0) := x"FFFF";

    constant  Tb_I1_1	: STD_LOGIC_VECTOR(c_WIDTH - 1 downto 0) := x"AAAA";
    constant Tb_I2_2	: STD_LOGIC_VECTOR(c_WIDTH - 1 downto 0) := x"5555";

   -- Clk period
    constant clk_period : time := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
    uut: xorop generic map(
                               BIT_WIDTH	=> c_WIDTH)
    port map(
                I1	=> r_XOR_1,
                I2	=> r_XOR_2,
                O		=> w_RESULT);

    I_process : process
    BEGIN
        Tb_Clk <= '0';
        wait for clk_period/2;
        r_XOR_1 <= Tb_I1;
        r_XOR_2 <= Tb_I2;
        Tb_Clk <= '1';
        wait for clk_period/2;
        r_XOR_1 <= Tb_I1_1;
        r_XOR_2 <= Tb_I2_2;
    end process;


end Behavioral;

