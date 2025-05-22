# Exercise 4

# Write the sequence 0x12345678 into $t1. Next, write code that reverses the sequence,
# writing 0x87654321 into $t2. Obviously, the code should invert the bits of $t1 and not 
# simply write 0x87654321 directly into $t2.

ori $t3, $zero, 0x1234	# OR IMEDIATE operation between $zero and 0x00001234 and stores it in $t3.
sll $t1, $t3, 16	# Shifts $t3 16 bits to the left: 0x12340000 and stores it in $t1.
ori $t1, $t1, 0x5678	# OR IMEDIATE operation between $t1 and 0x00005678 and stores it in $t1. $t1 = 0x12345678

sll $t2, $t1, 28	# Shifts $t1 28 bits to the left: 0x80000000 and stores it in $t2.

sll $t3, $t1, 24	# Shifts $t1 24 bits to the left: 0x78000000 and stores it in $t3.
srl $t3, $t3, 28	# Shifts $t3 28 bits to the right: 0x0000007 and stores it in $t3.
sll $t3, $t3, 24	# Shifts $t3 24 bits to the left: 0x07000000 and stores it in $t3.

or $t2, $t2, $t3	# OR operation between $t2 and $t3: 0x87000000 and stores it in $t2.

sll $t3, $t1, 20	# Shifts $t1 20 bits to the left: 0x67800000 and stores it in $t3.
srl $t3, $t3, 28	# Shifts $t3 28 bits to the right: 0x00000006 and stores it in $t3.
sll $t3, $t3, 20	# Shifts $t3 20 bits to the left: 0x00600000 and stores it in $t3.

or $t2, $t2, $t3	# OR operation between $t2 and $t3: 0x87600000 and stores it in $t2.

sll $t3, $t1, 16	# Shifts $t1 16 bits to the left: 0x56780000 and stores it in $t3.
srl $t3, $t3, 28	# Shifts $t3 28 bits to the right: 0x00000005 and stores it in $t3.
sll $t3, $t3, 16	# Shifts $t3 16 bits to the left: 0x00050000 and stores it in $t3.

or $t2, $t2, $t3	# OR operation between $t2 and $t3: 0x87650000 and stores it in $t2.

sll $t3, $t1, 12	# Shifts $t1 12 bits to the left: 0x45678000 and stores it in $t3.
srl $t3, $t3, 28	# Shifts $t3 28 bits to the right: 0x00000004 and stores it in $t3.
sll $t3, $t3, 12	# Shifts $t3 12 bits to the left: 0x00004000 and stores it in $t3.

or $t2, $t2, $t3	# OR operation between $t2 and $t3: 0x87654000 and stores it in $t2.

sll $t3, $t1, 8		# Shifts $t1 8 bits to the left: 0x34567800 and stores it in $t3.
srl $t3, $t3, 28	# Shifts $t3 28 bits to the right: 0x00000003 and stores it in $t3.
sll $t3, $t3, 8		# Shifts $t3 8 bits to the left: 0x000000300 and stores it in $t3.

or $t2, $t2, $t3	# OR operation between $t2 and $t3: 0x87654300 and stores it in $t2.

sll $t3, $t1, 4		# Shifts $t1 4 bits to the left: 0x23456780 and stores it in $t3.
srl $t3, $t3, 28	# Shifts $t3 28 bits to the right: 0x00000002 and stores it in $t3.
sll $t3, $t3, 4		# Shifts $t3 4 bits to the left: 0x00000020 and stores it in $t3.

or $t2, $t2, $t3	# OR operation between $t2 and $t3: 0x87654320 and stores it in $t2.

srl $t3, $t1, 28	# Shifts $t1 28 bits to the right: 0x00000001 and stores it in $t3.

or $t2, $t2, $t3	# OR operation between $t2 and $t3: 0x87654321 and stores it in $t2. $t2 = 0x87654321
