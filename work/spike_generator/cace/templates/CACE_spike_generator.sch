v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -310 60 -290 {lab=VDD}
N 200 -310 200 -290 {lab=VSS}
N 60 -230 60 -210 {lab=GND}
N 200 -230 200 -210 {lab=GND}
N 560 -400 560 -350 {lab=VDD}
N 560 -190 560 -140 {lab=VSS}
N 660 -300 730 -300 {lab=Vspk}
N 660 -240 730 -240 {lab=Vrst}
N 390 -300 450 -300 {lab=in}
N 390 -240 450 -240 {lab=VSS}
N 290 -340 290 -300 {lab=in}
N 290 -240 290 -210 {lab=GND}
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
 let tstep = 0.001 * tper

 alter @VIN[DC] = 0.0
 alter @VIN[PULSE] = [ 0 1.2 0 $&tfr $&tfr $&ton $&tper 0 ]


 tran $&tstep $&tstop
 meas TRAN width_pulse  TRIG v(in)  VAL=0.6 rise=2  TARG v(Vspk) VAL=0.6 fall=2
 let i_VSPIKE = -1*i(VSP)
 meas tran i_VSPIKE_AVG AVG i_VSPIKE from=tstep to=tstop
 
* Save output
    echo $&width_pulse $&i_VSPIKE_AVG > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
 .endc
 "}
C {devices/vsource.sym} 60 -260 0 0 {name=VSP value=CACE\{VDD\}}
C {devices/gnd.sym} 60 -210 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 200 -210 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} 200 -260 0 0 {name=VIS value=\{VSS\}}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/spike_generator/xschem/spike_generator.sym} 560 -270 0 0 {name=x1}
C {vsource.sym} 290 -270 0 0 {name=VIN value=0.6 savecurrent=false}
C {gnd.sym} 290 -210 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 290 -340 0 0 {name=p3 sig_type=std_logic lab=in
}
C {lab_wire.sym} 560 -140 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 560 -400 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 390 -240 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {noconn.sym} 730 -300 2 0 {name=l1}
C {noconn.sym} 730 -240 2 0 {name=l5}
C {lab_wire.sym} 720 -300 0 0 {name=p9 sig_type=std_logic lab=Vspk
}
C {lab_wire.sym} 720 -240 0 0 {name=p10 sig_type=std_logic lab=Vrst
}
C {lab_wire.sym} 390 -300 0 0 {name=p11 sig_type=std_logic lab=in
}
