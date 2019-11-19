addi x10 x0 5
addi x8 x0 -61
lui x7 1234
lui x6 0

loop:
beq x10 x9 end0
addi x9 x9 1
jal x1 dothis
blt x0 x9 loop

dothis:
jalr x1 x0 0

end0:
add x0 x0 x0
lui x7 -61 #should fail



