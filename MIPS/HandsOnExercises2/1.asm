# Exercise 1

# Create a program that writes the value 0xDECADA70 into register $t7, including one hexadecimal digit at a time
# (i.e., insert letter by letter, individually) into the register.

ori $t7, $zero, 0xd	# ORI operation between $zero and 0xd, stores the result in $t7.
sll $t7, $t7, 4		# Shifts bits stored in $t7 4 bits to the left.

ori $t7, $t7, 0xe	# ORI operation between $t7 and 0xe, stores the result in $t7.
sll $t7, $t7, 4		# Shifts bits stored in $t7 4 bits to the left.

ori $t7, $t7, 0xc	# ORI operation between $t7 and 0xc stores the result in $t7.
sll $t7, $t7, 4		# Shifts bits stored in $t7 4 bits to the left.

ori $t7, $t7, 0xa	# ORI operation between $t7 and 0xa, stores the result in $t7.
sll $t7, $t7, 4		# Shifts bits stored in $t7 4 bits to the left.

ori $t7, $t7, 0xd	# ORI operation between $t7 and 0xd, stores the result in $t7.
sll $t7, $t7, 4		# Shifts bits stored in $t7 4 bits to the left.

ori $t7, $t7, 0xa	# ORI operation between $t7 and 0xa, stores the result in $t7.
sll $t7, $t7, 4		# Shifts bits stored in $t7 4 bits to the left.

ori $t7, $t7, 0x7	# ORI operation between $t7 and 0x7, stores the result in $t7.
sll $t7, $t7, 4		# Shifts bits stored in $t7 4 bits to the left.
