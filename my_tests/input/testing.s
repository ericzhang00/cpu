addi x5 x0 2 #x5 = 2
addi x6 x0 4 #x6 = 4
addi x7 x0 -2 #x7 = -2
addi x8 x0 1 #x8 = 1

#x2 = output
mul x2 x0 x5 #0
mul x2 x5 x6 #8
mul x2 x5 x7 #-4

sub x2 x6 x5 #2
sub x2 x5 x6 #-2
sub x2 x6 x7 #6

sll x2 x5 x5 #8
sll x2 x5 x8 #4
sll x2 x5 x0 #2

slli x2 x5 2 #8
slli x2 x5 1 #4
slli x2 x5 0 #2

srl x2 x5 x5 #0
srl x2 x5 x8 #1
srl x2 x5 x0 #2
srl x2 x7 x8 #7

srli x2 x5 2 #0
srli x2 x5 1 #1
srli x2 x5 0 #2
srli x2 x7 1 #7

srai x2 x5 2 #0
srai x2 x5 1 #1
srai x2 x5 0 #2
srai x2 x7 1 #-1

slt x2 x5 x7 #0
slt x2 x7 x5 #1
slt x2 x7 x7 #0

slti x2 x5 -2 #0
slti x2 x7 2 #1
slti x2 x7 -2 #0

and x2 x7 x5 #2
and x2 x5 x6 #0
and x2 x5 x5 #2

andi x2 x7 2 #2
andi x2 x5 4 #0
andi x2 x5 2 #2

or x2 x5 x6 #6
or x2 x5 x5 #2
or x2 x7 x5 #-2

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



#x9 = storage (sw)
#x2 = output (lw)
addi x5 x0 -1234 #x5 = -1234
addi x1 x0 2047
sw x5 0(x1)
lw x2 0(x1) #0xFFFFFB2E
lb x2 1(x1) #0xFFFFFB2E X  -> 0 
lh x2 2(x1) #0xFFFFFFFF X  -> 0
lh x2 0(x1) #0xFFFFFB2E

addi x5 x0 1234 #x5 = 1234
sw x5 0(x1)
lw x2 0(x1) #0x000004D2
lb x2 4(x1) #0x00000023 X  -> 0
lh x2 2(x1) #0x00000000
lh x2 0(x1) #0x000004D2

lui x2 7 #0x00007000
lui x2 1 #0000 0001 -- -- 0000
lui x2 2 #0000 0010 -- -- 0000

