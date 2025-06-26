.data
	a: .word 3
	b: .word 5
	y: .space 4
.text
	lui $t1, 0x1001		# Carrega 0x1001 nos bits mais significativos do registrador $t1.
	lw $t2, 0($t1)		# Carrega a palavra armazenada em $t1 (a) no registrador $t2.
	lw $t3, 4($t1)		# Carrega a palavra armazenada em $t1 + 4 (b) no registrador $t3. 
	
	mult $t2, $t3		# 3 x 5.
	mflo $t4		# 15 em $t4.
	
	addi $t1, $t0, 32	# 32 em $t1.
	mult $t1, $t4		# 32 x 15.
	mflo $t4		# resultado em $t4.
	
	addi $t1, $t0, -3
	mult $t1, $t2
	mflo $t5
	
	addi $t1, $t0, 7
	mult $t1, $t3
	mflo $t6
	
	add $t7, $t4, $t5
	add $t7, $t7, $t6
	addi $t7, $t7, -13
	
	lui $t1, 0x1001		# Carrega 0x1001 nos bits mais significativos do registrador $t1.
	sw $t7, 8($t1)		# Armazena a word do registrador $t7 no endereço 0x10010008.
	