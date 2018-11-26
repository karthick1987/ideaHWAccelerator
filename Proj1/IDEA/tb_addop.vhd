
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:01 11/26/2018 
-- Design Name: 
-- Module Name:    tb_addop - Behavioral 
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

entity tb_addop is
end tb_addop;

architecture Behavioral of tb_addop is

	constant c_WIDTH	 :		integer := 16;
	signal r_ADD_1  : std_logic_vector(c_WIDTH-1 downto 0) := (others => '0');
	signal r_ADD_2  : std_logic_vector(c_WIDTH-1 downto 0) := (others => '0');
	signal w_RESULT : std_logic_vector(c_WIDTH downto 0);
   
	-- Component Declaration for the Unit Under Test (UUT)
    COMPONENT addop
	 GENERIC(
		BIT_WIDTH	: natural
		);
    PORT(
			CLK,RST 	: 	in STD_LOGIC;
			I1  	: 	in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
			I2  	: 	in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
			O 		: 	out STD_LOGIC_VECTOR(BIT_WIDTH downto 0);
			cnt		:  out INTEGER);
    END COMPONENT addop;
    
   --Inputs
   --signal CLK,I1,I2 : std_logic := '0';

 	--Outputs
   --signal O : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
    signal Tb_cnt 	: integer := 0;
    signal Tb_Clk 	: std_logic := '0';
    signal Tb_Rst 	: std_logic := '1';
    constant  Tb_I1	: INTEGER := 313;
    constant Tb_I2	: INTEGER := 512;

	constant  Tb_I1_1	: INTEGER := 0;
	constant Tb_I2_2	: INTEGER := 4;
	
	-- Clk period
   constant clk_period : time := 10 ns;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: addop generic map (
		BIT_WIDTH	=> c_WIDTH 
	)
			port map(
			 CLK => Tb_Clk,
			 RST => Tb_Rst,
			 I1	=> r_ADD_1,
			 I2	=> r_ADD_2,
			 O		=> w_RESULT,
			 cnt	=> Tb_cnt
			 );
			 
   I_process : process
   BEGIN
       Tb_Clk <= '0';
			wait for clk_period/2;
            r_ADD_1 <= std_logic_vector(to_unsigned(Tb_I1,r_ADD_1'length));
            r_ADD_2 <= std_logic_vector(to_unsigned(Tb_I2,r_ADD_2'length));
       Tb_Clk <= '1';
			wait for clk_period/2;
            r_ADD_1 <= std_logic_vector(to_unsigned(Tb_I1_1,r_ADD_1'length));
            r_ADD_2 <= std_logic_vector(to_unsigned(Tb_I2_2,r_ADD_2'length));
   end process;
	
end Behavioral;
