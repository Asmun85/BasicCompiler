----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2023 12:01:15
-- Design Name: 
-- Module Name: Test_ALU - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_ALU is
end Test_Alu;

architecture Behavioral of Test_ALU is
COMPONENT ALU 
    Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
       B : in STD_LOGIC_VECTOR (7 downto 0);
       Ctrl_Alu : in STD_LOGIC_vector(2 downto 0);--Which operation (+,-,*,/)
       N,O,Z,C : out STD_LOGIC; --Neg(N),Over_flow(O),Zero(Z),Carry(C)
       S : out STD_LOGIC_VECTOR(7 downto 0));
end COMPONENT;
--intput signals 
signal A : std_logic_vector(7 downto 0) := (others => '0');
signal B : std_logic_vector(7 downto 0) := (others => '0');
signal Ctrl_Alu : STD_LOGIC_vector(2 downto 0) := (others => '0');
--output signals
signal S : std_logic_vector(7 downto 0) := (others => '0');
signal N,O,Z,C : STD_LOGIC;

signal i:integer;

begin
  uut : ALU PORT MAP(
            A=>A,
            B=>B,
            Ctrl_Alu=>Ctrl_Alu,
            S=>S,
            N=>N,
            O=>O,
            Z=>Z,
            C=>C);
            
stim_process: process
begin
    A <= x"FF";
    B <= x"05";
    for i in 0 to 15 loop
        Ctrl_Alu <= Ctrl_Alu + "001";
        wait for 100ns;
    end loop;
    
    A <= x"F6"; 
    B <= x"0A";
    wait;
    end process;
    
end Behavioral;
