----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/01 09:19:03
-- Design Name: 
-- Module Name: fun_servo - Behavioral
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

package bus_multiplexer_pkg is
    type bus_array is array(natural range <>) of std_logic_vector(31 downto 0);
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.bus_multiplexer_pkg.all;

Library xpm;
use xpm.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity fun_servo is
    generic(
        async_en        : std_logic:='0';
        regs_num        : integer:=17;
        runtime_num     : std_logic_vector(31 downto 0):=X"0773_5940"  -- 1s in 125MHz
    );
    Port (
        gtx_clk     		        : in  std_logic;
        rst                         : in  std_logic;
        -- rx cmd data
        rx_data_valid               : in  std_logic;
        rx_data_last                : in  std_logic;
        rx_data_data                : in  std_logic_vector(7 downto 0);
        -- tx data
        tx_data_valid               : out std_logic:='0';
        tx_data_last                : out std_logic:='0';
        tx_data_data                : out std_logic_vector(7 downto 0):=(others => '0');
        ini_status                  : out std_logic_Vector(3 downto 0):=(others => '0');
        -- angle servo
        angle_servo                 : out std_logic_Vector(15 downto 0):=(others => '0');
        -- uart
        UART_DIR                    : out   std_logic:='0';
        UART_IO                     : inout    std_logic
    );
end fun_servo;

architecture Behavioral of fun_servo is
    signal    ini_status1                :  std_logic_vector(3 downto 0):=(others => '0');
    
    signal    tx_data_last1              :  std_logic:='0';
    signal    angle_servo1                 : std_logic_Vector(15 downto 0):=(others => '0');
    -- uart io
    signal  uart_rx     : std_logic:='0';
    signal  uart_rx1     : std_logic:='0';
    signal  uart_tx     : std_logic:='0';
    signal  uart_ctrl   : std_logic:='Z';

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

    signal  UART_DATA_IN_READY     :     std_logic:='0';
    signal  UART_DATA_OUT          :     std_logic_vector (7 downto 0);
    signal  UART_DATA_OUT_VALID    :     std_logic ;
    signal  UART_DATA_OUT_END      :     std_logic;

    component servo_tx
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
            tx_data_out_valid         : out std_logic;
            tx_data_out_end           : out std_logic:='0'
        );
    end component;

    signal        tx_data_in                :  std_logic_vector(7 downto 0);
    signal        tx_data_in_valid          :  std_logic;
    signal        tx_servo_id               :  std_logic_vector(7 downto 0):=(others => '0');
    signal        tx_data_out               :  std_logic_vector(7 downto 0);
    signal        tx_data_out_valid         :  std_logic:='0';
    signal        tx_data_out_end           :  std_logic:='0';
    signal        tx_data_out_end1          :  std_logic:='0';

    component servo_rx
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
    end component;

    signal        rx_data_in                :  std_logic_vector(7 downto 0);
    signal        rx_data_in_valid          :  std_logic;
    signal        error_code                :  std_logic_vector(7 downto 0):=(others => '0');
    signal        rx_servo_id               :  std_logic_vector(7 downto 0):=(others => '0');
    signal        rx_data_out               :  std_logic_vector(7 downto 0):=(others => '0');
    signal        rx_data_out_valid         :  std_logic:='0';
    signal        rx_data_out_last          :  std_logic:='0';

    signal        state_fun_servo           : std_logic_vector(3 downto 0):=(others => '1');        -- 初始化状态改为F
    signal        state_send_reg            : std_logic_vector(3 downto 0):=(others => '0');
    signal        length_reg                : std_logic_vector(3 downto 0):=(others => '0');
    signal        length_cnt                : std_logic_vector(3 downto 0):=(others => '0');

    signal  rx_data_valid1  : std_logic:='0';
    signal  runtime_cnt     : std_logic_Vector(31 downto 0):=(others => '0');

    signal  state_output_angle      : std_logic_vector(3 downto 0):=(others => '0');
    
    type ini_array  is array(0 to 10) of std_logic_vector(7 downto 0);
    signal  read_angle      : ini_array:=(
    0 => X"0A",     -- 读角度
    1 => X"02",     -- 内容长度
                    -- 内容实际为0
    others => (others => '0')
    );
    
    signal  read_angle_index       : integer:=0;       -- 读角度时串口发送数据计数
    signal  read_error_cnt          : integer:=0;       -- 读角度失败；
    signal  send_angle      : ini_array:=(
    0 => X"08",     -- 写角度
    1 => X"07",     -- 内容长度
    2 => X"00",     -- ID
    3 => X"00",     -- 角度低8位    -- 实际使用angle_servo1变量
    4 => X"00",     -- 角度高8位 
    5 => X"E8",     -- 时间低8位 
    6 => X"03",     -- 时间高8位    -- 时间定为1s
    7 => X"00",     -- 功率低8位 
    8 => X"00",     -- 功率高8位 
    others => (others => '0')
    );
    signal  send_angle_index       : integer:=0;       -- 写角度时串口发送数据计数

begin

    tx_data_last <= tx_data_last1;
    main_state_gen : process(gtx_clk)
    begin
        if rising_edge(gtx_clk) then
            rx_data_valid1 <= rx_data_valid;
            tx_data_out_end1 <= tx_data_out_end;
                case    state_fun_servo is
                    when    X"0"    =>      -- 收到上位机信息，发送给servo                        
                        if rx_data_valid = '1'  then
                            length_reg <= length_reg + '1';
                            tx_data_in <= rx_data_data;
                            tx_data_in_valid <= '1';
                            uart_ctrl <= '0';
                            if rx_data_valid1 = '0' then
                                tx_servo_id <= rx_data_data;
                                rx_servo_id <= rx_data_data;
                            end if;
                            if rx_data_last = '1'  then
                                state_fun_servo <= state_fun_servo + '1';
                            end if;
                        else
                            length_reg <= (others => '0');
                            tx_data_in_valid <= '0';
                            uart_ctrl <= 'Z';
                        end if;
                    when    X"1"    =>
                        state_fun_servo <= state_fun_servo + '1';
                        tx_data_in <= (others => '0');
                        tx_data_in_valid <= '0';
                    when    X"2"    =>  -- 等待tx_data_out_end
                        if tx_data_out_end1 = '0' and tx_data_out_end = '1' then
                            state_fun_servo <= state_fun_servo + '1';
                        end if;
                    when    X"3"    =>  -- 等待 UART_DATA_IN_READY
                        if UART_DATA_IN_READY = '1' then
                            state_fun_servo <= state_fun_servo + '1';
                            runtime_cnt <= (others => '0');
                        end if;
                    when    X"4"    =>  -- 准备接收servo数据并发送给上位机
                        uart_ctrl <= '1';
                        tx_data_data  <= rx_data_out;
                        tx_data_valid <= rx_data_out_valid;
                        tx_data_last1  <=  rx_data_out_last;
                        if tx_data_last1 = '1' and rx_data_out_last = '0' then
                            state_fun_servo <= state_fun_servo + '1';
                        else
                            runtime_cnt <= runtime_cnt + '1';
                            if runtime_cnt = runtime_num    then
                                state_fun_servo <= X"6";
                            end if;
                        end if;
                    when    X"5"    =>
                        tx_data_last1 <= '0';
                        tx_data_data <= (others => '0');
                        tx_data_valid <= '0';
                        state_fun_servo <= (others => '0');
                    when    X"6"    =>
                        tx_data_data <= (others => '1');
                        tx_data_valid <= '1';
                        state_fun_servo <= state_fun_servo + '1';
                    when    X"7"    =>      -- rx time error
                        tx_data_data <= (others => '1');
                        tx_data_valid <= '1';
                        state_fun_servo <= state_fun_servo + '1';
                    when    X"8"    =>
                        tx_data_data <= (others => '1');
                        tx_data_valid <= '1';
                        state_fun_servo <= state_fun_servo + '1';
                    when    X"9"    =>
                        tx_data_data <= (others => '1');
                        tx_data_valid <= '1';
                        tx_data_last1 <= '1';
                        state_fun_servo <= state_fun_servo + '1';
                    when    X"A"    =>
                        tx_data_data <= (others => '0');
                        tx_data_valid <= '0';
                        tx_data_last1 <= '0';
                        state_fun_servo <= (others => '0');
                    -----------------------------------------------------------------
                    -- ini state+   20240224
                    when    X"B"    =>
                        tx_data_in_valid <= '0';
                        if tx_data_out_end1 = '0' and tx_data_out_end = '1' then
                            state_fun_servo <= X"E";
                        end if;
                    when    X"C"    =>   -- 完成初始化
                        if UART_DATA_IN_READY = '1' then
                            state_fun_servo <= X"0"; 
                            uart_ctrl <= '1';    
                            ini_status <= X"1";                       
                        end if;                        
                    when    X"D"    =>   -- 发送角度
                        if send_angle_index = 10 then
                            state_fun_servo <= X"C";
                            tx_data_in_valid <= '0';
                        else
                            uart_ctrl <= '0';
                            tx_data_in_valid <= '1';
                            send_angle_index <= send_angle_index + 1;                            
                            case send_angle_index is
                                when    3   =>
                                    tx_data_in <= angle_servo1(7 downto 0);
                                when    4   =>
                                    tx_data_in <= angle_servo1(15 downto 8);
                                when    others  =>
                                    tx_data_in <= send_angle(send_angle_index);
                            end case;
                        end if;
                    when    X"E"    =>   -- 准备接收角度                           
                        if UART_DATA_IN_READY = '1' then
                            uart_ctrl <= '1';                            
                        end if;
                        if rx_data_out_last = '1' then
                            state_fun_servo <= X"D";
                        else
                            runtime_cnt <= runtime_cnt + '1';
                            if runtime_cnt = runtime_num    then
--                            if runtime_cnt = X"0000_f010"    then     --sim
                                state_fun_servo <= X"F";
                            end if;
                        end if;                      
                    when    X"F"    =>      -- 读角度
                        rx_servo_id <= read_angle(0);
                        runtime_cnt <= (others => '0');
                        if read_error_cnt = 10 then
                            ini_status <= X"F";
                            state_fun_servo <= X"0";
                        else
                            uart_ctrl <= '0';
                            tx_data_in_valid <= '1';
                            tx_data_in <= read_angle(read_angle_index);
                            if read_angle_index < 10 then
                                read_angle_index <= read_angle_index + 1;
                            else
                                read_angle_index <= 0;
                                state_fun_servo <= X"B";
                                read_error_cnt <= read_error_cnt + 1;
                            end if;
                        end if;
                    when    others  =>
                        state_fun_servo <= (others => '0');
                end case;
            end if;
--        end if;
    end process;

    inst_uart_io : IOBUF
        generic map (
            DRIVE => 12,
            IOSTANDARD => "DEFAULT",
            SLEW => "SLOW")
        port map (
            O => uart_rx1,     -- Buffer output
            IO => UART_IO,   -- Buffer inout port (connect directly to top-level port)
            I => uart_tx,     -- Buffer input
            T => uart_ctrl      -- 3-state enable input, high=input, low=output 
        );
    uart_rx <= uart_rx1 when uart_ctrl = '1' else '1';
    UART_DIR <= uart_ctrl;


    inst_servo_UART : UART
        port map(
            clk_in                  =>  gtx_clk             ,
            UART_RX                 =>  UART_RX            ,
            UART_TX                 =>  UART_TX            ,
            UART_DATA_IN_READY      =>  UART_DATA_IN_READY ,
            UART_DATA_IN            =>  tx_data_out       ,
            UART_DATA_IN_VALID      =>  tx_data_out_valid ,
            UART_DATA_OUT_END       =>  UART_DATA_OUT_END  ,
            UART_DATA_OUT           =>  UART_DATA_OUT      ,
            UART_DATA_OUT_VALID     =>  UART_DATA_OUT_VALID
        );

    inst_servo_tx : servo_tx
        port map(
            aclk                    =>  gtx_clk           ,
            rst                     =>  rst               ,
            tx_data_in              =>  tx_data_in        ,
            tx_data_in_valid        =>  tx_data_in_valid  ,
            servo_id                =>  tx_servo_id       ,
            UART_DATA_IN_READY      =>  UART_DATA_IN_READY,
            tx_data_out             =>  tx_data_out       ,
            tx_data_out_valid       =>  tx_data_out_valid,
            tx_data_out_end         =>  tx_data_out_end
        );

    rx_data_in <= UART_DATA_OUT;
    rx_data_in_valid <= UART_DATA_OUT_VALID;

    inst_servo_rx : servo_rx
        port map(
            aclk                    =>  gtx_clk          ,
            rst                     =>  rst              ,
            rx_data_in              =>  rx_data_in       ,
            rx_data_in_valid        =>  rx_data_in_valid ,
            servo_id                =>  rx_servo_id      ,
            error_code              =>  error_code       ,
            rx_data_out             =>  rx_data_out      ,
            rx_data_out_valid       =>  rx_data_out_valid,
            rx_data_out_last        =>  rx_data_out_last
        );

    process(gtx_clk)
    begin
        if rising_edge(gtx_clk) then
            case    state_output_angle  is
                when    X"0"    =>
                    if tx_data_out_valid = '1' and  tx_data_out = X"12" then
                        state_output_angle <= state_output_angle + '1';
                    end if;
                when    X"1"    =>
                    if tx_data_out_valid = '1'   then
                        if tx_data_out = X"4C" then
                            state_output_angle <= state_output_angle + '1';
                        else
                            state_output_angle <= X"0";
                        end if;
                    end if;
                when    X"2"    =>
                    if tx_data_out_valid = '1'   then
                        if tx_data_out = X"0A" then
                            state_output_angle <= state_output_angle + '1';
                        else
                            state_output_angle <= X"0";
                        end if;
                    end if;
                when    X"3"    =>
                    if tx_data_out_valid = '1'   then
                        state_output_angle <= state_output_angle + '1';
                    end if;
                when    X"4"    =>
                    if rx_data_out_valid = '1'  then
                        if rx_data_out = X"0A" then
                            state_output_angle <= state_output_angle + '1';
                        else
                            state_output_angle <= X"0";
                        end if;
                    end if;
                when    X"5"    =>
                    if rx_data_out_valid = '1'  then
                        if rx_data_out = X"03" then
                            state_output_angle <= state_output_angle + '1';
                        else
                            state_output_angle <= X"0";
                        end if;
                    end if;
                when    X"6"    =>
                    if rx_data_out_valid = '1' then
                        state_output_angle <= state_output_angle + '1';
                    end if;
                when    X"7"    =>
                    if rx_data_out_valid = '1' then
                        angle_servo1(7 downto 0) <= rx_data_out;
                        state_output_angle <= state_output_angle + '1';
                    end if;
                when    X"8"    =>
                    if rx_data_out_valid = '1' then
                        angle_servo1(15 downto 8) <= rx_data_out;
                        state_output_angle <= X"0";
                    end if;
                when    others  =>

            end case;
        end if;
    end process;
angle_servo <= angle_servo1;

end Behavioral;
