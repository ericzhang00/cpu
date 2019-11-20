addi x5 x0 2 #x5 = 2
addi x6 x0 4 #x6 = 4
addi x7 x0 -2 #x7 = -2
addi x8 x0 1 #x8 = 1


sra x2 x5 x5 #0
sra x2 x5 x8 #1
sra x2 x5 x0 #2
sra x2 x7 x8 #-1

and x2 x7 x5 #2
and x2 x5 x6 #0
and x2 x5 x5 #2

srai x2 x5 2 #0
srai x2 x5 1 #1
srai x2 x5 0 #2
srai x2 x7 1 #-1

andi x2 x7 2 #2
andi x2 x5 4 #0
andi x2 x5 2 #2

slt x2 x5 x7 #0
slt x2 x7 x5 #1
slt x2 x7 x7 #0

or x2 x5 x6 #6
or x2 x5 x5 #2
or x2 x7 x5 #-2

slti x2 x5 -2 #0
slti x2 x7 2 #1
slti x2 x7 -2 #0

ori x2 x5 4 #6
ori x2 x5 2 #2
ori x2 x7 2 #-2

xor x2 x5 x6 #6
xor x2 x5 x5 #0
xor x2 x7 x5 #12 or -4

xori x2 x5 4 #6
xori x2 x5 2 #0
xori x2 x7 2 #12 or -4

divu x2 x6 x5 #2
divu x2 x7 x5 #8
divu x2 x0 x5 #0

remu x2 x6 x5 #0
remu x2 x7 x8 #14
remu x2 x7 x5 #0

lui x2 7 #0000...0111 -- -- 0000
lui x2 1 #0000 0001 -- -- 0000
lui x2 2 #0000 0010 -- -- 0000

