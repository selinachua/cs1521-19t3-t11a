# #include <stdio.h>

# int main(void) {
#     int i;
#     int numbers[10] = {0,1,2,3,4,5,6,7,8,9};

#     i = 0;
#     while (i < 10) {
#         printf("%d\n", numbers[i]);
#         i++;
#     }
# }

	.data
numbers:
	.word 	0 1 2 3 4 5 6 7 8 9

#######################
	.text
main:
	li 	$t0, 0 			# i = 0;
loop:
	bge 	$t0, 10, end_loop 	# if i >= 10, end loop.

	# Calculate numbers[i]
	la 	$t2, numbers 		# $t2 = &numbers;
	mul 	$t3, $t0, 4 		# offset = i * 4
	# lw 	$t4, $t2($t3) 
	add 	$t2, $t2, $t3 		# $t2 = &numbers[i];
	lw 	$t4, ($t2)		# $t4 = numbers[i];

	move 	$a0, $t4
	li 	$v0, 1
	syscall

	li 	$a0, '\n'
	li 	$v0, 11
	syscall

	addi 	$t0, $t0, 1		# i++;
	j 	loop
end_loop:
	jr 	$ra