v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 220 -340 {}
P 4 1 490 -320 {}
P 4 1 790 -330 {}
N 160 -470 160 -450 {lab=GND}
N 260 -470 260 -450 {lab=GND}
N 360 -470 360 -450 {lab=GND}
N 560 -470 560 -450 {lab=GND}
N 60 -470 60 -450 {lab=GND}
N 360 -590 360 -530 {lab=#net1}
N 60 -590 60 -530 {lab=#net2}
N 260 -590 260 -530 {lab=#net3}
N 160 -590 160 -530 {lab=#net4}
N 160 -670 160 -650 {lab=VDD}
N 260 -670 260 -650 {lab=VSS}
N 360 -670 360 -650 {lab=RST}
N 560 -590 560 -530 {lab=Vc}
N 700 -670 700 -650 {lab=VSS}
N 60 -670 60 -650 {lab=Vref}
N 560 -670 560 -650 {lab=Vctr}
N 200 -360 200 -330 {lab=VDD}
N 200 -180 200 -140 {lab=VSS}
N 60 -270 100 -270 {lab=Vctr}
N 60 -250 100 -250 {lab=RST}
N 60 -230 100 -230 {lab=Vref}
N 470 -190 470 -150 {lab=VSS}
N 470 -350 470 -310 {lab=VDD}
N 310 -250 390 -250 {lab=VOUT}
N 770 -360 770 -320 {lab=VDD}
N 770 -180 770 -140 {lab=VSS}
N 900 -250 960 -250 {lab=X}
N 550 -250 690 -250 {lab=COMP}
C {devices/code_shown.sym} 40 -1000 0 0 {name=SETUP only_toplevel=true
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
C {title.sym} 160 -40 0 0 {name=l5 author="JLuengas - NVelasco - JAngarita"}
C {code.sym} 792.5 -670 0 0 {name=control only_toplevel=TRUE 
value="

.param Vctr = CACE\{VDD\}
.param Vref = CACE\{VDD\}/2
.param VDD = CACE\{VDD\}
.param VSS = 0
.param Rsource = 1m

.save all

.control

* >> Variables <<
let Vhigh = CACE\{VDD\}
let Vmid = Vhigh * 0.5
let tstop = 50n
let tstep = tstop/1k

* Run transient analysis
tran $&tstep $&tstop

*meas TRAN T_ctr TRIG v(xint.p1) VAL=Vmid rise=2 TARG v(xint.p1) VAL=Vmid rise=3
*let F_ctr = 1 / T_ctr
*meas TRAN T_ref TRIG v(xint.r1) VAL=Vmid rise=2 TARG v(xint.r1) VAL=Vmid rise=3
*let F_ref = 1 / T_ref

*print F_ctr F_ref

meas tran i_INT AVG i(VSP) from=6n to=$&tstop
let i_INT_AVG=-1*i_INT

print i_INT_AVG

meas TRAN T_comp TRIG v(comp) VAL=Vmid rise=5 TARG v(comp) VAL=Vmid rise=6
let F_comp = 1 / T_comp

print F_comp

plot vout
*plot xint.r1 xint.p1
plot comp

echo $&i_INT_AVG $&F_comp> CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
C {devices/vsource.sym} 360 -500 0 0 {name=VRESET value="pwl 0 \{VDD\} 5n \{VDD\} 6n 0"}
C {lab_wire.sym} 360 -670 0 1 {name=p2 sig_type=std_logic lab=RST}
C {gnd.sym} 360 -450 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 160 -450 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 160 -670 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 260 -500 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 260 -450 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 260 -670 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 560 -450 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 560 -670 0 0 {name=p5 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 60 -500 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 60 -450 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 60 -670 0 0 {name=p6 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 560 -500 0 0 {name=VC value="pwl 0 \{vref\} 1n \{vref\} 2n \{vctr\}"}
C {devices/res.sym} 160 -620 2 0 {name=RDD
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 260 -620 2 0 {name=RSS
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 360 -620 2 0 {name=RRST
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 60 -620 2 0 {name=RREF
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 560 -620 2 0 {name=RCTR
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 160 -500 0 0 {name=VSP value=\{VDD\}}
C {sg13g2_pr/ptap1.sym} 700 -620 0 0 {name=RTAP
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {lab_wire.sym} 700 -670 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sub.sym} 700 -590 0 0 {name=l4 lab=sub!}
C {devices/lab_wire.sym} 560 -560 0 0 {name=p15 sig_type=std_logic lab=Vc}
C {lab_wire.sym} 200 -140 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 200 -360 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 370 -250 0 0 {name=p4 sig_type=std_logic lab=VOUT}
C {lab_wire.sym} 80 -270 0 0 {name=p10 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 80 -250 0 0 {name=p11 sig_type=std_logic lab=RST}
C {lab_wire.sym} 80 -230 0 0 {name=p12 sig_type=std_logic lab=Vref}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/integrator/xschem/integrator.sym} 40 -90 0 0 {name=xint}
C {lab_wire.sym} 470 -170 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 470 -330 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -250 0 0 {name=p13 sig_type=std_logic lab=COMP}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/threshold_circuit/xschem/threshold_comparator.sym} 470 -250 0 0 {name=xCOMP}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_inv_L0d13/xschem/gate_inv_L0d13.sym} 550 -30 0 0 {name=xload}
C {lab_wire.sym} 770 -340 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 770 -160 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 940 -250 0 0 {name=p18 sig_type=std_logic lab=X}
C {noconn.sym} 960 -250 0 1 {name=l6}
