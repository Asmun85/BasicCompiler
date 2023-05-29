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
--to select the 8 most signifcant bits in result
Signal tmp_vector : STD_LOGIC_VECTOR(7 downto 0);

begin
    process(A,B,Ctrl_ALU)
        begin
            case(Ctrl_Alu) is
                when("000") =>
                Res <= (x"00" & A) + (x"00" & B);
                --tmp_vector <= Res (15 downto 8);
                --C <= Res(8);
                when("010") =>
                Res <= (x"00"&A) - (x"00"&B);
                Z <= '0';
                when("100") =>
                Res <=A * B;
                tmp_vector <= Res (15 downto 8);                
                when others =>
                    null;
        --Checking if the result is equal to 0
            end case;
            if (Res = x"00") then
              Z <= '1';
            else
              Z <= '0';
            end if;
            if(tmp_vector /= "00000000") then
              O <= '1';
            else
              O <= '0';
            end if;
            N <= '0';
        end process;

        C <= Res(8);
        S <= Res (7 downto 0);
        
end Behavioral;
