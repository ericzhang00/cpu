addi x10 x0 100
addi x9 x0 1
addi x8 x0 -61

loop:
beq x10 x9 end0
addi x9 x9 1
blt x0 x9 loop

end0:
bltu x8 x10 end1

end1:
bne x8 x10 end2

end2:
add x0 x0 x0