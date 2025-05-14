# Escreva um programa que calcule o valor de
# 4x - 2y + 3z (armazene os valores de x, y e z em $t1, $t2 e $t3,
# respectivamente) e coloque o resultado em $t7. Faça testes com alguns
# valores diferentes de x, y e z. Utilize apenas instruções já vistas na
# disciplina.

addi $t1, $t0, 3  # x = 3
addi $t2, $t0, 9  # y = 9
addi $t3, $t0, 16  # z = 16

addi $t4, $t0, 4  # 4
addi $t5, $t0, -2  # -2
addi $t6, $t0, 3   # 3

mult $t1, $t4
mflo $t1	# $t1 = 4x

mult $t2, $t5
mflo $t2	# $t2 = -2y

mult $t3, $t6
mflo $t3	# $t3 = 3z

add $t1, $t1, $t2	# $t1 = 4x - 2y
add $t7, $t1, $t3 	# $t7 = 4x -2y +3z