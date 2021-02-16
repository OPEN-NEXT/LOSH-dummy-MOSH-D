/*File Info--------------------------------------------------------------------
File Name: ClampRing.scad
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

height=45;
gb_height=15;
cb_height=30;
cb_out=56;
cb_in=37;
gb_out=76;
hole=6.2;
freecad_export=false;

if(freecad_export)
{
    difference()
    {
        translate([0,0,gb_height])
        cylinder(cb_height,d=cb_out,center=true);        
        translate([0,0,height/2])
        cylinder(height,d=cb_in,center=true);
        translate([0,0,cb_height/2])
        rotate([0,90,0])
        cylinder(gb_out,d=hole,center=true);
    }
}
else
{
    difference()
    {
        translate([0,0,gb_height])
        cylinder(cb_height,d=cb_out,center=true,$fn=80);        
        translate([0,0,height/2])
        cylinder(height,d=cb_in,center=true,$fn=80);
        translate([0,0,cb_height/2])
        rotate([0,90,0])
        cylinder(gb_out,d=hole,center=true,$fn=80);
    }
}