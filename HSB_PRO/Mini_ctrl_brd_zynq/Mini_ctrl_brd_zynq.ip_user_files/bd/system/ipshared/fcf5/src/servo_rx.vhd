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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--------------------------------------
--error code
--01:  head         error
--02:  id           error
--03:  check sum    error
--FF:  rum tiem     error

--------------------------------------

entity servo_rx is
    generic(
        rx_head_01             : std_logic_vector(7 downto 0):=X"05";
        rx_head_02             : std_logic_vector(7 downto 0):=X"1C";
        run_time_num           : std_logic_vector(27 downto 0):=X"3B9ACA0"     
    );
    Port (
        aclk                      : in std_logic;
        rst                       : in std_logic;
        rx_data_in                : in std_logic_vector(7 downto 0);
        rx_data_in_valid          : in std_logic;
        servo_id                  : in std_logic_vector(7 downto 0);
        error_code                : out std_logic_vector(7 downto 0):=(others => '0');
        rx_data_out               : out std_logic_vector(7 downto 0):=(others => '0');
        rx_data_out_valid         : out std_logic:='0';
        rx_data_out_last          : out std_logic:='0'
    );
end servo_rx;

architecture Behavioral of servo_rx is

    signal      state_rx            : std_logic_vector(3 downto 0):=(others => '0');
    signal      state_rx1            : std_logic_vector(3 downto 0):=(others => '0');
    signal      length_n            : std_logic_vector(7 downto 0):=(others => '0');
    signal      length_cnt          : integer:=1;
    type    array_8 is array(1 to 8) of std_logic_vector(7 downto 0);
    signal      rx_array        : array_8:=(others => (others => '0'));
    signal      check_sum           : std_logic_Vector(7 downto 0):=(others => '0');
    signal      check_sum_temp      : std_logic_Vector(7 downto 0):=(others => '0');
    signal      out_cnt          : integer:=1;

    signal      run_time_cnt        : std_logic_Vector(27 downto 0):=(others => '0');
    signal      error_code1         : std_logic_Vector(7 downto 0):=(others => '0');
signal    rx_data_out1               :  std_logic_vector(7 downto 0):=(others => '0');
signal    rx_data_out_valid1         :  std_logic:='0';
            
    COMPONENT ila_1

PORT (
	clk : IN STD_LOGIC;



	probe0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
	probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
	probe2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
	probe3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
	probe4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
	probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
	probe6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	probe7 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END COMPONENT  ;

begin

--inst_ila1 : ila_1
--PORT MAP (
--	clk => aclk,



--	probe0 => rx_data_in, 
--	probe1(0) => rx_data_in_valid, 
--	probe2 => servo_id, 
--	probe3 => error_code1, 
--	probe4 => rx_data_out1, 
--	probe5(0) => rx_data_out_valid1, 
--	probe6 => run_time_cnt,
--	probe7 => state_rx
--);
error_code <= error_code1;
rx_data_out        <=  rx_data_out1      ;
rx_data_out_valid  <=  rx_data_out_valid1;


    process(aclk)
    begin
        if rising_edge(aclk) then
            if rst = '1'    then
                state_rx <= (others => '0');
                check_sum_temp <= (others => '0');
                error_code1 <= X"00";
            else
                if run_time_cnt = run_time_num   then
                    state_rx <= (others => '0');
                    error_code1 <= X"FF";
                else
                    case state_rx is
                        when    X"0"    =>      -- rx_head_01
                            if rx_data_in_valid = '1'   and rx_data_in = rx_head_01 then
                                state_rx <= state_rx + '1';
                                check_sum_temp <= check_sum_temp + rx_data_in;
                            else
                                check_sum_temp <= (others => '0');
                            end if;
                        when    X"1"    =>      -- rx_head_02
                            if rx_data_in_valid = '1'   then
                                if rx_data_in = rx_head_02 then
                                    state_rx <= state_rx + '1';
                                    check_sum_temp <= check_sum_temp + rx_data_in;
                                else
                                    state_rx <= X"0";
                                    error_code1 <= X"01";
                                    check_sum_temp <= (others => '0');
                                end if;
                            end if;
                        when    X"2"    =>      -- servo_id
                            if rx_data_in_valid = '1'   then
                                if rx_data_in = servo_id then
                                    state_rx <= state_rx + '1';
                                    check_sum_temp <= check_sum_temp + rx_data_in;
                                else
                                    error_code1 <= X"02";
                                    state_rx <= X"0";
                                    check_sum_temp <= (others => '0');
                                end if;
                            end if;
                        when    X"3"    =>      -- length
                            if rx_data_in_valid = '1' then
                                length_n <= rx_data_in;
                                state_rx <= state_rx + '1';
                                length_cnt <= 1;
                                check_sum_temp <= check_sum_temp + rx_data_in;
                            end if;
                        when    X"4"    =>
                            if rx_data_in_valid = '1'   then
                                rx_array(length_cnt) <= rx_data_in;
                                check_sum_temp <= check_sum_temp + rx_data_in;
                                if length_cnt = to_integer(unsigned(length_n)) then
                                    state_rx <= state_rx + '1';
                                else
                                    length_cnt <= length_cnt + 1;
                                end if;
                            end if;
                        when    X"5"    =>
                            if rx_data_in_valid = '1'   then
                                if rx_data_in = check_sum_temp  then
                                    state_rx <= state_rx + '1';
                                    out_cnt <= 1;
                                else
                                    error_code1 <= X"03";
                                    state_rx <= X"0";
                                    check_sum_temp <= (others => '0');

                                end if;
                            end if;
                        when    X"6"    =>      -- output servo id
                            rx_data_out1 <= servo_id;
                            rx_data_out_valid1 <= '1';  
                            state_rx <= state_rx + '1';                             
                        when    X"7"    =>      -- output length
                            rx_data_out1 <= length_n;
                            rx_data_out_valid1 <= '1';  
                            state_rx <= state_rx + '1';                          
                        when    X"8"    =>      -- output array
                            rx_data_out1 <= rx_array(out_cnt);
                            rx_data_out_valid1 <= '1';
                            if out_cnt = length_cnt  then
                                state_rx <= state_rx + '1';
                                rx_data_out_last <= '1';
                            else
                                out_cnt <= out_cnt + 1;
                            end if;
                        when    X"9"    =>
                            rx_data_out1 <= (others => '0');
                            rx_data_out_valid1 <= '0';
                            rx_data_out_last <= '0';
                            error_code1 <= X"00";
                            state_rx <= X"0";
                            check_sum_temp <= (others => '0');
                        when    others  =>
                            state_rx <= X"0";
                    end case;
                end if;
            end if;
        end if;
    end process;

    process(aclk)
    begin
        if rising_edge(aclk)    then
            state_rx1 <= state_rx;
            if state_rx1 /= state_rx or state_rx = X"0"  then
                run_time_cnt <= (others => '0');
            else
                run_time_cnt <= run_time_cnt + '1';
            end if;
        end if;
    end process;

end Behavioral;
