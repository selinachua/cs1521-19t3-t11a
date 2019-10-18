# Let's practice writing MIPS representation for
# some data structures!

.data

var1:	 
	.word	3		# int var1 = 3;		
char1:
	.byte 	'a'		# char char1 = 'a';		
array1:	 
	.byte	'a' 'b'		# char array1[2] = {'a','b'};
intarray:
	.word 	1 2 3		# int intarray[3] = {1,2,3};
array2:	 
	.space	40		# char array2[40]; OR int array2[10];
string0: 
	.asciiz "Hello World\n"







# int u;
u:
	.space 	4

# int v = 42;
v: 
	.word 	42
# char w;
w:
	.space 	1
# char x = 'a';
x:
	.byte 	'a'
# double y;
y:
	.space 	8
# int z[20];
z:
	.space 	80
