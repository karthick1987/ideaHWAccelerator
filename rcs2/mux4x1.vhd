
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

entity mux4x1 is
    Port (
             S  : in STD_LOGIC_VECTOR (1 downto 0);
             D0 : in  STD_LOGIC_VECTOR (15 downto 0);
             D1 : in  STD_LOGIC_VECTOR (15 downto 0);
             D2 : in  STD_LOGIC_VECTOR (15 downto 0);
             D3 : in  STD_LOGIC_VECTOR (15 downto 0);
             O  : out STD_LOGIC_VECTOR (15 downto 0)
         );
end mux4x1;

architecture Structural of mux4x1 is

begin
    mux:process (S, D0, D1)
    begin
        if (S = "00") then
            O <= D0;
        elsif (S = "01") then
            O <= D1;
        elsif (S = "10") then
            O <= D2;
        else
            O <= D3;
        end if;
    end process mux;
end Structural;
