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
instruction_table(0) <= x"06050200"; --AFC R5 10, REG(5) WILL CONTAIN 2
instruction_table(1) <= x"06060A00"; --AFC R6 2, REG(6) WILL CONTAIN 10
instruction_table(2) <= x"01060506"; --ADD R6 R5 R6, REG(6) WILL CONTAIN 12
instruction_table(3) <= x"02070605"; --MUL R7 R6 R5, REG(7) WILL CONTAIN 2*10=20 AKA 0X1E

--instruction_table(2) <= x"08010600"; --AFC 1 6, REG(1) WILL CONTAIN 6
--instruction_table(3) <= x"05030200"; --COP 3 2, REG(3) WILL CONTAIN 11
--instruction_table(5) <= x"08000500"; --STORE 0 5, MEM(0) WILL CONTAIN 9 !NOTE! WE STORE IN THE MEMORY BANK AND NOT THE REGISTER FILE
--instruction_table(6) <= x"07040000"; --LOAD 4 0, REG(4) WILL CONTAIN 9  
--instruction_table(7) <= x"02070001"; --MUL 7 0 1, REG(7) WILL CONTAIN 5*6=30 AKA 0X1E
--instruction_table(8) <= x"03080305"; --SOU 8 3 5, REG(8) WILL CONTAIN 11-9=2
--instruction_table(9) <= x"04090100"; --DIV 9 1 0, REG(9) WILL CONTAIN 6/2=3 !NOTE! THE LAST ARG IS USELESS, WE JUST DEVIDE BY 2 (LEFT SHIFT ONCE)

--instruction_table(10) <= x"06000500"; --AFC 0 5, REG(0) WILL CONTAIN 5
--instruction_table(11) <= x"06010600"; --AFC 1 6, REG(1) WILL CONTAIN 6
--instruction_table(12) <= x"01020001"; --ADD 2 0 1, REG(2) WILL CONTAIN 11 we read REG(1) and REG(2)
--instruction_table(13) <= x"01030200"; --ADD 3 2 0 -- We need the result of the first ADD so the flag alea will be at '1'
--instruction_table(14) <= x"01040100"; --ADD 4 1 0 -- we need the result of the first add so the flag will be at a cause by li_di and exmem pipes
process 
begin
    wait until Clk'event and Clk = '1';
        if (Alea = '0') then
            Vout <= instruction_table(to_integer(unsigned(Add)));
        end if;
end process;
end Behavioral;
