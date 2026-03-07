v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 820 -410 930 -410 {lab=#net1}
N 540 -410 620 -410 {lab=#net2}
N 700 -340 700 -290 {lab=VSS}
N 410 -330 410 -280 {lab=VSS}
N 410 -540 410 -490 {lab=VDD}
N 700 -540 700 -480 {lab=VDD}
N 240 -380 300 -380 {lab=B}
N 240 -440 300 -440 {lab=A}
N 990 -410 1040 -410 {lab=VOUT}
N 920 -250 950 -250 {lab=VSS}
N 920 -250 920 -220 {lab=VSS}
N 1010 -250 1030 -250 {lab=VSS}
N 1030 -250 1030 -230 {lab=VSS}
C {title.sym} 160 -40 0 0 {name=l1 author="Juan pablo luengas -- Nicolas Velasco"}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_xor/xschem/gate_xor.sym} 250 -220 0 0 {name=x1}
C {/foss/designs/chipathon_2025/designs/ihp-sg13g2/gate_buff_L0d13/xschem/gate_buff_L0d13.sym} 440 -230 0 0 {name=x2}
C {sg13g2_pr/rppd.sym} 960 -410 3 0 {name=RXOR
w=0.5e-6
l=0.5e-6
model=rppd
body=sub!
spiceprefix=X
b=0
m=2
}
C {ipin.sym} 240 -440 0 0 {name=p1 lab=A}
C {ipin.sym} 240 -380 0 0 {name=p2 lab=B}
C {ipin.sym} 410 -280 3 0 {name=p3 lab=VSS}
C {ipin.sym} 410 -540 1 0 {name=p4 lab=VDD}
C {opin.sym} 1040 -410 0 0 {name=p5 lab=VOUT}
C {lab_wire.sym} 700 -540 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 700 -290 2 1 {name=p7 sig_type=std_logic lab=VSS}
C {sg13g2_pr/rppd.sym} 980 -250 3 0 {name=RDMY[9:0]
w=0.5e-6
l=0.5e-6
model=rppd
body=sub!
spiceprefix=X
b=0
m=1
}
C {lab_wire.sym} 920 -220 2 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1030 -230 2 1 {name=p9 sig_type=std_logic lab=VSS}
