--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : core_drc.vhf
-- /___/   /\     Timestamp : 06/17/2025 13:19:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl core_drc.vhf -w C:/Users/lab/Desktop/QUIZ10.06v2/QUIZ10.06/QUIZ3.06/core.sch
--Design Name: core
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

entity core is
   port ( CLK      : in    std_logic; 
          PS2_Clk  : in    std_logic; 
          PS2_Data : in    std_logic);
end core;

architecture BEHAVIORAL of core is
   signal XLXN_1                        : std_logic_vector (7 downto 0);
   signal XLXN_3                        : std_logic;
   signal XLXN_6                        : std_logic_vector (7 downto 0);
   signal XLXN_8                        : std_logic;
   signal XLXN_9                        : std_logic;
   signal XLXN_11                       : std_logic;
   signal XLXN_12                       : std_logic;
   signal XLXN_13                       : std_logic_vector (7 downto 0);
   signal XLXN_14                       : std_logic;
   signal XLXN_15                       : std_logic_vector (3 downto 0);
   signal XLXN_17                       : std_logic_vector (7 downto 0);
   signal XLXN_18                       : std_logic_vector (815 downto 0);
   signal XLXN_20                       : std_logic_vector (7 downto 0);
   signal XLXN_31                       : std_logic_vector (815 downto 0);
   signal XLXN_32                       : std_logic;
   signal XLXN_33                       : std_logic_vector (7 downto 0);
   signal XLXN_34                       : std_logic;
   signal XLXI_5_reset_openSignal       : std_logic;
   signal XLXI_8_CursorOn_openSignal    : std_logic;
   signal XLXI_8_Goto00_openSignal      : std_logic;
   signal XLXI_8_Home_openSignal        : std_logic;
   signal XLXI_8_NewLine_openSignal     : std_logic;
   signal XLXI_8_ScrollClear_openSignal : std_logic;
   signal XLXI_8_ScrollEn_openSignal    : std_logic;
   component GeneratorLiczbLosowych
      port ( set   : in    std_logic; 
             reset : in    std_logic; 
             rand  : out   std_logic_vector (7 downto 0));
   end component;
   
   component QUIZ
      port ( SET         : in    std_logic; 
             CHECK       : in    std_logic; 
             RESET       : in    std_logic; 
             NUMBER      : in    std_logic_vector (7 downto 0); 
             ANSWER      : in    std_logic_vector (7 downto 0); 
             COUNT_IN    : in    std_logic_vector (7 downto 0); 
             CORRECT_IN  : in    std_logic_vector (7 downto 0); 
             CORRECT_OUT : out   std_logic; 
             COUNT_OUT   : out   std_logic; 
             TEXT_OUTPUT : out   std_logic_vector (815 downto 0));
   end component;
   
   component licznik
      port ( correct    : in    std_logic; 
             count      : in    std_logic; 
             reset      : in    std_logic; 
             outcorrect : out   std_logic_vector (7 downto 0); 
             outcount   : out   std_logic_vector (7 downto 0));
   end component;
   
   component INPUT_SPLIT
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             scancode  : in    std_logic_vector (7 downto 0); 
             set_rng   : out   std_logic; 
             reset_out : out   std_logic; 
             set_q     : out   std_logic; 
             check     : out   std_logic; 
             answer    : out   std_logic_vector (7 downto 0); 
             state_out : out   std_logic_vector (3 downto 0));
   end component;
   
   component OUTPUT
      port ( CLK              : in    std_logic; 
             CORRECT_IN       : in    std_logic; 
             STATE_IN         : in    std_logic_vector (3 downto 0); 
             CORRECT_SUM      : in    std_logic_vector (7 downto 0); 
             TEXT_OUTPUT      : in    std_logic_vector (815 downto 0); 
             READY            : out   std_logic; 
             TEXT_FOR_DISPLAY : out   std_logic_vector (815 downto 0));
   end component;
   
   component PS2_Rx
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             Clk_Sys   : in    std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0));
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component looper
      port ( ready   : in    std_logic; 
             text    : in    std_logic_vector (815 downto 0); 
             char_we : out   std_logic; 
             char_in : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : GeneratorLiczbLosowych
      port map (reset=>XLXN_9,
                set=>XLXN_8,
                rand(7 downto 0)=>XLXN_1(7 downto 0));
   
   XLXI_2 : QUIZ
      port map (ANSWER(7 downto 0)=>XLXN_13(7 downto 0),
                CHECK=>XLXN_12,
                CORRECT_IN(7 downto 0)=>XLXN_17(7 downto 0),
                COUNT_IN(7 downto 0)=>XLXN_6(7 downto 0),
                NUMBER(7 downto 0)=>XLXN_1(7 downto 0),
                RESET=>XLXN_9,
                SET=>XLXN_11,
                CORRECT_OUT=>XLXN_14,
                COUNT_OUT=>XLXN_3,
                TEXT_OUTPUT(815 downto 0)=>XLXN_18(815 downto 0));
   
   XLXI_3 : licznik
      port map (correct=>XLXN_14,
                count=>XLXN_3,
                reset=>XLXN_9,
                outcorrect(7 downto 0)=>XLXN_17(7 downto 0),
                outcount(7 downto 0)=>XLXN_6(7 downto 0));
   
   XLXI_5 : INPUT_SPLIT
      port map (clk=>CLK,
                reset=>XLXI_5_reset_openSignal,
                scancode(7 downto 0)=>XLXN_20(7 downto 0),
                answer(7 downto 0)=>XLXN_13(7 downto 0),
                check=>XLXN_12,
                reset_out=>XLXN_9,
                set_q=>XLXN_11,
                set_rng=>XLXN_8,
                state_out(3 downto 0)=>XLXN_15(3 downto 0));
   
   XLXI_6 : OUTPUT
      port map (CLK=>CLK,
                CORRECT_IN=>XLXN_14,
                CORRECT_SUM(7 downto 0)=>XLXN_17(7 downto 0),
                STATE_IN(3 downto 0)=>XLXN_15(3 downto 0),
                TEXT_OUTPUT(815 downto 0)=>XLXN_18(815 downto 0),
                READY=>XLXN_32,
                TEXT_FOR_DISPLAY(815 downto 0)=>XLXN_31(815 downto 0));
   
   XLXI_7 : PS2_Rx
      port map (Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_20(7 downto 0),
                DO_Rdy=>open);
   
   XLXI_8 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_33(7 downto 0),
                Char_WE=>XLXN_34,
                Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                CursorOn=>XLXI_8_CursorOn_openSignal,
                Goto00=>XLXI_8_Goto00_openSignal,
                Home=>XLXI_8_Home_openSignal,
                NewLine=>XLXI_8_NewLine_openSignal,
                ScrollClear=>XLXI_8_ScrollClear_openSignal,
                ScrollEn=>XLXI_8_ScrollEn_openSignal,
                Busy=>open,
                VGA_HS=>open,
                VGA_RGB=>open,
                VGA_VS=>open);
   
   XLXI_9 : looper
      port map (ready=>XLXN_32,
                text(815 downto 0)=>XLXN_31(815 downto 0),
                char_in(7 downto 0)=>XLXN_33(7 downto 0),
                char_we=>XLXN_34);
   
end BEHAVIORAL;


