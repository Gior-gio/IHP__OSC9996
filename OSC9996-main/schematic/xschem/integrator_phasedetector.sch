v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 820 -410 930 -410 {lab=BUF}
N 540 -410 620 -410 {lab=XOR}
N 700 -340 700 -290 {lab=VSS}
N 410 -330 410 -280 {lab=VSS}
N 410 -540 410 -490 {lab=VDD}
N 700 -540 700 -480 {lab=VDD}
N 240 -380 300 -380 {lab=B}
N 240 -440 300 -440 {lab=A}
N 990 -410 1040 -410 {lab=VOUT}
N 920 -250 950 -250 {lab=VDD}
N 920 -250 920 -220 {lab=VDD}
N 1010 -250 1030 -250 {lab=VDD}
N 1030 -250 1030 -220 {lab=VDD}
C {title.sym} 160 -40 0 0 {name=l1 author="Juan pablo luengas -- Nicolas Velasco"}
C {gate_xor.sym} 250 -220 0 0 {name=x1}
C {gate_buff_L0d13.sym} 440 -230 0 0 {name=x2}
C {sg13g2_pr/rppd.sym} 960 -410 3 0 {name=RXOR[1:0]
w=0.5e-6
l=0.5e-6
model=rppd
body=sub!
spiceprefix=X
b=0
m=1
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
C {lab_wire.sym} 920 -220 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1030 -220 2 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 590 -410 0 0 {name=p10 sig_type=std_logic lab=XOR}
C {lab_wire.sym} 890 -410 0 0 {name=p11 sig_type=std_logic lab=BUF}
