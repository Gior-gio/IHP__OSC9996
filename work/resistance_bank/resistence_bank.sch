v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 300 -540 300 -360 720 -360 720 -540 300 -540 {}
T {DUMMIES} 470 -525 0 0 0.3 0.3 {}
N 200 -170 200 -150 {lab=Vx}
N 410 -400 430 -400 {lab=VDD}
N 430 -400 430 -380 {lab=VDD}
N 320 -400 350 -400 {lab=VDD}
N 320 -400 320 -380 {lab=VDD}
N 520 -170 540 -170 {lab=#net1}
N 440 -170 460 -170 {lab=#net2}
N 360 -170 380 -170 {lab=#net3}
N 280 -170 300 -170 {lab=#net4}
N 200 -170 220 -170 {lab=Vx}
N 600 -170 630 -170 {lab=#net5}
N 690 -170 730 -170 {lab=#net6}
N 790 -170 840 -170 {lab=#net7}
N 900 -170 930 -170 {lab=MEM}
N 930 -170 930 -130 {lab=MEM}
N 650 -400 670 -400 {lab=VDD}
N 670 -400 670 -380 {lab=VDD}
N 560 -400 590 -400 {lab=VDD}
N 560 -400 560 -380 {lab=VDD}
C {sg13g2_pr/rhigh.sym} 250 -170 3 0 {name=RFB0
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=0
m=1
body=sub!

}
C {iopin.sym} 220 -380 0 1 {name=p2 lab=VDD}
C {iopin.sym} 200 -150 3 1 {name=p1 lab=Vx}
C {iopin.sym} 930 -130 3 1 {name=p3 lab=MEM}
C {lab_wire.sym} 430 -380 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 320 -380 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {sg13g2_pr/rhigh.sym} 330 -170 3 0 {name=RFB1
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=0
m=1
body=sub!

}
C {sg13g2_pr/rhigh.sym} 410 -170 3 0 {name=RFB2
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=0
m=1
body=sub!

}
C {sg13g2_pr/rhigh.sym} 490 -170 3 0 {name=RFB3
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=0
m=1
body=sub!

}
C {sg13g2_pr/rhigh.sym} 380 -400 3 0 {name=RDMY1[7:0]
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=0
m=1
body=sub!

}
C {sg13g2_pr/rhigh.sym} 570 -170 3 0 {name=RFB6
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=0
m=1
body=sub!

}
C {sg13g2_pr/rhigh.sym} 660 -170 3 0 {name=RFB7
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=0
m=1
body=sub!

}
C {sg13g2_pr/rhigh.sym} 760 -170 3 0 {name=RFB8
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=0
m=1
body=sub!

}
C {sg13g2_pr/rhigh.sym} 870 -170 3 0 {name=RFB9
w=0.5e-6
l=4e-6
model=rhigh
spiceprefix=X
b=0
m=1
body=sub!

}
C {lab_wire.sym} 670 -380 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 560 -380 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {sg13g2_pr/rhigh.sym} 620 -400 3 0 {name=RDMY2[7:0]
w=0.5e-6
l=0.96e-6
model=rhigh
spiceprefix=X
b=0
m=1
body=sub!

}
