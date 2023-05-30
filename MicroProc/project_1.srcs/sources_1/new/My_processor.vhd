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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity My_processor is
    Port ( Clk : in STD_LOGIC;
           Addr  : in STD_logic_vector(7 downto 0); 
           Output_proc : out STD_LOGIC_Vector(7 downto 0)); -- represent B outpot of the last pipeline
end My_processor;

architecture Behavioral of My_processor is
--------------------------------------------------------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------Declaration des composants---------------------------------------------------------------------------- 


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


--Mémoire d'instruction

component Instruction_mem 
    Port ( Add : in STD_LOGIC_vector (7 downto 0);
           Clk : in STD_LOGIC;
           Alea : in std_logic;
           Vout : out STD_LOGIC_vector (31 downto 0));
end component;

component Pipline4op --LI/DI and DI/EX
    Port ( Alea   : in STD_LOGIC;
           Clk   : in std_logic;
           in_A   : in STD_LOGIC_vector(7 downto 0);
           In_OP  : in STD_LOGIC_vector(7 downto 0);
           In_B   : in STD_LOGIC_vector(7 downto 0);
           in_C   : in STD_LOGIC_vector(7 downto 0);
           out_A  : out STD_LOGIC_vector(7 downto 0);
           out_OP : out STD_LOGIC_vector(7 downto 0);
           out_B  : out STD_LOGIC_vector(7 downto 0);
           Out_C  : out STD_LOGIC_vector(7 downto 0)); 
end component;


component pipeline3op --EX/Mem and Mem/RE
    Port ( clk    : in std_logic;
           in_A   : in STD_LOGIC_vector(7 downto 0);
           in_B   : in STD_LOGIC_vector(7 downto 0);
           in_OP  : in STD_LOGIC_vector(7 downto 0);
           out_A  : out STD_LOGIC_vector(7 downto 0);
           out_B  : out STD_LOGIC_vector(7 downto 0);
           out_OP : out STD_LOGIC_vector(7 downto 0));
end component;

component ALU
    Port ( A        : in STD_LOGIC_VECTOR(7 downto 0);
           B        : in STD_LOGIC_VECTOR (7 downto 0);
           Ctrl_Alu : in STD_LOGIC_vector(2 downto 0);--Which operation (+,-,*,/)
           N,O,Z,C  : out STD_LOGIC; --Neg(N),Over_flow(O),Zero(Z),Carry(C)
           S        : out STD_LOGIC_VECTOR(7 downto 0));
end component;

component Banc_de_registre
    Port(  Addr_A : in STD_LOGIC_VECTOR (3 downto 0);
           Addr_B : in STD_LOGIC_VECTOR (3 downto 0);
           Addr_W : in STD_LOGIC_VECTOR (3 downto 0);
           W : in STD_LOGIC;
           Data : in STD_LOGIC_VECTOR (7 downto 0);
           Rst : in STD_LOGIC;
           Clk : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR(7 downto 0)); 
end component;

component Data_mem
    Port ( Addr : in STD_LOGIC_Vector (7 downto 0);
           VIN : in STD_LOGIC_VECTOR (7downto 0);
           RW : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Clk : in STD_LOGIC;
           VOUT : out STD_LOGIC_VECTOR (7 downto 0));
end component;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------Add----------------------------------------Fin de Declaration des composants--------------------------------------------------------------------- 


--------------------------------------------------------------------------------------------------------------------------------------------------------------------




--------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------Signaux Internes------------------------------------------------------------------------------ 


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

--out_inst_mem
signal output_inst_mem : std_logic_vector(31 downto 0);

--Output of the first pipeline (LI/DI)
signal output_A_LI_DI   : std_logic_vector(7 downto 0);
signal output_OP_LI_DI  : std_logic_vector(7 downto 0);
signal output_B_LI_DI   : std_logic_vector(7 downto 0);
signal output_C_LI_DI   : std_logic_vector(7 downto 0);

--Output of the second pipeline (DI/EX)
signal output_A_DI_EX   : std_logic_vector(7 downto 0);
signal output_OP_DI_EX  : std_logic_vector(7 downto 0);
signal output_B_DI_EX   : std_logic_vector(7 downto 0);
signal output_C_DI_EX   : std_logic_vector(7 downto 0);

--Output of the third pipeline (EX/Mem)
signal output_A_EX_Mem  : std_logic_vector(7 downto 0);
signal output_OP_EX_Mem : std_logic_vector(7 downto 0);
signal output_B_EX_Mem  : std_logic_vector(7 downto 0);

--Output of the final pipeline (Mem/RE)
signal output_A_Mem_RE  : std_logic_vector(7 downto 0);
signal output_OP_Mem_RE : std_logic_vector(7 downto 0);
signal output_B_Mem_RE  : std_logic_vector(7 downto 0);

--étage Banc_de_registre
signal output_QA_BR     : std_logic_vector(7 downto 0);
signal output_QB_BR     : std_logic_vector(7 downto 0);
signal Output_MUX_BR    : std_logic_vector(7 downto 0);

--étage UAL
signal output_S_ALU     : std_logic_vector(7 downto 0);
signal output_MUX_ALU   : std_logic_vector(7 downto 0);
signal LC_ALU           : std_logic_vector(2 downto 0);

--étage Mémoire output_OP_LI_DIdes données
signal output_MUX_Data_Mem1 : std_logic_vector(7 downto 0);
signal LC_Data_Mem          : std_logic;
signal output_MUX_Data_Mem2 : std_logic_vector(7 downto 0);
signal output_Data_memory   : std_logic_vector(7 downto 0);

--output dernier étage:
signal output_LC_Last      : std_logic;
signal output_B_Last       : std_logic_vector(7 downto 0);

--Signal instruction pointer
signal IP                  : std_logic_vector(7 downto 0):="00000000";

--Signal gestion des alea
signal Alea                : std_logic :='0';
--signal stop                : std_logic :='0';
signal read_li             : std_logic :='0';
signal write_di            : std_logic :='0';
signal write_ex            : std_logic :='0';
signal write_mem           : std_logic :='0';

--RST signal
signal RST                 : std_logic :='0';
----------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------Fin Signaux Internes------------------------------------------------------------------------------ 


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

begin

------------------------------------------------------------------------Port Mapping------------------------------------------------------------------------------ 
Inst_mem : Instruction_mem 
    Port map (  Add => IP ,
                Clk => Clk,
                Alea=>Alea,
                Vout => output_inst_mem);

--Link between Inst_mem and LI/DI
LI_DI : pipline4op
port map    (   Alea   => Alea,
                Clk    => clk,  
                in_OP  => output_inst_mem(31 downto 24),
                In_A   => output_inst_mem(23 downto 16),
                In_B   => output_inst_mem(15 downto 8),
                in_C   => output_inst_mem(7 downto 0),
                out_A  => output_A_LI_DI,
                out_OP => output_OP_LI_DI, 
                out_B  => output_B_LI_DI,
                Out_C  => output_C_LI_DI);

--AFC and LOAD Output of LI/DI is needed (LOAD needs an adress, AFC needs a value)
--For the other instructions we need the content of the register so we  need QA                
Output_MUX_BR <= output_B_LI_DI when (output_op_LI_DI = x"06" or output_op_LI_DI = x"07")
                                else output_QA_BR;

--Affecting the proper value for the read_li signal
read_li   <= '1' when (output_inst_mem(31 downto 24) /= x"00" and output_inst_mem(31 downto 24) /= x"07" and output_inst_mem(31 downto 24) /=x"06") else '0';
write_di  <= '1' when (output_OP_LI_DI /= x"00" and output_OP_LI_DI /= x"08") else '0';
write_ex  <= '1' when (output_OP_DI_EX /= x"00" and output_OP_DI_EX /= x"08") else '0';
write_mem <= '1' when (output_OP_EX_MEM /= x"08" and output_OP_EX_MEM /= x"00") else '0';

alea     <= '1' when (read_li ='1' and write_di  = '1'   and ((output_A_LI_DI = output_inst_mem(15 downto 8))  or (output_A_LI_DI=output_inst_mem(7 downto 0)))) or 
                     (read_li ='1' and write_ex  = '1'   and ((output_inst_mem(15 downto 8) = output_A_DI_EX)  or (output_inst_mem(7 downto 0)=output_A_DI_EX))) or 
                     (read_li ='1' and write_mem = '1'   and ((output_inst_mem(15 downto 8) = output_A_EX_MEM) or (output_inst_mem(7 downto 0)=output_A_EX_MEM)))
                     else '0'; 
                
DI_EX : pipline4op
port map    (   Alea   => '0', 
                Clk    => clk,  
                in_A   => output_A_LI_DI,
                In_OP  => output_OP_LI_DI,
                In_B   => Output_MUX_BR,
                in_C   => output_QB_BR,
                out_A  => output_A_DI_EX,
                out_OP => output_OP_DI_EX, 
                out_B  => output_B_DI_EX,
                Out_C  => output_C_DI_EX);
                
--Controls which operation will be done by the ALUoutput_OP_EX_MEM
LC_ALU <= "001" WHEN  output_OP_DI_EX = x"01" else -- Addition
          "010" WHEN  output_OP_DI_EX = x"03" else -- Soustraction
          "100" WHEN  output_OP_DI_EX = x"02" else -- Multiplication
          "000"; -- La division n'est pas demandé étant donné que le fpga ne comprend pas de diviseur 
          --NB : une division par deux aurait pu être possible en shiftant à gauche
          
mon_ALU : ALU
port map    (   A => output_B_DI_EX,
                B => output_C_DI_EX,
                Ctrl_ALU => LC_ALU,
                S =>  output_S_alu);  
                
--We need the output of the ALU for the Arithmetic operations
--else we catch the output of DI/EX           
output_MUX_ALU <= Output_S_ALU when (output_OP_DI_EX = x"01" or     
                                     output_OP_DI_EX = x"02" or 
                                     output_OP_DI_EX = x"03" or 
                                     output_OP_DI_EX = x"04") else output_B_DI_EX;                
                
                
                
EX_MEM : pipeline3op
port map    (   Clk    => clk,  
                in_A   => output_A_DI_EX,
                In_OP  => output_OP_DI_EX,
                In_B   => Output_MUX_ALU,
                out_A  => output_A_EX_MEM,
                out_OP => output_OP_EX_MEM, 
                out_B  => output_B_EX_MEM);               
--Only 'r' is Storerite_di <= '0' when di_op="00001000" else '1';
LC_Data_Mem <=  '0' when output_OP_EX_MEM = x"08" else '1';   


--Used to LOAD(x07) or STORE (w08)
--LOAD => Write mode : we take B as @ (load Ri @j)
--STORE => Read mode we take A as @ (store @i Rj)
output_MUX_Data_Mem1 <= output_A_EX_MEM when output_OP_EX_MEM = x"08" else
                        output_B_EX_MEM;
                        
Data_memory : Data_mem
port map    (   Addr => output_mux_Data_mem1,
                Vin  => output_B_EX_MEM,
                RW   => LC_DATA_Mem,
                RST  => RST,
                CLK  => CLK,
                Vout => output_Data_memory);
--either we take the ouput of the data_mem or the output B or EX/Mem pipe
--when LOAD take the @ of B to get the value at that adress and store it into a register we need the value contained at that Address  
output_MUX_Data_Mem2 <= output_Data_memory when output_OP_EX_MEM = x"07" else output_B_EX_MEM;

MEM_RE : pipeline3op
port map    (   Clk    => clk,  
                in_A   => output_A_EX_MEM,
                In_OP  => output_OP_EX_MEM,
                In_B   => output_MUX_Data_Mem2,
                out_A  => output_A_MEM_RE,
                out_OP => output_OP_MEM_RE, 
                out_B  => output_B_MEM_RE);           

--LC Last goes to W flag of the register bank
--w=1 => 'rw' else 'r'
--'0' only for storing  because it's the only operation that dosen't write in the register
--Store writes in the memory bank (has an adress as input) 
output_LC_Last <= '0' when output_OP_MEM_RE = x"08" else '1';

--Lien entre dernier étage et banc de registre 
register_bank : Banc_de_registre
port map    (   Addr_A => output_B_LI_DI(3 downto 0),
                Addr_B => output_C_LI_DI(3 downto 0),
                Addr_w => output_A_MEM_RE(3 downto 0),
                W      => output_LC_Last,
                Data   => output_B_MEM_RE,
                Clk    => Clk,
                Rst    => RST,
                QA     => output_QA_BR,
                QB     => output_QB_BR);

    
process
begin
    wait until clk'event and clk='1';
        if (alea = '0') then
            IP <= IP + '1';
        end if;
    
        
end process; 
Output_proc <=  output_B_MEM_RE;                 
end Behavioral; 