----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2024/09/24 11:38:59
-- Design Name: 
-- Module Name: VERSION_CHECK - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VERSION_CHECK is
generic(
  gmii_array_num                        : integer:=11;
-- version control reg
  CC01_regs_project                     : std_logic_vector(31 downto 0):=X"4D69_6E69"; --   ?  
  CC01_regs_year_month                  : std_logic_vector(31 downto 0):=X"2024_0924"; --  ·Ú    
  CC01_regs_sub_version                 : std_logic_vector(31 downto 0):=X"0000_0001"  --  ·Ú  
);
  Port (
  rst                       : in std_logic;
  clk_in                    : in std_logic;
  -- rx cmd data
  rx_data_valid             : in  std_logic;                   
  rx_data_last              : in  std_logic;                   
  rx_data_data              : in  std_logic_vector(7 downto 0);
  -- tx data
  tx_data_valid             : out std_logic;                   
  tx_data_last              : out std_logic;                   
  tx_data_data              : out std_logic_vector(7 downto 0)        
   );
end VERSION_CHECK;

architecture Behavioral of VERSION_CHECK is

type    array_gmii    is array(0 to gmii_array_num) of std_logic_vector(7 downto 0);
signal      tx_array_temp               :   array_gmii:=(others => (others => '0'));
signal      rx_array_temp               :   array_gmii:=(others => (others => '0'));

signal      state_rx                    :   std_logic_vector(3 downto 0):=(others => '0');
signal      state_tx                    :   std_logic_vector(3 downto 0):=(others => '0');
signal      state_tx_array              :   std_logic_vector(3 downto 0):=(others => '0');

signal      rx_index                    :   integer:=0;
signal      tx_index                    :   integer:=0;

signal      rx_data_valid1              :   std_logic:='0';                   
signal      rx_data_last1               :   std_logic:='0';                   
signal      rx_data_data1               :   std_logic_vector(7 downto 0);

signal      tx_data_valid1              :   std_logic:='0';                   
signal      tx_data_last1               :   std_logic:='0';                   
signal      tx_data_data1               :   std_logic_vector(7 downto 0);

begin
process(clk_in)
begin
if rising_edge(clk_in)  then
    rx_data_valid1     <=   rx_data_valid;
    rx_data_last1      <=   rx_data_last ;
    rx_data_data1      <=   rx_data_data ; 
    
    tx_data_valid      <=   tx_data_valid1;
    tx_data_last       <=   tx_data_last1 ;
    tx_data_data       <=   tx_data_data1 ; 
end if;
end process;

rx_state_gen: process(clk_in)
begin
if rst = '1'    then
    state_rx <= X"0";    
else
    if rising_edge(clk_in)  then
        case state_rx is
            when    X"0"    =>
                rx_index <= 0;
                if rx_data_valid1 = '0' and rx_data_valid = '1' then
                    state_rx <= state_rx + '1';
                end if;
            when    X"1"    =>
                rx_array_temp(rx_index) <= rx_data_data1;
                if rx_index < gmii_array_num  then
                    rx_index <= rx_index + 1;
                else
                    rx_index <= 0;
                    state_rx <= X"E";
                end if;
            when    X"D"    =>
                if state_tx = X"F"  then
                    state_rx <= X"0"; 
                end if;                                               
            when    X"E"    =>  
                if rx_data_last1 = '1'  then
                    state_rx <= X"F";
                end if;                
            when    X"F"    =>  
                state_rx <= X"D";               
            when    others  =>
                state_rx <= X"0";
        end case;
    end if;
end if;
end process;

tx_array_gen: process(clk_in)
begin
if rst = '1'    then
    state_tx_array <= X"0";    
else
    if rising_edge(clk_in)  then
        case    state_tx_array is
            when    X"0"    =>
                if state_rx = X"F"  then
                    state_tx_array <= X"1";
                end if;            
            when    X"1"    =>
                for i in 0 to 3 loop
                    tx_array_temp(i) <= CC01_regs_project(8*(3-i)+7 downto 8*(3-i));
                end loop;
                for i in 0 to 3 loop
                    tx_array_temp(4+i) <= CC01_regs_year_month(8*(3-i)+7 downto 8*(3-i));
                end loop;                
                for i in 0 to 3 loop
                    tx_array_temp(8+i) <= CC01_regs_sub_version(8*(3-i)+7 downto 8*(3-i));
                end loop;  
                state_tx_array <= X"F";              
            when    X"F"    =>
                state_tx_array <= X"0";
            when    others  =>
                state_tx_array <= X"0";
        end case;
    end if;
end if;
end process;

tx_state_gen: process(clk_in)
begin
if rst = '1'    then
    state_tx <= X"0";    
else
    if rising_edge(clk_in)  then
        case    state_tx    is             
            when    X"0"    =>
                tx_data_valid1      <=   '0';
                tx_data_last1       <=   '0';
                tx_data_data1       <=   X"00";  
                tx_index <= 0;          
                if state_tx_array = X"F"  then
                    state_tx <= X"1";
                end if;
            when    X"1"   =>
                tx_data_valid1 <= '1';
                tx_data_data1 <= tx_array_temp(tx_index);
                if tx_index < gmii_array_num then
                    tx_index <= tx_index + 1;
                else
                    tx_index <= 0;
                    tx_data_last1 <= '1';
                    state_tx <= X"F";
                end if;
            when    X"F"    =>
                tx_data_valid1      <=   '0';
                tx_data_last1       <=   '0';
                tx_data_data1       <=   X"00";  
                tx_index <= 0;            
                state_tx <= X"0";
            when    others  =>
                state_tx <= X"0";
        end case;
    end if;
end if;
end process;

end Behavioral;
