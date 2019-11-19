main:
    jal create_default_list
    mv s0, a0   # v0 = s0 is head of node list

    #print the list
    add a0, s0, x0

    # issue the map call
    add a0, s0, x0      # load the address of the first node into a0
    jal map

    # print the list
    add a0, s0, x0

map:
    addi sp, sp, -12
    sw ra, 0(sp)
    sw s1, 4(sp)
    sw s0, 8(sp)

    beq a0, x0, done    # if we were given a null pointer, we're done.

    add s0, a0, x0      # save address of this node in s0
    add s1, a1, x0      # save address of function in s1
    add t0, x0, x0      # t0 is a counter
    add x9, x0, x0      # t0 is a counter

    # remember that each node is 12 bytes long:
    # - 4 for the array pointer
    # - 4 for the size of the array
    # - 4 more for the pointer to the next node
mapLoop:
    lw x1, 0(s0)        #CHANGE
    #add x1, s0, x0     # load the address of the array of current node into x1
    lw x2, 4(s0)        # load the size of the node's array into x2

    slli t0, t0, 2      #CHANGE
    add x1, x1, t0      # offset the array address by the count
    lw a0, 0(x1)        # load the value at that address into a0
    srai t0, t0, 2      #CHANGE

    addi sp, sp, -20 
    sw x1, 0(sp)
    sw s0, 4(sp)
    sw s1, 8(sp)
    sw t0, 12(sp)
    sw x2, 16(sp)
    jalr s1             # call the function on that value.
    lw x1, 0(sp)
    lw s0, 4(sp)
    lw s1, 8(sp)
    lw t0, 12(sp)
    lw x2, 16(sp)
    addi sp, sp, 20

    sw a0, 0(x1)        # store the returned value back into the array
    addi t0, t0, 1      # increment the count
    bne t0, x2, mapLoop # repeat if we haven't reached the array size yet

    lw a0, 8(s0)        #CHANGE
    mv a1, s1           #CHANGE **
    #la a0, 8(s0)        # load the address of the next node into a0
    #lw a1, 0(s1)        # put the address of the function back into a1 to prepare for the recursion

    jal  map            # recurse
done:
    lw s0, 8(sp)
    lw s1, 4(sp)
    lw ra, 0(sp)
    addi sp, sp, 12
    jr ra

mystery:
    mul x1, a0, a0
    add a0, x1, a0
    jr ra

create_default_list:
    addi sp, sp, -4
    sw ra, 0(sp)
loop: #do...
    jal malloc      # get memory for the next node
    mv s4, a0
    jal  malloc     # get memory for this array

    sw a0, 0(s4)    # node->arr = malloc
    lw a0, 0(s4)
    mv a1, s3
    jal fillArray   # copy ints over to node->arr

    sw s2, 4(s4)    # node->size = size (4)
    sw  s0, 8(s4)   # node-> next = previously created node

    add s0, x0, s4  # last = node
    addi s1, s1, 1  # i++
    addi s3, s3, 20 # s3 points at next set of ints
    bne s1, t6, loop # ... while i!= 5
    mv a0, s4
    lw ra, 0(sp)
    addi sp, sp, 4
    jr ra

fillArray: lw t0, 0(a1) #t0 gets array element
    sw t0, 0(a0) #node->arr gets array element
    lw t0, 4(a1)
    sw t0, 4(a0)
    lw t0, 8(a1)
    sw t0, 8(a0)
    lw t0, 12(a1)
    sw t0, 12(a0)
    lw t0, 16(a1)
    sw t0, 16(a0)
    jr ra

print_list:
    bne a0, x0, printMeAndRecurse
    jr ra   # nothing to print
printMeAndRecurse:
    mv t0, a0 # t0 gets address of current node
    lw x9, 0(a0) # x9 gets array of current node
printLoop:
    slli x2, x1, 2
    add t4, x9, x2
    lw a1, 0(t4) # a0 gets value in current node's array at index x1
    addi x1, x1, 1
    bne x1, t6, printLoop # ... while i!= 5
    lw a0, 8(t0) # a0 gets address of next node
    j print_list # recurse. We don't have to use jal because we already have where we want to return to in ra

print_newline:
    jr ra

malloc:
    mv a1, a0 # Move a0 into a1 so that we can do the syscall correctly
    jr ra

