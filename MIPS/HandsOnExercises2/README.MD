# Exercises
1. Create a program that writes the value 0xDECADA70 into register $t7, including one hexadecimal digit at a time (i.e., insert letter by letter, individually) into the register.

2. Write 0xAAAAAAAA into $t1. Shift this value one bit to the right and place the result in $t2, leaving $t1 unchanged. In $t3, $t4, and $t5, place the results of the OR, AND, and XOR operations between $t1 and $t2, respectively. In comments at the end of the code, explain the results obtained, showing the binary values.

3. Start a program with the instruction: ori $t1, $zero, 0x01. Using only R-type logical instructions (two registers as operands) OR, AND, and XOR, and shift instructions (i.e., without using other ori instructions besides the initial one, and no nor instructions), write 0xFFFFFFFF into $t1. Try to use the minimum number of instructions possible.

4. Write the sequence 0x12345678 into $t1. Next, write code that reverses the sequence, writing 0x87654321 into $t2. Obviously, the code should invert the bits of $t1 and not simply write 0x87654321 directly into $t2.
