#
#

# void change (int nrows, int ncols, int M[nrows][ncols], int factor)
# {
# 	for (int row = 0; row < nrows; row++) {
# 		for (int col = 0; col < ncols; col++) {
# 			M[row][col] = factor * M[row][col];
# 		}
# 	}
# }

# 

	.data
M:	.word 1, 2, 3, 4
	.word 3, 4, 5, 6
	.word 5, 6, 7, 8

# ---------------------------

        .text
main:
        # ... some code ...

        li      $a0, 3
        li      $a1, 4
        la      $a2, M
        li      $a3, 2
        jal     change

        # ... some other code ...

        jr      $ra 

## Change Function ##
change:

        # $t0 = row
        # $t1 = col
        # $t2 = N
        # $a0 = &arr

        mul     $t3, $t0, $t2 
        add     $t3, $t3, $t1 
        mul     $t3, $t3, 4
        add     $a0, $a0, $t3 
        lw      $t4, ($a0)


