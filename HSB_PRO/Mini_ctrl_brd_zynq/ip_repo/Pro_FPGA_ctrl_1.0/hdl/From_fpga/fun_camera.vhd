----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/11/02 10:13:34
-- Design Name: 
-- Module Name: fun_camera - Behavioral
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

entity fun_camera is
    generic(
        width_run_time_cnt                  : integer:=27
    );
    Port (
        gtx_clk     		        : in  std_logic;
        rst                         : in  std_logic;
        -- uart
        UART_RX                     : in    std_logic;
        UART_TX                     : out   std_logic:='1';
        -- rx cmd data
        rx_data_valid               : in  std_logic;
        rx_data_last                : in  std_logic;
        rx_data_data                : in  std_logic_vector(7 downto 0);
        -- tx data
        tx_data_valid               : out std_logic:='0';
        tx_data_last                : out std_logic:='0';
        tx_data_data                : out std_logic_vector(7 downto 0):=(others => '0');
        -- camera ctrl
        take_photo                  : out std_logic:='1'
    );
end fun_camera;

architecture Behavioral of fun_camera is

    signal   rx_data_valid1               :   std_logic;
    signal   rx_data_last1                :   std_logic;
    signal   rx_data_data1                :   std_logic_vector(7 downto 0);

    signal   state_main                     : std_logic_vector(3 downto 0):=(others => '0');
    signal   c_ID                       : std_logic_vector(7 downto 0):=(others => '0');

    component UART
        Port (
            clk_in                : in    std_logic;
            UART_RX               : in    std_logic;
            UART_TX               : out   std_logic:='1';
            UART_DATA_IN_READY    : out   std_logic:='0';
            UART_DATA_IN          : in    std_logic_vector (7 downto 0);
            UART_DATA_IN_VALID    : IN    std_logic ;
            UART_DATA_OUT_END     : OUT   std_logic:='0';
            UART_DATA_OUT         : OUT   std_logic_vector (7 downto 0);
            UART_DATA_OUT_VALID   : OUT   STD_LOGIC
        );
    end component;

    signal    UART_DATA_IN_READY    :    std_logic:='0';
    signal    UART_DATA_IN          :    std_logic_vector (7 downto 0);
    signal    UART_DATA_IN_VALID    :    std_logic:='0';
    signal    UART_DATA_OUT_END     :    std_logic:='0';
    signal    UART_DATA_OUT         :    std_logic_vector (7 downto 0);
    signal    UART_DATA_OUT_VALID   :    STD_LOGIC;

    type    array_1024 is array(0 to 1023) of std_logic_vector(7 downto 0);

    signal  uart_tx_array        : array_1024;
    signal  uart_rx_array        : array_1024;
    signal  uart_tx_index        : integer:=0;
    signal  uart_rx_index        : integer:=0;
    signal  uart_rx_index1        : integer:=0;
    signal  length_uart_tx       : std_logic_vector(15 downto 0):=(others => '0');
    signal  length_uart_rx       : std_logic_vector(15 downto 0):=(others => '0');
    signal  run_time_cnt         : std_logic_vector(width_run_time_cnt downto 0):=(others => '0');
    signal  run_time_cnt1         : std_logic_vector(15 downto 0):=(others => '0');
    constant  run_time_error         : std_logic_vector(width_run_time_cnt downto 0):=(others => '1');
    signal  send_F_cnt          : std_logic_Vector(3 downto 0):=(others => '0');

    --COMPONENT ila_0

    --PORT (
    --	clk : IN STD_LOGIC;



    --	probe0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    --	probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    --	probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    --);
    --END COMPONENT  ;


begin

    process(gtx_clk)
    begin
        if rising_edge(gtx_clk) then
            rx_data_valid1  <= rx_data_valid;
            rx_data_last1   <= rx_data_last ;
            rx_data_data1   <= rx_data_data ;
            if rst = '1'    then
                state_main <= (others => '0');
            else
                case state_main   is
                    when    X"0"    =>
                        tx_data_valid <= '0';
                        tx_data_last <= '0';
                        tx_data_data <= (others => '0');
                        uart_tx_index <= 0;
                        uart_rx_index <= 0;
                        if rx_data_valid1 = '0' and rx_data_valid = '1' then
                            c_ID <= rx_data_data;
                            case rx_data_data is
                                when    X"00"   =>
                                    state_main <= X"1";
                                when    others  =>
                                    state_main <= X"1";
                            end case;
                        end if;
                    when    X"1"    =>
                        if rx_data_valid = '1' then
                            length_uart_tx(15 downto 8) <= rx_data_data;
                            state_main <= state_main + '1';
                        end if;
                    when    X"2"    =>
                        if rx_data_valid = '1' then
                            length_uart_tx(7 downto 0) <= rx_data_data;
                            state_main <= state_main + '1';
                        end if;
                    when    X"3"    =>
                        if rx_data_valid = '1' then
                            if rx_data_last = '1'  then
                                state_main <= state_main + '1';
                                uart_tx_index <= 0;
                            end if;
                            if uart_tx_index < to_integer(unsigned(length_uart_tx)) then
                                uart_tx_array(uart_tx_index) <= rx_data_data;
                                uart_tx_index <= uart_tx_index + 1;
                            else
                                uart_tx_index <= 0;
                                state_main <= state_main + '1';
                            end if;
                        end if;
                    when    X"4"    =>
                        if UART_DATA_IN_READY = '1' then
                            if uart_tx_index < to_integer(unsigned(length_uart_tx)) then
                                uart_tx_index <= uart_tx_index + 1;
                                UART_DATA_IN <= uart_tx_array(uart_tx_index);
                                UART_DATA_IN_VALID <= '1';
                            else
                                uart_tx_index <= 0;
                                state_main <= state_main + '1';
                            end if;
                        else
                            UART_DATA_IN_VALID <= '0';
                        end if;
                    when    X"5"    =>      -- 等待uart数据，FFFF周期内没有数据视为没有收到任何数据，返回FF
                        if UART_DATA_OUT_VALID = '1'    then
                            uart_rx_array(uart_rx_index) <= UART_DATA_OUT;
                            uart_rx_index <= uart_rx_index + 1;
                            state_main <= state_main + '1';
                            run_time_cnt <= (others => '0');
                        else
                            run_time_cnt <= run_time_cnt + '1';
                            if run_time_cnt = run_time_error   then
                                tx_data_valid <= '1';
                                tx_data_data <= c_ID;
                                state_main <= X"F";
                            end if;
                        end if;
                    when    X"6"    =>      -- 等待数据，FFFF周期内没有数据视为数据接受完毕，返回FF
                        if UART_DATA_OUT_VALID = '1'    then
                            uart_rx_array(uart_rx_index) <= UART_DATA_OUT;
                            uart_rx_index <= uart_rx_index + 1;
                            run_time_cnt1 <= (others => '0');
                        else
                            run_time_cnt1 <= run_time_cnt1 + '1';
                            if run_time_cnt1 = X"FFFF"   then
                                state_main <= state_main + '1';
                            end if;
                        end if;
                    when    X"7"    =>      -- 发送ID
                        length_uart_rx <= std_logic_vector(to_unsigned(uart_rx_index,16));
                        tx_data_valid <= '1';
                        tx_data_data <= c_ID;
                        state_main <= state_main + '1';
                    when    X"8"    =>      -- 发送长度高字节                                                   
                        tx_data_data <= length_uart_rx(15 downto 8);
                        state_main <= state_main + '1';
                    when    X"9"    =>      -- 发送长度低字节                                                   
                        tx_data_data <= length_uart_rx(7 downto 0);
                        state_main <= state_main + '1';
                    when    X"A"    =>      -- 发送data
                        if uart_rx_index1 < uart_rx_index - 1 then
                            tx_data_data <= uart_rx_array(uart_rx_index1);
                            uart_rx_index1 <= uart_rx_index1 + 1;
                        elsif uart_rx_index1 = uart_rx_index - 1    then
                            tx_data_data <= uart_rx_array(uart_rx_index1);
                            uart_rx_index1 <= 0;
                            tx_data_last <= '1';
                            state_main <= (others => '0');
                        end if;
                    when    X"F"    =>  -- send X"FFFF"
                        tx_data_data <= X"FF";
                        if send_F_cnt < X"3"   then
                            send_F_cnt <= send_F_cnt + '1';
                        else
                            tx_data_last <= '1';
                            state_main <= (others => '0');
                            send_F_cnt <= (others => '0');
                        end if;
                    when    others  =>
                        state_main <= (others => '0');
                end case;
            end if;
        end if;
    end process;



    inst_camera_uart : UART
        port map(
            clk_in                  =>  gtx_clk             ,
            UART_RX                 =>  UART_RX            ,
            UART_TX                 =>  UART_TX            ,
            UART_DATA_IN_READY      =>  UART_DATA_IN_READY ,
            UART_DATA_IN            =>  UART_DATA_IN       ,
            UART_DATA_IN_VALID      =>  UART_DATA_IN_VALID ,
            UART_DATA_OUT_END       =>  UART_DATA_OUT_END  ,
            UART_DATA_OUT           =>  UART_DATA_OUT      ,
            UART_DATA_OUT_VALID     =>  UART_DATA_OUT_VALID
        );

        --inst_ila0 : ila_0
        --PORT MAP (
        --	clk => gtx_clk,



        --	probe0 => UART_DATA_OUT, 
        --	probe1(0) => UART_DATA_OUT_VALID,
        --	probe2(0) => UART_RX
        --);

end Behavioral;
