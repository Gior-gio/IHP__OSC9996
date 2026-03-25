v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 540 -460 {}
P 4 1 810 -440 {}
P 4 1 1110 -450 {}
N 520 -480 520 -450 {lab=VDD}
N 520 -300 520 -260 {lab=VSS}
N 380 -390 420 -390 {lab=Vctr}
N 380 -370 420 -370 {lab=RST}
N 380 -350 420 -350 {lab=Vref}
N 790 -310 790 -270 {lab=VSS}
N 790 -470 790 -430 {lab=VDD}
N 630 -370 710 -370 {lab=VOUT}
N 60 -180 60 -160 {lab=GND}
N 160 -180 160 -160 {lab=GND}
N 260 -180 260 -160 {lab=GND}
N 160 -470 160 -450 {lab=GND}
N 60 -470 60 -450 {lab=GND}
N 260 -300 260 -240 {lab=#net1}
N 60 -590 60 -530 {lab=#net2}
N 160 -300 160 -240 {lab=#net3}
N 60 -300 60 -240 {lab=#net4}
N 60 -380 60 -360 {lab=VDD}
N 160 -380 160 -360 {lab=VSS}
N 260 -380 260 -360 {lab=RST}
N 60 -700 60 -650 {lab=Vref}
N 160 -700 160 -650 {lab=Vctr}
N 160 -590 160 -530 {lab=Vc}
N 260 -700 260 -680 {lab=VSS}
N 1090 -480 1090 -440 {lab=VDD}
N 1090 -300 1090 -260 {lab=VSS}
N 1220 -370 1280 -370 {lab=X}
N 870 -370 1010 -370 {lab=COMP}
C {title.sym} 160 -40 0 0 {name=l5 author="JLuengas - NVelasco - JAngarita"}
C {lab_wire.sym} 520 -260 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 520 -480 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 690 -370 0 0 {name=p4 sig_type=std_logic lab=VOUT}
C {lab_wire.sym} 400 -390 0 0 {name=p10 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 400 -370 0 0 {name=p11 sig_type=std_logic lab=RST}
C {lab_wire.sym} 400 -350 0 0 {name=p12 sig_type=std_logic lab=Vref}
C {code.sym} 352.5 -690 0 0 {name=control only_toplevel=TRUE 
value="

.param Vctr = 1.2
.param Vref = 0.6
.param VDD = 1.2
.param VSS = 0
.param Rsource = 1

.save all

.control

* >> Variables <<
let Vhigh = 1.2
let Vmid = Vhigh * 0.5
let tstop = 50n
let tstep = tstop/10k

* Run transient analysis
tran $&tstep $&tstop

meas TRAN T_ctr TRIG v(xint.p1) VAL=Vmid rise=2 TARG v(xint.p1) VAL=Vmid rise=3
let F_ctr = 1 / T_ctr
meas TRAN T_ref TRIG v(xint.r1) VAL=Vmid rise=2 TARG v(xint.r1) VAL=Vmid rise=3
let F_ref = 1 / T_ref

print F_ctr F_ref

meas tran i_INT AVG i(VSP) from=$&tstep to=$&tstop
meas TRAN T_period TRIG v(xINT.R0) VAL=Vmid rise=2 TARG v(xINT.R0) VAL=Vmid rise=3
let i_INT_AVG=-1*i_INT

print i_INT_AVG

meas TRAN T_comp TRIG v(comp) VAL=Vmid rise=5 TARG v(comp) VAL=Vmid rise=6
let F_comp = 1 / T_comp

print F_comp

plot vout
plot xint.r1 xint.p1
plot comp

.endc
"}
C {devices/code_shown.sym} 455 -202.5 0 0 {name=Models only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/integrator/xschem/integrator.sym} 360 -210 0 0 {name=xint}
C {lab_wire.sym} 790 -290 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 790 -450 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 960 -370 0 0 {name=p13 sig_type=std_logic lab=COMP}
C {devices/vsource.sym} 260 -210 0 0 {name=VRESET value="pwl 0 \{VDD\} 5n \{VDD\} 6n 0"}
C {lab_wire.sym} 260 -380 0 1 {name=p2 sig_type=std_logic lab=RST}
C {gnd.sym} 260 -160 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 60 -160 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 60 -380 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 160 -210 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 160 -160 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 160 -380 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 160 -450 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 160 -700 0 0 {name=p5 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 60 -500 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 60 -450 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 60 -700 0 0 {name=p6 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 160 -500 0 0 {name=VC value="pwl 0 \{vref\} 1n \{vref\} 2n \{vctr\}"}
C {devices/res.sym} 60 -330 2 0 {name=RDD
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 160 -330 2 0 {name=RSS
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 260 -330 2 0 {name=RRST
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 60 -620 2 0 {name=RREF
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 160 -620 2 0 {name=RCTR
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 60 -210 0 0 {name=VSP value=\{VDD\}}
C {sg13g2_pr/ptap1.sym} 260 -650 0 0 {name=RTAP
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {lab_wire.sym} 260 -700 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sub.sym} 260 -620 0 0 {name=l4 lab=sub!}
C {devices/lab_wire.sym} 160 -560 0 0 {name=p15 sig_type=std_logic lab=Vc}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/threshold_circuit/xschem/threshold_comparator.sym} 790 -370 0 0 {name=xCOMP}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_inv_L0d13/xschem/gate_inv_L0d13.sym} 870 -150 0 0 {name=xload}
C {lab_wire.sym} 1090 -460 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1090 -280 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1260 -370 0 0 {name=p18 sig_type=std_logic lab=X}
C {noconn.sym} 1280 -370 0 1 {name=l6}
