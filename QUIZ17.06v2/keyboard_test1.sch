<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="PS2_Data" />
        <signal name="XLXN_4" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="Ps2_Clk" />
        <signal name="led(7:0)" />
        <signal name="ready" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25(7:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Ps2_Clk" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Output" name="ready" />
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
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
        <block symbolname="PS2_Kbd" name="XLXI_5">
            <blockpin signalname="Ps2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin name="F0" />
            <blockpin name="DO_Rdy" />
            <blockpin signalname="led(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="PS2_Data">
            <wire x2="912" y1="1328" y2="1328" x1="896" />
            <wire x2="1312" y1="1152" y2="1152" x1="912" />
            <wire x2="912" y1="1152" y2="1328" x1="912" />
            <wire x2="1200" y1="1136" y2="1712" x1="1200" />
            <wire x2="1296" y1="1712" y2="1712" x1="1200" />
            <wire x2="1312" y1="1136" y2="1136" x1="1200" />
            <wire x2="1312" y1="1136" y2="1152" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="896" y="1328" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="1120" y="1488" name="Clk_50MHz" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="1152" y1="1488" y2="1488" x1="1120" />
            <wire x2="1312" y1="1216" y2="1216" x1="1152" />
            <wire x2="1312" y1="1216" y2="1232" x1="1312" />
            <wire x2="1152" y1="1216" y2="1280" x1="1152" />
            <wire x2="1312" y1="1280" y2="1280" x1="1152" />
            <wire x2="1312" y1="1280" y2="1552" x1="1312" />
            <wire x2="1152" y1="1280" y2="1488" x1="1152" />
            <wire x2="1264" y1="1552" y2="1840" x1="1264" />
            <wire x2="1296" y1="1840" y2="1840" x1="1264" />
            <wire x2="1312" y1="1552" y2="1552" x1="1264" />
            <wire x2="1280" y1="1232" y2="1776" x1="1280" />
            <wire x2="1296" y1="1776" y2="1776" x1="1280" />
            <wire x2="1312" y1="1232" y2="1232" x1="1280" />
        </branch>
        <branch name="Ps2_Clk">
            <wire x2="1312" y1="1088" y2="1088" x1="1216" />
            <wire x2="1232" y1="1072" y2="1648" x1="1232" />
            <wire x2="1296" y1="1648" y2="1648" x1="1232" />
            <wire x2="1312" y1="1072" y2="1072" x1="1232" />
            <wire x2="1312" y1="1072" y2="1088" x1="1312" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="1728" y1="1648" y2="1648" x1="1680" />
            <wire x2="1792" y1="1088" y2="1088" x1="1696" />
            <wire x2="1696" y1="1088" y2="1104" x1="1696" />
            <wire x2="1776" y1="1104" y2="1104" x1="1696" />
            <wire x2="1776" y1="1104" y2="1520" x1="1776" />
            <wire x2="1776" y1="1520" y2="1536" x1="1776" />
            <wire x2="1728" y1="1520" y2="1648" x1="1728" />
            <wire x2="1776" y1="1520" y2="1520" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1088" name="Ps2_Clk" orien="R180" />
        <iomarker fontsize="28" x="1792" y="1088" name="led(7:0)" orien="R0" />
        <instance x="1296" y="1872" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2016" y="1504" name="ready" orien="R0" />
        <branch name="ready">
            <wire x2="2016" y1="1504" y2="1504" x1="1696" />
            <wire x2="1696" y1="1504" y2="1520" x1="1696" />
        </branch>
    </sheet>
</drawing>