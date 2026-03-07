v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -220 620 -220 {lab=IN}
N 680 -370 680 -310 {lab=VDD}
N 680 -130 680 -70 {lab=VSS}
N 160 -100 160 -90 {lab=GND}
N 160 -190 160 -160 {lab=#net1}
N 240 -100 240 -90 {lab=GND}
N 240 -190 240 -160 {lab=#net2}
N 320 -190 320 -160 {lab=#net3}
N 320 -100 320 -90 {lab=GND}
N 740 -220 920 -220 {lab=OUT}
N 1060 -220 1160 -220 {lab=Y}
N 980 -350 980 -290 {lab=VDD}
N 980 -150 980 -90 {lab=VSS}
N 320 -270 320 -250 {lab=IN}
N 160 -270 160 -250 {lab=VDD}
N 240 -270 240 -250 {lab=VSS}
C {simulator_commands.sym} 1030 -430 0 0 {name=TESTBENCH
simulator="ngspice"
only_toplevel="false" 
value="

.control
    save all

    let Vhigh = 1.2
    let Vmid = Vhigh * 0.5

    let tstop = 20n
    let tstep = tstop/10k

    * Run transient analysis
    tran $&tstep $&tstop

    * Measure rising edge time (when OUT crosses threshold upwards)
    meas tran t_rise when v(OUT)=Vmid rise=1

    * Measure falling edge time (when OUT crosses threshold downwards)
    meas tran t_fall when v(OUT)=Vmid fall=1

    * Calculate pulse width as time difference
    let pulse_width=t_fall-t_rise

    * Save output
    echo $&pulse_width > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/code_shown.sym} 20 -590 0 0 {name=SETUP only_toplevel=true
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
C {devices/vsource.sym} 320 -130 0 0 {name=VIN value="pwl 0 0 10n 0 10.1n \{VDD\}"}
C {devices/vsource.sym} 160 -130 0 0 {name=VSP value=\{VDD\}}
C {devices/gnd.sym} 160 -90 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 160 -270 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 240 -130 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 240 -90 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 240 -270 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 320 -270 0 0 {name=p1 sig_type=std_logic lab=IN}
C {devices/gnd.sym} 320 -90 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 590 -220 0 0 {name=p2 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 810 -220 0 1 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 680 -330 3 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 680 -110 1 1 {name=p5 sig_type=std_logic lab=VSS}
C {noconn.sym} 1160 -220 2 0 {name=l9}
C {devices/lab_wire.sym} 1120 -220 0 1 {name=p8 sig_type=std_logic lab=Y}
C {devices/lab_wire.sym} 980 -310 3 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 980 -130 1 1 {name=p7 sig_type=std_logic lab=VSS}
C {res.sym} 320 -220 2 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 240 -220 2 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 160 -220 2 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/edge_detector/xschem/edge_detector.sym} 680 -220 0 0 {name=xEDGE}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_inv_L0d5/xschem/gate_inv_L0d5.sym} 980 -220 0 0 {name=xLOAD}
