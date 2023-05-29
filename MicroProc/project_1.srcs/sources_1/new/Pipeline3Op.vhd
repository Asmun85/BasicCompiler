----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2023 14:08:29
-- Design Name: 
-- Module Name: Pipeline3Op - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pipeline3Op is
    Port ( clk    : in std_logic;
           in_A   : in STD_LOGIC_vector(7 downto 0);
           in_B   : in STD_LOGIC_vector(7 downto 0);
           in_OP  : in STD_LOGIC_vector(7 downto 0);
           out_A  : out STD_LOGIC_vector(7 downto 0);
           out_B  : out STD_LOGIC_vector(7 downto 0);
           out_OP : out STD_LOGIC_vector(7 downto 0));
end Pipeline3Op;

architecture Behavioral of Pipeline3Op is

begin
    out_A <= in_A;
    out_OP <= in_OP;
    out_B <= in_B;
end Behavioral;
