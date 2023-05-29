----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2023 14:53:15
-- Design Name: 
-- Module Name: My_processor - Behavioral
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

entity My_processor is
    Port ( Clk : in STD_LOGIC;
           Output_proc : out STD_LOGIC);
end My_processor;

architecture Behavioral of My_processor is
--------------------------------------------------------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------Declaration des composants---------------------------------------------------------------------------- 


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


--Mémoire d'instruction

component Instruction_mem 
    Port ( Add : in STD_LOGIC_vector (7 downto 0);
           Clk : in STD_LOGIC;
           Vout : out STD_LOGIC_vector (31 downto 0));
end component;

component pipeline4op
    Port ( Clk    : in std_logic;
           in_A   : in STD_LOGIC_vector(7 downto 0);
           In_OP  : in STD_LOGIC_vector(7 downto 0);
           In_B   : in STD_LOGIC_vector(7 downto 0);
           in_C   : in STD_LOGIC_vector(7 downto 0);
           out_A  : out STD_LOGIC_vector(7 downto 0);
           out_OP : out STD_LOGIC_vector(7 downto 0);
           out_B  : out STD_LOGIC_vector(7 downto 0);
           Out_C  : out STD_LOGIC_vector(7 downto 0)); 
end component;


component pipeline3op
    Port ( clk    : in std_logic;
           in_A   : in STD_LOGIC;
           in_B   : in STD_LOGIC;
           in_OP  : in STD_LOGIC;
           out_A  : out STD_LOGIC;
           out_B  : out STD_LOGIC;
           out_OP : out STD_LOGIC);
end component;

component ALU
    Port ( A        : in STD_LOGIC_VECTOR(7 downto 0);
           B        : in STD_LOGIC_VECTOR (7 downto 0);
           Ctrl_Alu : in STD_LOGIC_vector(2 downto 0);--Which operation (+,-,*,/)
           N,O,Z,C  : out STD_LOGIC; --Neg(N),Over_flow(O),Zero(Z),Carry(C)
           S        : out STD_LOGIC_VECTOR(7 downto 0));
end component;

component MUX
    --TODO
end component;

component LC 
    ---TODO
end component;
begin


end Behavioral;
