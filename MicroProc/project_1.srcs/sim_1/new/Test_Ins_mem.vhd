----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2023 13:09:17
-- Design Name: 
-- Module Name: Test_Ins_mem - Behavioral
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
use ieee.std_logic_arith;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_Ins_mem is
end Test_Ins_mem;

architecture Behavioral of Test_Ins_mem is
component Instruction_mem is
    port(Add : in STD_LOGIC_vector (7 downto 0);
         Clk : in STD_LOGIC;
         Vout : out STD_LOGIC_vector (31 downto 0));
end component;
--input signals
signal add : std_logic_vector(7 downto 0) := (others => '0');
signal Clk : std_logic := '0';
--output signals
signal vout : std_logic_vector(31 downto 0) := (others => '0');
--clock period
constant clk_period : time := 10 ns;
signal i : integer;
begin
uut : Instruction_mem port map (
    Add => Add,
    Clk => Clk,
    Vout => vout
);

clock : process
begin
    Clk <= not(Clk);
    wait for clk_period/2;
end process;

    add <= std_logic_vector(unsigned(add) + 1) after 10ns;
end Behavioral;
