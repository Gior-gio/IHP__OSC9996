v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 580 -540 800 -540 {}
L 4 580 -440 800 -440 {}
L 4 580 -540 580 -440 {}
L 4 800 -540 800 -440 {}
P 4 5 540 -640 1360 -640 1360 -260 540 -260 540 -640 {}
T {EXTERNAL RESISTOR} 580 -580 0 0 0.4 0.4 {}
T {LIF NEURON} 1010 -570 0 0 0.4 0.4 {}
N 480 -640 480 -560 {lab=SPIKE}
N 480 -500 480 -450 {lab=VSS}
N 600 -480 660 -480 {lab=Vctr}
N 1160 -580 1160 -540 {lab=VDD}
N 1160 -340 1160 -300 {lab=VSS}
N 990 -340 990 -300 {lab=Vref}
N 840 -400 880 -400 {lab=RST}
N 1240 -480 1300 -480 {lab=MEM}
N 1240 -400 1300 -400 {lab=SPIKE}
N 100 -120 100 -100 {lab=GND}
N 200 -120 200 -100 {lab=GND}
N 300 -120 300 -100 {lab=GND}
N 200 -410 200 -390 {lab=GND}
N 100 -410 100 -390 {lab=GND}
N 300 -240 300 -180 {lab=#net1}
N 100 -530 100 -470 {lab=#net2}
N 200 -240 200 -180 {lab=#net3}
N 100 -240 100 -180 {lab=#net4}
N 100 -320 100 -300 {lab=VDD}
N 200 -320 200 -300 {lab=VSS}
N 300 -320 300 -300 {lab=RST}
N 100 -640 100 -590 {lab=Vref}
N 200 -640 200 -590 {lab=Vctr}
N 200 -530 200 -470 {lab=#net5}
N 300 -640 300 -620 {lab=VSS}
N 720 -480 880 -480 {lab=Vx}
C {code.sym} 392.5 -317.5 0 0 {name=CODE only_toplevel=false 
value="

.param VDD = CACE\{VDD\}
.param VSS = 0
.param vctr = CACE\{VDD\}/2
.param vref = CACE\{VDD\}
.param cap = 0.1p
.param Rsource = 1m

.save all

.control

* >> Variables <<
let Vhigh = CACE\{VDD\}
let Vmid = Vhigh * 0.5

let tstop = 0.1u
let tstep = tstop/2.5k

* Run transient analysis
tran $&tstep $&tstop uic

let IDD = -1*i(VSP)
meas tran I_avg AVG IDD from=tstep to=tstop
let P_avg = abs(I_avg*Vhigh)

meas TRAN T_spk TRIG v(SPIKE) VAL=Vmid rise=2 TARG v(SPIKE) VAL=Vmid rise=3
let F_spk = 1 / T_spk
let E_spk = P_avg/F_spk*1e12

echo $&F_spk $&I_avg $&P_avg $&E_spk> CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
C {capa.sym} 480 -530 0 0 {name=C1
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 480 -450 3 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 480 -580 3 1 {name=p50 sig_type=std_logic lab=SPIKE}
C {devices/code_shown.sym} 50 -960 0 0 {name=SETUP only_toplevel=true
format="tcleval( @value )"
value="
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/models/cornerMOSlv.lib CACE\{corner_mos\}
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/models/cornerRES.lib CACE\{corner_res\}
.include CACE\{DUT_path\}

.temp CACE\{temperature\}

* Statitical switches
.param mm_ok=CACE\{stat_sw\}
.param mc_ok=CACE\{stat_sw\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1
"}
C {lab_wire.sym} 1160 -580 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 870 -400 0 0 {name=p37 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1250 -400 0 1 {name=p47 sig_type=std_logic lab=SPIKE}
C {lab_wire.sym} 1160 -300 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 990 -320 0 0 {name=p33 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 870 -480 0 0 {name=p34 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 610 -480 0 1 {name=p2 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 1250 -480 0 1 {name=p7 sig_type=std_logic lab=MEM}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/LIF_neuron/xschem/LIF_neuron.sym} 750 -210 0 0 {name=xLIF}
C {res.sym} 690 -480 3 0 {name=RIN
value=100k
footprint=1206
device=resistor
m=1}
C {noconn.sym} 1300 -480 2 0 {name=l3}
C {devices/vsource.sym} 300 -150 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 11n 0"}
C {lab_wire.sym} 300 -320 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 300 -100 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 100 -100 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 100 -320 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 200 -150 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 200 -100 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 200 -320 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 200 -390 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 200 -640 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 100 -440 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 100 -390 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 100 -640 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 200 -440 0 0 {name=VC value="pwl 0 \{vref\} 20n \{vref\} 21n \{vctr\}"}
C {devices/res.sym} 100 -270 2 0 {name=RDD
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -270 2 0 {name=RSS
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 300 -270 2 0 {name=RRST
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 100 -560 2 0 {name=RREF
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -560 2 0 {name=RCTR
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 100 -150 0 0 {name=VSP value=\{VDD\}}
C {sg13g2_pr/ptap1.sym} 300 -590 0 0 {name=RTAP
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {lab_wire.sym} 300 -640 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sub.sym} 300 -560 0 0 {name=l4 lab=sub!}
