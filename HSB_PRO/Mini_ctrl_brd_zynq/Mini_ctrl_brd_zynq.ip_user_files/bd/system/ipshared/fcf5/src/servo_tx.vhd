----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/08/29 10:34:39
-- Design Name: 
-- Module Name: servo_tx - Behavioral
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

Library UNISIM;
use UNISIM.vcomponents.all;

Library UNIMACRO;
use UNIMACRO.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity servo_tx is
generic(
tx_head_01             : std_logic_vector(7 downto 0):=X"12";
tx_head_02             : std_logic_vector(7 downto 0):=X"4C"
);
    Port (
        aclk                      : in std_logic;
        rst                       : in std_logic;
        tx_data_in                : in std_logic_vector(7 downto 0);
        tx_data_in_valid          : in std_logic;
        servo_id                  : in std_logic_vector(7 downto 0);
        UART_DATA_IN_READY        : in std_logic;
        tx_data_out               : out std_logic_vector(7 downto 0);
        tx_data_out_valid         : out std_logic:='0';
        tx_data_out_end           : out std_logic:='0'
    );
end servo_tx;

architecture Behavioral of servo_tx is

    signal  state_servo_tx      : std_logic_vector(3 downto 0):=(others => '0');
signal  data_check_sum          : std_logic_vector(7 downto 0):=(others => '0');
signal  tx_data_out1               :  std_logic_vector(7 downto 0);
signal  tx_data_out_valid1         :  std_logic:='0';

-- fifo siganl --
signal  fifo_dout   : std_logic_Vector(7 downto 0);
signal  fifo_empty  : std_logic;
signal  fifo_full   : std_logic;
signal  fifo_rdcount    : std_logic_Vector(10 downto 0);
signal  fifo_wrcount    : std_logic_Vector(10 downto 0);
signal  fifo_din        : std_logic_Vector(7 downto 0);
signal  fifo_wr_en      : std_logic:='0';
signal  fifo_rd_en      : std_logic:='0';
signal  fifo_data_num   : std_logic_vector(10 downto 0):=(others => '0');
signal  data_length     : std_logic_Vector(7 downto 0):=(others => '0');
signal  data_cnt        : std_logic_Vector(7 downto 0):=(others => '0');
signal  fifo_rst        : std_logic:='0';
    
begin

tx_data_out <= tx_data_out1;
tx_data_out_valid <= tx_data_out_valid1;

fifo_wr_en <=    tx_data_in_valid;
fifo_din    <= tx_data_in;

   FIFO_SYNC_MACRO_inst : FIFO_SYNC_MACRO
   generic map (
      DEVICE => "7SERIES",            -- Target Device: "VIRTEX5, "VIRTEX6", "7SERIES" 
      ALMOST_FULL_OFFSET => X"0080",  -- Sets almost full threshold
      ALMOST_EMPTY_OFFSET => X"0080", -- Sets the almost empty threshold
      DATA_WIDTH => 8,   -- Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      FIFO_SIZE => "18Kb")            -- Target BRAM, "18Kb" or "36Kb" 
   port map (
--      ALMOSTEMPTY => ALMOSTEMPTY,   -- 1-bit output almost empty
--      ALMOSTFULL => ALMOSTFULL,     -- 1-bit output almost full
      DO => fifo_dout,                     -- Output data, width defined by DATA_WIDTH parameter
      EMPTY => fifo_empty,               -- 1-bit output empty
      FULL => fifo_full,                 -- 1-bit output full
      RDCOUNT => fifo_rdcount,           -- Output read count, width determined by FIFO depth
--      RDERR => RDERR,               -- 1-bit output read error
      WRCOUNT => fifo_wrcount,           -- Output write count, width determined by FIFO depth
--      WRERR => WRERR,               -- 1-bit output write error
      CLK => aclk,                   -- 1-bit input clock
      DI => fifo_din,                     -- Input data, width defined by DATA_WIDTH parameter
      RDEN => fifo_rd_en,                 -- 1-bit input read enable
      RST => fifo_rst,                   -- 1-bit input reset
      WREN => fifo_wr_en                  -- 1-bit input write enable
   );
   -- End of FIFO_SYNC_MACRO_inst instantiation

   
    process(aclk)
    begin
        if rising_edge(aclk)    then
            if rst = '1'    then
                state_servo_tx <= (others => '0');
                fifo_rst <= '1';
            else
                if UART_DATA_IN_READY = '1' then
                    case    state_servo_tx  is
                        when    X"0"    =>
                            fifo_rst <= '0';
                            if fifo_wr_en = '0' and fifo_empty = '0'    then
                                state_servo_tx <= state_servo_tx + '1';
                                tx_data_out_end <= '0';
--                                fifo_data_num <= fifo_wrcount - fifo_rdcount;
                            end if;
                        when    X"1"    =>      -- head 01
                            tx_data_out_valid1 <= '1';
                            tx_data_out1 <= tx_head_01;
                            state_servo_tx <= state_servo_tx + '1';
                        when    X"2"    =>      -- head 02
                            tx_data_out_valid1 <= '1';
                            tx_data_out1 <= tx_head_02; 
                            state_servo_tx <= state_servo_tx + '1';
                        when    X"3"    =>      -- read servo id
                            fifo_rd_en <= '1';
                            state_servo_tx <= state_servo_tx + '1';
                        when    X"4"    =>      -- read data length                                                 
                            state_servo_tx <= state_servo_tx + '1';                                                                                                      
                        when    X"5"    =>      -- send servo id
                            fifo_rd_en <= '0';
                            tx_data_out_valid1 <= '1';
                            tx_data_out1     <= fifo_dout; 
                            state_servo_tx <= state_servo_tx + '1';
                        when    X"6"    =>      -- send data length   
                            tx_data_out_valid1 <= '1';
                            tx_data_out1     <= fifo_dout;
                            data_length      <= fifo_dout;
                            data_cnt         <= (others => '0');
                            state_servo_tx <= state_servo_tx + '1';
                        when    X"7"    =>                                                          
                            if   data_length = data_cnt then
                                state_servo_tx <= X"A";
                                fifo_rst <= '1';
                            else
                                fifo_rd_en <= '1';
                                data_cnt <= data_cnt + '1';
                                state_servo_tx <= state_servo_tx + '1';   
                            end if;                        
                        when    X"8"    =>    -- data 
                            fifo_rd_en <= '0'; 
                            state_servo_tx <= state_servo_tx + '1';  
                        when    X"9"    =>      -- data
                            tx_data_out_valid1 <= '1';
                            tx_data_out1     <= fifo_dout;  
                            state_servo_tx <= X"7";                           
                        when    X"A"    =>      -- checksum
                            tx_data_out_valid1 <= '1';
                            tx_data_out1     <= data_check_sum;
                            state_servo_tx <= X"0"; 
                            tx_data_out_end <= '1';                                           
                        when    others  =>
                            state_servo_tx <= X"0";   
                    end case;
                else
                    tx_data_out_valid1 <= '0';
                    
                end if;
            end if;
        end if;
    end process;

process(aclk)
begin
if rising_edge(aclk)    then
    if state_servo_tx = X"0"    then
        data_check_sum <= (others => '0');
    else
        if tx_data_out_valid1 = '1'  then
            data_check_sum <= data_check_sum + tx_data_out1;
        end if;
    end if;
end if;
end process;

end Behavioral;
