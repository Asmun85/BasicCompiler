----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2023 13:59:21
-- Design Name: 
-- Module Name: Pipline4op - Behavioral
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

entity Pipline4op is
    Port ( Clk    : in std_logic;
           in_A   : in STD_LOGIC_vector(7 downto 0);
           In_OP  : in STD_LOGIC_vector(7 downto 0);
           In_B   : in STD_LOGIC_vector(7 downto 0);
           in_C   : in STD_LOGIC_vector(7 downto 0);
           out_A  : out STD_LOGIC_vector(7 downto 0);
           out_OP : out STD_LOGIC_vector(7 downto 0);
           out_B  : out STD_LOGIC_vector(7 downto 0);
           Out_C  : out STD_LOGIC_vector(7 downto 0));
end Pipline4op;

architecture Behavioral of Pipline4op is

begin
process(clk)
begin
    out_A <= in_A;
    out_OP <= in_OP;
    out_B <= in_B;
    out_C <= in_C;
end process; 

end Behavioral;
