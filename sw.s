addi x1 x0 1
addi x2 x0 14

sw x1 0(x5)
lb x8 0(x5)
lh x9 0(x5)
lw x10 0(x5)
lb x8 3(x5)
lh x9 2(x5)

sw x2 4(x6)
lb x8 4(x6)
lh x9 4(x6)
lw x10 4(x6)
lb x8 6(x6)
lh x9 2(x6)

add x1 x1 x1
sw x1 8(x7)
lb x8 8(x7)
lh x9 8(x7)
lw x10 8(x7)
lb x8 10(x7)
lh x9 34(x7)

add x2 x2 x7
sw x2 16(x1)
lb x8 8(x7)
lh x9 8(x7)
lw x10 8(x7)
lb x8 1(x7)
lh x9 1(x7)

add x7 x2 x2
sw x7 32(x7)
lb x8 32(x7)
lh x9 32(x7)
lw x10 32(x7)
lb x8 7(x7)
lh x9 1(x7)

sw x7 4(x0)
lb x8 4(x0)
lh x9 4(x0)
lw x10 4(x0)
lb x8 3(x0)
lh x9 2(x0)