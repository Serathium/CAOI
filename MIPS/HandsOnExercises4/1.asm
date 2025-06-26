.data
	a: .half 3
	b: .half 3
	c: .word
.text
	lui $t1, 0x1001		# Carrega 0x1001 nos bits mais significativos de $t1.
	lh $t2, 0($t1)
	lh $t3, 2($t1)
	
	bne $t2, $t3, L1
	mult $t2, $t3
	mflo $t4
	j fim
	
	L1:	
	div $t2, $t3
	mflo $t4
	
	fim:
	sw $t4, 4($t1)