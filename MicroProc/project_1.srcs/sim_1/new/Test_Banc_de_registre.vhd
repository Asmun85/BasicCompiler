----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2023 09:01:42
-- Design Name: 
-- Module Name: Test_Banc_de_registre - Behavioral
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

entity Test_Banc_de_registre is
end Test_Banc_de_registre;

architecture Behavioral of Test_Banc_de_registre is

Component Banc_de_registre 
    Port ( Addr_A : in STD_LOGIC_VECTOR (3 downto 0);
           Addr_B : in STD_LOGIC_VECTOR (3 downto 0);
           Addr_W : in STD_LOGIC_VECTOR (3 downto 0);
           W : in STD_LOGIC;
           Data : in STD_LOGIC_VECTOR (7 downto 0);
           Rst : in STD_LOGIC;
           Clk : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR(7 downto 0));
end component;

--input signals
signal Addr_A : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal Addr_B : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal Addr_W : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal W : STD_LOGIC := '0';
signal Data : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
signal Rst : STD_LOGIC := '0';
signal Clk : STD_LOGIC := '0';

--output signals 
signal QA : std_logic_vector(7 downto 0) := (others => '0');
signal QB : std_logic_vector(7 downto 0) := (others => '0');


--Clock period definition
constant clk_periode : time := 100 ns; 

begin
--instantiate the unit under test 
Label_uut : Banc_de_registre port map(
   Addr_A => Addr_A,
   Addr_B => Addr_B,
   Addr_W => Addr_W,
   W => W ,
   Data => Data,
   Rst => Rst,
   Clk => Clk,
   QA => QA,
   QB => QB);


--Clock process definition
Clock_process : process
begin 
    Clk <= not(clk);
    wait for clk_periode/2;
end process;

stimulus : process
begin
    Rst <= '1' after 400 ns;
    --ecriture à une adresse
    addr_w <= x"A" after 100ns;
    data <= "01010101" after 150ns;
    w <= '1' after 300ns,'0' after 500ns; -- écriture à l'adresse x"A"
    --lecture sur A
    addr_A <= x"A"; -- Valeur de m_QA attendue "01010101"
    addr_B <= x"F"; -- Valeur de m_Qb attendue "00000000"
    wait;
end process;   
end Behavioral;
