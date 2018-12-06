
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_single - Structural 
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

entity mux2x1 is
    Port (
             S   : in  STD_LOGIC;
             D0 : in  STD_LOGIC_VECTOR (15 downto 0);
             D1 : in  STD_LOGIC_VECTOR (15 downto 0);
             O  : out STD_LOGIC_VECTOR (15 downto 0)
         );
end mux2x1;

architecture Structural of mux2x1 is

begin
    mux:process (S, D0, D1)
    begin
        if (S = '1') then
            O <= D1;
        else
            O <= D0;
        end if;
    end process mux;
end Structural;
