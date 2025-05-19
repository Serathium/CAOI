# Exercise 2

ori $t1, $zero, 0xaaaa  # ORI operation between $zero and 0xaaaa, stores the result in $t1.
sll $t1, $t1, 16	# Shifts to the left the value stored in $t1 by 16 bits and stores the result in $t1. 
ori $t1, $t1, 0xaaaa	# ORI operation between $t1 and 0xaaaa, stores the result in $t1.

srl $t2, $t1, 1		# Shift the value in $t1 1 bit to the right (divides by 2) and stores the result in $t2.

or $t3, $t1, $t2	# OR between $t1 and $t2, stores the result in $t3.
and $t4, $t1, $t2	# AND between $t1 and $t2, stores the result in $t4.
xor $t5, $t1, $t2	# XOR between $t1 and $t2, stores the result in $t5.

# The bits between $t1 and $t2 are all different, so the result of OR operation sets all bits to 1, which is
# -1 in decimal (two's complement).

# The bits between $t1 and $t2 are all different, so the result of AND operation sets all bits to 0.

# Since all bits between $t2 and $t1 are different, the result of the XOR operations sets all bits to 1, which 
# is -1 in decimal (two's complement).