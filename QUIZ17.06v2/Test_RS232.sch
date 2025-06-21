<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RS232_RxD" />
        <signal name="RS232_TxD" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_8" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101(7:0)" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_111" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_125" />
        <signal name="XLXN_126" />
        <signal name="XLXN_127" />
        <signal name="XLXN_132(7:0)" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_134(7:0)" />
        <signal name="XLXN_135(3:0)" />
        <signal name="XLXN_136(3:0)" />
        <signal name="XLXN_137(3:0)" />
        <signal name="XLXN_138(7:0)" />
        <signal name="XLXN_139(3:0)" />
        <signal name="XLXN_140(3:0)" />
        <signal name="XLXN_143(7:0)" />
        <port polarity="Input" name="RS232_RxD" />
        <port polarity="Output" name="RS232_TxD" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Clk_50MHz" />
        <blockdef name="RS232">
            <timestamp>2008-9-23T11:16:17</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="320" y1="-288" y2="-288" x1="384" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:0</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:35</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="toseven">
            <timestamp>2025-6-10T13:19:48</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ps2_keyboard">
            <timestamp>2025-6-10T13:26:25</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="RS232" name="XLXI_37">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_111" name="Reset" />
            <blockpin signalname="RS232_RxD" name="RS232_RxD" />
            <blockpin signalname="XLXN_125" name="TxStart" />
            <blockpin signalname="XLXN_143(7:0)" name="TxDI(7:0)" />
            <blockpin name="TxBusy" />
            <blockpin signalname="XLXN_100" name="RxRdy" />
            <blockpin signalname="RS232_TxD" name="RS232_TxD" />
            <blockpin signalname="XLXN_101(7:0)" name="RxDO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_2">
            <blockpin signalname="XLXN_101(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_104" name="Home" />
            <blockpin signalname="XLXN_104" name="NewLine" />
            <blockpin signalname="XLXN_104" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_105" name="CursorOn" />
            <blockpin signalname="XLXN_105" name="ScrollEn" />
            <blockpin signalname="XLXN_105" name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_8" name="VGA_RGB" />
            <blockpin signalname="XLXN_100" name="Char_WE" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="XLXN_8" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="XLXN_8" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_43">
            <blockpin signalname="XLXN_104" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_42">
            <blockpin signalname="XLXN_105" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_44">
            <blockpin signalname="XLXN_111" name="G" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_1">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_15" name="E0" />
            <blockpin signalname="XLXN_16" name="F0" />
            <blockpin signalname="XLXN_17" name="DO_Rdy" />
            <blockpin name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="and3b2" name="XLXI_8">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_17" name="I2" />
            <blockpin signalname="XLXN_125" name="O" />
        </block>
        <block symbolname="toseven" name="XLXI_48">
            <blockpin signalname="XLXN_140(3:0)" name="in1(3:0)" />
            <blockpin signalname="XLXN_143(7:0)" name="out1(7:0)" />
        </block>
        <block symbolname="ps2_keyboard" name="XLXI_49">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="PS2_Clk" name="ps2_clk" />
            <blockpin signalname="PS2_Data" name="ps2_data" />
            <blockpin name="set_rng" />
            <blockpin name="reset_out" />
            <blockpin name="set_q" />
            <blockpin name="check" />
            <blockpin name="answer(7:0)" />
            <blockpin signalname="XLXN_140(3:0)" name="state_out(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RS232_RxD">
            <wire x2="2976" y1="640" y2="640" x1="2560" />
            <wire x2="2992" y1="640" y2="640" x1="2976" />
        </branch>
        <branch name="RS232_TxD">
            <wire x2="2976" y1="704" y2="704" x1="2560" />
            <wire x2="2992" y1="704" y2="704" x1="2976" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2992" y1="1472" y2="1472" x1="2592" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2992" y1="1536" y2="1536" x1="2592" />
        </branch>
        <branch name="VGA_R">
            <wire x2="2992" y1="1600" y2="1600" x1="2960" />
        </branch>
        <branch name="VGA_G">
            <wire x2="2992" y1="1664" y2="1664" x1="2960" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2992" y1="1728" y2="1728" x1="2960" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2704" y1="1600" y2="1600" x1="2592" />
            <wire x2="2736" y1="1600" y2="1600" x1="2704" />
            <wire x2="2704" y1="1600" y2="1664" x1="2704" />
            <wire x2="2704" y1="1664" y2="1728" x1="2704" />
            <wire x2="2736" y1="1728" y2="1728" x1="2704" />
            <wire x2="2736" y1="1664" y2="1664" x1="2704" />
        </branch>
        <instance x="2160" y="2080" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2736" y="1632" name="XLXI_3" orien="R0" />
        <instance x="2736" y="1696" name="XLXI_4" orien="R0" />
        <instance x="2736" y="1760" name="XLXI_5" orien="R0" />
        <branch name="XLXN_100">
            <wire x2="2080" y1="1104" y2="1536" x1="2080" />
            <wire x2="2144" y1="1536" y2="1536" x1="2080" />
            <wire x2="2160" y1="1536" y2="1536" x1="2144" />
            <wire x2="2688" y1="1104" y2="1104" x1="2080" />
            <wire x2="2688" y1="832" y2="832" x1="2560" />
            <wire x2="2688" y1="832" y2="1104" x1="2688" />
        </branch>
        <branch name="XLXN_101(7:0)">
            <wire x2="2016" y1="1168" y2="1472" x1="2016" />
            <wire x2="2144" y1="1472" y2="1472" x1="2016" />
            <wire x2="2160" y1="1472" y2="1472" x1="2144" />
            <wire x2="2624" y1="1168" y2="1168" x1="2016" />
            <wire x2="2624" y1="768" y2="768" x1="2560" />
            <wire x2="2624" y1="768" y2="1168" x1="2624" />
        </branch>
        <instance x="1968" y="1776" name="XLXI_43" orien="R0" />
        <instance x="1968" y="1968" name="XLXI_42" orien="R0" />
        <branch name="XLXN_104">
            <wire x2="2032" y1="1632" y2="1648" x1="2032" />
            <wire x2="2128" y1="1632" y2="1632" x1="2032" />
            <wire x2="2160" y1="1632" y2="1632" x1="2128" />
            <wire x2="2128" y1="1632" y2="1696" x1="2128" />
            <wire x2="2128" y1="1696" y2="1760" x1="2128" />
            <wire x2="2160" y1="1760" y2="1760" x1="2128" />
            <wire x2="2160" y1="1696" y2="1696" x1="2128" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="2032" y1="1968" y2="1984" x1="2032" />
            <wire x2="2128" y1="1984" y2="1984" x1="2032" />
            <wire x2="2160" y1="1984" y2="1984" x1="2128" />
            <wire x2="2160" y1="1856" y2="1856" x1="2128" />
            <wire x2="2128" y1="1856" y2="1920" x1="2128" />
            <wire x2="2128" y1="1920" y2="1984" x1="2128" />
            <wire x2="2160" y1="1920" y2="1920" x1="2128" />
        </branch>
        <branch name="XLXN_111">
            <wire x2="2160" y1="832" y2="832" x1="2144" />
            <wire x2="2176" y1="832" y2="832" x1="2160" />
        </branch>
        <instance x="2016" y="768" name="XLXI_44" orien="R90" />
        <instance x="848" y="928" name="XLXI_1" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="816" y1="704" y2="704" x1="672" />
            <wire x2="848" y1="704" y2="704" x1="816" />
            <wire x2="816" y1="704" y2="1248" x1="816" />
            <wire x2="960" y1="1248" y2="1248" x1="816" />
            <wire x2="1008" y1="1248" y2="1248" x1="960" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="704" y1="768" y2="768" x1="672" />
            <wire x2="848" y1="768" y2="768" x1="704" />
            <wire x2="704" y1="768" y2="1328" x1="704" />
            <wire x2="944" y1="1328" y2="1328" x1="704" />
            <wire x2="944" y1="1328" y2="1344" x1="944" />
            <wire x2="960" y1="1344" y2="1344" x1="944" />
            <wire x2="1008" y1="1344" y2="1344" x1="960" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1280" y1="768" y2="768" x1="1232" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1280" y1="832" y2="832" x1="1232" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1280" y1="896" y2="896" x1="1232" />
        </branch>
        <instance x="1280" y="704" name="XLXI_8" orien="M180" />
        <iomarker fontsize="28" x="2992" y="640" name="RS232_RxD" orien="R0" />
        <iomarker fontsize="28" x="2992" y="704" name="RS232_TxD" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1600" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1664" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1728" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1472" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1536" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="640" y="2144" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="672" y="704" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="672" y="768" name="PS2_Data" orien="R180" />
        <text style="fontsize:64;fontname:Arial" x="2816" y="2388">Test_RS232</text>
        <text style="fontsize:64;fontname:Arial" x="2816" y="2484">J.Sugier  2008</text>
        <instance x="1408" y="1552" name="XLXI_48" orien="R0">
        </instance>
        <branch name="XLXN_140(3:0)">
            <wire x2="1472" y1="1472" y2="1472" x1="1344" />
            <wire x2="1344" y1="1472" y2="1520" x1="1344" />
            <wire x2="1408" y1="1520" y2="1520" x1="1344" />
            <wire x2="1472" y1="1376" y2="1376" x1="1392" />
            <wire x2="1472" y1="1376" y2="1472" x1="1472" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="800" y1="2144" y2="2144" x1="640" />
            <wire x2="1904" y1="2144" y2="2144" x1="800" />
            <wire x2="2096" y1="2144" y2="2144" x1="1904" />
            <wire x2="2160" y1="2144" y2="2144" x1="2096" />
            <wire x2="800" y1="896" y2="896" x1="784" />
            <wire x2="800" y1="896" y2="2144" x1="800" />
            <wire x2="848" y1="896" y2="896" x1="800" />
            <wire x2="784" y1="896" y2="1056" x1="784" />
            <wire x2="960" y1="1056" y2="1056" x1="784" />
            <wire x2="1008" y1="1056" y2="1056" x1="960" />
            <wire x2="848" y1="832" y2="832" x1="800" />
            <wire x2="800" y1="832" y2="896" x1="800" />
            <wire x2="2112" y1="960" y2="960" x1="1904" />
            <wire x2="2176" y1="960" y2="960" x1="2112" />
            <wire x2="1904" y1="960" y2="1152" x1="1904" />
            <wire x2="1904" y1="1152" y2="2144" x1="1904" />
            <wire x2="2160" y1="2080" y2="2080" x1="2096" />
            <wire x2="2096" y1="2080" y2="2144" x1="2096" />
            <wire x2="2112" y1="896" y2="960" x1="2112" />
            <wire x2="2176" y1="896" y2="896" x1="2112" />
        </branch>
        <branch name="XLXN_125">
            <wire x2="1552" y1="832" y2="832" x1="1536" />
            <wire x2="1776" y1="832" y2="832" x1="1552" />
            <wire x2="1776" y1="768" y2="832" x1="1776" />
            <wire x2="2176" y1="768" y2="768" x1="1776" />
        </branch>
        <instance x="2176" y="928" name="XLXI_37" orien="R0">
        </instance>
        <branch name="XLXN_143(7:0)">
            <wire x2="1984" y1="1520" y2="1520" x1="1792" />
            <wire x2="1984" y1="704" y2="1520" x1="1984" />
            <wire x2="2176" y1="704" y2="704" x1="1984" />
        </branch>
        <instance x="1008" y="1408" name="XLXI_49" orien="R0">
        </instance>
    </sheet>
</drawing>