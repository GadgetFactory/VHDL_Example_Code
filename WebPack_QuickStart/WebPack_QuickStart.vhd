----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:27:39 04/11/2013 
-- Design Name: 
-- Module Name:    WebPack_QuickStart - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity WebPack_QuickStart is
    Port ( A : out  STD_LOGIC_VECTOR (15 downto 0);
           B : out  STD_LOGIC_VECTOR (15 downto 0);
           C : out  STD_LOGIC_VECTOR (15 downto 0);
			  clk : in STD_LOGIC);
end WebPack_QuickStart;

architecture Behavioral of WebPack_QuickStart is
 signal counter : STD_LOGIC_VECTOR(47 downto 0) := (others => '0');
begin 
	--Counter to drive blinking pins 
	count: process(clk)
   begin
     if rising_edge(clk) then
       counter <= counter+1;
     end if;
   end process;
	--Pins are connected to the counter to cause blinking at varying frequencies 
	A <= counter(35 downto 20);
	B <= counter(31 downto 16);
	C <= counter(15 downto 0); 
end Behavioral;