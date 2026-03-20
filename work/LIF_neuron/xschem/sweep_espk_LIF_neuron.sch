v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 580 -480 800 -480 {}
L 4 580 -380 800 -380 {}
L 4 580 -480 580 -380 {}
L 4 800 -480 800 -380 {}
P 4 5 550 -580 1430 -580 1430 -200 550 -200 550 -580 {}
T {EXTERNAL RESISTOR} 580 -520 0 0 0.4 0.4 {}
T {LIF NEURON} 1070 -510 0 0 0.4 0.4 {}
N 100 -60 100 -40 {lab=GND}
N 200 -60 200 -40 {lab=GND}
N 300 -60 300 -40 {lab=GND}
N 200 -350 200 -330 {lab=GND}
N 100 -350 100 -330 {lab=GND}
N 300 -180 300 -120 {lab=#net1}
N 100 -470 100 -410 {lab=#net2}
N 200 -180 200 -120 {lab=#net3}
N 100 -180 100 -120 {lab=#net4}
N 100 -260 100 -240 {lab=VDD}
N 200 -260 200 -240 {lab=VSS}
N 300 -260 300 -240 {lab=RST}
N 600 -420 660 -420 {lab=Vctr}
N 1220 -520 1220 -480 {lab=VDD}
N 1220 -280 1220 -240 {lab=VSS}
N 1050 -280 1050 -240 {lab=Vref}
N 900 -340 940 -340 {lab=RST}
N 1300 -420 1360 -420 {lab=MEM}
N 1300 -340 1360 -340 {lab=SPIKE}
N 100 -580 100 -530 {lab=Vref}
N 200 -580 200 -530 {lab=Vctr}
N 200 -470 200 -410 {lab=#net5}
N 440 -580 440 -500 {lab=SPIKE}
N 440 -440 440 -390 {lab=VSS}
N 300 -580 300 -560 {lab=VSS}
N 720 -420 940 -420 {lab=Vx}
N 1300 -380 1360 -380 {lab=COMP}
C {code.sym} 512.5 -147.5 0 0 {name=CODE only_toplevel=false 
value="

.param VDD = 1.2
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

let tstop = 0.1u
let tstep = tstop/2.5k

=====================barrido===================

let VDD_start = 0
let VDD_end   = 1.2
let VDD_step  = 0.03

let idx = 0

let npoints = (VDD_end - VDD_start)/VDD_step

====================vectores===================

let VDD_vec = vector(npoints)
let Vhigh_vec = vector(npoints)
let Vmid_vec = vector(npoints)
let spike_vec = vector(npoints)
let IDD_vec = vector(npoints)
let idd_avg_vec = vector(npoints)
let P_avg_vec = vector(npoints)
let F_spk_vec = vector(npoints)
let E_spk_vec = vector(npoints)

settype voltage VDD_vec
settype voltage Vhigh_vec
settype voltage Vmid_vec
settype voltage spike_vec
settype current IDD_vec
settype current idd_avg_vec
settype power P_avg_vec
settype frequency F_spk_vec
settype energy E_spk_vec

===============================================

let v = VDD_start

while v le VDD_end

  alterparam VDD = $&v

  reset

  tran $&tstep $&tstop

  meas tran SPIKE_max max v(SPIKE)

  let spike_vec[idx] = SPIKE_max

  let Vmid_vec[idx] = v * 0.5

  meas tran idd_avg AVG i(VSP) from=tstep to=tstop

  let IDD_vec[idx] = abs(idd_avg)

  let P_avg_vec[idx] = abs(v*IDD_vec[idx])

  meas TRAN T_spk TRIG v(SPIKE) VAL=(v*0.5) rise=2 TARG v(SPIKE) VAL=(v*0.5) rise=3
 
  let F_spk_vec[idx] = 1 / T_spk

  if (F_spk_vec[idx] < 1k)

      let E_spk_vec[idx] = 0

  else

      let E_spk_vec[idx] = P_avg_vec[idx]/F_spk_vec[idx]

  end

  let VDD_vec[idx] = v

  let v = v + VDD_step

  let idx = idx + 1

end

print v(VDD_vec) IDD_vec P_avg_vec v(spike_vec) E_spk_vec F_spk_vec


plot spike_vec vs VDD_vec
plot E_spk_vec vs VDD_vec
plot F_spk_vec vs VDD_vec
plot P_avg_vec vs VDD_vec


setplot const
setscale VDD_vec

set wr_vcnames
option numdgt=6
wrdata /foss/designs/chipathon_2025/designs/ihp-sg13g2/LIF_neuron/xschem/resultados.txt VDD_vec spike_vec E_spk_vec  F_spk_vec P_avg_vec


.endc
"}
C {lab_wire.sym} 1220 -520 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 300 -90 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 11n 0"}
C {lab_wire.sym} 300 -260 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 300 -40 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 100 -40 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 100 -260 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 200 -90 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 200 -40 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 200 -260 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 200 -330 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 200 -580 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 100 -380 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 100 -330 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 100 -580 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 200 -380 0 0 {name=VC value="pwl 0 \{vref\} 20n \{vref\} 21n \{vctr\}"}
C {lab_wire.sym} 930 -340 0 0 {name=p37 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1310 -340 0 1 {name=p47 sig_type=std_logic lab=SPIKE}
C {lab_wire.sym} 1220 -240 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1050 -260 0 0 {name=p33 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 930 -420 0 0 {name=p34 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 610 -420 0 1 {name=p2 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 1310 -420 0 1 {name=p7 sig_type=std_logic lab=MEM}
C {lab_wire.sym} 440 -390 3 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 440 -520 3 1 {name=p50 sig_type=std_logic lab=SPIKE}
C {devices/code_shown.sym} 685 -102.5 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/res.sym} 100 -210 2 0 {name=RDD
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -210 2 0 {name=RSS
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 300 -210 2 0 {name=RRST
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 100 -500 2 0 {name=RREF
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -500 2 0 {name=RCTR
value=\{Rsource\}
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 440 -470 0 0 {name=Cload
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 690 -420 3 0 {name=RIN
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 100 -90 0 0 {name=VSP value=\{VDD\}}
C {noconn.sym} 1360 -420 2 0 {name=l3}
C {sg13g2_pr/ptap1.sym} 300 -530 0 0 {name=RTAP
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {lab_wire.sym} 300 -580 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sub.sym} 300 -500 0 0 {name=l4 lab=sub!}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/LIF_neuron/xschem/LIF_neuron.sym} 810 -150 0 0 {name=xLIF}
C {lab_wire.sym} 1310 -380 0 1 {name=p1 sig_type=std_logic lab=COMP}
C {noconn.sym} 1360 -380 2 0 {name=l5}
