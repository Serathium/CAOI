# Exercise:
# Delete empty spaces from strings.

.data
string: .asciiz "Gosto muito do meu professor de AOC-I."

.text

la $t0, string		# Loads first character address to $t0 (0x10010000)
la $t1, ($t0)		# Copies $t0 address to $t1
li $t2, 32		# Loads the decimal 32 to $t2 (decimal 32 is the space character in ASCII)

LOOP:	
	lb $t4, ($t1)		# Loads character in $t1 address to $t4
	beq $t4, $t2, LOOP2	# If character in $t4 is a space, jump to LOOP2
	addi $t1, $t1, 1	# Else, increments $t1 address
	lb $t4, ($t1)		# Loads character in $t1 address to $t4
	beq $t4, $zero, END	# If charecter in $t4 is \0, jump to END
	j LOOP			# Jump to LOOP
	
LOOP2:
	addi $t3, $t1, 1	# $t3 points to the address after $t1
	lb $t5, ($t3)		# Loads character in $t3 address to $t5
	move $t4, $t5		# Sets content of $t5 to $t4
	sb $t4, ($t1)		# Stores byte in $t4 in $t1 address
	beq $t4,$zero, FIX	# If character in $t4 is \0, jump to FIX
	add $t1, $t1, 1		# Else, increments $t1 address
	j LOOP2			# Jumps to LOOP2
		
FIX:
	la $t1, ($t0)		# Copies $t0 address to $t1
	j LOOP			# Jumps to LOOP
	
END:
	nop			# Ends
