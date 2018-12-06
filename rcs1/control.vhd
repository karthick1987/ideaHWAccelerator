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

entity control is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
           READY : out  STD_LOGIC;
           EN : out  STD_LOGIC;
           S : out  STD_LOGIC);
end control;

architecture Behavioral of control is
    signal state : unsigned(3 downto 0) := "1000";
begin
    ROUND <= std_logic_vector(state);

    fsm:process(CLK)
    begin
        if (CLK'EVENT and CLK = '1') then
            --if (state = "1000") then
            --    state <= "0000";
            --end if;
            case state is
                when "0000" =>      state <= "0001";
                                    READY <= '0';
                                    S <= '1';
                                    EN <= '1';

                when "0001" =>
                                    state <= "0010";
                                    READY <= '0';
                                    S <= '1';
                                    EN <= '1';
                when "0010" => 
                                    state <= "0011";
                                    READY <= '0';
                                    S <= '1';
                                    EN <= '1';
                when "0011" => 
                                    state <= "0100";
                                    READY <= '0';
                                    S <= '1';
                                    EN <= '1';
                when "0100" => 
                                    state <= "0101";
                                    READY <= '0';
                                    S <= '1';
                                    EN <= '1';
                when "0101" => 
                                    state <= "0110";
                                    READY <= '0';
                                    S <= '1';
                                    EN <= '1';
                when "0110" => 
                                    state <= "0111";
                                    READY <= '0';
                                    S <= '1';
                                    EN <= '1';
                when "0111" => 
                                    state <= "1000";
                                    READY <= '1';
                                    S <= '1';
                                    EN <= '0';
                when "1000" =>
                                if (start = '1') then
                                    state <= "0000";
                                    READY <= '0';
                                    S <= '0';
                                    EN <= '1';
                                else
                                    state <= "1000";
                                    READY <= '1';
                                    S <= '1';
                                    EN <= '0';
                                end if;
                when others =>
                                    state <= "0000";
                                    READY <= '0';
                                    S <= '0';
                                    EN <= '0';
            end case;
        end if;
    end process fsm;
end Behavioral;
