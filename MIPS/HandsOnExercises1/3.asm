# Faça um programa que calcule a seguinte equação:
# y = 3x2 - 5x + 13
# Armazene x no registrador $t5 com a instrução addi $t5, $zero, x, substituindo x
# pelo valor desejado, e sempre que precisar o valor de x, utilize o valor armazenado no
# registrador $t5.
# Armazene o resultado y no registrador $t6.
# Faça teste com diferentes valores positivos e negativos de x.

addi $t1, $zero, 3	# armazena 3 no $t1
addi $t2, $zero, -5 	# armazena -5 no $t2
addi $t3, $zero, 13	# armazena 13 no $t3
addi $t5, $zero, -2 	# substituir x por numero

mult $t5, $t5 	   # x ao quadrado
mflo $t4	   # x ao quadrado no $t4

mult $t1, $t4	# 3x²
mflo $t1	# resultado mult -> $t1

mult $t2, $t5	# -5x
mflo $t2	# resultado mult -> $t2

add $t6, $t1, $t2	# resultado de 3x² -5x armazenado em $t6
add $t6, $t6, $t3	# valor de $t6 + 13 armazenado em $t6



