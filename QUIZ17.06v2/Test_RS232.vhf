--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Test_RS232.vhf
-- /___/   /\     Timestamp : 06/10/2025 15:27:02
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/QUIZ10.06/QUIZ3.06/Test_RS232.vhf -w C:/Users/lab/Desktop/QUIZ10.06/QUIZ3.06/Test_RS232.sch
--Design Name: Test_RS232
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

entity Test_RS232 is
   port ( Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          RS232_RxD : in    std_logic; 
          RS232_TxD : out   std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end Test_RS232;

architecture BEHAVIORAL of Test_RS232 is
   attribute BOX_TYPE   : string ;
   signal XLXN_8                   : std_logic;
   signal XLXN_15                  : std_logic;
   signal XLXN_16                  : std_logic;
   signal XLXN_17                  : std_logic;
   signal XLXN_100                 : std_logic;
   signal XLXN_101                 : std_logic_vector (7 downto 0);
   signal XLXN_104                 : std_logic;
   signal XLXN_105                 : std_logic;
   signal XLXN_111                 : std_logic;
   signal XLXN_125                 : std_logic;
   signal XLXN_140                 : std_logic_vector (3 downto 0);
   signal XLXN_143                 : std_logic_vector (7 downto 0);
   signal XLXI_49_reset_openSignal : std_logic;
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
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component RS232
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             RS232_RxD : in    std_logic; 
             TxStart   : in    std_logic; 
             TxDI      : in    std_logic_vector (7 downto 0); 
             TxBusy    : out   std_logic; 
             RxRdy     : out   std_logic; 
             RS232_TxD : out   std_logic; 
             RxDO      : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component toseven
      port ( in1  : in    std_logic_vector (3 downto 0); 
             out1 : out   std_logic_vector (7 downto 0));
   end component;
   
   component ps2_keyboard
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             ps2_clk   : in    std_logic; 
             ps2_data  : in    std_logic; 
             set_rng   : out   std_logic; 
             reset_out : out   std_logic; 
             set_q     : out   std_logic; 
             check     : out   std_logic; 
             answer    : out   std_logic_vector (7 downto 0); 
             state_out : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO=>open,
                DO_Rdy=>XLXN_17,
                E0=>XLXN_15,
                F0=>XLXN_16);
   
   XLXI_2 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_101(7 downto 0),
                Char_WE=>XLXN_100,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_105,
                Goto00=>XLXN_104,
                Home=>XLXN_104,
                NewLine=>XLXN_104,
                ScrollClear=>XLXN_105,
                ScrollEn=>XLXN_105,
                Busy=>open,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_8,
                VGA_VS=>VGA_VS);
   
   XLXI_3 : BUF
      port map (I=>XLXN_8,
                O=>VGA_R);
   
   XLXI_4 : BUF
      port map (I=>XLXN_8,
                O=>VGA_G);
   
   XLXI_5 : BUF
      port map (I=>XLXN_8,
                O=>VGA_B);
   
   XLXI_8 : AND3B2
      port map (I0=>XLXN_15,
                I1=>XLXN_16,
                I2=>XLXN_17,
                O=>XLXN_125);
   
   XLXI_37 : RS232
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                Reset=>XLXN_111,
                RS232_RxD=>RS232_RxD,
                TxDI(7 downto 0)=>XLXN_143(7 downto 0),
                TxStart=>XLXN_125,
                RS232_TxD=>RS232_TxD,
                RxDO(7 downto 0)=>XLXN_101(7 downto 0),
                RxRdy=>XLXN_100,
                TxBusy=>open);
   
   XLXI_42 : VCC
      port map (P=>XLXN_105);
   
   XLXI_43 : GND
      port map (G=>XLXN_104);
   
   XLXI_44 : GND
      port map (G=>XLXN_111);
   
   XLXI_48 : toseven
      port map (in1(3 downto 0)=>XLXN_140(3 downto 0),
                out1(7 downto 0)=>XLXN_143(7 downto 0));
   
   XLXI_49 : ps2_keyboard
      port map (clk=>Clk_50MHz,
                ps2_clk=>PS2_Clk,
                ps2_data=>PS2_Data,
                reset=>XLXI_49_reset_openSignal,
                answer=>open,
                check=>open,
                reset_out=>open,
                set_q=>open,
                set_rng=>open,
                state_out(3 downto 0)=>XLXN_140(3 downto 0));
   
end BEHAVIORAL;


