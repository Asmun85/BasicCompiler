----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2023 10:00:27
-- Design Name: 
-- Module Name: Test_Data_mem - Behavioral
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

entity Test_Data_mem is
end Test_Data_mem;

architecture Behavioral of Test_Data_mem is

component Data_mem
    Port ( Addr : in STD_LOGIC_Vector (7 downto 0);
               VIN : in STD_LOGIC_VECTOR (7downto 0);
               RW : in STD_LOGIC;
               Rst : in STD_LOGIC;
               Clk : in STD_LOGIC;
               VOUT : out STD_LOGIC_VECTOR (7 downto 0));
end component;
--input signals
signal Addr : std_logic_vector (7 downto 0) := (others => '0');
signal vin : std_logic_vector(7 downto 0) := (others => '0');
signal rw : std_logic := '0';
signal rst : std_logic := '0';
signal clk : std_logic := '0';
--output signals 
signal vout : std_logic_vector (7 downto 0) := (others => '0');

constant clk_periode : time := 10 ns;

begin
uut : Data_mem port map(
    Addr => Addr,
    vin  => vin,
    rw   => rw,
    rst  => rst,
    clk  => clk,
    vout => vout);

Clock : process 
begin
    clk <= not(Clk);
    wait for clk_periode/2;
end process;
--stimulus 
Rst <= '1' after 100ns;
vin <= x"AB";
addr <= x"0F";
rw  <= '1'  after 20ns;

end Behavioral;
