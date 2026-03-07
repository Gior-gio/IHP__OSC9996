v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -170 540 -150 {lab=MEM}
N 200 -170 200 -150 {lab=Vx}
N 280 -350 300 -350 {lab=VDD}
N 300 -350 300 -330 {lab=VDD}
N 190 -350 220 -350 {lab=VDD}
N 190 -350 190 -330 {lab=VDD}
N 520 -170 540 -170 {lab=MEM}
N 440 -170 460 -170 {lab=#net1}
N 360 -170 380 -170 {lab=#net2}
N 280 -170 300 -170 {lab=#net3}
N 200 -170 220 -170 {lab=Vx}
C {sg13g2_pr/rhigh.sym} 250 -170 3 0 {name=RFB0
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=1
m=1
body=sub!

}
C {sg13g2_pr/rhigh.sym} 250 -350 3 0 {name=RFB4
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=0
m=8
body=sub!

}
C {iopin.sym} 100 -380 0 1 {name=p2 lab=VDD}
C {iopin.sym} 200 -150 3 1 {name=p1 lab=Vx}
C {iopin.sym} 540 -150 3 1 {name=p3 lab=MEM}
C {lab_wire.sym} 300 -330 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 190 -330 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {sg13g2_pr/rhigh.sym} 330 -170 3 0 {name=RFB1
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=1
m=1
body=sub!

}
C {sg13g2_pr/rhigh.sym} 410 -170 3 0 {name=RFB2
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=1
m=1
body=sub!

}
C {sg13g2_pr/rhigh.sym} 490 -170 3 0 {name=RFB3
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=1
m=1
body=sub!

}
