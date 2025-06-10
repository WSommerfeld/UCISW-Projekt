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
        <blockdef name="ps2_keyboard">
            <timestamp>2025-6-9T18:48:5</timestamp>
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
            <blockpin signalname="XLXN_5(7:0)" name="CORRECT_IN(7:0)" />
            <blockpin signalname="XLXN_4" name="CORRECT_OUT" />
            <blockpin signalname="XLXN_3" name="COUNT_OUT" />
            <blockpin name="TEXT_OUTPUT(815:0)" />
        </block>
        <block symbolname="licznik" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="correct" />
            <blockpin signalname="XLXN_3" name="count" />
            <blockpin signalname="XLXN_9" name="reset" />
            <blockpin signalname="XLXN_5(7:0)" name="outcorrect(7:0)" />
            <blockpin signalname="XLXN_6(7:0)" name="outcount(7:0)" />
        </block>
        <block symbolname="ps2_keyboard" name="XLXI_4">
            <blockpin name="clk" />
            <blockpin name="reset" />
            <blockpin name="ps2_clk" />
            <blockpin name="ps2_data" />
            <blockpin signalname="XLXN_8" name="set_rng" />
            <blockpin signalname="XLXN_9" name="reset_out" />
            <blockpin signalname="XLXN_11" name="set_q" />
            <blockpin signalname="XLXN_12" name="check" />
            <blockpin signalname="XLXN_13(7:0)" name="answer(7:0)" />
            <blockpin name="state_out(3:0)" />
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
        <branch name="XLXN_4">
            <wire x2="2272" y1="832" y2="832" x1="2192" />
            <wire x2="2272" y1="832" y2="848" x1="2272" />
            <wire x2="2352" y1="848" y2="848" x1="2272" />
        </branch>
        <branch name="XLXN_5(7:0)">
            <wire x2="1632" y1="1216" y2="1216" x1="1552" />
            <wire x2="1552" y1="1216" y2="1344" x1="1552" />
            <wire x2="2816" y1="1344" y2="1344" x1="1552" />
            <wire x2="2816" y1="848" y2="848" x1="2736" />
            <wire x2="2816" y1="848" y2="1344" x1="2816" />
        </branch>
        <branch name="XLXN_6(7:0)">
            <wire x2="1632" y1="1152" y2="1152" x1="1568" />
            <wire x2="1568" y1="1152" y2="1328" x1="1568" />
            <wire x2="2800" y1="1328" y2="1328" x1="1568" />
            <wire x2="2800" y1="976" y2="976" x1="2736" />
            <wire x2="2800" y1="976" y2="1328" x1="2800" />
        </branch>
        <instance x="448" y="1600" name="XLXI_4" orien="R0">
        </instance>
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
    </sheet>
</drawing>