addi x5 x0 1 #x5 = 1
addi x6 x0 -1 #x6 = -1
addi x7 x0 2 #x7 = 2
slli x9 x0 10 #x9 = 0 << 1
slli x10 x7 11 #x10 = 2 << 1 = 4
slli x10 x10 9 #x10 = 4 << 1 = 8
slli x10 x10 8 #x10 = 8 << -1 
addi x5 x0 8 #x5 = 8
slli x10 x10 7 #x10 8 << 8
slli x10 x10 6
slli x10 x10 5
slli x10 x10 4 
slli x10 x10 3
slli x10 x10 -2
slli x10 x10 1
slli x10 x10 4
slli x10 x10 2
slli x10 x10 5
slli x10 x10 1
addi x6 x0 -8 #x6 = -8
slli x10 x10 -1
slli x10 x10 -2
slli x10 x10 -3
slli x10 x10 -4
slli x10 x10 -5
slli x10 x10 -6
slli x10 x10 -7
slli x10 x10 -8
slli x10 x10 -9
slli x10 x10 -10
slli x10 x10 -1
slli x10 x0 0
slli x0 x10 1

addi x5 x0 2 #x5 = 2
addi x6 x0 -2 #x6 = -2
addi x7 x0 4 #x7 = 4
slti x10 x5 2
slti x10 x5 0
slti x10 x0 2
slti x10 x6 2
slti x10 x5 -2
slti x10 x5 4
slti x10 x7 2

addi x5 x0 2 #x5 = 2
addi x6 x0 -2 #x6 = -2
addi x7 x0 4 #x7 = 4
xori x9 x5 2
xori x9 x5 0
xori x9 x0 2
xori x9 x6 2
xori x9 x5 -2
xori x9 x5 4
xori x10 x7 2

addi x5 x0 1 
addi x6 x0 -1 
addi x7 x0 2 
srli x9 x0 1
srli x10 x7 1 
srli x10 x10 1 
srli x10 x10 -1 
addi x5 x0 8 
srli x10 x10 1 
srli x10 x10 1
srli x10 x10 1
srli x10 x10 1 
srli x10 x10 1
srli x10 x10 1
srli x10 x10 1
srli x10 x10 1
srli x10 x10 1
srli x10 x10 1
srli x10 x10 1
addi x6 x0 -8 
srli x10 x10 -1
srli x10 x10 -1
srli x10 x10 -1
srli x10 x10 -1
srli x10 x10 -1
srli x10 x10 -1
srli x10 x10 -1
srli x10 x10 -1
srli x10 x10 -1
srli x10 x10 -1
srli x10 x10 -1
srli x10 x0 0
srli x0 x10 1

addi x5 x0 1 
addi x6 x0 -1 
addi x7 x0 2 
srai x9 x0 1
srai x10 x7 1 
srai x10 x10 1 
srai x10 x10 -1 
addi x5 x0 8 
srai x10 x10 1 
srai x10 x10 1
srai x10 x10 1
srai x10 x10 1 
srai x10 x10 1
srai x10 x10 1
srai x10 x10 1
srai x10 x10 1
srai x10 x10 1
srai x10 x10 1
srai x10 x10 1
addi x6 x0 -8 
srai x10 x10 -1
srai x10 x10 -1
srai x10 x10 -1
srai x10 x10 -1
srai x10 x10 -1
srai x10 x10 -1
srai x10 x10 -1
srai x10 x10 -1
srai x10 x10 -1
srai x10 x10 -1
srai x10 x10 -1
srai x10 x0 0
srai x0 x10 1

addi x5 x0 2 #x5 = 2
addi x6 x0 -2 #x6 = -2
addi x7 x0 4 #x7 = 4
andi x9 x5 2
andi x9 x5 0
andi x9 x0 2
andi x9 x6 2
andi x9 x5 -2
andi x9 x5 4
andi x10 x7 2

addi x5 x0 2 #x5 = 2
addi x6 x0 -2 #x6 = -2
addi x7 x0 4 #x7 = 4
ori x8 x5 2
ori x8 x5 0
ori x8 x0 2
ori x8 x6 2
ori x8 x5 -2
ori x8 x5 4
ori x8 x7 2






