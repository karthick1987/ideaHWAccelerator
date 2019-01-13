----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    roundcounter - Behavioral 
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

entity roundcounter is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           RESULT : in  STD_LOGIC;
           READY : out  STD_LOGIC;
           S_i : out  STD_LOGIC;
           INIT : out  STD_LOGIC;
           TRAFO : out  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0));
end roundcounter;

architecture Behavioral of roundcounter is
    type state_type is (SLEEP, SETUP, CALC);
    signal state : state_type;
    signal count : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');

begin
    ROUND <= count;
    fsm: process(CLK)
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
                    if RESULT = '0' then
                        state <= CALC;
                    elsif (RESULT = '1') and (count /= "1000") then
                        state <= SETUP;
                    else
                        state <= SLEEP;
                    end if;
						  
            end case;
				
        end if;
    end process fsm;

    outputs: process (CLK,state)
    begin
        if (CLK'EVENT and CLK='1') then
			  case state is
					when SLEEP =>
							  INIT <= '0';
							  READY <= '1';
							  if START = '1' then
									count <= "0000";
							  end if;
							  
					when SETUP =>
							  INIT <= '1';
							  READY <= '0';
							  count <= count + '1';

					when CALC =>
							  INIT <= '0';
							  
			  end case;
			end if;
    end process outputs;

end Behavioral;

