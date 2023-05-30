----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2023 10:59:14
-- Design Name: 
-- Module Name: Banc_De_Registre - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Banc_De_Registre is
    Port ( Addr_A : in STD_LOGIC_VECTOR (3 downto 0);
           Addr_B : in STD_LOGIC_VECTOR (3 downto 0);
           Addr_W : in STD_LOGIC_VECTOR (3 downto 0);
           W : in STD_LOGIC;
           Data : in STD_LOGIC_VECTOR (7 downto 0);
           Rst : in STD_LOGIC;
           Clk : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR(7 downto 0));
end Banc_De_Registre;

architecture Behavioral of Banc_De_Registre is

type tab is array(0 to 15) of std_logic_vector(7 downto 0); 
signal reg_tab  : tab := (others=>(others => '0'));
--Signal i : integer ; -- to change 

begin
process

begin
    wait until Clk'event and Clk = '1';
    if (Rst ='1') then
        reg_tab <= (others=>(others=>'0'));
    end if;
    
    if (W = '1') then
        reg_tab(to_integer(unsigned(Addr_W))) <= Data;   
    end if;
        
end process;
    QA <= reg_tab(to_integer(unsigned(Addr_A))) when (Addr_A /= Addr_w or w='0') else Data;
    QB <= reg_tab(to_integer(unsigned(Addr_B))) when (Addr_B /= Addr_w or w='0') else Data;  
end Behavioral;
