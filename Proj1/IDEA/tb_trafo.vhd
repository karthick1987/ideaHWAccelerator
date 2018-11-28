----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:06 11/26/2018 
-- Design Name: 
-- Module Name:    tb_trafo - Behavioral 
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

entity tb_trafo is
end tb_trafo;

architecture Behavioral of tb_trafo is

    signal Xin  : std_logic_vector(63 downto 0) := (others => '0');
    signal Zin  : std_logic_vector(63 downto 0) := (others => '0');
    signal Yout : std_logic_vector(63 downto 0) := (others => '0');

    COMPONENT trafo
            Port (
             X1 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X2 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X3 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             X4 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Z1 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Z2 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Z3 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Z4 : in     STD_LOGIC_VECTOR( 15 downto 0 );
             Y1 : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y2 : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y3 : out    STD_LOGIC_VECTOR( 15 downto 0 );
             Y4 : out    STD_LOGIC_VECTOR( 15 downto 0 )
            );
    end component trafo;

    signal Tb_Clk       : STD_LOGIC := '0';

    signal X1 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');
    signal X2 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');
    signal X3 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');
    signal X4 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');
    signal Z1 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');
    signal Z2 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');
    signal Z3 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');
    signal Z4 : STD_LOGIC_VECTOR( 15 downto 0) := (others => '0');

   -- Clk period
    constant clk_period : time := 10 ns;

begin

    X1 <= Xin( 63 downto 48 );
    X2 <= Xin( 47 downto 32 );
    X3 <= Xin( 31 downto 16 );
    X4 <= Xin( 15 downto 0 );
    Z1 <= Zin( 63 downto 48 );
    Z2 <= Zin( 47 downto 32 );
    Z3 <= Zin( 31 downto 16 );
    Z4 <= Zin( 15 downto 0 );

   -- Instantiate the Unit Under Test (UUT)
    uut: trafo port map(X1,X2,X3,X4,Z1,Z2,Z3,Z4,
                        Yout(63 downto 48), Yout(47 downto 32) , Yout(31 downto 16), Yout(15 downto 0));

    Tra:process
    begin
        
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"0000000000000000";
            Zin <= x"0000000000000000";
        
        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffff000000000000";
            Zin <= x"0000000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa00000000";
            Zin <= x"0000000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55550000";
            Zin <= x"0000000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"0000000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"db6d000000000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"db6d1c7100000000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"db6d1c71cccc0000";

        Tb_Clk <= NOT Tb_Clk;
        wait for clk_period/2;
            Xin <= x"ffffaaaa55552492";
            Zin <= x"db6d1c71cccc0002";
    end process Tra;
end Behavioral;

