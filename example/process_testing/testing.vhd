----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:14 01/14/2019 
-- Design Name: 
-- Module Name:    testing - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testing is
    Port (
             CLK : in  STD_LOGIC;
             START : in  STD_LOGIC;
             RESULT : in  STD_LOGIC;
             READY : out  STD_LOGIC;
             S_i : out  STD_LOGIC := '0';
             INIT : out  STD_LOGIC;
             TRAFO : out  STD_LOGIC;
             ROUND : out  STD_LOGIC_VECTOR (3 downto 0)
         );
end testing;

architecture Behavioral of testing is

    type state_type is (SLEEP, SETUP, CALC);
    signal state : state_type;
    signal count : STD_LOGIC_VECTOR (3 downto 0) := "1000";

begin

    fsm: process (CLK)
    begin
     		if (CLK'EVENT and CLK='1') then
				case state is
                when SLEEP =>
                    if START = '1' then
                        state <= SETUP;
                    else
                        state <= SLEEP;
                    end if;

                when SETUP =>
                    state <= CALC;

                when CALC =>
                    state <= SLEEP;
--                    if RESULT = '0' then
--                        state <= CALC;
--                    elsif (RESULT = '1') and (count /= "1000") then
--                        state <= SETUP;
--                    else
--                        state <= SLEEP;
--                    end if;
            end case;
        end if;
    end process fsm;

--    TRAFO <= count(3);
--    ROUND <= count;
--
    outputs: process (state)
    begin
        case state is
            when SLEEP =>
                INIT <= '0';
                READY <= '1';

            when SETUP =>
                INIT <= '1';
                READY <= '0';

            when CALC =>
                INIT <= '0';
                READY <= '0';
        end case;
    end process outputs;
--
--    counter: process (CLK)
--    begin
--        if (CLK'EVENT and CLK='1') then
--            case count is
--                when "1000"	=>
--                    if START = '1' then
--                        count <= "0000";
--                        S_i <= '1';
--                    end if;
--                when "0000"	=>
--                    if RESULT = '1' then
--                        count <= count + 1;
--                        S_i <= '0';
--                    end if;
--                when "0001"	=>
--                    S_i <= '0';
--                    if RESULT = '1' then
--                        count <= count + 1;
--                    end if;
--                when "0010"	=>
--                    S_i <= '0';
--                    if RESULT = '1' then
--                        count <= count + 1;
--                    end if;
--                when "0011"	=>
--                    S_i <= '0';
--                    if RESULT = '1' then
--                        count <= count + 1;
--                    end if;
--                when "0100"	=>
--                    S_i <= '0';
--                    if RESULT = '1' then
--                        count <= count + 1;
--                    end if;
--                when "0101"	=>
--                    S_i <= '0';
--                    if RESULT = '1' then
--                        count <= count + 1;
--                    end if;
--                when "0110"	=>
--                    S_i <= '0';
--                    if RESULT = '1' then
--                        count <= count + 1;
--                    end if;
--                when "0111"	=>
--                    S_i <= '0';
--                    if RESULT = '1' then
--                        count <= count + 1;
--                    end if;
--                when OTHERS =>
--                    S_i <= '0';
--                    count <= "1000";
--            end case;
--        end if;
--    end process counter;

end Behavioral;

