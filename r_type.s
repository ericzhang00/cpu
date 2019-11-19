addi x1 x0 61 #x1 = 61
add x0 x0 x0 #0
add x0 x0 x1 #0
add x2 x1 x1 #x2 = 122
add x2 x1 x0 #x2 = 61
add x2 x1 x2 #x2 = 61 + 61 = 122
add x5 x1 x1 #x5 = 61 + 61 = 122
add x1 x5 x2 #x1 = 122 + 122 = 244

addi x6 x5 -120 #x6 = 122 - 120 = 2
addi x7 x0 5 #x7 = 5
addi x10 x0 -2 #x10 = -2
mul x1 x6 x7 #x1 = 2*5 = 10
mul x8 x1 x10 #x8 = 10 * -2 = -20
mul x1 x0 x7 #x1 = 0*5 = 0
mul x0 x8 x6 #0
mul x8 x8 x6 #x8 = -20*2 = -40
mul x8 x8 x8 #x8 = -20*-20 = 400

addi x1 x0 10 #x1 = 10
sub x8 x0 x0 #x8 = 0 - 0 = 0
sub x8 x5 x1 #x8 = 122 - 10 = 112
sub x8 x1 x5 #x8 = 10 - 122 = -112
sub x8 x0 x8 #x8 = 0-(-122) = 122
sub x7 x8 x0 #x7 = 122 - 0 = 122
sub x0 x1 x5 #0
sub x0 x0 x0 #0

addi x5 x0 1 #x5 = 1
addi x6 x0 -1 #x6 = -1
addi x7 x0 2 #x7 = 2
sll x9 x0 x5 #x9 = 0 << 1
sll x10 x7 x5 #x10 = 2 << 1 = 4
sll x10 x10 x5 #x10 = 4 << 1 = 8
sll x10 x10 x6 #x10 = 8 << -1 
addi x5 x0 8 #x5 = 8
sll x10 x10 x5 #x10 8 << 8
sll x10 x10 x5
sll x10 x10 x5
sll x10 x10 x5 
sll x10 x10 x5
sll x10 x10 x5
sll x10 x10 x5
sll x10 x10 x5
sll x10 x10 x5
sll x10 x10 x5
sll x10 x10 x5
addi x6 x0 -8 #x6 = -8
sll x10 x10 x6
sll x10 x10 x6
sll x10 x10 x6
sll x10 x10 x6
sll x10 x10 x6
sll x10 x10 x6
sll x10 x10 x6
sll x10 x10 x6
sll x10 x10 x6
sll x10 x10 x6
sll x10 x10 x6
sll x10 x0 x0
sll x0 x10 x5

addi x5 x0 1 #x5 = 1
addi x6 x0 -1 #x6 = -1
addi x7 x0 2 #x7 = 2
mulh x0 x5 x6
mulh x2 x0 x6
mulh x2 x5 x6
mulh x1 x5 x5
mulh x1 x5 x7
mulh x1 x6 x6
mulh x1 x6 x1

addi x5 x0 2 #x5 = 2
addi x6 x0 -2 #x6 = -2
addi x7 x0 4 #x7 = 4
mulhu x0 x5 x6
mulhu x2 x0 x6
mulhu x2 x5 x6
mulhu x1 x5 x5
mulhu x1 x5 x7
mulhu x1 x6 x6
mulhu x1 x6 x1

addi x5 x0 2 #x5 = 2
addi x6 x0 -2 #x6 = -2
addi x7 x0 4 #x7 = 4
slt x10 x5 x5
slt x10 x5 x0
slt x10 x0 x5
slt x10 x6 x5
slt x10 x5 x6
slt x10 x5 x7
slt x10 x7 x5

addi x5 x0 2 #x5 = 2
addi x6 x0 -2 #x6 = -2
addi x7 x0 4 #x7 = 4
xor x9 x5 x5
xor x9 x5 x0
xor x9 x0 x5
xor x9 x6 x5
xor x9 x5 x6
xor x9 x5 x7
xor x10 x7 x5

addi x6 x5 -120
addi x7 x0 5 
addi x10 x0 -2
divu x1 x6 x7 
divu x8 x1 x10 
divu x1 x0 x7 
divu x0 x8 x6 
divu x8 x8 x6 
divu x8 x8 x8 
divu x8 x8 x8 
divu x1 x1 x0 
divu x1 x6 x0 

addi x5 x0 1 
addi x6 x0 -1 
addi x7 x0 2 
srl x9 x0 x5 
srl x10 x7 x5 
srl x10 x10 x5 
srl x10 x10 x6 
addi x5 x0 8 
srl x10 x10 x5 
srl x10 x10 x5
srl x10 x10 x5
srl x10 x10 x5 
srl x10 x10 x5
srl x10 x10 x5
srl x10 x10 x5
srl x10 x10 x5
srl x10 x10 x5
srl x10 x10 x5
srl x10 x10 x5
addi x6 x0 -8 
srl x10 x10 x6
srl x10 x10 x6
srl x10 x10 x6
srl x10 x10 x6
srl x10 x10 x6
srl x10 x10 x6
srl x10 x10 x6
srl x10 x10 x6
srl x10 x10 x6
srl x10 x10 x6
srl x10 x10 x6
srl x10 x0 x0
srl x0 x10 x5

addi x6 x5 -120
addi x7 x0 5 
addi x10 x0 -2
remu x1 x6 x7 
remu x8 x1 x10 
remu x1 x0 x7 
remu x0 x8 x6 
remu x8 x8 x6 
remu x8 x8 x8 
remu x8 x8 x8 
remu x1 x1 x0 
remu x1 x6 x0 

addi x5 x0 2 #x5 = 2
addi x6 x0 -2 #x6 = -2
addi x7 x0 4 #x7 = 4
and x9 x5 x5
and x9 x5 x0
and x9 x0 x5
and x9 x6 x5
and x9 x5 x6
and x9 x5 x7
and x10 x7 x5

addi x5 x0 2 #x5 = 2
addi x6 x0 -2 #x6 = -2
addi x7 x0 4 #x7 = 4
or x8 x5 x5
or x8 x5 x0
or x8 x0 x5
or x8 x6 x5
or x8 x5 x6
or x8 x5 x7
or x8 x7 x5






