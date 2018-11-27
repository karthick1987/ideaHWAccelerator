----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:20 11/26/2018 
-- Design Name: 
-- Module Name:    mulop - Behavioral 
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mulop is
    Generic(
               constant BIT_WIDTH: integer := 16);
    Port (
             I1 : in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
             I2 : in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
             O : out STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0)
         );
end mulop;

architecture Behavioral of mulop is
    signal a            : STD_LOGIC_VECTOR(BIT_WIDTH downto 0);
    signal b            : STD_LOGIC_VECTOR(BIT_WIDTH downto 0);
    signal ab           : STD_LOGIC_VECTOR(2*BIT_WIDTH + 1 downto 0);
    -- The intermediate values
    signal divident     : STD_LOGIC_VECTOR(BIT_WIDTH downto 0) := (others => '0');
    signal modulo       : STD_LOGIC_VECTOR(BIT_WIDTH downto 0) := (others => '0');
    signal ans          : STD_LOGIC_VECTOR(BIT_WIDTH downto 0) := (others => '0');

    -- This is 2^16
    constant max        : STD_LOGIC_VECTOR(BIT_WIDTH downto 0) := '1' & X"0000";

begin
    MULOP: process(I1,I2,a,b,ab,modulo,divident,ans)
    begin
        if I1 = (I1'range => '0') then
            a <= max;
        else
            a(16) <= '0';
            a(15 downto 0) <= I1;
        end if;

        if I2 = (I2'range => '0') then
            b <= max;
        else
            b(16) <= '0';
            b(15 downto 0) <= I2;
        end if;

        ab <= a*b;
        divident <= ab(2*BIT_WIDTH downto BIT_WIDTH);
        modulo <= '0' & ab(BIT_WIDTH - 1 downto 0);

        if ( modulo >= divident ) then
            ans <= modulo - divident;
        else
            ans <= (max + 1 + modulo) - divident;
        end if;
        O <= ans(BIT_WIDTH - 1 downto 0);
    end process MULOP;
end Behavioral;
