	
	.data

numbers:
	.space	40 	# int numbers[10];
string0:
	.asciiz	"Enter a number: "
string1:
	.asciiz	"Reverse order:\n"


	.text
main:
	li	$t0, 0		

read:
	bgt	$t0, 10, print	
	la	$a0, string0	
	li	$v0, 4
	syscall

	li	$v0, 5		
	syscall             
	mul	$t1, $t0, 4	
	la	$t2, numbers    
	add	$t1, $t1, $t2   
	sw	$v0, ($t1)	

	add	$t0, $t0, 1	
	b	read
	jr	$31

print:
	la	$a0, string1	
	li	$v0, 4
	syscall
	li	$t0, 9		
next:
	blt	$t0, 0, done	

	mul	$t1, $t0, 4	
	la	$t2, numbers	
	add	$t1, $t1, $t2
	lw	$a0, ($t1)	
	li	$v0, 1
	syscall

	li	$a0, '\n'	
	li	$v0, 11
	syscall

	addi	$t0, $t0, 1	
	b	next

done:
	jr	$31

	
