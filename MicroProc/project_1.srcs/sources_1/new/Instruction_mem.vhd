----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2023 08:16:08
-- Design Name: 
-- Module Name: Instruction_mem - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instruction_mem is
    Port ( Add : in STD_LOGIC_vector (7 downto 0);
           Clk : in STD_LOGIC;
           Vout : out STD_LOGIC_vector (31 downto 0));
end Instruction_mem;

architecture Behavioral of Instruction_mem is
type tab is array (0 to 255) of std_logic_vector(31 downto 0);
signal reg_tab  : tab := (x"00000000", others => x"00000000");


begin
reg_tab(0)  <= x"FF00FF00";
reg_tab(2)  <= x"AA605400";
reg_tab(3)  <= x"06060606";
reg_tab(4)  <= x"AA00AA00";

process 
begin
    wait until Clk'event and Clk = '1';
    Vout <= reg_tab(to_integer(unsigned(Add)));
end process;

end Behavioral;
