---------------------------------------------------------------------------------
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
    Port (
             CLK : in  STD_LOGIC;
             INIT : in  STD_LOGIC;
             TRAFO : in STD_LOGIC;
             EN125 : out  STD_LOGIC;
             EN346 : out  STD_LOGIC;
             EN78 : out  STD_LOGIC;
             RESULT : out  STD_LOGIC;
             S : out  STD_LOGIC_VECTOR(1 downto 0);
             S_T: out STD_LOGIC_VECTOR(1 downto 0)
       );
end control;

architecture Behavioral of control is
    signal state : unsigned(2 downto 0) := "111";
begin

    fsm:process(CLK)
    begin
        if (CLK'EVENT and CLK = '1') then
            case state is
                when "000"  =>      
                            state <= "001";
                            RESULT <= '0';
                            EN125 <= '0';
                            EN346 <= '0';
                            EN78 <= '0';
                            S <= "00";
                            if TRAFO = '0' then
                                S_T <= "00";
                            else
                                S_T <= "01";
                            end if;

                when "001"  =>      
                            state <= "010";
                            RESULT <= '0';
                            EN125 <= '0';
                            EN346 <= '1';
                            EN78 <= '0';
                            S <= "01";
                            if TRAFO = '0' then
                                S_T <= "01";
                            else
                                S_T <= "00";
                            end if;

                when "010"  =>      
                            state <= "011";
                            RESULT <= '0';
                            S <= "01";
                            EN125 <= '0';
                            EN346 <= '0';
                            EN78 <= '0';
                            if TRAFO = '0' then
                                S_T <= "01";
                            else
                                S_T <= "00";
                            end if;
                when "011"  =>      
                            if TRAFO = '0' then
                                RESULT <= '0';
                                EN125 <= '0';
                                EN346 <= '0';
                                EN78 <= '1';
                                S <= "10";
                                S_T <= "10";
                                state <= "100";
                            else
                                RESULT <= '1';
                                EN125 <= '0';
                                EN346 <= '0';
                                EN78 <= '0';
                                S <= "11";
                                S_T <= "10";
                                state <= "110";
                            end if;
                when "100"  =>      
                            state <= "101";
                            RESULT <= '0';
                            S <= "10";
                            S_T <= "10";
                            EN125 <= '0';
                            EN346 <= '0';
                            EN78 <= '0';
                when "101"  =>      
                            state <= "110";
                            RESULT <= '1';
                            S <= "11";
                            EN125 <= '0';
                            EN346 <= '0';
                            EN78 <= '0';
                            if TRAFO = '0' then
                                S_T <= "11";
                            else
                                S_T <= "10";
                            end if;
                when "110"  =>      
                            state <= "111";
                            RESULT <= '0';
                            S <= "11";
                            EN125 <= '0';
                            EN346 <= '0';
                            EN78 <= '0';
                            if TRAFO = '0' then
                                S_T <= "11";
                            else
                                S_T <= "10";
                            end if;
                when "111"  =>      
                                if (INIT = '1') then
                                    state <= "000";
                                    RESULT <= '0';
                                    EN125 <= '1';
                                    EN346 <= '0';
                                    EN78 <= '0';
                                    S <= "00";
                                    if TRAFO = '0' then
                                        S_T <= "00";
                                    else
                                        S_T <= "01";
                                    end if;
                                else
                                    state <= "111";
                                    RESULT <= '0';
                                    EN125 <= '0';
                                    EN346 <= '0';
                                    EN78 <= '0';
                                    S <= "11";
                                    if TRAFO = '0' then
                                        S_T <= "11";
                                    else
                                        S_T <= "10";
                                    end if;
                                end if;
                when others =>
                                    state <= "111";
                                    RESULT <= '0';
                                    S <= "11";
                                    S_T <= "00";
                                    EN125 <= '0';
                                    EN346 <= '0';
                                    EN78 <= '0';

            end case;
        end if;
    end process fsm;
end Behavioral;

