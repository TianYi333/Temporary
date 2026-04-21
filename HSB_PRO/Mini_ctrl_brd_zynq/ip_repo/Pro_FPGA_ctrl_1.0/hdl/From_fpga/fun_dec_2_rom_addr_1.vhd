----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/14 10:02:28
-- Design Name: 
-- Module Name: fun_dec_2_rom_addr - Behavioral
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

entity fun_dec_2_rom_addr_1 is
    Port (
        clk                       : in std_logic;
        fun_ready                 : out std_logic:='0';
        hex_data_in               : in std_logic_Vector(15 downto 0);
        hex_data_in_valid         : in std_logic;
        integer_num               : in integer:=3;        -- 整数位数
        display_flag              : in std_logic_vector(3 downto 0);
        hex_or_dec                : in std_logic;
        dec_rom_addr_out          : out std_logic_Vector(11 downto 0);
        dec_rom_addr_out_valid    : out std_logic
    );
end fun_dec_2_rom_addr_1;

architecture Behavioral of fun_dec_2_rom_addr_1 is

    component fun_hex_2_dec_1
        Port (
            clk                       : in std_logic;
            hex_data_in               : in std_logic_Vector(15 downto 0);
            hex_data_in_valid         : in std_logic;
            dec_data_out              : out std_logic_vector(20 downto 0);
            dec_data_out_valid        : out std_logic
        );
    end component;
    signal    dec_data_out              :  std_logic_vector(20 downto 0);
    signal    dec_data_out1              :  std_logic_vector(20 downto 0);
    signal    dec_data_out_valid        :  std_logic;
    type    array_12  is array(1 to 8) of std_logic_Vector(11 downto 0);
    signal    array_rom_addr   : array_12:=(others => (others => '1'));
    signal  array_index     : integer:=1;
    signal  state_main      : std_logic_vector(3 downto 0):=(OTHERS => '0');

    type    array_12_1  is array(0 to 19) of std_logic_Vector(11 downto 0);
    constant    array_c_addr    : array_12_1:=(
        0 => X"070",  -- 0
        1 => X"078",  -- 1
        2 => X"080",  -- 2
        3 => X"088",  -- 3
        4 => X"090",  -- 4
        5 => X"098",  -- 5
        6 => X"0A0",  -- 6
        7 => X"0A8",  -- 7
        8 => X"0B0",  -- 8
        9 => X"0B8",  -- 9
        10 => X"1B0",  -- A
        11 => X"1B8",  -- B
        12 => X"1C0",  -- C
        13 => X"1C8",  -- D
        14 => X"1D0",  -- E
        15  => X"1D8",  -- F        
        16 => X"0F8",  -- .
        17 => X"0C8",  -- °
        18 => X"0D0",  -- -        
        19 => X"FFF"  -- null

    );

    signal      integer_cnt     : integer:=1;
    signal      hex_data_in1    : std_logic_Vector(15 downto 0):=(others => '0');
    

begin

    fun_ready <= '1' when   state_main = X"0" and dec_data_out_valid = '0' else '0';

    process(clk)
    begin
        if rising_edge(clk) then            
            case    state_main  is
                when    X"0"    =>
                    dec_rom_addr_out_valid <= '0';
                    integer_cnt <= 1;
                    if dec_data_out_valid = '1' then
                        if hex_or_dec = '0' then                -- dec
                            dec_data_out1 <= dec_data_out;
                            state_main <= state_main + '1';
                            array_index <= 1;
                        else                                    -- hex
                            state_main <= X"A";
                            hex_data_in1 <= hex_data_in;
                        end if;
                    end if;
                when    X"1"    =>      -- 负号
                    if dec_data_out1(20) = '1'  then
                        array_rom_addr(array_index) <= array_c_addr(18);
                        array_index <= array_index + 1;
                    end if;
                    state_main <= state_main + '1';                    
                when    X"2"    =>      -- 确定整数部分第一个不为0的位置
                    if integer_cnt < integer_num   then
                        if dec_data_out1((6- integer_cnt)*4 - 1 downto (5 - integer_cnt)*4) = X"0"   then
                            integer_cnt <= integer_cnt + 1;
                        else
                            state_main <= state_main + '1';
                        end if;
                    else
                        state_main <= state_main + '1';
                    end if;
                when    X"3"    =>      -- 输出整数
                    array_rom_addr(array_index) <= array_c_addr(to_integer(unsigned(dec_data_out1((6- integer_cnt)*4 - 1 downto (5 - integer_cnt)*4))));
                    array_index <= array_index + 1;
                    integer_cnt <= integer_cnt + 1;
                    if integer_cnt = integer_num   then
                        state_main <= state_main + '1';
                    end if;
                when    X"4"    =>      -- output .
                    if integer_num >= 5 then
                        state_main <= X"6";
                    else
                        array_rom_addr(array_index) <= array_c_addr(16);
                        array_index <= array_index + 1;
                        state_main <= state_main + '1';
                    end if;
                when    X"5"    =>      -- output frac
                    array_rom_addr(array_index) <= array_c_addr(to_integer(unsigned(dec_data_out1((6- integer_cnt)*4 - 1 downto (5 - integer_cnt)*4))));
                    array_index <= array_index + 1;
                    integer_cnt <= integer_cnt + 1;
                    if integer_cnt = 5 then
                        state_main <= state_main + '1';
                        integer_cnt <= 1;
                    end if;
                when    X"6"    =>      -- output °
                    if display_flag(0) = '1'    then
                        array_rom_addr(array_index) <= array_c_addr(17);
                        array_index <= array_index + 1;
                    end if;
                    state_main <= state_main + '1';
                when    X"7"    =>      -- output C
                    if display_flag(1) = '1'    then
                        array_rom_addr(array_index) <= array_c_addr(12);
                        array_index <= array_index + 1;
                    end if;
                    state_main <= state_main + '1';
                when    X"8"    =>      -- output left
                    array_rom_addr(array_index) <= array_c_addr(19);
                    if array_index < 8 then
                        array_index <= array_index + 1;
                    else
                        array_index <= 1;
                        state_main <= state_main + '1';
                    end if;
                when    X"9"    =>  -- output rom addr
                    dec_rom_addr_out_valid <= '1';
                    dec_rom_addr_out <= array_rom_addr(array_index);
                    if  array_index < 8 then
                        array_index <= array_index + 1;
                    else
                        array_index <= 1;
                        state_main <= X"0";
                    end if;
                    
                when    X"A"    =>
                    dec_rom_addr_out_valid <= '1';
                    dec_rom_addr_out <= array_c_addr(to_integer(unsigned(hex_data_in1(7 downto 4))));
                    state_main <= state_main + '1';
                when    X"B"    =>
                    dec_rom_addr_out <= array_c_addr(to_integer(unsigned(hex_data_in1(3 downto 0))));
                    state_main <= X"0";
                when    others  =>

            end case;
        end if;
    end process;

    inst_fun_hex_2_dec_1 : fun_hex_2_dec_1
        port map(
            clk                    =>   clk               ,
            hex_data_in            =>   hex_data_in       ,
            hex_data_in_valid      =>   hex_data_in_valid ,
            dec_data_out           =>   dec_data_out      ,
            dec_data_out_valid     =>   dec_data_out_valid
        );

end Behavioral;
