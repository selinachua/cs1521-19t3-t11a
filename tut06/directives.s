# Let's practice writing some C variables with MIPS directives.
#
	.data
# int v5[20];
v5: 	.space 	80
# int v6[10][5];
# v6[0][1] v6[1]
# v6[1][1] v6[5]
# row * N + column
v6: 	.space 	200 
# struct { int x; int y; } v7;
v7: 	.space 	8 
# struct { int x; int y; } v8[4];
v8: 	.space 	32
# struct { int x; int y; } *v9[4];
v9: 	.space 	16

