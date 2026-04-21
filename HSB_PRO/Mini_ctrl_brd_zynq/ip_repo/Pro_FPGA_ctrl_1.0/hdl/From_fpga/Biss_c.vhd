----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2024/01/12 17:02:09
-- Design Name: 
-- Module Name: Biss_c - Behavioral
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
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Biss_c is
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
        
        -- 角度信息输入
        MA                          : in std_logic;
        SLO                         : in std_logic;
        -- 角度信息解析结果输出
        angle_out                   : out std_logic_vector(15 downto 0)    
   );
end Biss_c;

architecture Behavioral of Biss_c is

    signal   rx_data_valid1               :   std_logic;
    signal   rx_data_last1                :   std_logic;
    signal   rx_data_data1                :   std_logic_vector(7 downto 0);
    
signal  MA_temp     : std_logic:='1';
signal  MA_temp1     : std_logic:='1';
signal  MA_temp2     : std_logic:='1';
signal  SLO_temp    : std_logic:='1';
signal  SLO_temp1    : std_logic:='1';
signal  SLO_temp2    : std_logic:='1';

signal  state_main  : std_logic_vector(3 downto 0):=(others => '0');
signal  state_angle  : std_logic_vector(3 downto 0):=(others => '0');
signal  info_vector : std_logic_vector(29 downto 0):=(others => '0');
signal  index       : integer:=0;
signal  time_error_cnt  : std_logic_vector(7 downto 0):=(others => '0');
--signal  angle_0       : std_logic_vector(16 downto 0):=B"0_1000_1110_1101_1010";  -- 8EDA / 36570
--signal  angle_0       : std_logic_vector(16 downto 0):=B"0_0110_1101_0111_1000";  -- 6D78 / 28024
signal  angle_0       : std_logic_vector(16 downto 0):=B"0_0011_0110_0101_0111";  -- 3657 / dec2bin(round((360-321.78)/360*2^17))
--signal  angle_0       : std_logic_vector(16 downto 0):=(others => '0');

COMPONENT mult_gen_0
  PORT (
    CLK : IN STD_LOGIC;
    A : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;
signal    A : STD_LOGIC_VECTOR(16 DOWNTO 0):=(others => '0');
constant  B : STD_LOGIC_VECTOR(15 DOWNTO 0):=X"8CA0";
signal    P : STD_LOGIC_VECTOR(15 DOWNTO 0):=(others => '0');
signal   angle_zero : std_logic_vector(15 downto 0):=(others => '0');
signal   angle_out1 : std_logic_vector(15 downto 0):=(others => '0');
signal    cmd       : std_logic_vector(7 downto 0):=(others => '0');

COMPONENT ila_0

PORT (
	clk : IN STD_LOGIC;



	probe0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
	probe1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
	probe2 : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
	probe3 : IN STD_LOGIC_VECTOR(16 DOWNTO 0)
);
END COMPONENT  ;

begin
  
process(gtx_clk)
begin
if rising_edge(gtx_clk) then
            rx_data_valid1  <= rx_data_valid;
            rx_data_last1   <= rx_data_last ;
            rx_data_data1   <= rx_data_data ;
    case    state_main  is
        when    X"0"    =>
            if rx_data_last1 = '1' then
                state_main <= state_main + '1';
            end if;
        when    X"1"    =>
            angle_0 <= info_vector(24 downto 8);
            state_main <= state_main + '1';
            tx_data_data <= (others => '0');
            tx_data_last <= '1';
            tx_data_valid <= '1';
        when    X"2"    =>
            tx_data_last <= '0';
            tx_data_valid <= '0';  
            state_main <= (others => '0');  
        when    others  =>
            state_main <= (others => '0');    
    end case;
end if;
end process;


inst_ila : ila_0
PORT MAP (
	clk => gtx_clk,



	probe0 => angle_out1, 
	probe1 => P, 
	probe2 => A,
	probe3 => info_vector(24 downto 8)
);

inst_mult_gen_0 : mult_gen_0
  PORT MAP (
    CLK => gtx_clk,
    A => A,
    B => B,
    P => P
  );
  
process(gtx_clk)
begin
if rising_edge(gtx_clk) then 
    angle_out <= angle_out1;
    if P(15) = '0'   then
        angle_out1 <= P;
    else
        angle_out1 <= P + B;
    end if;    
    A <= angle_0 - info_vector(24 downto 8);
    MA_temp <= MA;
    SLO_temp <= SLO;
    if MA_temp = MA then
        MA_temp1 <= MA;
    end if;
    MA_temp2 <= MA_temp1;
    if SLO_temp = SLO then
        SLO_temp1 <= SLO;
    end if;
    SLO_temp2 <= SLO_temp1;
    case    state_angle  is
        when    X"0"    =>
            if MA_temp2 = '0' and MA_temp1 = '1' then
                state_angle <= state_angle + '1';                
            end if;
        when    X"1"    =>
            info_vector(29) <= SLO_temp1;
            index <= 28;
            state_angle <= state_angle + '1'; 
        when    X"2"    =>
            if MA_temp2 = '0' and MA_temp1 = '1' then       -- 上升沿读取数据
                state_angle <= state_angle + '1'; 
                time_error_cnt <= (others => '0');
            else        -- 超过时钟周期无数据则跳出循环
                if time_error_cnt < X"60"   then
                    time_error_cnt <= time_error_cnt + '1';
                else
                    time_error_cnt <= (others => '0');
                    state_angle <= X"0";
                end if;               
            end if;            
        when    X"3"    =>
            info_vector(index) <= SLO_temp1;
            if index = 0 then
                state_angle <= X"0";
            else
                index <= index - 1;
                state_angle <= X"2";
            end if;                        
        when    others  =>
                
    end case;
end if;
end process;

end Behavioral;
