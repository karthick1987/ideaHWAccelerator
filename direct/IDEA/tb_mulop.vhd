----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:34 11/26/2018 
-- Design Name: 
-- Module Name:    tb_mulop - Behavioral 
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

entity tb_mulop is
end tb_mulop;

architecture Behavioral of tb_mulop is

    constant c_WIDTH	 :		integer := 16;
    signal r_MUL_1  : std_logic_vector(c_WIDTH - 1 downto 0) := (others => '0');
    signal r_MUL_2  : std_logic_vector(c_WIDTH - 1 downto 0) := (others => '0');
    signal w_RESULT : std_logic_vector(c_WIDTH - 1 downto 0);

    COMPONENT mulop
        GENERIC(
                    BIT_WIDTH   : natural
               );
        PORT(
             I1 : in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
             I2 : in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
             O : out STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0)
            );
    END COMPONENT mulop;

    signal Tb_Clk       : STD_LOGIC := '0';
    constant Tb_I1      : STD_LOGIC_VECTOR(c_WIDTH - 1 downto 0) := x"0000";
    constant Tb_I2      : STD_LOGIC_VECTOR(c_WIDTH - 1 downto 0) := x"0000";
    constant Tb_I1_1    : STD_LOGIC_VECTOR(c_WIDTH - 1 downto 0) := x"0000";
    constant Tb_I2_2    : STD_LOGIC_VECTOR(c_WIDTH - 1 downto 0) := x"0001";

   -- Clk period
    constant clk_period : time := 10 ns;
begin

   -- Instantiate the Unit Under Test (UUT)
    uut: mulop generic map (
                               BIT_WIDTH	=> c_WIDTH
                           )
    port map(
                I1  => r_MUL_1,
                I2  => r_MUL_2,
                O   => w_RESULT);

    M_process : process
    begin
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= Tb_I1;
            r_MUL_2 <= Tb_I2;
        
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= Tb_I1_1;
            r_MUL_2 <= Tb_I2_2;

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= x"0001";
            r_MUL_2 <= x"0001";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= x"0003";
            r_MUL_2 <= x"0001";
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= x"0003";
            r_MUL_2 <= x"0003";
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= x"7fff";
            r_MUL_2 <= x"0003";
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= x"7fff";
            r_MUL_2 <= x"7fff";
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= x"ffff";
            r_MUL_2 <= x"7fff";
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= x"ffff";
            r_MUL_2 <= x"ffff";
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= x"ffff";
            r_MUL_2 <= x"8000";
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            r_MUL_1 <= x"8000";
            r_MUL_2 <= x"8000";
    end process M_process;
end Behavioral;

