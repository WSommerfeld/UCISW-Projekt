<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5(7:0)" />
        <signal name="XLXN_6(7:0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13(7:0)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15(3:0)" />
        <signal name="XLXN_16(3:0)" />
        <signal name="XLXN_17(7:0)" />
        <signal name="XLXN_18(815:0)" />
        <signal name="CLK" />
        <signal name="XLXN_20(7:0)" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31(815:0)" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33(7:0)" />
        <signal name="XLXN_34" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_RGB">
        </signal>
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <blockdef name="GeneratorLiczbLosowych">
            <timestamp>2025-6-9T15:32:22</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="QUIZ">
            <timestamp>2025-6-9T15:32:32</timestamp>
            <rect width="432" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="560" y1="-416" y2="-416" x1="496" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
        </blockdef>
        <blockdef name="licznik">
            <timestamp>2025-6-9T15:32:13</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PS2_Rx">
            <timestamp>2009-5-15T10:32:14</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:2</timestamp>
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
        <blockdef name="INPUT_SPLIT">
            <timestamp>2025-6-17T12:45:42</timestamp>
            <rect width="320" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="loopser">
            <timestamp>2025-6-17T13:34:25</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="OUTPUT">
            <timestamp>2025-6-17T13:46:23</timestamp>
            <rect width="544" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="672" y1="-288" y2="-288" x1="608" />
            <rect width="64" x="608" y="-44" height="24" />
            <line x2="672" y1="-32" y2="-32" x1="608" />
        </blockdef>
        <block symbolname="GeneratorLiczbLosowych" name="XLXI_1">
            <blockpin signalname="XLXN_8" name="set" />
            <blockpin signalname="XLXN_9" name="reset" />
            <blockpin signalname="XLXN_1(7:0)" name="rand(7:0)" />
        </block>
        <block symbolname="QUIZ" name="XLXI_2">
            <blockpin signalname="XLXN_11" name="SET" />
            <blockpin signalname="XLXN_12" name="CHECK" />
            <blockpin signalname="XLXN_9" name="RESET" />
            <blockpin signalname="XLXN_1(7:0)" name="NUMBER(7:0)" />
            <blockpin signalname="XLXN_13(7:0)" name="ANSWER(7:0)" />
            <blockpin signalname="XLXN_6(7:0)" name="COUNT_IN(7:0)" />
            <blockpin signalname="XLXN_17(7:0)" name="CORRECT_IN(7:0)" />
            <blockpin signalname="XLXN_14" name="CORRECT_OUT" />
            <blockpin signalname="XLXN_3" name="COUNT_OUT" />
            <blockpin signalname="XLXN_18(815:0)" name="TEXT_OUTPUT(815:0)" />
        </block>
        <block symbolname="licznik" name="XLXI_3">
            <blockpin signalname="XLXN_14" name="correct" />
            <blockpin signalname="XLXN_3" name="count" />
            <blockpin signalname="XLXN_9" name="reset" />
            <blockpin signalname="XLXN_17(7:0)" name="outcorrect(7:0)" />
            <blockpin signalname="XLXN_6(7:0)" name="outcount(7:0)" />
        </block>
        <block symbolname="PS2_Rx" name="XLXI_7">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="CLK" name="Clk_Sys" />
            <blockpin name="DO_Rdy" />
            <blockpin signalname="XLXN_20(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_8">
            <blockpin signalname="XLXN_33(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_41" name="Home" />
            <blockpin signalname="XLXN_41" name="NewLine" />
            <blockpin signalname="XLXN_41" name="Goto00" />
            <blockpin signalname="CLK" name="Clk_Sys" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="XLXN_40" name="CursorOn" />
            <blockpin signalname="XLXN_40" name="ScrollEn" />
            <blockpin signalname="XLXN_40" name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="VGA_RGB" name="VGA_RGB" />
            <blockpin signalname="XLXN_34" name="Char_WE" />
        </block>
        <block symbolname="INPUT_SPLIT" name="XLXI_21">
            <blockpin signalname="CLK" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_20(7:0)" name="scancode(7:0)" />
            <blockpin signalname="XLXN_8" name="set_rng" />
            <blockpin signalname="XLXN_9" name="reset_out" />
            <blockpin signalname="XLXN_11" name="set_q" />
            <blockpin signalname="XLXN_12" name="check" />
            <blockpin signalname="XLXN_13(7:0)" name="answer(7:0)" />
            <blockpin signalname="XLXN_15(3:0)" name="state_out(3:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_22">
            <blockpin signalname="XLXN_40" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_23">
            <blockpin signalname="XLXN_41" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_24">
            <blockpin signalname="VGA_RGB" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_25">
            <blockpin signalname="VGA_RGB" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_26">
            <blockpin signalname="VGA_RGB" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="loopser" name="XLXI_33">
            <blockpin signalname="CLK" name="clk" />
            <blockpin name="asdf" />
            <blockpin signalname="XLXN_32" name="ready" />
            <blockpin signalname="XLXN_31(815:0)" name="text(815:0)" />
            <blockpin signalname="XLXN_34" name="char_we" />
            <blockpin signalname="XLXN_33(7:0)" name="char_in(7:0)" />
        </block>
        <block symbolname="OUTPUT" name="XLXI_34">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_14" name="CORRECT_IN" />
            <blockpin signalname="XLXN_15(3:0)" name="STATE_IN(3:0)" />
            <blockpin signalname="XLXN_17(7:0)" name="CORRECT_SUM(7:0)" />
            <blockpin signalname="XLXN_18(815:0)" name="TEXT_OUTPUT(815:0)" />
            <blockpin signalname="XLXN_32" name="READY" />
            <blockpin signalname="XLXN_31(815:0)" name="TEXT_FOR_DISPLAY(815:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1632" y="1248" name="XLXI_2" orien="R0">
        </instance>
        <instance x="832" y="960" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="1424" y1="864" y2="864" x1="1216" />
            <wire x2="1424" y1="864" y2="1024" x1="1424" />
            <wire x2="1632" y1="1024" y2="1024" x1="1424" />
        </branch>
        <instance x="2352" y="1008" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="2272" y1="1024" y2="1024" x1="2192" />
            <wire x2="2272" y1="912" y2="1024" x1="2272" />
            <wire x2="2352" y1="912" y2="912" x1="2272" />
        </branch>
        <branch name="XLXN_6(7:0)">
            <wire x2="1632" y1="1152" y2="1152" x1="1568" />
            <wire x2="1568" y1="1152" y2="1328" x1="1568" />
            <wire x2="2800" y1="1328" y2="1328" x1="1568" />
            <wire x2="2800" y1="976" y2="976" x1="2736" />
            <wire x2="2800" y1="976" y2="1328" x1="2800" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="832" y1="864" y2="864" x1="768" />
            <wire x2="768" y1="864" y2="1024" x1="768" />
            <wire x2="896" y1="1024" y2="1024" x1="768" />
            <wire x2="896" y1="1024" y2="1248" x1="896" />
            <wire x2="896" y1="1248" y2="1248" x1="832" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="832" y1="928" y2="928" x1="784" />
            <wire x2="784" y1="928" y2="1008" x1="784" />
            <wire x2="880" y1="1008" y2="1008" x1="784" />
            <wire x2="880" y1="1008" y2="1312" x1="880" />
            <wire x2="1248" y1="1312" y2="1312" x1="880" />
            <wire x2="2256" y1="1312" y2="1312" x1="1248" />
            <wire x2="880" y1="1312" y2="1312" x1="832" />
            <wire x2="1248" y1="960" y2="1312" x1="1248" />
            <wire x2="1632" y1="960" y2="960" x1="1248" />
            <wire x2="2256" y1="976" y2="1312" x1="2256" />
            <wire x2="2352" y1="976" y2="976" x1="2256" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1232" y1="1376" y2="1376" x1="832" />
            <wire x2="1232" y1="832" y2="1376" x1="1232" />
            <wire x2="1632" y1="832" y2="832" x1="1232" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1264" y1="1440" y2="1440" x1="832" />
            <wire x2="1264" y1="896" y2="1440" x1="1264" />
            <wire x2="1632" y1="896" y2="896" x1="1264" />
        </branch>
        <branch name="XLXN_13(7:0)">
            <wire x2="1216" y1="1504" y2="1504" x1="832" />
            <wire x2="1216" y1="1088" y2="1504" x1="1216" />
            <wire x2="1632" y1="1088" y2="1088" x1="1216" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2272" y1="832" y2="832" x1="2192" />
            <wire x2="2272" y1="832" y2="848" x1="2272" />
            <wire x2="2352" y1="848" y2="848" x1="2272" />
            <wire x2="2224" y1="848" y2="1600" x1="2224" />
            <wire x2="2240" y1="1600" y2="1600" x1="2224" />
            <wire x2="2272" y1="848" y2="848" x1="2224" />
        </branch>
        <branch name="XLXN_15(3:0)">
            <wire x2="1520" y1="1568" y2="1568" x1="832" />
            <wire x2="1520" y1="1568" y2="1664" x1="1520" />
            <wire x2="2240" y1="1664" y2="1664" x1="1520" />
        </branch>
        <branch name="XLXN_17(7:0)">
            <wire x2="1632" y1="1216" y2="1216" x1="1552" />
            <wire x2="1552" y1="1216" y2="1344" x1="1552" />
            <wire x2="2816" y1="1344" y2="1344" x1="1552" />
            <wire x2="2816" y1="1344" y2="1440" x1="2816" />
            <wire x2="2160" y1="1440" y2="1728" x1="2160" />
            <wire x2="2240" y1="1728" y2="1728" x1="2160" />
            <wire x2="2816" y1="1440" y2="1440" x1="2160" />
            <wire x2="2816" y1="848" y2="848" x1="2736" />
            <wire x2="2816" y1="848" y2="1344" x1="2816" />
        </branch>
        <branch name="XLXN_18(815:0)">
            <wire x2="2240" y1="1216" y2="1216" x1="2192" />
            <wire x2="2240" y1="1216" y2="1296" x1="2240" />
            <wire x2="2240" y1="1296" y2="1296" x1="2208" />
            <wire x2="2208" y1="1296" y2="1792" x1="2208" />
            <wire x2="2240" y1="1792" y2="1792" x1="2208" />
        </branch>
        <branch name="CLK">
            <wire x2="240" y1="2000" y2="2000" x1="160" />
            <wire x2="160" y1="2000" y2="2160" x1="160" />
            <wire x2="704" y1="2160" y2="2160" x1="160" />
            <wire x2="176" y1="2064" y2="2144" x1="176" />
            <wire x2="688" y1="2144" y2="2144" x1="176" />
            <wire x2="240" y1="2064" y2="2064" x1="176" />
            <wire x2="224" y1="1504" y2="1632" x1="224" />
            <wire x2="1504" y1="1632" y2="1632" x1="224" />
            <wire x2="1504" y1="1632" y2="1776" x1="1504" />
            <wire x2="1504" y1="1776" y2="2160" x1="1504" />
            <wire x2="2368" y1="2160" y2="2160" x1="1504" />
            <wire x2="2368" y1="2160" y2="2576" x1="2368" />
            <wire x2="2512" y1="2576" y2="2576" x1="2368" />
            <wire x2="2368" y1="2576" y2="2640" x1="2368" />
            <wire x2="2512" y1="2640" y2="2640" x1="2368" />
            <wire x2="2192" y1="1776" y2="1776" x1="1504" />
            <wire x2="224" y1="1632" y2="1664" x1="224" />
            <wire x2="688" y1="1664" y2="1664" x1="224" />
            <wire x2="688" y1="1664" y2="2144" x1="688" />
            <wire x2="320" y1="1504" y2="1504" x1="224" />
            <wire x2="320" y1="1248" y2="1248" x1="240" />
            <wire x2="384" y1="1248" y2="1248" x1="320" />
            <wire x2="320" y1="1248" y2="1488" x1="320" />
            <wire x2="320" y1="1488" y2="1504" x1="320" />
            <wire x2="288" y1="1488" y2="1760" x1="288" />
            <wire x2="704" y1="1760" y2="1760" x1="288" />
            <wire x2="704" y1="1760" y2="2160" x1="704" />
            <wire x2="320" y1="1488" y2="1488" x1="288" />
            <wire x2="320" y1="1136" y2="1248" x1="320" />
            <wire x2="864" y1="1136" y2="1136" x1="320" />
            <wire x2="864" y1="1136" y2="1536" x1="864" />
            <wire x2="2240" y1="1536" y2="1536" x1="864" />
            <wire x2="2192" y1="1488" y2="1776" x1="2192" />
            <wire x2="2976" y1="1488" y2="1488" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="240" y="1248" name="CLK" orien="R180" />
        <branch name="XLXN_20(7:0)">
            <wire x2="384" y1="1568" y2="1568" x1="368" />
            <wire x2="368" y1="1568" y2="1648" x1="368" />
            <wire x2="672" y1="1648" y2="1648" x1="368" />
            <wire x2="672" y1="1648" y2="1872" x1="672" />
            <wire x2="672" y1="1872" y2="1872" x1="624" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="272" y1="1728" y2="1728" x1="192" />
            <wire x2="272" y1="1728" y2="1808" x1="272" />
            <wire x2="272" y1="1808" y2="1808" x1="224" />
            <wire x2="224" y1="1808" y2="1872" x1="224" />
            <wire x2="240" y1="1872" y2="1872" x1="224" />
        </branch>
        <iomarker fontsize="28" x="192" y="1728" name="PS2_Clk" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="208" y1="1792" y2="1792" x1="192" />
            <wire x2="208" y1="1792" y2="1936" x1="208" />
            <wire x2="240" y1="1936" y2="1936" x1="208" />
        </branch>
        <iomarker fontsize="28" x="192" y="1792" name="PS2_Data" orien="R180" />
        <instance x="2512" y="2576" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_31(815:0)">
            <wire x2="2944" y1="1792" y2="1792" x1="2912" />
            <wire x2="2944" y1="1680" y2="1792" x1="2944" />
            <wire x2="2976" y1="1680" y2="1680" x1="2944" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2944" y1="1536" y2="1536" x1="2912" />
            <wire x2="2944" y1="1536" y2="1616" x1="2944" />
            <wire x2="2976" y1="1616" y2="1616" x1="2944" />
        </branch>
        <branch name="XLXN_33(7:0)">
            <wire x2="2432" y1="1856" y2="1968" x1="2432" />
            <wire x2="2512" y1="1968" y2="1968" x1="2432" />
            <wire x2="3424" y1="1856" y2="1856" x1="2432" />
            <wire x2="3424" y1="1680" y2="1680" x1="3360" />
            <wire x2="3424" y1="1680" y2="1856" x1="3424" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="2512" y1="2032" y2="2032" x1="2432" />
            <wire x2="2432" y1="2032" y2="2704" x1="2432" />
            <wire x2="3408" y1="2704" y2="2704" x1="2432" />
            <wire x2="3408" y1="1488" y2="1488" x1="3360" />
            <wire x2="3408" y1="1488" y2="1616" x1="3408" />
            <wire x2="3408" y1="1616" y2="2704" x1="3408" />
        </branch>
        <instance x="384" y="1600" name="XLXI_21" orien="R0">
        </instance>
        <branch name="VGA_HS">
            <wire x2="2976" y1="1968" y2="1968" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="2976" y="1968" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="2976" y1="2032" y2="2032" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="2976" y="2032" name="VGA_VS" orien="R0" />
        <branch name="VGA_RGB">
            <wire x2="2960" y1="2096" y2="2096" x1="2944" />
            <wire x2="2976" y1="2096" y2="2096" x1="2960" />
            <wire x2="2960" y1="2096" y2="2160" x1="2960" />
            <wire x2="2976" y1="2160" y2="2160" x1="2960" />
            <wire x2="2960" y1="2160" y2="2224" x1="2960" />
            <wire x2="2976" y1="2224" y2="2224" x1="2960" />
        </branch>
        <instance x="240" y="2096" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2208" y="2432" name="XLXI_22" orien="R0" />
        <branch name="XLXN_40">
            <wire x2="2208" y1="2352" y2="2480" x1="2208" />
            <wire x2="2272" y1="2480" y2="2480" x1="2208" />
            <wire x2="2512" y1="2480" y2="2480" x1="2272" />
            <wire x2="2272" y1="2480" y2="2512" x1="2272" />
            <wire x2="2352" y1="2512" y2="2512" x1="2272" />
            <wire x2="2512" y1="2352" y2="2352" x1="2208" />
            <wire x2="2272" y1="2432" y2="2480" x1="2272" />
            <wire x2="2352" y1="2416" y2="2512" x1="2352" />
            <wire x2="2512" y1="2416" y2="2416" x1="2352" />
        </branch>
        <instance x="2240" y="2096" name="XLXI_23" orien="R0" />
        <branch name="XLXN_41">
            <wire x2="2304" y1="1888" y2="1968" x1="2304" />
            <wire x2="2384" y1="1888" y2="1888" x1="2304" />
            <wire x2="2384" y1="1888" y2="2128" x1="2384" />
            <wire x2="2512" y1="2128" y2="2128" x1="2384" />
            <wire x2="2384" y1="2128" y2="2192" x1="2384" />
            <wire x2="2512" y1="2192" y2="2192" x1="2384" />
            <wire x2="2384" y1="2192" y2="2256" x1="2384" />
            <wire x2="2512" y1="2256" y2="2256" x1="2384" />
        </branch>
        <instance x="2976" y="2128" name="XLXI_24" orien="R0" />
        <instance x="2976" y="2192" name="XLXI_25" orien="R0" />
        <instance x="2976" y="2256" name="XLXI_26" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3232" y1="2096" y2="2096" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3232" y="2096" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3232" y1="2160" y2="2160" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3232" y="2160" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3232" y1="2224" y2="2224" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3232" y="2224" name="VGA_B" orien="R0" />
        <instance x="2976" y="1712" name="XLXI_33" orien="R0">
        </instance>
        <instance x="2240" y="1824" name="XLXI_34" orien="R0">
        </instance>
    </sheet>
</drawing>