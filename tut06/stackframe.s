## Stack frames
#

function:
	# set up stack frame
	sw	$fp, -4($sp)
	la	$fp, -4($sp)
	sw	$ra, -4($fp)
	sw	$s0, -8($fp)
	sw 	$s1, -12($fp)
	addi	$sp, $sp, -16

	# ... some code over here ...

function_end:
	# tear down stack frame
	lw	$ra, -4($fp)
   	lw	$s0, -8($fp)
   	lw	$s1, -12($fp)
   	la	$sp, 4($fp)
   	lw	$fp, ($fp)

	jr 	$ra