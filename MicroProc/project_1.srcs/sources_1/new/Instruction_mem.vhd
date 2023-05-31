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
           Alea: in std_logic;
           Vout : out STD_LOGIC_vector (31 downto 0));
end Instruction_mem;

architecture Behavioral of Instruction_mem is
type tab is array (0 to 255) of std_logic_vector(31 downto 0);
signal instruction_table  : tab := (x"00000000", others => x"00000000");
begin
--TESTS FOR FINAL PART
instruction_table(0) <= x"06050200"; --AFC R5 2, REG(5) WILL CONTAIN 2
instruction_table(1) <= x"06060A00"; --AFC R6 10, REG(6) WILL CONTAIN 10
instruction_table(2) <= x"01060506"; --ADD R6 R5 R6, REG(6) WILL CONTAIN 12
instruction_table(3) <= x"02070605"; --MUL R7 R6 R5, REG(7) WILL CONTAIN 2*12=24 
instruction_table(4) <= x"08000700"; --STORE 0 6, MEM(0) WILL CONTAIN the result of the mul !NOTE! WE STORE IN THE MEMORY BANK AND NOT THE REGISTER FILE

process 
begin
    wait until Clk'event and Clk = '1';
        if (Alea = '0') then
            Vout <= instruction_table(to_integer(unsigned(Add)));
        end if;
end process;
end Behavioral;
