v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 770 -180 830 -180 {lab=RST}
N 1040 -240 1140 -240 {lab=SPIKE}
N 950 -70 960 -60 {lab=INT_RST}
N 930 -70 950 -70 {lab=INT_RST}
N 920 -60 930 -70 {lab=INT_RST}
N 440 -350 450 -350 {lab=MEM}
N 140 -240 180 -240 {lab=INT_RST}
N 80 -220 180 -220 {lab=Vref}
N 280 -170 280 -20 {lab=VSS}
N 80 -20 280 -20 {lab=VSS}
N 140 -60 260 -60 {lab=INT_RST}
N 260 -60 270 -70 {lab=INT_RST}
N 270 -70 290 -70 {lab=INT_RST}
N 290 -70 300 -60 {lab=INT_RST}
N 600 -440 940 -440 {lab=VDD}
N 390 -240 440 -240 {lab=MEM}
N 600 -20 940 -20 {lab=VSS}
N 280 -20 600 -20 {lab=VSS}
N 940 -130 940 -20 {lab=VSS}
N 620 -60 920 -60 {lab=INT_RST}
N 610 -70 620 -60 {lab=INT_RST}
N 590 -70 610 -70 {lab=INT_RST}
N 580 -60 590 -70 {lab=INT_RST}
N 300 -60 580 -60 {lab=INT_RST}
N 1040 -180 1080 -180 {lab=INT_RST}
N 1080 -180 1080 -60 {lab=INT_RST}
N 960 -60 1080 -60 {lab=INT_RST}
N 140 -240 140 -60 {lab=INT_RST}
N 940 -440 940 -410 {lab=VDD}
N 940 -350 940 -290 {lab=#net1}
N 600 -350 600 -300 {lab=#net2}
N 600 -440 600 -410 {lab=VDD}
N 280 -440 600 -440 {lab=VDD}
N 280 -350 280 -320 {lab=#net3}
N 280 -440 280 -410 {lab=VDD}
N 80 -440 280 -440 {lab=VDD}
N 140 -260 180 -260 {lab=Vx}
N 310 -500 440 -500 {lab=MEM}
N 140 -500 250 -500 {lab=Vx}
N 130 -430 140 -420 {lab=Vx}
N 130 -450 130 -430 {lab=Vx}
N 130 -450 140 -460 {lab=Vx}
N 140 -500 140 -460 {lab=Vx}
N 140 -420 140 -260 {lab=Vx}
N 80 -260 140 -260 {lab=Vx}
N 430 -430 440 -420 {lab=MEM}
N 430 -450 430 -430 {lab=MEM}
N 430 -450 440 -460 {lab=MEM}
N 440 -500 440 -460 {lab=MEM}
N 440 -420 440 -350 {lab=MEM}
N 440 -240 520 -240 {lab=MEM}
N 440 -350 440 -240 {lab=MEM}
N 680 -240 830 -240 {lab=COMP}
N 600 -180 600 -20 {lab=VSS}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/integrator/xschem/integrator.sym} 120 -80 0 0 {name=xINT}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/spike_generator/xschem/spike_generator.sym} 940 -210 0 0 {name=xSPK}
C {iopin.sym} 80 -440 0 1 {name=p2 lab=VDD}
C {iopin.sym} 80 -20 0 1 {name=p1 lab=VSS}
C {opin.sym} 450 -350 0 0 {name=p7 lab=MEM
}
C {ipin.sym} 80 -260 0 0 {name=p8 lab=Vx}
C {ipin.sym} 80 -220 0 0 {name=p6 lab=Vref}
C {opin.sym} 1140 -240 0 0 {name=p3 lab=SPIKE
}
C {ipin.sym} 770 -180 0 0 {name=p4 lab=RST}
C {lab_wire.sym} 770 -240 0 1 {name=p36 sig_type=std_logic lab=COMP}
C {lab_wire.sym} 790 -60 0 1 {name=p5 sig_type=std_logic lab=INT_RST}
C {devices/vsource.sym} 280 -380 0 0 {name=VINT value=0}
C {devices/vsource.sym} 600 -380 0 0 {name=VCOMP value=0}
C {devices/vsource.sym} 940 -380 0 0 {name=VSPIKE value=0}
C {sg13g2_pr/rhigh.sym} 280 -500 3 0 {name=RFB
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=5
m=1
body=SUB

}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/threshold_circuit/xschem/threshold_comparator.sym} 595 -240 0 0 {name=x1}
