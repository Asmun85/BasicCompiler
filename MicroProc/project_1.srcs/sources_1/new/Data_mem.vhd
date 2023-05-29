----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2023 11:45:39
-- Design Name: 
-- Module Name: Data_mem - Behavioral
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

entity Data_mem is
    Port ( Addr : in STD_LOGIC_Vector (7 downto 0);
           VIN : in STD_LOGIC_VECTOR (7downto 0);
           RW : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Clk : in STD_LOGIC;
           VOUT : out STD_LOGIC_VECTOR (7 downto 0));
end Data_mem;

architecture Behavioral of Data_mem is
type tab_data is array(255 downto 0) of std_logic_vector(7 downto 0); 
Signal data_meme : tab_data;

begin

process
begin
    wait until Clk'event and Clk = '1';
    if (Rst = '1') then
        data_meme <= (others=>(x"00"));
    end if;
    if(RW = '1') then
        VOUT <= data_meme(to_integer(unsigned(Addr)));
    else
        data_meme(to_integer(unsigned(Addr))) <= VIN;
    end if;
        
end process;

end Behavioral;
