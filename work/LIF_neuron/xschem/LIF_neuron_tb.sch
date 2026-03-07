v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 640 -720 640 -540 {}
L 4 640 -540 1020 -540 {}
L 4 1020 -720 1020 -540 {}
L 4 640 -720 1020 -720 {}
P 4 5 560 -780 1100 -780 1100 -180 560 -180 560 -780 {}
T {EXTERNAL RESISTOR} 710 -760 0 0 0.4 0.4 {}
T {NEURON 1
} 780 -820 0 0 0.4 0.4 {}
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
N 740 -630 800 -630 {lab=Vctr}
N 860 -630 920 -630 {lab=Vx}
N 920 -500 920 -460 {lab=VDD}
N 920 -260 920 -220 {lab=VSS}
N 750 -260 750 -220 {lab=Vref}
N 600 -400 640 -400 {lab=Vx}
N 600 -320 640 -320 {lab=RST}
N 1000 -400 1060 -400 {lab=MEM}
N 1000 -320 1060 -320 {lab=SPIKE}
N 100 -780 100 -730 {lab=Vref}
N 200 -780 200 -730 {lab=Vctr}
N 200 -670 200 -610 {lab=#net5}
N 460 -780 460 -700 {lab=SPIKE}
N 460 -640 460 -590 {lab=VSS}
C {code.sym} 372.5 -457.5 0 0 {name=CODE only_toplevel=false 
value="

.param VDD = 1.2
.param VSS = 0
.param vctr = 1
.param vref = 0
.param Cload = 0.1p
.param Rsource = 10

.param sw_stat_global = 0
.param sw_stat_mismatch = 0

.save all

.control

* >> Variables <<
let Vhigh = 0.8
let Vmid = Vhigh * 0.5

let tstop = 50n
let tstep = tstop/1k

* Run transient analysis
tran $&tstep $&tstop

let IDD = -1*i(VSP)
meas tran I_avg AVG IDD from=tstep to=tstop
let P_avg = abs(I_avg*Vhigh)

meas TRAN T_spk TRIG v(SPIKE) VAL=Vmid rise=2 TARG v(SPIKE) VAL=Vmid rise=3
let F_spk = 1 / T_spk

let E_spk = P_avg/F_spk

*Print results
print F_spk I_avg P_avg E_spk

* Plots
plot v(Vctr) v(Vref) v(RST)
plot v(MEM) v(Vx)
plot v(xLIF.COMP)
plot v(SPIKE)

.endc
"}
C {lab_wire.sym} 920 -500 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 300 -290 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 11n 0"}
C {lab_wire.sym} 300 -460 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 300 -240 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 100 -290 0 0 {name=VSP value=\{VDD\}}
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
C {lab_wire.sym} 630 -320 0 0 {name=p37 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1010 -320 0 1 {name=p47 sig_type=std_logic lab=SPIKE}
C {lab_wire.sym} 920 -220 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 750 -240 0 0 {name=p33 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 630 -400 0 0 {name=p34 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 750 -630 0 1 {name=p2 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 870 -630 0 1 {name=p3 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 1010 -400 0 1 {name=p7 sig_type=std_logic lab=MEM}
C {lab_wire.sym} 460 -590 3 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 460 -720 3 1 {name=p50 sig_type=std_logic lab=SPIKE}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/LIF_Neuron/xschem/LIF_neuron.sym} 510 -130 0 0 {name=xLIF}
C {devices/code_shown.sym} 55 -152.5 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/res.sym} 100 -410 2 0 {name=RDD
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -410 2 0 {name=RSS
value=0
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
C {devices/capa.sym} 460 -670 0 0 {name=Cload
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 830 -630 3 0 {name=RIN
value=100k
footprint=1206
device=resistor
m=1}
