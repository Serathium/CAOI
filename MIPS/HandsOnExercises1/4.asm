# Faça um programa que calcule a seguinte equação:
# y = 9x + 7
#     2x + 8
# Armazene x em $t1, com a instrução addi $t1, $zero, x, substituindo x pelo valor
# desejado, e sempre que precisar o valor de x, utilize o valor armazenado no
# registrador $t1.
# Armazene o quociente da divisão em $t2 e o resto em $t3.
# Responda o que acontece quando x = -4.

##########################################################################################################################################

### QUANDO X = -4, O DENOMINADOR ( ( 2 x -4 ) + 8 ) )  É 0. 
### AO REALIZAR A DIVISÃO DO NUMERADOR -29 ( ( 9 x -4 ) +7 ) ) PELO DENOMINADOR ( 0 ), O VALOR ARMAZENADO
### COMO QUOCIENTE É -8 E COMO RESTO É -1. O DENOMINADOR PARECE SE COMPORTAR COMO O VALOR 3.625, EMBORA ISSO NÃO TENHA APARENTE RAZÃO.
### PELO O QUE PESQUISEI, DIVISÃO POR 0 RESULTA EM COMPORTAMENTO INDEFINIDO NO MARS, OU SEJA, OS RESULTADOS ARMAZENADOS NÃO POSSUEM
### SENTIDO LÓGICO MATEMÁTICO, SÃO APENAS UM ARTEFATO DA TENTATIVA DE DIVISÃO POR 0.

##########################################################################################################################################

addi $t1, $zero, -4 # Armazena x em $t1.
addi $t4, $zero, 9  # Armazena 9 em $t4.
addi $t5, $zero, 7  # Armazena 7 em $t5.
addi $t6, $zero, 2  # Armazena 2 em $t6.
addi $t7, $zero, 8  # Armazena 8 em $t7.

mult $t4, $t1	   # 9x.
mflo $t4	   # Armazena o resultado em $t4.

mult $t6, $t1	   # 2x.
mflo $t6	   # Armazena o resultado em $t6.

add $t5, $t5, $t4  # 9x + 7, armazena o resultado em $t5.
add $t7, $t7, $t6  # 2x + 8, armazena o resultado em $t7.

div $t5, $t7	   # Divisão.

mflo $t2	   # Armazena o quociente da divisão em $t2.
mfhi $t3 	   # Armazena o resto da divisão em $t3.