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
--TESTS FOR FINAL PART
reg_tab(0) <= x"06000500"; --AFC 0 5, REG(0) WILL CONTAIN 5
reg_tab(1) <= x"06010600"; --AFC 1 6, REG(1) WILL CONTAIN 6
reg_tab(2) <= x"01020001"; --ADD 2 0 1, REG(2) WILL CONTAIN 11
reg_tab(3) <= x"05030200"; --COP 3 2, REG(3) WILL CONTAIN 11
reg_tab(4) <= x"06050900"; --AFC 5 9, REG(5) WILL CONTAIN 9
reg_tab(5) <= x"08000500"; --STORE 0 5, MEM(0) WILL CONTAIN 9 !NOTE! WE STORE IN THE MEMORY BANK AND NOT THE REGISTER FILE
reg_tab(6) <= x"07040000"; --LOAD 4 0, REG(4) WILL CONTAIN 9  
reg_tab(7) <= x"02070001"; --MUL 7 0 1, REG(7) WILL CONTAIN 5*6=30 AKA 0X1E
reg_tab(8) <= x"03080305"; --SOU 8 3 5, REG(8) WILL CONTAIN 11-9=2
reg_tab(9) <= x"04090100"; --DIV 9 1 0, REG(9) WILL CONTAIN 6/2=3 !NOTE! THE LAST ARG IS USELESS, WE JUST DEVIDE BY 2 (LEFT SHIFT ONCE)
process 
begin
    wait until Clk'event and Clk = '1';
        Vout <= reg_tab(to_integer(unsigned(Add)));
end process;

end Behavioral;
