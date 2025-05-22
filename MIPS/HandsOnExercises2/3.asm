# Exercise 3

# Start a program with the instruction: ori $t1, $zero, 0x01. Using only R-type logical instructions
# (two registers as operands) OR, AND, and XOR, and shift instructions
# (i.e., without using other ori instructions besides the initial one, and no nor instructions),
# write 0xFFFFFFFF into $t1. Try to use the minimum number of instructions possible.

ori $t1, $zero, 0x01	# OR IMEDIATE operation between $zero and 0x00000001 (0001) and stores the result in $t1.

sll $t2, $t1, 1		# Shifts $t1 1 bit to the left: 0x00000002 (0010) and stores the result in $t2.
or $t1, $t1, $t2	# OR operation between $t1 and $t2: 0x00000003 (0011) and stores the result in $t1.
sll $t2, $t1, 2		# Shifts $t1 2 bits to the left: 0x0000000c (1100) and stores the result in $t2.
or $t1, $t1, $t2	# OR operation between $t1 and $t2: 0x00000000f (1111) and stores the result in $t1.

sll $t2, $t1, 4		# Shifts $t1 4 bits to the left: 0x000000f0 and stores the result in $t2.
or $t1, $t1, $t2	# OR operation between $t1 and $t2: 0x000000ff and stores the result in $t1.
sll $t2, $t1, 8		# Shifts $t1 8 bits to the left: 0x0000ff00 and stores the result in $t2.
or $t1, $t1, $t2	# OR operation between $t1 and $t2: 0x0000ffff and stores the result in $t1.
sll $t2, $t1, 16	# Shifts $t1 16 bits to the left: 0xffff0000 and stores the result in $t2.
or $t1, $t1, $t2	# OR operation between $t1 and $t2: 0xffffffff and stores the result in $t1. $t1 = 0xffffffff
