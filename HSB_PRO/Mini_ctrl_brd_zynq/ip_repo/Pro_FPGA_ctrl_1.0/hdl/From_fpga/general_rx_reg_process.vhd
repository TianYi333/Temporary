----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/03/17 11:35:02
-- Design Name: 
-- Module Name: general_rx_reg_process - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity general_rx_reg_process is
    generic(
        async_en        : std_logic:='1';
        regs_num        : integer:=10
    );
    Port (
        rst                       : in std_logic;
        gtx_clk                   : in std_logic;
        clk_in                    : in std_logic;
        -- rx cmd data
        rx_data_valid             : in  std_logic;
        rx_data_last              : in  std_logic;
        rx_data_data              : in  std_logic_vector(7 downto 0);
        -- tx data
        tx_data_valid             : out std_logic;
        tx_data_last              : out std_logic;
        tx_data_data              : out std_logic_vector(7 downto 0);

        regs_wr_en_array          : in  std_logic_vector(1 to regs_num):=(others => '1');
        regs_default              : in  bus_array(1 to regs_num);
        reg_out_xx                : out bus_array(1 to regs_num);
        reg_out_xx_valid          : out std_logic_vector(1 to regs_num);
        reg_out                   : out std_logic_vector(7 downto 0):=(others => '0');
        reg_data_out              : out std_logic_vector(31 downto 0):=(others => '0');
        reg_out_valid             : out std_logic:='0';
        reg_decode_end            : out std_logic:='0';
        reg_in_xx_ready           : out std_logic:='0';
        reg_in_xx                 : in bus_array(1 to regs_num);
        reg_in_xx_valid           : in std_logic_vector(1 to regs_num):=(others => '0')
    );
end general_rx_reg_process;

architecture Behavioral of general_rx_reg_process is

    signal  zeros_reg_in               :  std_logic_vector(1 to regs_num):=(others => '0');
    signal  reg_in_xx1                 :  bus_array(1 to regs_num);
    -- 存放内部寄存器数据
    signal  reg_out_xx1                :  bus_array(1 to regs_num):=regs_default;
    signal  reg_out_xx_valid1          :  std_logic_vector(1 to regs_num):=(others => '0');

    signal  reg_decode_end1            :  std_logic:='0';
    signal  rx_data_valid1             :  std_logic:='0';
    signal  rx_data_last1              :  std_logic:='0';
    signal  rx_data_data1              :  std_logic_vector(7 downto 0);

    signal  rx_data_valid2             :  std_logic:='0';
    signal  rx_data_last2              :  std_logic:='0';
    signal  rx_data_data2              :  std_logic_vector(7 downto 0);

    signal  rx_data_valid3             :  std_logic:='0';
    signal  rx_data_last3              :  std_logic:='0';
    signal  rx_data_data3              :  std_logic_vector(7 downto 0);

    signal  tx_data_valid1             :  std_logic:='0';
    signal  tx_data_last1              :  std_logic:='0';
    signal  tx_data_data1              :  std_logic_vector(7 downto 0);

    signal  state_op                : std_logic_vector(3 downto 0):=(others => '1');
    signal  state_data              : std_logic_vector(3 downto 0):=(others => '0');

    signal  op00_rx_data_valid             :  std_logic:='0';
    signal  op00_rx_data_last              :  std_logic:='0';
    signal  op00_rx_data_data              :  std_logic_vector(7 downto 0);

    signal  op01_rx_data_valid             :  std_logic:='0';
    signal  op01_rx_data_last              :  std_logic:='0';
    signal  op01_rx_data_data              :  std_logic_vector(7 downto 0);

    component RX_DATA_TO_REG
        generic(
            used_regs        : integer:=5
        );
        Port (
            clk_in                     : in   std_logic;
            ---- rx data         
            rx_data_tvalid             : in   std_logic;
            rx_data_tdata              : in   std_logic_vector(7 downto 0);
            rx_data_tlast              : in   std_logic;
            ---- decode end flag
            decode_end                : out std_logic;
            reg_out                   : out std_logic_vector(7 downto 0):=(others => '0');
            reg_data_out              : out std_logic_vector(31 downto 0):=(others => '0');
            reg_out_valid             : out std_logic:='0';
            reg_xx                   : out bus_array(1 to used_regs):=(others => (others => '0'));
            reg_xx_valid             : out std_logic_vector(1 to used_regs):=(others => '0')
        );
    end component;

    signal      op00_decode_end               :  std_logic;
    signal      op00_reg_xx                   :  bus_array(1 to regs_num):=(others => (others => '0'));
    signal      op00_reg_xx_valid             :  std_logic_vector(1 to regs_num):=(others => '0');

    signal      op00_reg_xx_temp                   :  bus_array(1 to regs_num):=(others => (others => '0'));
    signal      op00_reg_xx_valid_temp             :  std_logic_vector(1 to regs_num):=(others => '0');

    signal      op01_decode_end                 :  std_logic;
    signal      op01_reg_read                   :  std_logic_vector(7 downto 0);
    signal      op01_reg_read_valid             :  std_logic;

    signal      op01_reg_xx_temp                   :  std_logic_vector(7 downto 0);
    signal      op01_reg_xx_valid_temp             :  std_logic;


    component rx_read_reg
        generic(
            used_regs        : integer:=5
        );
        Port (
            clk_in                     : in   std_logic;
            ---- rx data         
            rx_data_tvalid             : in   std_logic;
            rx_data_tdata              : in   std_logic_vector(7 downto 0);
            rx_data_tlast              : in   std_logic;
            ---- decode end flag
            decode_end                : out std_logic;
            reg_read                  : out std_logic_vector(7 downto 0);
            reg_read_valid            : out std_logic
        );
    end component;

    signal state_read_reg       : std_logic_vector(3 downto 0):=(others => '0');
    type array_temp is array(1 to regs_num) of std_logic_vector(7 downto 0);
    signal array_reg_read   : array_temp;
    signal array_reg_read_cnt : integer:=1;
    signal array_reg_read_num : integer:=1;

    signal  state_FF            : std_logic_vector(3 downto 0):=(others => '1');

    component async_rx_cmd_fifo
        Port (
            rst                       : in std_logic;
            clk_wr                    : in std_logic;
            clk_rd                    : in std_logic;
            -- rx cmd data
            rx_data_valid             : in  std_logic;
            rx_data_last              : in  std_logic;
            rx_data_data              : in  std_logic_vector(7 downto 0);
            -- rx cmd async data
            rx_async_data_valid       : out  std_logic;
            rx_async_data_last        : out  std_logic;
            rx_async_data_data        : out  std_logic_vector(7 downto 0)
        );
    end component;

    signal  rx_async_data_valid       :   std_logic:='0';
    signal  rx_async_data_last        :   std_logic:='0';
    signal  rx_async_data_data        :   std_logic_vector(7 downto 0);

    signal  tx_async_data_valid       :   std_logic:='0';
    signal  tx_async_data_last        :   std_logic:='0';
    signal  tx_async_data_data        :   std_logic_vector(7 downto 0);

begin
    --process(clk_in)
    --begin
    --if rising_edge(clk_in)  then

    --end if;
    --end process;

    async_gen : if async_en = '1' generate
    begin
        inst_rx_async_rx_cmd_fifo : async_rx_cmd_fifo
            port map(
                rst                         =>  rst                 ,
                clk_wr                      =>  gtx_clk              ,
                clk_rd                      =>  clk_in              ,
                -- rx cmd data              
                rx_data_valid               =>  rx_data_valid       ,
                rx_data_last                =>  rx_data_last        ,
                rx_data_data                =>  rx_data_data        ,
                -- rx cmd async data        
                rx_async_data_valid         =>  rx_async_data_valid ,
                rx_async_data_last          =>  rx_async_data_last  ,
                rx_async_data_data          =>  rx_async_data_data
            );
        rx_data_valid1      <=  rx_async_data_valid ;
        rx_data_last1       <=  rx_async_data_last  ;
        rx_data_data1       <=  rx_async_data_data  ;

        inst_tx_async_rx_cmd_fifo : async_rx_cmd_fifo
            port map(
                rst                         =>  rst                 ,
                clk_wr                      =>  clk_in              ,
                clk_rd                      =>  gtx_clk             ,
                -- rx cmd data              
                rx_data_valid               =>  tx_data_valid1       ,
                rx_data_last                =>  tx_data_last1        ,
                rx_data_data                =>  tx_data_data1        ,
                -- rx cmd async data        
                rx_async_data_valid         =>  tx_async_data_valid ,
                rx_async_data_last          =>  tx_async_data_last  ,
                rx_async_data_data          =>  tx_async_data_data
            );

        tx_data_valid       <=  tx_async_data_valid ;
        tx_data_last        <=  tx_async_data_last  ;
        tx_data_data        <=  tx_async_data_data  ;
    end generate;
    ------------------------------------------------------------------------------------------------------
    sync_gen : if async_en = '0' generate
        rx_data_valid1  <=    rx_data_valid;
        rx_data_last1   <=    rx_data_last ;
        rx_data_data1   <=    rx_data_data ;

        tx_data_valid   <=    tx_data_valid1;
        tx_data_last    <=    tx_data_last1 ;
        tx_data_data    <=    tx_data_data1 ;

    end generate;
    ------------------------------------------------------------------------------------------------------

    inst_op00_RX_DATA_TO_REG : RX_DATA_TO_REG
        generic map(
            used_regs   =>  regs_num
        )
        port map(
            clk_in            =>  clk_in,
            ---- rx data            
            rx_data_tvalid    =>  op00_rx_data_valid,
            rx_data_tdata     =>  op00_rx_data_data ,
            rx_data_tlast     =>  op00_rx_data_last ,
            ---- decode end flag    
            decode_end        =>  op00_decode_end  ,
            reg_out           =>    reg_out      ,
            reg_data_out      =>    reg_data_out ,
            reg_out_valid     =>    reg_out_valid,
            reg_xx            =>  op00_reg_xx      ,
            reg_xx_valid      =>  op00_reg_xx_valid
        );

    reg_temp_update : for i in 1 to regs_num generate
    begin
        op00_reg_xx_temp(i) <= op00_reg_xx(i) when op00_reg_xx_valid(i) = '1' and regs_wr_en_array(i) = '1' else reg_out_xx1(i);
        op00_reg_xx_valid_temp(i) <= '1' when op00_reg_xx_valid(i) = '1' and regs_wr_en_array(i) = '1' else '0';
    end generate;

    reg_in_update : for i in 1 to regs_num generate
    begin
        reg_in_xx1(i) <= reg_in_xx(i) when reg_in_xx_valid(i) = '1' else reg_out_xx1(i);
    end generate;

    inst_op01_rx_read_reg : rx_read_reg
        generic map(
            used_regs   =>  regs_num
        )
        port map(
            clk_in            =>  clk_in,
            ---- rx data            
            rx_data_tvalid    =>  op01_rx_data_valid,
            rx_data_tdata     =>  op01_rx_data_data ,
            rx_data_tlast     =>  op01_rx_data_last ,
            ---- decode end flag    
            decode_end        =>  op01_decode_end  ,
            reg_read          =>  op01_reg_read      ,
            reg_read_valid    =>  op01_reg_read_valid
        );



    reg_decode_end <= reg_decode_end1;
    reg_out_gen : for i in 1 to regs_num generate
    begin
        reg_out_xx(i) <= reg_out_xx1(i) when reg_out_xx_valid1(i) = '1' else
 regs_default(i) when state_op = X"F";
    end generate;
    reg_out_xx_valid <= reg_out_xx_valid1;


    op_state_gen : process(clk_in)
    begin
        if rising_edge(clk_in)  then
            if rst = '1'    then
                state_op <= X"F";
                state_FF <= X"F";
            else
                rx_data_valid2  <=  rx_data_valid1;
                rx_data_last2   <=  rx_data_last1 ;
                rx_data_data2   <=  rx_data_data1 ;
                rx_data_valid3  <=  rx_data_valid2;
                rx_data_last3   <=  rx_data_last2 ;
                rx_data_data3   <=  rx_data_data2 ;
                if rx_data_valid3 = '0' and rx_data_valid2 = '1'    then
                    case rx_data_data2 is
                        when    X"00"   =>      -- 设置寄存器参数
                            state_op <= X"0";
                        when    X"01"   =>      -- 查询寄存器参数
                            state_op <= X"1";
                        when    X"FF"   =>      -- 复位寄存器参数
                            state_op <= X"2";
                            state_FF <= X"E";
                        when    others  =>
                            null;
                    end case;
                end if;
                if reg_in_xx_valid /= zeros_reg_in then
                    state_op <= X"3";
                end if;
                case state_op is
                    when    X"0"    =>      -- op_00 write reg
                    -- 将数据传递给寄存器解码子程序
                        op00_rx_data_valid  <=  rx_data_valid2;
                        op00_rx_data_last   <=  rx_data_last2 ;
                        op00_rx_data_data   <=  rx_data_data2 ;
                        -- 返回收到的参数
                        tx_data_valid1  <=  rx_data_valid3;
                        tx_data_last1   <=  rx_data_last3 ;
                        tx_data_data1   <=  rx_data_data3 ;
                        reg_out_xx1      <=  op00_reg_xx_temp;
                        reg_out_xx_valid1 <=  op00_reg_xx_valid_temp;
                        reg_decode_end1 <= op00_decode_end;
                        if reg_decode_end1 = '1'  then
                            state_op <= X"E";
                        end if;
                    when    X"1"    =>      -- op_01 read reg
                    -- 将数据传给寄存器读操作的功能模块
                        op01_rx_data_valid  <=  rx_data_valid2;
                        op01_rx_data_last   <=  rx_data_last2 ;
                        op01_rx_data_data   <=  rx_data_data2 ;
                        -- 返回需要读的寄存器参数
                        case state_read_reg is      -- 存储需要读的寄存器
                            when    X"0"    =>
                                if op01_reg_read_valid = '1'    then
                                    array_reg_read(array_reg_read_cnt) <= op01_reg_read;
                                    array_reg_read_cnt <= array_reg_read_cnt + 1;
                                end if;
                                if op01_decode_end = '1' then
                                    state_read_reg <= X"1";
                                end if;
                            when    X"1"    =>      -- 输出操作符01
                                tx_data_valid1 <= '1';
                                tx_data_data1 <= X"01";
                                state_read_reg <= state_read_reg + '1';
                            when    X"2"    =>      -- 输出寄存器
                                state_read_reg <= state_read_reg + '1';
                                tx_data_data1 <= array_reg_read(array_reg_read_num);
                            when    X"3"    =>      -- 依次输出寄存器参数
                                state_read_reg <= state_read_reg + '1';
                                tx_data_data1 <= reg_out_xx1(TO_INTEGER(unsigned(array_reg_read(array_reg_read_num))))(31 downto 24);
                            when    X"4"    =>      -- 依次输出寄存器参数
                                state_read_reg <= state_read_reg + '1';
                                tx_data_data1 <= reg_out_xx1(TO_INTEGER(unsigned(array_reg_read(array_reg_read_num))))(23 downto 16);
                            when    X"5"    =>      -- 依次输出寄存器参数
                                state_read_reg <= state_read_reg + '1';
                                tx_data_data1 <= reg_out_xx1(TO_INTEGER(unsigned(array_reg_read(array_reg_read_num))))(15 downto 8);
                            when    X"6"    =>      -- 依次输出寄存器参数
                                state_read_reg <= state_read_reg + '1';
                                tx_data_data1 <= reg_out_xx1(TO_INTEGER(unsigned(array_reg_read(array_reg_read_num))))(7 downto 0);
                                if array_reg_read_num = array_reg_read_cnt - 1 then
                                    array_reg_read_num <= 1;
                                    array_reg_read_cnt <= 1;
                                    tx_data_last1 <= '1';
                                    state_read_reg <= X"7";
                                else
                                    array_reg_read_num <= array_reg_read_num + 1;
                                    state_read_reg <= X"2";
                                end if;
                            when    X"7"    =>
                                tx_data_last1 <= '0';
                                tx_data_valid1 <= '0';
                                tx_data_data1 <= (others => '0');
                                state_read_reg <= X"0";
                                state_op <= X"E";
                            when    others  =>
                                state_read_reg <= X"0";
                        end case;
                    when    X"2"    =>      -- 复位寄存器预设值，并返回所有寄存器信息
                        reg_out_xx1      <=  regs_default;
                        reg_out_xx_valid1 <= (others => '1');
                        reg_decode_end1 <= '1';
                        state_op <= X"E";
                    when    X"3"    =>      -- reg in
                        reg_out_xx1 <= reg_in_xx1;
                        state_FF <= X"F";
                    when    X"E"    =>      -- idle        
                        reg_out_xx_valid1 <= (others => '0');
                        reg_decode_end1 <= '0';
                    when    X"F"    =>      -- ini            
                        reg_out_xx1      <=  regs_default;
                        state_op <= X"E";
                    when    others  =>

                end case;
                ---- 返回全部寄存器的默认值    
                case state_FF is
                    when    X"0"    =>
                        tx_data_valid1 <= '1';
                        tx_data_data1 <= X"FF";
                        state_FF <= state_FF + '1';
                    when    X"1"    =>
                        tx_data_data1 <= std_logic_vector(to_unsigned(array_reg_read_num,8));
                        state_FF <= state_FF + '1';
                    when    X"2"    =>
                        tx_data_data1 <= reg_out_xx1(array_reg_read_num)(31 downto 24);
                        state_FF <= state_FF + '1';
                    when    X"3"    =>
                        tx_data_data1 <= reg_out_xx1(array_reg_read_num)(23 downto 16);
                        state_FF <= state_FF + '1';
                    when    X"4"    =>
                        tx_data_data1 <= reg_out_xx1(array_reg_read_num)(15 downto 8);
                        state_FF <= state_FF + '1';
                    when    X"5"    =>
                        tx_data_data1 <= reg_out_xx1(array_reg_read_num)(7 downto 0);
                        if array_reg_read_num = regs_num then
                            tx_data_last1 <= '1';
                            array_reg_read_num <= 1;
                            state_FF <= state_FF + '1';
                        else
                            state_FF <= X"1";
                            array_reg_read_num <= array_reg_read_num + 1;
                        end if;
                    when    X"6"    =>
                        tx_data_last1 <= '0';
                        tx_data_valid1 <= '0';
                        state_FF <= X"F";
                    when    X"E"    =>
                        if rx_data_last3 = '1'   then
                            state_FF <= X"0";
                        end if;
                    when    X"F"    =>
                        null;
                    when    others  =>
                        state_FF <= X"F";
                end case;
            end if;
        end if;
    end process;
    reg_in_xx_ready <= '1' when state_op = X"E" else '0';



end Behavioral;
