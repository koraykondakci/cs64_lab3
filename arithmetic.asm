# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	# TODO: Write your code here 
	# taking 3 integer inputs, stored in $t0, $t1, and $t2
	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 5
	syscall
	move $t1, $v0

	li $v0, 5
	syscall
	move $t2, $v0

	# subtracting $t1 from $t0 and multiplying it by 64, stored in $t3
	sub $t3, $t0, $t1
	sll $t3, $t3, 6

	# assigning the value 100 to register $t5
	li $t5, 100

	# multiplying $t2 by 100, stored in $t4
	mult $t2, $t5
	mflo $t4

	# adding $t3 and $t4 together, stored in $t6
	add $t6, $t3, $t4

	# printing $t6 which is the result of 64*(a-b)+100*c
	li $v0, 1
	move $a0, $t6
	syscall

exit:
	# Exit SPIM: Write your code here!
	li $v0, 10
	syscall

