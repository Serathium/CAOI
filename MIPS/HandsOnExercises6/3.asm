# 3. Escreva um programa que leia um vetor de 10 posições (.word) da memória
# (começando na posição 0x10010000) e verifique se o vetor está ou não ordenado.
# Use o registrador $t0 como flag.
# Faça $t0 = 1 se o vetor estiver ordenado e $t0 = 0 caso contrário.

.data
	vetor: .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
	tamanho: .word 10
.text

lui $t1, 0x1001			# Loads the value 0x1001 to the most significant bits in $t1
add $t2, $t1, 0x24		# Adds 0x24 to the least significant bits loaded in $t1, loads the result to $t2

main:
	lw $t3, 0($t1)		# Loads to $t3 the word stored at the adress loaded in $t1
	lw $t4, 4($t1)		# Loads to $t4 the word stored at the adress loaded in $t1 + 4 (next word)
	
	slt $t0, $t3, $t4	# If $t3 is less than $t4, sets $t0 to 1
	beq $t0, 0, end		# If $t0 is equal to 0, jumps to end
	beq, $t1, $t2, end	# If $t1 and $t2 are the same, jumps to end
	
	addi $t1, $t1, 4	# Adds 4 to address loaded in $t1 and loads the result to $t1
	j main 			# Jump to label main
	
end:
	nop			# Null operation
	
	