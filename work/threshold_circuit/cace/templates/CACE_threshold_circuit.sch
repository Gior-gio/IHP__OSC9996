v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 490 -405 490 -370 {lab=VDD}
N 490 -250 490 -220 {lab=VSS}
N 570 -310 680 -310 {lab=out}
N 345 -310 410 -310 {lab=in}
N 60 -310 60 -290 {lab=VDD}
N 200 -310 200 -290 {lab=VSS}
N 60 -230 60 -210 {lab=GND}
N 200 -230 200 -210 {lab=GND}
N 345 -220 345 -200 {lab=GND}
N 345 -310 345 -280 {lab=in}
C {devices/code_shown.sym} 0 -680 0 0 {name=SETUP only_toplevel=true
format="tcleval( @value )"
value="
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/models/cornerMOSlv.lib CACE\{corner_mos\}
.include CACE\{DUT_path\}

.temp CACE\{temperature\}

* Statitical switches
.param mm_ok=CACE\{stat_sw\}
.param mc_ok=CACE\{stat_sw\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1
"}
C {devices/code_shown.sym} 900 -590 0 0 {name=Voltage_sources only_toplevel=true
value="
.param VDD = CACE\{VDD\}
.param VSS = 0
"}
C {devices/lab_wire.sym} 60 -310 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 200 -310 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 345 -310 0 0 {name=p3 sig_type=std_logic lab=in
}
C {code.sym} 925 -455 0 0 {name=TESTBENCH
simulator="ngspice"
only_toplevel="false" 
value="
 .control
 


 let fsig = 100Meg
 let tper = 1/fsig
 let tfr = 0.01 * tper
 let ton = 0.5 * tper - 2 * tfr
 let tstop = 2 * tper
 let tstep = 0.0001 * tper

 alter @VIN[DC] = 0.0
 alter @VIN[PULSE] = [ 0 1.2 0 $&tfr $&tfr $&ton $&tper 0 ]
 op

 tran $&tstep $&tstop
 

 let VP = 1.2
 let per10 = VP * 0.1
 let per50 = VP * 0.5
 let per90 = VP * 0.9
 
 meas TRAN t_rise TRIG v(out) VAL=per10 rise=2 TARG v(out) VAL=per90 rise=2
 meas TRAN t_fall TRIG v(out) VAL=per90 fall=2 TARG v(out) VAL=per10 fall=2
 meas TRAN t_delay TRIG v(in) VAL=per50 rise=1 TARG v(out) VAL=per50 fall=1
 meas TRAN T_period TRIG v(out) VAL=per50 rise=1 TARG v(out) VAL=per50 rise=2
 let F_recu = 1 / T_period
 

 
* Save output
    echo $&t_rise $&t_fall $&t_delay $&F_recu > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
 .endc
 "}
C {lab_wire.sym} 490 -405 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 490 -220 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 610 -310 0 0 {name=p7 sig_type=std_logic lab=out
}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/threshold_circuit/xschem/threshold_comparator.sym} 485 -310 0 0 {name=x2}
C {noconn.sym} 680 -310 2 0 {name=l5}
C {devices/vsource.sym} 60 -260 0 0 {name=VSP value=CACE\{VDD\}}
C {devices/gnd.sym} 60 -210 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 345 -250 0 0 {name=VIN value=0.6}
C {devices/gnd.sym} 200 -210 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 345 -200 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 200 -260 0 0 {name=VIS value=\{VSS\}}
