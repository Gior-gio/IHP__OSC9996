v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 630 -670 630 -490 {}
L 4 630 -490 1010 -490 {}
L 4 1010 -670 1010 -490 {}
L 4 630 -670 1010 -670 {}
P 4 5 550 -730 1090 -730 1090 -130 550 -130 550 -730 {}
T {EXTERNAL RESISTOR} 700 -710 0 0 0.4 0.4 {}
N 90 -210 90 -190 {lab=GND}
N 190 -210 190 -190 {lab=GND}
N 290 -210 290 -190 {lab=GND}
N 190 -500 190 -480 {lab=GND}
N 90 -500 90 -480 {lab=GND}
N 290 -330 290 -270 {lab=#net1}
N 90 -620 90 -560 {lab=#net2}
N 190 -330 190 -270 {lab=#net3}
N 90 -330 90 -270 {lab=#net4}
N 90 -410 90 -390 {lab=VDD}
N 190 -410 190 -390 {lab=VSS}
N 290 -410 290 -390 {lab=RST}
N 720 -590 780 -590 {lab=Vctr}
N 840 -590 900 -590 {lab=Vx}
N 910 -450 910 -410 {lab=VDD}
N 910 -210 910 -170 {lab=VSS}
N 740 -210 740 -170 {lab=Vref}
N 590 -350 630 -350 {lab=Vx}
N 590 -270 630 -270 {lab=RST}
N 990 -350 1050 -350 {lab=MEM}
N 990 -270 1050 -270 {lab=SPIKE}
N 90 -730 90 -680 {lab=Vref}
N 190 -730 190 -680 {lab=Vctr}
N 190 -620 190 -560 {lab=#net5}
N 450 -730 450 -650 {lab=SPIKE}
N 450 -590 450 -540 {lab=VSS}
C {code.sym} 372.5 -397.5 0 0 {name=CODE only_toplevel=false 
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


=====================barrido===================

let VDD_start = 0.4
let VDD_end   = 0.6
let VDD_step  = 0.008
let idx = 0

let npoints = (VDD_end - VDD_start)/VDD_step
====================vectores===================

let VDD_vec = vector(npoints)
let spike_vec = vector(npoints)

settype voltage VDD_vec
settype voltage spike_vec

===============================================

let v = VDD_start

while v le VDD_end

  alterparam VDD = $&v

  reset
  tran 0.05n 50n

  meas tran SPIKE_max max v(SPIKE)

  let spike_vec[idx] = SPIKE_max
  let VDD_vec[idx] = v

  let v = v + VDD_step
  let idx = idx + 1

end

print v(spike_vec) v(VDD_vec)
plot spike_vec vs VDD_vec


.endc
"}
C {lab_wire.sym} 910 -450 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 290 -240 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 11n 0"}
C {lab_wire.sym} 290 -410 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 290 -190 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 90 -190 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 90 -410 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 190 -240 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 190 -190 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 190 -410 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 190 -480 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 190 -730 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 90 -530 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 90 -480 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 90 -730 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 190 -530 0 0 {name=VC value="pwl 0 \{vref\} 20n \{vref\} 21n \{vctr\}"}
C {lab_wire.sym} 620 -270 0 0 {name=p37 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1000 -270 0 1 {name=p47 sig_type=std_logic lab=SPIKE}
C {lab_wire.sym} 910 -170 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 740 -190 0 0 {name=p33 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 620 -350 0 0 {name=p34 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 730 -590 0 1 {name=p2 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 850 -590 0 1 {name=p3 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 1000 -350 0 1 {name=p7 sig_type=std_logic lab=MEM}
C {lab_wire.sym} 450 -540 3 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 450 -670 3 1 {name=p50 sig_type=std_logic lab=SPIKE}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/LIF_Neuron/xschem/LIF_neuron.sym} 500 -80 0 0 {name=xLIF}
C {devices/code_shown.sym} 45 -102.5 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_ff
.lib $::SG13G2_MODELS/cornerRES.lib res_wcs
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/res.sym} 90 -360 2 0 {name=RDD
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 190 -360 2 0 {name=RSS
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 290 -360 2 0 {name=RRST
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 90 -650 2 0 {name=RREF
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 190 -650 2 0 {name=RCTR
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 450 -620 0 0 {name=Cload
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 810 -590 3 0 {name=RIN
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 90 -240 0 0 {name=VSP value=\{VDD\}}
C {noconn.sym} 1050 -350 2 0 {name=l3}
