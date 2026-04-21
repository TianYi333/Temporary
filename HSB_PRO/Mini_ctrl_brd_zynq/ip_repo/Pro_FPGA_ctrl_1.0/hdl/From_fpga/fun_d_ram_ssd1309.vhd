----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/12 17:08:06
-- Design Name: 
-- Module Name: fun_d_ram_ssd1309 - Behavioral
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

entity fun_d_ram_ssd1309 is
    Port (
        clk               :   in std_logic;
        rst               :   in std_logic;
        d_ram_rst         :   in std_logic;
        rom_addr          :   in std_logic_Vector(11 downto 0);
        c_length          :   in std_logic_vector(11 downto 0);
        offset_row        :   in std_logic_vector(7 downto 0);
        offset_line       :   in std_logic_vector(7 downto 0);
        fun_valid         :   in std_logic;
        fun_ready         :   out std_logic:='0';
        rd_addr           :   in std_logic_vector(9 downto 0);
        rd_addr_valid     :   in std_logic;
        data_out          :   out std_logic_vector(7 downto 0):=(others => '0');
        data_out_valid    :   out std_logic:='0'
    );
end fun_d_ram_ssd1309;

architecture Behavioral of fun_d_ram_ssd1309 is

    signal   rom_addr1          :    std_logic_Vector(11 downto 0);
    signal   c_length1          :    std_logic_vector(11 downto 0);
    signal   offset_row1        :    std_logic_vector(7 downto 0);
    signal   offset_line1       :    std_logic_vector(7 downto 0);

    component d_ram_ssd1309
        Port (
            clk               :   in std_logic;
            rst               :   in std_logic;
            data_in           :   in std_logic_vector(15 downto 0);
            data_in_valid     :   in std_logic;
            offset_row        :   in std_logic_vector(7 downto 0);
            offset_line       :   in std_logic_vector(7 downto 0);
            rd_addr           :   in std_logic_vector(9 downto 0);
            data_out          :   out std_logic_vector(7 downto 0)
        );
    end component;

    signal    d_ram_offset_row        :    std_logic_vector(7 downto 0);
    signal    d_ram_offset_line       :    std_logic_vector(7 downto 0);
    --    signal  d_ram_rst               :    std_logic:='0';
    signal  d_ram_data_in           :    std_logic_vector(15 downto 0):=(others => '0');
    signal  d_ram_data_in_valid     :    std_logic:='0';
    signal  d_ram_data_out          :    std_logic_vector(7 downto 0):=(others => '0');

    COMPONENT blk_mem_gen_1
        PORT (
            clka : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;
    -- Ã¿¸ö×Ö16bit*16
    -- £¨1-7£©*16£ºº½Ïò¸©Ñö·­¹ö½Ç   

    signal    rom_angle_c_addra     :  STD_LOGIC_VECTOR(11 DOWNTO 0);
    signal    rom_angle_c_douta     :  STD_LOGIC_VECTOR(15 DOWNTO 0);
    signal    rom_data_valid        :  std_logic:='0';
    signal    rom_data_valid1       :  std_logic:='0';
    signal    rom_data_valid2       :  std_logic:='0';
    signal    state_main            :  std_logic_vector(3 downto 0):=(others => '0');
    signal    state_write_d_ram     :  std_logic_vector(3 downto 0):=(others => '0');


begin

fun_ready <= '1' when state_main = X"0" and state_write_d_ram = X"0" and fun_valid = '0' else '0';

    process(clk)
    begin
        if rising_edge(clk) then
            rom_data_valid1 <= rom_data_valid;
            rom_data_valid2 <= rom_data_valid1;
            if rst = '1'    then
                state_main <= (others => '0');
                state_write_d_ram <= (others => '0');
            else
                case    state_main is
                    when    X"0" =>
                        if fun_valid = '1'  then
                            rom_addr1       <= rom_addr   ;
                            rom_angle_c_addra       <= rom_addr   ;
                            c_length1       <= c_length   ;
                            offset_row1     <= offset_row ;
                            offset_line1    <= offset_line;
                            state_main <= state_main + '1';
                            rom_data_valid <= '1';                            
                        else
                            rom_data_valid <= '0';
                        end if;
                    when    X"1" =>
                        if rom_angle_c_addra < rom_addr1 + c_length1 - '1'    then
                            rom_angle_c_addra <= rom_angle_c_addra + '1';
                        else
                            state_main <= state_main + '1';
                            rom_data_valid <= '0';
                        end if;
                    when    X"2" =>                        
                        state_main <= (others => '0');
                    when    others  =>
                        state_main <= (others => '0');
                end case;

                case state_write_d_ram is
                    when    X"0"    =>
                        if  rom_data_valid2 = '1'   then
                            d_ram_data_in <= rom_angle_c_douta;
                            d_ram_data_in_valid <= '1';
                            d_ram_offset_row <= offset_row;
                            d_ram_offset_line <= offset_line;
                            state_write_d_ram <= state_write_d_ram + '1';
                        else
                            d_ram_data_in_valid <= '0';
                        end if;
                    when    X"1"    =>
                        if  rom_data_valid2 = '1'   then
                            d_ram_data_in <= rom_angle_c_douta;
                            d_ram_data_in_valid <= '1';
                            d_ram_offset_line <= d_ram_offset_line + '1';                            
                        else
                            d_ram_data_in_valid <= '0';
                            state_write_d_ram <= state_write_d_ram + '1';
                        end if;
                    when    X"2"    =>
                        state_write_d_ram <= (others => '0');
                    when    others  =>
                        state_write_d_ram <= (others => '0');
                end case;
            end if;
        end if;
    end process;

    inst_d_ram_ssd1309 : d_ram_ssd1309
        port map(
            clk             =>  clk          ,
            rst             =>  rst or d_ram_rst,
            data_in         =>  d_ram_data_in      ,
            data_in_valid   =>  d_ram_data_in_valid,
            offset_row      =>  d_ram_offset_row   ,
            offset_line     =>  d_ram_offset_line  ,
            rd_addr         =>  rd_addr      ,
            data_out        =>  d_ram_data_out
        );

process(clk)
begin
if rising_edge(clk) then
    data_out_valid <= rd_addr_valid;
    data_out <= d_ram_data_out;
end if;
end process;

    rom_angle_c : blk_mem_gen_1
        PORT MAP (
            clka => clk,
            addra => rom_angle_c_addra,
            douta => rom_angle_c_douta
        );

end Behavioral;
