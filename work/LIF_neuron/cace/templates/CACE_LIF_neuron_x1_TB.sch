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
P 4 5 1420 -640 2380 -640 2380 -220 1420 -220 1420 -640 {}
T {EXTERNAL RESISTOR} 580 -580 0 0 0.4 0.4 {}
T {LIF NEURON} 1010 -570 0 0 0.4 0.4 {}
T {OUTPUT BUFFERS} 1840 -620 0 0 0.4 0.4 {}
N 600 -480 660 -480 {lab=Vctr}
N 1160 -580 1160 -540 {lab=VDD}
N 1160 -340 1160 -300 {lab=VSS}
N 990 -340 990 -300 {lab=Vref}
N 840 -400 880 -400 {lab=RST}
N 1240 -480 1300 -480 {lab=MEM}
N 1240 -400 1300 -400 {lab=SPIKE}
N 220 -410 220 -390 {lab=GND}
N 100 -410 100 -390 {lab=GND}
N 100 -530 100 -470 {lab=#net1}
N 100 -640 100 -590 {lab=Vref}
N 220 -640 220 -590 {lab=Vctr}
N 220 -530 220 -470 {lab=#net2}
N 320 -640 320 -620 {lab=VSS}
N 2300 -440 2300 -360 {lab=SPIKEB}
N 2300 -300 2300 -250 {lab=VSS}
N 1840 -440 1840 -360 {lab=COMPB}
N 1840 -300 1840 -250 {lab=VSS}
N 2200 -440 2300 -440 {lab=SPIKEB}
N 1920 -440 2000 -440 {lab=SPIKE}
N 2080 -580 2080 -510 {lab=VDDB}
N 2080 -370 2080 -300 {lab=VSS}
N 1460 -440 1540 -440 {lab=COMP}
N 1620 -580 1620 -510 {lab=VDDB}
N 1620 -370 1620 -300 {lab=VSS}
N 1740 -440 1840 -440 {lab=COMPB}
N 220 -120 220 -100 {lab=GND}
N 320 -120 320 -100 {lab=GND}
N 420 -120 420 -100 {lab=GND}
N 420 -240 420 -180 {lab=#net3}
N 320 -240 320 -180 {lab=#net4}
N 220 -240 220 -180 {lab=#net5}
N 220 -320 220 -300 {lab=VDD}
N 320 -320 320 -300 {lab=VSS}
N 420 -320 420 -300 {lab=RST}
N 100 -120 100 -100 {lab=GND}
N 100 -240 100 -180 {lab=#net6}
N 100 -320 100 -300 {lab=VDDB}
N 1240 -440 1300 -440 {lab=COMP}
N 720 -480 880 -480 {lab=Vx}
C {code.sym} 412.5 -647.5 0 0 {name=CODE only_toplevel=false 
value="

.param VDD = CACE\{VDD\}
.param VSS = 0
.param vctr = CACE\{VDD\}/2
.param vref = CACE\{VDD\}
.param Cload = 20p
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

let IDD = -1*i(VSP1)
meas tran I_avg AVG IDD from=tstep to=tstop
let P_avg = abs(I_avg*Vhigh)

meas TRAN T_spk TRIG v(SPIKE) VAL=Vmid rise=2 TARG v(SPIKE) VAL=Vmid rise=3
let F_spk = 1 / T_spk
let E_spk = P_avg/F_spk*1e12

echo $&F_spk $&I_avg $&P_avg $&E_spk> CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
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
C {devices/gnd.sym} 220 -390 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 220 -640 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 100 -440 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 100 -390 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 100 -640 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 220 -440 0 0 {name=VC value="pwl 0 \{vref\} 20n \{vref\} 21n \{vctr\}"}
C {devices/res.sym} 100 -560 2 0 {name=RREF
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 220 -560 2 0 {name=RCTR
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/ptap1.sym} 320 -590 0 0 {name=RTAP
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {lab_wire.sym} 320 -640 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sub.sym} 320 -560 0 0 {name=l4 lab=sub!}
C {lab_wire.sym} 2300 -290 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2220 -440 0 1 {name=p3 sig_type=std_logic lab=SPIKEB}
C {devices/capa.sym} 2300 -330 0 0 {name=Cload
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1840 -290 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1760 -440 0 1 {name=p6 sig_type=std_logic lab=COMPB}
C {devices/capa.sym} 1840 -330 0 0 {name=Cload1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_buff_pad/xschem/gate_buff_pad.sym} 2080 -440 0 0 {name=xSPKB}
C {lab_wire.sym} 2080 -530 3 1 {name=p9 sig_type=std_logic lab=VDDB}
C {lab_wire.sym} 2080 -350 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1930 -440 0 1 {name=p15 sig_type=std_logic lab=SPIKE}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_buff_pad/xschem/gate_buff_pad.sym} 1620 -440 0 0 {name=xCOMPB}
C {lab_wire.sym} 1620 -530 3 1 {name=p16 sig_type=std_logic lab=VDDB}
C {lab_wire.sym} 1620 -350 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1470 -440 0 1 {name=p18 sig_type=std_logic lab=COMP}
C {devices/vsource.sym} 420 -150 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 11n 0"}
C {lab_wire.sym} 420 -320 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 420 -100 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 220 -100 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 220 -320 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 320 -150 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 320 -100 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 320 -320 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/res.sym} 220 -270 2 0 {name=RDD
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 320 -270 2 0 {name=RSS
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 420 -270 2 0 {name=RRST
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 220 -150 0 0 {name=VSP1 value=\{VDD\}}
C {devices/gnd.sym} 100 -100 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 100 -320 0 0 {name=p20 sig_type=std_logic lab=VDDB}
C {devices/res.sym} 100 -270 2 0 {name=RDD1
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 100 -150 0 0 {name=VSP2 value=\{VDD\}}
C {lab_wire.sym} 1250 -440 0 1 {name=p22 sig_type=std_logic lab=COMP}
