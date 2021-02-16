/*File Info--------------------------------------------------------------------
File Name: CombModul.scad
Project Name: OpenHardware LOOM - OHLOOM
License: Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 
Name: Jens Meisner
Date: 08/01/20
Desc:  This file is part of the OHLOOM Project. Original design by Oliver Slueter, who made all wooden parts without a CNC Router. https://wiki.opensourceecology.de/Open_Hardware-Webstuhl_%E2%80%93_OHLOOM
Usage: 
./OHLoom_Documentation/Assembly_Guide/AssemblyGuide.md
./OHLoom_Documentation/User_Guide/OHLOOM_UserGuide.md
/*
/*Modifications------------------------------------------------------------
New File Name: Enter name, if it has changed
Name: Enter name of author
Date: 
Desc: Describe changes of the original design
*/
//Please continue with any fur enter any further modification here
//--------------------------------------------------------------------------------

gap=3;
tooth=7;
height=3;
tool_size=6;
distance=tooth+gap;
count=round(100/(tooth+gap));


module linear_array(count,distance)
{
    for(i=[0:1:count-1])
    {
        translate([distance*i,0,0])
        children();
    }
}

union()
{
    cube([100,10,height]);
    cube([100,10,tool_size-1]);
    translate([0,110,0])
    cube([100,10,tool_size-1]);
    translate([0,110,0])
    cube([100,10,height]);
    translate([gap/2,0,0])
    linear_array(count,distance)
    difference()
    {
        cube([tooth,120,height]);
        translate([tooth/2-gap/2,55,0])
        cube([gap,10,height]);
    }
}