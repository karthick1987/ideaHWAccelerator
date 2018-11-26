----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:53 11/26/2018 
-- Design Name: 
-- Module Name:    xorop - Behavioral 
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

entity xorop is
	Generic(
		constant BIT_WIDTH: integer := 16);
    Port (
		CLK,RST : in STD_LOGIC;
		I1 : in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
		I2 : in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
		O : out STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0) );
end xorop;

architecture Behavioral of xorop is

begin
XR: process (CLK,RST)
	begin
		if (CLK'event and CLK = '1') then
			O <= I1 XOR I2;
		end if;	
	end process XR;

end Behavioral;

