----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:44:25 11/26/2018 
-- Design Name: 
-- Module Name:    tb_round - Behavioral 
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

entity tb_round is
end tb_round;

architecture Behavioral of tb_round is

    constant c_WIDTH    :  integer := 16;
    signal Xin  : std_logic_vector(4*c_WIDTH - 1 downto 0) := (others => '0');
    signal Zin  : std_logic_vector(6*c_WIDTH - 1 downto 0) := (others => '0');
    signal Yout : std_logic_vector(4*c_WIDTH - 1 downto 0) := (others => '0');

    COMPONENT round
    Generic(
               NIBBLE_BITS : natural
           );
    Port (
             X1 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             X2 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             X3 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             X4 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z1 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z2 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z3 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z4 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z5 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Z6 : in     STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Y1 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Y2 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Y3 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0);
             Y4 : out    STD_LOGIC_VECTOR( NIBBLE_BITS - 1 downto 0)
         );
    END COMPONENT round;

    signal Tb_Clk       : STD_LOGIC := '0';

    signal I_X1 : STD_LOGIC_VECTOR( c_WIDTH - 1 downto 0) := (others => '0');
    signal I_X2 : STD_LOGIC_VECTOR( c_WIDTH - 1 downto 0) := (others => '0');
    signal I_X3 : STD_LOGIC_VECTOR( c_WIDTH - 1 downto 0) := (others => '0');
    signal I_X4 : STD_LOGIC_VECTOR( c_WIDTH - 1 downto 0) := (others => '0');
    signal I_Z1 : STD_LOGIC_VECTOR( c_WIDTH - 1 downto 0) := (others => '0');
    signal I_Z2 : STD_LOGIC_VECTOR( c_WIDTH - 1 downto 0) := (others => '0');
    signal I_Z3 : STD_LOGIC_VECTOR( c_WIDTH - 1 downto 0) := (others => '0');
    signal I_Z4 : STD_LOGIC_VECTOR( c_WIDTH - 1 downto 0) := (others => '0');
    signal I_Z5 : STD_LOGIC_VECTOR( c_WIDTH - 1 downto 0) := (others => '0');
    signal I_Z6 : STD_LOGIC_VECTOR( c_WIDTH - 1 downto 0) := (others => '0');

   -- Clk period
    constant clk_period : time := 10 ns;

begin

    I_X1 <= Xin( 63 downto 48 );
    I_X2 <= Xin( 47 downto 32 );
    I_X3 <= Xin( 31 downto 16 );
    I_X4 <= Xin( 15 downto 0 );
    I_Z1 <= Zin( 95 downto 80 );
    I_Z2 <= Zin( 79 downto 64 );
    I_Z3 <= Zin( 63 downto 48 );
    I_Z4 <= Zin( 47 downto 32 );
    I_Z5 <= Zin( 31 downto 16 );
    I_Z6 <= Zin( 15 downto 0 );

   -- Instantiate the Unit Under Test (UUT)
    uut: round  generic map(c_WIDTH) 
                port map( 
                            I_X1, I_X2, I_X3, I_X4,
                            I_Z1, I_Z2, I_Z3, I_Z4, I_Z5, I_Z6,
                            Yout(63 downto 48), Yout(47 downto 32) , Yout(31 downto 16), Yout(15 downto 0)
                        );
    Pro_round: process
    begin

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"0000000000000000";
            Zin <= x"000000000000000000000000";
        
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffff000000000000";
            Zin <= x"000000000000000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa00000000";
            Zin <= x"000000000000000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55550000";
            Zin <= x"000000000000000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"000000000000000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"db6d00000000000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"db6d1c710000000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"db6d1c71cccc000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"db6d1c71cccc000200000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"db6d1c71cccc0002eeee0000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"db6d1c71cccc0002eeee8888";
    end process Pro_round;

end Behavioral;

