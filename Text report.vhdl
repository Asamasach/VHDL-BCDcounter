Release 14.2 - xst P.28xd (nt64)
Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--> Parameter TMPDIR set to xst/projnav.tmp


Total REAL time to Xst completion: 1.00 secs
Total CPU time to Xst completion: 0.09 secs
 
--> Parameter xsthdpdir set to xst


Total REAL time to Xst completion: 1.00 secs
Total CPU time to Xst completion: 0.09 secs
 
--> Reading design: BCDcounter.prj

TABLE OF CONTENTS
  1) Synthesis Options Summary
  2) HDL Compilation
  3) Design Hierarchy Analysis
  4) HDL Analysis
  5) HDL Synthesis
     5.1) HDL Synthesis Report
  6) Advanced HDL Synthesis
     6.1) Advanced HDL Synthesis Report
  7) Low Level Synthesis
  8) Partition Report
  9) Final Report
	9.1) Device utilization summary
	9.2) Partition Resource Summary
	9.3) TIMING REPORT


=========================================================================
*                      Synthesis Options Summary                        *
=========================================================================
---- Source Parameters
Input File Name                    : "BCDcounter.prj"
Input Format                       : mixed
Ignore Synthesis Constraint File   : NO

---- Target Parameters
Output File Name                   : "BCDcounter"
Output Format                      : NGC
Target Device                      : xc3s50-5-pq208

---- Source Options
Top Module Name                    : BCDcounter
Automatic FSM Extraction           : YES
FSM Encoding Algorithm             : Auto
Safe Implementation                : No
FSM Style                          : LUT
RAM Extraction                     : Yes
RAM Style                          : Auto
ROM Extraction                     : Yes
Mux Style                          : Auto
Decoder Extraction                 : YES
Priority Encoder Extraction        : Yes
Shift Register Extraction          : YES
Logical Shifter Extraction         : YES
XOR Collapsing                     : YES
ROM Style                          : Auto
Mux Extraction                     : Yes
Resource Sharing                   : YES
Asynchronous To Synchronous        : NO
Multiplier Style                   : Auto
Automatic Register Balancing       : No

---- Target Options
Add IO Buffers                     : YES
Global Maximum Fanout              : 500
Add Generic Clock Buffer(BUFG)     : 8
Register Duplication               : YES
Slice Packing                      : YES
Optimize Instantiated Primitives   : NO
Use Clock Enable                   : Yes
Use Synchronous Set                : Yes
Use Synchronous Reset              : Yes
Pack IO Registers into IOBs        : Auto
Equivalent register Removal        : YES

---- General Options
Optimization Goal                  : Speed
Optimization Effort                : 1
Keep Hierarchy                     : No
Netlist Hierarchy                  : As_Optimized
RTL Output                         : Yes
Global Optimization                : AllClockNets
Read Cores                         : YES
Write Timing Constraints           : NO
Cross Clock Analysis               : NO
Hierarchy Separator                : /
Bus Delimiter                      : <>
Case Specifier                     : Maintain
Slice Utilization Ratio            : 100
BRAM Utilization Ratio             : 100
Verilog 2001                       : YES
Auto BRAM Packing                  : NO
Slice Utilization Ratio Delta      : 5

=========================================================================


=========================================================================
*                          HDL Compilation                              *
=========================================================================
Compiling vhdl file "F:/project/BCDcounter/BCDcounter.vhd" in Library work.
Entity <bcdcounter> compiled.
Entity <bcdcounter> (Architecture <behavioral>) compiled.

=========================================================================
*                     Design Hierarchy Analysis                         *
=========================================================================
Analyzing hierarchy for entity <BCDcounter> in library <work> (architecture <behavioral>).


=========================================================================
*                            HDL Analysis                               *
=========================================================================
Analyzing Entity <BCDcounter> in library <work> (Architecture <behavioral>).
Entity <BCDcounter> analyzed. Unit <BCDcounter> generated.


=========================================================================
*                           HDL Synthesis                               *
=========================================================================

Performing bidirectional port resolution...

Synthesizing Unit <BCDcounter>.
    Related source file is "F:/project/BCDcounter/BCDcounter.vhd".
    Found 1-bit register for signal <ovfu>.
    Found 1-bit register for signal <ovfd>.
    Found 1-bit register for signal <err>.
    Found 4-bit register for signal <os>.
    Found 4-bit addsub for signal <os$addsub0000>.
    Found 5-bit comparator greater for signal <os$cmp_gt0000> created at line 60.
    Found 5-bit comparator greater for signal <ovfu$cmp_gt0000> created at line 67.
    Summary:
	inferred   7 D-type flip-flop(s).
	inferred   1 Adder/Subtractor(s).
	inferred   2 Comparator(s).
Unit <BCDcounter> synthesized.

INFO:Xst:1767 - HDL ADVISOR - Resource sharing has identified that some arithmetic operations in this design can share the same physical resources for reduced device utilization. For improved clock frequency you may try to disable resource sharing.

=========================================================================
HDL Synthesis Report

Macro Statistics
# Adders/Subtractors                                   : 1
 4-bit addsub                                          : 1
# Registers                                            : 4
 1-bit register                                        : 3
 4-bit register                                        : 1
# Comparators                                          : 2
 5-bit comparator greater                              : 2

=========================================================================

=========================================================================
*                       Advanced HDL Synthesis                          *
=========================================================================


=========================================================================
Advanced HDL Synthesis Report

Macro Statistics
# Adders/Subtractors                                   : 1
 4-bit addsub                                          : 1
# Registers                                            : 7
 Flip-Flops                                            : 7
# Comparators                                          : 2
 5-bit comparator greater                              : 2

=========================================================================

=========================================================================
*                         Low Level Synthesis                           *
=========================================================================

Optimizing unit <BCDcounter> ...

Mapping all equations...
Building and optimizing final netlist ...
Found area constraint ratio of 100 (+ 5) on block BCDcounter, actual ratio is 1.

Final Macro Processing ...

=========================================================================
Final Register Report

Macro Statistics
# Registers                                            : 7
 Flip-Flops                                            : 7

=========================================================================

=========================================================================
*                           Partition Report                            *
=========================================================================

Partition Implementation Status
-------------------------------

  No Partitions were found in this design.

-------------------------------

=========================================================================
*                            Final Report                               *
=========================================================================
Final Results
RTL Top Level Output File Name     : BCDcounter.ngr
Top Level Output File Name         : BCDcounter
Output Format                      : NGC
Optimization Goal                  : Speed
Keep Hierarchy                     : No

Design Statistics
# IOs                              : 15

Cell Usage :
# BELS                             : 20
#      LUT2                        : 4
#      LUT3                        : 4
#      LUT4                        : 8
#      LUT4_L                      : 3
#      MUXF5                       : 1
# FlipFlops/Latches                : 7
#      FDE                         : 3
#      FDRE                        : 4
# Clock Buffers                    : 1
#      BUFGP                       : 1
# IO Buffers                       : 14
#      IBUF                        : 7
#      OBUF                        : 7
=========================================================================

Device utilization summary:
---------------------------

Selected Device : 3s50pq208-5 

 Number of Slices:                       11  out of    768     1%  
 Number of Slice Flip Flops:              6  out of   1536     0%  
 Number of 4 input LUTs:                 19  out of   1536     1%  
 Number of IOs:                          15
 Number of bonded IOBs:                  15  out of    124    12%  
    IOB Flip Flops:                       1
 Number of GCLKs:                         1  out of      8    12%  

---------------------------
Partition Resource Summary:
---------------------------

  No Partitions were found in this design.

---------------------------


=========================================================================
TIMING REPORT

NOTE: THESE TIMING NUMBERS ARE ONLY A SYNTHESIS ESTIMATE.
      FOR ACCURATE TIMING INFORMATION PLEASE REFER TO THE TRACE REPORT
      GENERATED AFTER PLACE-and-ROUTE.

Clock Information:
------------------
-----------------------------------+------------------------+-------+
Clock Signal                       | Clock buffer(FF name)  | Load  |
-----------------------------------+------------------------+-------+
clk                                | BUFGP                  | 7     |
-----------------------------------+------------------------+-------+

Asynchronous Control Signals Information:
----------------------------------------
No asynchronous control signals found in this design

Timing Summary:
---------------
Speed Grade: -5

   Minimum period: 5.225ns (Maximum Frequency: 191.388MHz)
   Minimum input arrival time before clock: 4.084ns
   Maximum output required time after clock: 6.456ns
   Maximum combinational path delay: No path found

Timing Detail:
--------------
All values displayed in nanoseconds (ns)

=========================================================================
Timing constraint: Default period analysis for Clock 'clk'
  Clock period: 5.225ns (frequency: 191.388MHz)
  Total number of paths / destination ports: 38 / 10
-------------------------------------------------------------------------
Delay:               5.225ns (Levels of Logic = 2)
  Source:            os_3 (FF)
  Destination:       os_0 (FF)
  Source Clock:      clk rising
  Destination Clock: clk rising

  Data Path: os_3 to os_0
                                Gate     Net
    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
    ----------------------------------------  ------------
     FDRE:C->Q             7   0.626   1.201  os_3 (os_3)
     LUT3:I0->O            2   0.479   0.768  ovfu_cmp_gt00001 (ovfu_cmp_gt0000)
     LUT4:I3->O            4   0.479   0.779  os_or00001 (os_or0000)
     FDRE:R                    0.892          os_0
    ----------------------------------------
    Total                      5.225ns (2.476ns logic, 2.749ns route)
                                       (47.4% logic, 52.6% route)

=========================================================================
Timing constraint: Default OFFSET IN BEFORE for Clock 'clk'
  Total number of paths / destination ports: 53 / 16
-------------------------------------------------------------------------
Offset:              4.084ns (Levels of Logic = 3)
  Source:            el (PAD)
  Destination:       os_2 (FF)
  Destination Clock: clk rising

  Data Path: el to os_2
                                Gate     Net
    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
    ----------------------------------------  ------------
     IBUF:I->O            10   0.715   1.259  el_IBUF (el_IBUF)
     LUT2:I0->O            1   0.479   0.976  os_mux0003<2>10 (os_mux0003<2>10)
     LUT4:I0->O            1   0.479   0.000  os_mux0003<2>1110 (os_mux0003<2>)
     FDRE:D                    0.176          os_2
    ----------------------------------------
    Total                      4.084ns (1.849ns logic, 2.235ns route)
                                       (45.3% logic, 54.7% route)

=========================================================================
Timing constraint: Default OFFSET OUT AFTER for Clock 'clk'
  Total number of paths / destination ports: 7 / 7
-------------------------------------------------------------------------
Offset:              6.456ns (Levels of Logic = 1)
  Source:            os_2 (FF)
  Destination:       o<2> (PAD)
  Source Clock:      clk rising

  Data Path: os_2 to o<2>
                                Gate     Net
    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
    ----------------------------------------  ------------
     FDRE:C->Q             8   0.626   0.921  os_2 (os_2)
     OBUF:I->O                 4.909          o_2_OBUF (o<2>)
    ----------------------------------------
    Total                      6.456ns (5.535ns logic, 0.921ns route)
                                       (85.7% logic, 14.3% route)

=========================================================================


Total REAL time to Xst completion: 5.00 secs
Total CPU time to Xst completion: 4.74 secs
 
--> 

Total memory usage is 283296 kilobytes

Number of errors   :    0 (   0 filtered)
Number of warnings :    0 (   0 filtered)
Number of infos    :    1 (   0 filtered)

