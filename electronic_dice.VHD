library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity electronic_dice is
    Port (
        clk : in STD_LOGIC := '1';
        btn : in STD_LOGIC;
        dice_out : buffer STD_LOGIC_VECTOR(2 downto 0) := "001"
    );
end electronic_dice;

architecture Behavioral of electronic_dice is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if btn = '1' then
                dice_out <= std_logic_vector(unsigned(dice_out) + 1);
                if dice_out = "110" then
                    dice_out <= "001";
                end if;
            end if;
        end if;
    end process;
end Behavioral;
