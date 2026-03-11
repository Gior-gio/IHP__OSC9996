v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 580 -620 800 -620 {}
L 4 580 -520 800 -520 {}
L 4 580 -620 580 -520 {}
L 4 800 -620 800 -520 {}
P 4 5 550 -720 1430 -720 1430 -340 550 -340 550 -720 {}
T {EXTERNAL RESISTOR} 580 -660 0 0 0.4 0.4 {}
T {LIF NEURON} 1070 -650 0 0 0.4 0.4 {}
N 100 -200 100 -180 {lab=GND}
N 200 -200 200 -180 {lab=GND}
N 300 -200 300 -180 {lab=GND}
N 200 -490 200 -470 {lab=GND}
N 100 -490 100 -470 {lab=GND}
N 300 -320 300 -260 {lab=#net1}
N 100 -610 100 -550 {lab=#net2}
N 200 -320 200 -260 {lab=#net3}
N 100 -320 100 -260 {lab=#net4}
N 100 -400 100 -380 {lab=VDD}
N 200 -400 200 -380 {lab=VSS}
N 300 -400 300 -380 {lab=RST}
N 600 -560 660 -560 {lab=Vctr}
N 1220 -660 1220 -620 {lab=VDD}
N 1220 -420 1220 -380 {lab=VSS}
N 1050 -420 1050 -380 {lab=Vref}
N 900 -480 940 -480 {lab=RST}
N 1300 -560 1360 -560 {lab=MEM}
N 1300 -480 1360 -480 {lab=SPIKE}
N 100 -720 100 -670 {lab=Vref}
N 200 -720 200 -670 {lab=Vctr}
N 200 -610 200 -550 {lab=#net5}
N 440 -720 440 -640 {lab=SPIKE}
N 440 -580 440 -530 {lab=VSS}
N 300 -720 300 -700 {lab=VSS}
N 720 -560 940 -560 {lab=Vx}
C {code.sym} 522.5 -267.5 0 0 {name=CODE only_toplevel=false 
value="

.param VDD = 1.17
.param VSS = 0
.param vctr = 0.6
.param vref = 1.2
.param Cload = 0.1p
.param Rsource = 1m

.param sw_stat_global = 0
.param sw_stat_mismatch = 0

.save all

.control

* >> Variables <<

let Vhigh = 1.17
let Vmid = Vhigh * 0.5

let tstop = 0.1u
let tstep = tstop/2.5k

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
C {lab_wire.sym} 1220 -660 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 300 -230 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 11n 0"}
C {lab_wire.sym} 300 -400 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 300 -180 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 100 -180 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 100 -400 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 200 -230 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 200 -180 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 200 -400 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 200 -470 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 200 -720 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 100 -520 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 100 -470 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 100 -720 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 200 -520 0 0 {name=VC value="pwl 0 \{vref\} 20n \{vref\} 21n \{vctr\}"}
C {lab_wire.sym} 930 -480 0 0 {name=p37 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1310 -480 0 1 {name=p47 sig_type=std_logic lab=SPIKE}
C {lab_wire.sym} 1220 -380 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1050 -400 0 0 {name=p33 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 930 -560 0 0 {name=p34 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 610 -560 0 1 {name=p2 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 1310 -560 0 1 {name=p7 sig_type=std_logic lab=MEM}
C {lab_wire.sym} 440 -530 3 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 440 -660 3 1 {name=p50 sig_type=std_logic lab=SPIKE}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/LIF_neuron/xschem/LIF_neuron.sym} 810 -290 0 0 {name=xLIF}
C {devices/code_shown.sym} 685 -242.5 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/res.sym} 100 -350 2 0 {name=RDD
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -350 2 0 {name=RSS
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 300 -350 2 0 {name=RRST
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 100 -640 2 0 {name=RREF
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -640 2 0 {name=RCTR
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 440 -610 0 0 {name=Cload
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 690 -560 3 0 {name=RIN
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 100 -230 0 0 {name=VSP value=\{VDD\}}
C {noconn.sym} 1360 -560 2 0 {name=l3}
C {sg13g2_pr/ptap1.sym} 300 -670 0 0 {name=RTAP
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {lab_wire.sym} 300 -720 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sub.sym} 300 -640 0 0 {name=l4 lab=sub!}
