# 4. Escreva um programa que inverta a ordem dos elementos de um vetor (.word) com 5
# posições. Por exemplo, a entrada: 1, 2, 3, 4, 5 deve produzir 5, 4, 3, 2, 1.
# A resposta deve ser o vetor de entrada modificado, e não um novo vetor na memória,
# ou seja, iniciando no endereço de memória 0x10010000.

.data
	vetor: .word 1, 2, 3, 4, 5
	
.text

lui $t0, 0x1001		# Loads 0x1001 to most significant bits in $t0 and set the rest to 0.

lui $t1, 0x1001		# Loads 0x1001 to most significant bits in $t1 and set the rest to 0.
add $t1, $t1, 0x10	# Adds 0x10 to register $t1 (0x100010010)

main:
	lw $t2, ($t0)		# Loads word stored in $t0 address and to $t2 register
	lw $t3, ($t1)		# Loads word stored in $t1 address and to $t3 register
	move $t4, $t2		# Copies word in $t2 register to $t4
	move $t2, $t3		# Copies word in $t3 register to $t2 
	sw $t2, ($t0)		# Stores word from $t2 register at the address stored in $t0
	move $t3, $t4		# Copies word in $t4 register to $t3
	sw $t3, ($t1)		# Stores word from $t3 register at the address stored in $t1
	
	addi $t0, $t0, 0x4	# Adds 4 to stored address in $t0
	addi $t1, $t1, -4	# Adds -4 to stored address in $t1
	
	
	beq $t0, $t1, end	# If $t0 and $t1 are equal, jumps to end
	j main			# Else, jumps back to main
	
end:
	nop			# Null operation