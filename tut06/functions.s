## Functions
#

main:
	# ... some code ...
	
	jal	max 

	# ... some other code ...

	jr 	$ra

## Max Function ##
max:
	# set up stack frame
	sw	$fp, -4($sp)
	la	$fp, -4($sp)
	sw	$ra, -4($fp)
	addi	$sp, $sp, -8

	lw 	$t1, ($a0) 	# $t1 = a[0];
if:
	bne 	$a1, 1, if_end 
	move 	$v0, $t1
	j 	max_end
else:
	move 	$a0, 4($a0)
	sub 	$a1, $a1, 1
	jal 	max 

if2:
	ble 	$t1, $v0, if2_end
	move 	$v0, $t1
if2_end:

if_end:
# int max(int a[], int length) {
#     int first_element = a[0];
#     if (length == 1) {
#         return first_element;
#     } else {
#         // find max value in rest of array
#         int max_so_far = max(&a[1], length - 1);
#         if (first_element > max_so_far) {
#             max_so_far = first_element;
#         }
#         return max_so_far;
#     }
# }
# $a0 = int a[]
# $a1 = int length 



max_end:
	# tear down stack frame
	lw	$ra, -4($fp)
   	la	$sp, 4($fp)
   	lw	$fp, ($fp)

	jr 	$ra