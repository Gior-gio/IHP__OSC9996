v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 580 -680 800 -680 {}
L 4 580 -580 800 -580 {}
L 4 580 -680 580 -580 {}
L 4 800 -680 800 -580 {}
P 4 5 520 -780 1420 -780 1420 -400 520 -400 520 -780 {}
T {EXTERNAL RESISTOR} 580 -720 0 0 0.4 0.4 {}
T {LIF NEURON} 1080 -710 0 0 0.4 0.4 {}
N 100 -260 100 -240 {lab=GND}
N 200 -260 200 -240 {lab=GND}
N 300 -260 300 -240 {lab=GND}
N 200 -550 200 -530 {lab=GND}
N 100 -550 100 -530 {lab=GND}
N 300 -380 300 -320 {lab=#net1}
N 100 -670 100 -610 {lab=#net2}
N 200 -380 200 -320 {lab=#net3}
N 100 -380 100 -320 {lab=#net4}
N 100 -460 100 -440 {lab=VDD}
N 200 -460 200 -440 {lab=VSS}
N 300 -460 300 -440 {lab=RST}
N 600 -620 660 -620 {lab=Vctr}
N 1220 -720 1220 -680 {lab=VDD}
N 1220 -480 1220 -440 {lab=VSS}
N 1050 -480 1050 -440 {lab=Vref}
N 900 -540 940 -540 {lab=RST}
N 1300 -620 1360 -620 {lab=MEM}
N 1300 -540 1360 -540 {lab=SPIKE}
N 100 -780 100 -730 {lab=Vref}
N 200 -780 200 -730 {lab=Vctr}
N 200 -670 200 -610 {lab=#net5}
N 1620 -640 1620 -560 {lab=SPIKE}
N 1620 -500 1620 -450 {lab=VSS}
N 300 -780 300 -760 {lab=VSS}
N 1300 -580 1360 -580 {lab=COMP}
N 760 -500 760 -450 {lab=VSS}
N 760 -620 940 -620 {lab=Vx}
N 760 -620 760 -560 {lab=Vx}
N 720 -620 760 -620 {lab=Vx}
N 1500 -500 1500 -450 {lab=VSS}
N 1500 -640 1500 -560 {lab=COMP}
C {code.sym} 382.5 -767.5 0 0 {name=CODE only_toplevel=false 
value="

.temp 27
.param VDD = 0.6
.param VSS = 0
.param vctr = 0
.param vref = 0.6
.param Cload = 20p
.param Rsource = 1m

.param sw_stat_global = 0
.param sw_stat_mismatch = 0

*.save @v.xLIF.VINT[i]
*.save @v.xLIF.VCOMP[i]
*.save @v.xLIF.VSPIKE[i]

.save all

.control

* >> Variables <<
let Vhigh = 0.5
let Vmid = Vhigh * 0.5
let tstop = 0.1u
let tstep = tstop/10k

* Run transient analysis
tran $&tstep $&tstop uic

* Average current
let IDD = -1*i(VSP1)

meas tran I_avg AVG IDD from=11n to=tstop
let P_avg = abs(I_avg*Vhigh)

meas TRAN T_spk TRIG v(SPIKE) VAL=Vmid rise=2 TARG v(SPIKE) VAL=Vmid rise=3
let F_spk = 1 / T_spk
let E_spk = P_avg/F_spk

*Print Neuron results
print F_spk I_avg P_avg E_spk

*Internal currents
*let i_VINT = @v.xLIF.VINT[i]
*let i_VCOMP = @v.xLIF.VCOMP[i]
*let i_VSPIKE = @v.xLIF.VSPIKE[i]

*meas tran i_VINT AVG i_VINT from=11n to=tstop
*meas tran i_VCOMP AVG i_VCOMP from=11n to=tstop
*meas tran i_VSPIKE AVG i_VSPIKE from=11n to=tstop
*print i_VINT i_VCOMP i_VSPIKE

* Plots
plot v(Vctr) v(Vref) v(RST)
plot v(MEM) v(Vx) v(vctr)
plot v(COMP) v(SPIKE)

.endc
"}
C {lab_wire.sym} 1220 -720 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 300 -290 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 11n 0"}
C {lab_wire.sym} 300 -460 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 300 -240 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 100 -240 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 100 -460 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 200 -290 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 200 -240 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 200 -460 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 200 -530 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 200 -780 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 100 -580 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 100 -530 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 100 -780 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 200 -580 0 0 {name=VC value="pwl 0 \{vref\} 20n \{vref\} 21n \{vctr\}"}
C {lab_wire.sym} 930 -540 0 0 {name=p37 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1310 -540 0 1 {name=p47 sig_type=std_logic lab=SPIKE}
C {lab_wire.sym} 1220 -440 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1050 -460 0 0 {name=p33 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 930 -620 0 0 {name=p34 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 610 -620 0 1 {name=p2 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 1310 -620 0 1 {name=p7 sig_type=std_logic lab=MEM}
C {lab_wire.sym} 1620 -490 3 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1620 -580 3 1 {name=p50 sig_type=std_logic lab=SPIKE}
C {devices/code_shown.sym} 625 -332.5 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/res.sym} 100 -410 2 0 {name=RDD
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -410 2 0 {name=RSS
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 300 -410 2 0 {name=RRST
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 100 -700 2 0 {name=RREF
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -700 2 0 {name=RCTR
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1620 -530 0 0 {name=CSPIKE
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 690 -620 3 0 {name=RIN
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 100 -290 0 0 {name=VSP1 value=\{VDD\}}
C {noconn.sym} 1360 -620 2 0 {name=l3}
C {sg13g2_pr/ptap1.sym} 300 -730 0 0 {name=RTAP
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {lab_wire.sym} 300 -780 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sub.sym} 300 -700 0 0 {name=l4 lab=sub!}
C {lab_wire.sym} 1310 -580 0 1 {name=p1 sig_type=std_logic lab=COMP}
C {lab_wire.sym} 1500 -580 3 1 {name=p4 sig_type=std_logic lab=COMP}
C {lab_wire.sym} 760 -490 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 760 -530 0 0 {name=CX
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1500 -490 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 1500 -530 0 0 {name=CCOMP
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {OSC9996-main/schematic/xschem/TOP_ROILIFNEURON.sym} 810 -350 0 0 {name=xLIF}
