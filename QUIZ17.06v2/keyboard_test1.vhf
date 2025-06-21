--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : keyboard_test1.vhf
-- /___/   /\     Timestamp : 06/10/2025 14:52:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/QUIZ10.06/QUIZ3.06/keyboard_test1.vhf -w C:/Users/lab/Desktop/QUIZ10.06/QUIZ3.06/keyboard_test1.sch
--Design Name: keyboard_test1
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity keyboard_test1 is
   port ( Clk_50MHz : in    std_logic; 
          Ps2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          led       : out   std_logic_vector (7 downto 0); 
          ready     : out   std_logic);
end keyboard_test1;

architecture BEHAVIORAL of keyboard_test1 is
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
begin
   XLXI_5 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>Ps2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>led(7 downto 0),
                DO_Rdy=>open,
                E0=>open,
                F0=>open);
   
end BEHAVIORAL;


