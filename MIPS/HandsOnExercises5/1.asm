.data
	vetor: .space 32
	i: .byte 0
.text
	lui $t1, 0x1001
	lb $t2, 32($t1)
	addi $t3, $t0, 8
	addi $t4, $t0, 2
	
	BEGIN:
	
	beq $t2, $t3, END
	
	div $t2, $t4
	
	mfhi $t5
	
	bne $t0, $t5, DIFER
	
	DIFER:
	lw $t6, $t2($t1)
	sub	
	
	END: