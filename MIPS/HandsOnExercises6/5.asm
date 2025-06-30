# Inicialize um ponteiro para cada vetor (pseudo-instrução la) e faça a soma dos
# elementos dos vetores 2 a 2.
# O vetor resultante deve ser armazenado depois dos elementos do segundo vetor.
# Exemplo: soma[i] = vetor1[i]+vetor2[i]

.data
	tamanho: .word 7					# Element at: 0x10010000
	vetor1: .word -30, -23, 56, -43, 72, -18, 71		# First element at: 0x10010004
	vetor2: .word 45, 23, 21, -23, -82, 0, 69		# First element at: 0x10010020
	soma: .word 0, 0, 0, 0, 0, 0, 0				# First element at: 0x1001003c
	
.text

la $t1, vetor1		# Loads address of first element in vetor1 to $t1 register
la $t2, vetor2		# Loads address of first element in vetor2 to $t2 register
la $t0, soma		# Loads address of first element in soma to $t0 register

lw $t3, tamanho		# Loads word stored at label tamanho address to the register $t3
addi $t5, $zero, 1	# Adds 1 to 0 and loads the result to the register $t5


main:
	lw $t6, ($t1)		# Loads word stored at the address loaded in $t1 to the register $t6
	lw $t7, ($t2)		# Loads word stored at the address loaded in $t2 to the register $t7
	
	add $t4, $t6, $t7	# Sets $t4 as the result of adding contents of $t6 and $t7
	sw $t4, ($t0)		# Stores the result (contents of $t4) at the address loaded in $t0
	
	beq $t3, $t5, end	# If $t3 and $t5 are equal, goes to end label. Else, continues
	addi $t5, $t5, 1	# Adds 1 to $t5
	addi $t0, $t0, 4	# Adds 4 to $t0
	addi $t1, $t1, 4	# Adds 4 to $t1
	addi $t2, $t2, 4	# Adds 4 to $t2
	
	j main			# Jumps to main
	
end:
	nop			# Null operation