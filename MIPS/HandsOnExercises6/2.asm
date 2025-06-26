# Exercise:
# Write a program that changes a string to uppercase the first letter of each word.

.data
string: .asciiz "meu professor e muito bom"

.text

la $t0, string		# Loads first character address to $t0 (0x10010000)
addi $t1, $zero, 32 	# Sets $t1 value as 32

la $t2, -1($t0)		# Sets $t2 value as $t0's address minus 1
lb $t3, ($t2)		# Sets $t3 value as $t2's address value
la $t4, -2($t0)		# Sets $t4 value as $t0's address minus 2
lb $t5, ($t4)		# Sets $t5 value as $t4's address value

LOOP:
	addi, $t2, $t2, 1	# Increments stored address in $t2 by 1.
	lb $t3, ($t2)		# Sets $t3 value as $t2's address value.
	addi, $t4, $t4, 1	# Increments stored address in $t4 by 1.
	lb $t5, ($t4)		# Sets $t5 value as $t4's address value.

	beq $t3, $t1, LOOP	# If $t3 is equal to 32, jumps to LOOP
	beq $t5, $t1, LOOP2	# If $t5 is equal to 32, jumps to LOOP2
	beq $t5, $zero LOOP2	# If $t5 is zero (that means $t4 points to the character before the first character in the string.
	beq $t3, $zero, END	# If $t3 is equal to 0, jumps to END
	
	j LOOP			# If all of the above are not true, jumps to LOOP

LOOP2:
	addiu $t3, $t3, -32	# Changes char in $t3 to upper-case
	sb $t3, ($t2)		# Stores $t3's changed char in $t2's address
	
	beq $t3, $zero, END	# If $t3 is equal to 0, jumps to END
	
	j LOOP			# If all of the above are not true, jumps to LOOP
	
END:
	nop			# Ends