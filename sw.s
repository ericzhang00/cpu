addi x1 x0 1
addi x2 x0 14
sw x1 0(x5)
sw x2 4(x6)
add x1 x1 x1
sw x1 8(x7)
add x2 x2 x7
sw x2 16(x1)
add x7 x2 x2
sw x7 32(x7)
