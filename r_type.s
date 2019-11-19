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









