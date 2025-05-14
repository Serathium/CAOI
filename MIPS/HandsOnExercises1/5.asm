# Faça um programa que calcule a área do triângulo equilátero abaixo e escreva o
# resultado em $t3.
# Armazene b em $t1 e h em $t2 utilizando as instruções addi $t1, $zero, b e
# addi $t2, $zero, h, substituindo b e h pelos valores desejados, e sempre que precisar
# de b e h, utilize os valores armazenados nos registradores $t1 e $t2.

addi $t1, $zero, 160	# Armazena base b.
addi $t2, $zero, 120	# Armazena altura h.
addi $t4, $zero, 2	# Armazena 2 em $t4.

mult $t1, $t2		# Base x Altura.
mflo $t1		# Armazena o resultado em $t1.

div $t1, $t4		# Divide por 2.
mflo $t3		# Armazena o quociente no $t3.

