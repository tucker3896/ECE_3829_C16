
�
eCannot write hardware definition file as there are no IPI block design hardware handoff files present188*	vivadotclZ4-424h px� 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
921.9842default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
921.9842default:default2
0.0002default:defaultZ17-268h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
t

Phase %s%s
101*constraints2
1.1.1 2default:default2#
Pre-Place Cells2default:defaultZ18-101h px� 
F
1Phase 1.1.1 Pre-Place Cells | Checksum: b17b97c2
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.012 . Memory (MB): peak = 921.984 ; gain = 0.0002default:defaulth px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2(
mmcm/count_1s[3]_i_22default:default2
82default:default2�
�	c1/count_1s_reg[3] {FDCE}
	c1/count_1s_reg[1] {FDCE}
	c1/count_1s_reg[2] {FDCE}
	c1/count_1s_reg[0] {FDCE}
	c1/count_10s_reg[2] {FDCE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2+
mmcm/SCLK_OBUF_inst_i_12default:default2
232default:default2�
�	sa1/shift_reg_reg[9] {FDRE}
	sa1/shift_reg_reg[8] {FDRE}
	sa1/shift_reg_reg[7] {FDRE}
	sa1/shift_reg_reg[6] {FDRE}
	sa1/shift_reg_reg[5] {FDRE}
2default:defaultZ30-568h px� 
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place22
mmcm/FSM_sequential_out[1]_i_22default:default2
22default:default2l
X	sst1/tbc1/FSM_sequential_out_reg[1] {FDRE}
	sst1/tbc1/FSM_sequential_out_reg[0] {FDRE}
2default:defaultZ30-568h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
x

Phase %s%s
101*constraints2
1.1.2 2default:default2'
IO and Clk Clean Up2default:defaultZ18-101h px� 
J
5Phase 1.1.2 IO and Clk Clean Up | Checksum: b17b97c2
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.472 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
�

Phase %s%s
101*constraints2
1.1.3 2default:default2>
*Implementation Feasibility check On IDelay2default:defaultZ18-101h px� 
a
LPhase 1.1.3 Implementation Feasibility check On IDelay | Checksum: b17b97c2
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.473 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
x

Phase %s%s
101*constraints2
1.1.4 2default:default2'
Commit IO Placement2default:defaultZ18-101h px� 
J
5Phase 1.1.4 Commit IO Placement | Checksum: 0207bc9d
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.474 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
g
RPhase 1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 45a6e519
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.475 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
}

Phase %s%s
101*constraints2
1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
v

Phase %s%s
101*constraints2
1.2.1 2default:default2%
Place Init Design2default:defaultZ18-101h px� 
~

Phase %s%s
101*constraints2
1.2.1.1 2default:default2+
Init Lut Pin Assignment2default:defaultZ18-101h px� 
Q
<Phase 1.2.1.1 Init Lut Pin Assignment | Checksum: 10a86803a
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.489 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
H
3Phase 1.2.1 Place Init Design | Checksum: 9b4879fc
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.543 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
O
:Phase 1.2 Build Placer Netlist Model | Checksum: 9b4879fc
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.544 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
z

Phase %s%s
101*constraints2
1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.3.1 2default:default24
 Constrain Global/Regional Clocks2default:defaultZ18-101h px� 
W
BPhase 1.3.1 Constrain Global/Regional Clocks | Checksum: 9b4879fc
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.547 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
L
7Phase 1.3 Constrain Clocks/Macros | Checksum: 9b4879fc
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.547 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
H
3Phase 1 Placer Initialization | Checksum: 9b4879fc
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.548 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
2
%s*constraints2
 2default:defaulth px� 
C
.Phase 2 Global Placement | Checksum: f04cd605
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.644 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
O
:Phase 3.1 Commit Multi Column Macros | Checksum: f04cd605
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.645 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 112e3b501
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.676 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1dc50e8fe
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.681 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
x

Phase %s%s
101*constraints2
3.4 2default:default2)
updateClock Trees: DP2default:defaultZ18-101h px� 
K
6Phase 3.4 updateClock Trees: DP | Checksum: 1dc50e8fe
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.682 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px� 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 1e16cd485
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.688 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
t

Phase %s%s
101*constraints2
3.6 2default:default2%
Fast Optimization2default:defaultZ18-101h px� 
G
2Phase 3.6 Fast Optimization | Checksum: 1e16cd485
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.689 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 


Phase %s%s
101*constraints2
3.7 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
3.7.1 2default:default26
"Commit Small Macros and Core Logic2default:defaultZ18-101h px� 
|

Phase %s%s
101*constraints2
3.7.1.1 2default:default2)
Commit Slice Clusters2default:defaultZ18-101h px� 
O
:Phase 3.7.1.1 Commit Slice Clusters | Checksum: 1af6d0bd3
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.758 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
Z
EPhase 3.7.1 Commit Small Macros and Core Logic | Checksum: 1af6d0bd3
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.759 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7.2 2default:default2C
/Clock Restriction Legalization for Leaf Columns2default:defaultZ18-101h px� 
g
RPhase 3.7.2 Clock Restriction Legalization for Leaf Columns | Checksum: 1af6d0bd3
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.766 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7.3 2default:default2E
1Clock Restriction Legalization for Non-Clock Pins2default:defaultZ18-101h px� 
i
TPhase 3.7.3 Clock Restriction Legalization for Non-Clock Pins | Checksum: 1af6d0bd3
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.767 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
R
=Phase 3.7 Small Shape Detail Placement | Checksum: 1af6d0bd3
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.770 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 12b317935
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.775 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 12b317935
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.776 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
~

Phase %s%s
101*constraints2
4.1.1 2default:default2-
callUpdateTimingBeforePCO2default:defaultZ18-101h px� 
Q
<Phase 4.1.1 callUpdateTimingBeforePCO | Checksum: 15b53f6fe
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.808 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
}

Phase %s%s
101*constraints2
4.1.2 2default:default2,
updateClock Trees: PCOPT2default:defaultZ18-101h px� 
P
;Phase 4.1.2 updateClock Trees: PCOPT | Checksum: 15b53f6fe
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.809 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
�

Phase %s%s
101*constraints2
4.1.3 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
z

Phase %s%s
101*constraints2
4.1.3.1 2default:default2'
PCOPT Shape updates2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2

4.1.3.1.1 2default:default2/
removeOptionalFFsFromShapes2default:defaultZ18-101h px� 
W
BPhase 4.1.3.1.1 removeOptionalFFsFromShapes | Checksum: 15b53f6fe
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.810 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
z

Phase %s%s
101*constraints2

4.1.3.1.2 2default:default2%
deleteLutnmShapes2default:defaultZ18-101h px� 
w

Phase %s%s
101*constraints2 
4.1.3.1.2.1 2default:default2 
deleteShapes2default:defaultZ18-101h px� 
J
5Phase 4.1.3.1.2.1 deleteShapes | Checksum: 16023aa00
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.811 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
M
8Phase 4.1.3.1.2 deleteLutnmShapes | Checksum: 16023aa00
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.812 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
M
8Phase 4.1.3.1 PCOPT Shape updates | Checksum: 16023aa00
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.813 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
�

Phase %s%s
101*constraints2
4.1.3.2 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101h px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
95.4122default:defaultZ30-746h px� 
\
GPhase 4.1.3.2 Post Placement Timing Optimization | Checksum: 10636d997
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.815 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
S
>Phase 4.1.3 Post Placement Optimization | Checksum: 10636d997
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.816 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 10636d997
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.816 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
�

Phase %s%s
101*constraints2
4.2 2default:default25
!Sweep Clock Roots: Post-Placement2default:defaultZ18-101h px� 
W
BPhase 4.2 Sweep Clock Roots: Post-Placement | Checksum: 10636d997
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.818 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
y

Phase %s%s
101*constraints2
4.3 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.3 Post Placement Cleanup | Checksum: 10636d997
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.818 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
s

Phase %s%s
101*constraints2
4.4 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
4.4.1 2default:default2
Restore STA2default:defaultZ18-101h px� 
C
.Phase 4.4.1 Restore STA | Checksum: 10636d997
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.820 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
F
1Phase 4.4 Placer Reporting | Checksum: 10636d997
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.821 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
z

Phase %s%s
101*constraints2
4.5 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.5 Final Placement Cleanup | Checksum: 4e861cc6
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.823 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: 4e861cc6
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.824 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
=
(Ending Placer Task | Checksum: 325e7508
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.827 . Memory (MB): peak = 935.484 ; gain = 13.5002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
392default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0452default:default2
935.4842default:default2
0.0002default:defaultZ17-268h px� 

jreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.028 . Memory (MB): peak = 935.484 ; gain = 0.000
*commonh px� 
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.019 . Memory (MB): peak = 935.484 ; gain = 0.000
*commonh px� 
�
treport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.003 . Memory (MB): peak = 935.484 ; gain = 0.000
*commonh px� 


End Record