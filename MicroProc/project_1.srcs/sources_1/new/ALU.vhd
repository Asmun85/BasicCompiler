----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2023 10:16:43
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Ctrl_Alu : in STD_LOGIC_vector(2 downto 0);--Which operation (+,-,*,/)
           N,O,Z,C : out STD_LOGIC; --Neg(N),Over_flow(O),Zero(Z),Carry(C)
           S : out STD_LOGIC_VECTOR(7 downto 0));
end ALU;

architecture Behavioral of ALU is
Signal Res : STD_LOGIC_VECTOR(15 downto 0);
begin
    process(A,B,Ctrl_ALU)
        begin
            if Ctrl_ALU    = "001" then Res <= (x"00"&A) + (x"00"&B);
            elsif Ctrl_ALU = "010" then Res <= (x"00"&A) - (x"00"&B);
            elsif Ctrl_ALU = "100" then Res <= A * B;
            end if;             
        end process;
        O <= '1' when (Res(15 downto 8) /= "00000000") else '0';
        Z <= '1' when (Res(7 downto 0) = x"00")  else '0';
        N <= '0' when (Res(15 downto 8) = x"00") else '1';
        C <= Res(8); -- Cary for add OP
        S <= Res (7 downto 0); --Selecting the first eight bits for the output result
        
end Behavioral;
