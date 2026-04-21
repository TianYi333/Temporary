
library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UART is
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
end UART;

architecture Behavioral of UART is

    signal UART_RX1     : std_logic:='1';

    signal bd_cnt  : std_logic_vector(11 downto 0):=X"000";
    
    signal bd_cnt1  : std_logic_vector(11 downto 0):=X"000";

    -- 115200bps 100MHz
    --signal bd_115200   : std_logic_vector(11 downto 0):=X"364";     -- 868
    --signal hf_115200    : std_logic_vector (11 downto 0):=X"1B2";   -- 434

    -- 115200bps 125MHz
    signal bd_115200   : std_logic_vector(11 downto 0):=X"43D";     -- 1085
    signal hf_115200    : std_logic_vector (11 downto 0):=X"21F";   -- 543

    -- 2Mbps
    --signal bd_115200   : std_logic_vector(11 downto 0):=X"032";     -- 50
    --signal hf_115200    : std_logic_vector (11 downto 0):=X"019";   -- 25

    -- 1 Mbps
    --signal bd_115200   : std_logic_vector(11 downto 0):=X"064";     -- 100
    --signal hf_115200    : std_logic_vector (11 downto 0):=X"032";   -- 50

    signal bd_clk       : std_logic:='0';
    signal bd_clk_temp  : std_logic:='0';

    signal bd_clk1       : std_logic:='0';
    signal bd_clk1_temp  : std_logic:='0';

    signal rx_end_cnt   : std_logic_vector(15 downto 0):=(others => '0');
    signal rx_end   : std_logic_vector(15 downto 0):=X"FFFF";

    signal state_rx : std_logic_vector(3 downto 0):=X"0";
    signal state_tx : std_logic_vector(3 downto 0):=X"F";

    signal UART_DATA_OUT_temp   : std_logic_vector(7 downto 0):=X"00";
    signal UART_DATA_IN_temp   : std_logic_vector(7 downto 0):=X"00";

    signal UART_DATA_IN_VALID_temp : std_logic:='0';
    signal UART_DATA_out_VALID_temp : std_logic:='0';

    signal UART_RX_temp : std_logic:='1';
    signal uart_ready_cnt   : std_logic_vector(3 downto 0):=X"0";

    COMPONENT ila_0

        PORT (
            clk : IN STD_LOGIC;



            probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            probe4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
        );
    END COMPONENT  ;

    signal UART_DATA_OUT_END1   : std_logic:='1';

begin

    bd_clk_gen : process(clk_in)
    begin
        if rising_edge (clk_in) then
            bd_clk_temp <= bd_clk;
            if bd_cnt < hf_115200   then
                bd_cnt <= bd_cnt + '1';
                bd_clk <= '0';
            elsif bd_cnt < bd_115200 - '1'    then
                bd_cnt <= bd_cnt + '1';
                bd_clk <= '1';
            else
                bd_cnt <= (others => '0');
            end if;
        end if;
    end process;

    RX_clk1_gen : process(clk_in)
    begin
        if rising_edge (clk_in) then
            bd_clk1_temp <= bd_clk1;
            if state_rx = X"0" then
                bd_cnt1 <= (others => '0');
            else
                if bd_cnt1 < hf_115200   then
                    bd_cnt1 <= bd_cnt1 + '1';
                    bd_clk1 <= '0';
                elsif bd_cnt1 < bd_115200 - '1'    then
                    bd_cnt1 <= bd_cnt1 + '1';
                    bd_clk1 <= '1';
                else
                    bd_cnt1 <= (others => '0');
                end if;
            end if;
        end if;
    end process;

    rx_gen : process(clk_in)
    begin
        if rising_edge(clk_in)  then
            UART_RX1 <= UART_RX;
            case state_rx is
                when    X"0"    =>
                    UART_DATA_out_VALID_temp <= '0';
                    if UART_RX1 = '0'    then
                        state_rx <= state_rx + '1';
                        rx_end_cnt <= (others => '0');
                    else
                        if rx_end_cnt /= rx_end  then
                            rx_end_cnt <= rx_end_cnt + '1';
                        end if;
                    end if;
                when    X"1"    =>
                    if bd_clk1_temp = '0' and bd_clk1 = '1'   then
                        if UART_RX1 = '0'   then
                            state_rx <= state_rx + '1';
                        else
                            state_rx <= X"0";
                        end if;
                    end if;
                when    X"2"    =>
                    if bd_clk1_temp = '0' and bd_clk1 = '1'   then
                        UART_DATA_OUT_temp(0) <= UART_RX1;
                        state_rx <= state_rx + '1';
                    end if;
                when    X"3"    =>
                    if bd_clk1_temp = '0' and bd_clk1 = '1'   then
                        UART_DATA_OUT_temp(1) <= UART_RX1;
                        state_rx <= state_rx + '1';
                    end if;
                when    X"4"    =>
                    if bd_clk1_temp = '0' and bd_clk1 = '1'   then
                        UART_DATA_OUT_temp(2) <= UART_RX1;
                        state_rx <= state_rx + '1';
                    end if;
                when    X"5"    =>
                    if bd_clk1_temp = '0' and bd_clk1 = '1'   then
                        UART_DATA_OUT_temp(3) <= UART_RX1;
                        state_rx <= state_rx + '1';
                    end if;
                when    X"6"    =>
                    if bd_clk1_temp = '0' and bd_clk1 = '1'   then
                        UART_DATA_OUT_temp(4) <= UART_RX1;
                        state_rx <= state_rx + '1';
                    end if;
                when    X"7"    =>
                    if bd_clk1_temp = '0' and bd_clk1 = '1'   then
                        UART_DATA_OUT_temp(5) <= UART_RX1;
                        state_rx <= state_rx + '1';
                    end if;
                when    X"8"    =>
                    if bd_clk1_temp = '0' and bd_clk1 = '1'   then
                        UART_DATA_OUT_temp(6) <= UART_RX1;
                        state_rx <= state_rx + '1';
                    end if;
                when    X"9"    =>
                    if bd_clk1_temp = '0' and bd_clk1 = '1'   then
                        UART_DATA_OUT_temp(7) <= UART_RX1;
                        state_rx <= state_rx + '1';
                    end if;
                when    X"A"    =>
                    if bd_clk1_temp = '0' and bd_clk1 = '1'   then
                        if UART_RX1 = '1'   then
                            UART_DATA_out_VALID_temp <= '1';
                        end if;
                        state_rx <= X"0";
                    end if;
                when    others  =>
                    state_rx <= X"0";
            end case;
        end if;
    end process;

    UART_DATA_OUT <= UART_DATA_OUT_temp;
    UART_DATA_out_VALID <= UART_DATA_out_VALID_temp;
    UART_DATA_OUT_END1 <= '1' when   rx_end_cnt = rx_end  else '0';
    UART_DATA_OUT_END <= UART_DATA_OUT_END1;

    tx_gen : process(clk_in)
    begin
        if rising_edge (clk_in) then
            UART_DATA_IN_VALID_temp <= UART_DATA_IN_VALID;
            if UART_DATA_IN_VALID_temp ='0' and UART_DATA_IN_VALID = '1'    then
                UART_DATA_IN_temp <= UART_DATA_IN;
                state_tx <= X"E";
            end if;
            if  bd_clk_temp = '0' and bd_clk = '1'   then
                case state_tx is
                    when    X"0"    =>
                        state_tx <= state_tx + '1';
                        UART_TX <= '0';
                    when    X"1"    =>              -- LSB 模式 why 20211130
                        state_tx <= state_tx + '1';
                        UART_TX <= UART_DATA_IN_temp(0);
                    when    X"2"    =>
                        state_tx <= state_tx + '1';
                        UART_TX <= UART_DATA_IN_temp(1);
                    when    X"3"    =>
                        state_tx <= state_tx + '1';
                        UART_TX <= UART_DATA_IN_temp(2);
                    when    X"4"    =>
                        state_tx <= state_tx + '1';
                        UART_TX <= UART_DATA_IN_temp(3);
                    when    X"5"    =>
                        state_tx <= state_tx + '1';
                        UART_TX <= UART_DATA_IN_temp(4);
                    when    X"6"    =>
                        state_tx <= state_tx + '1';
                        UART_TX <= UART_DATA_IN_temp(5);
                    when    X"7"    =>
                        state_tx <= state_tx + '1';
                        UART_TX <= UART_DATA_IN_temp(6);
                    when    X"8"    =>
                        state_tx <= state_tx + '1';
                        UART_TX <= UART_DATA_IN_temp(7);
                    when    X"9"    =>
                        UART_TX <= '1';
                        state_tx <= X"F";
                    when    X"E"    =>      -- 用来同步第一个低电平的时钟，避免第一个低电平不够一个周期    why 20220302
                        UART_TX <= '1';
                        state_tx <= X"0";
                    when    X"F"    =>      -- 停止状态 why 20211129

                    when    others =>
                        state_tx <= X"F";
                end case;
            end if;
        end if;
    end process;
    UART_DATA_IN_READY <= '0' when  (state_tx /=X"F" or UART_DATA_IN_VALID = '1' or UART_DATA_OUT_END1 = '0')  else '1';

end Behavioral;
