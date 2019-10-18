# printf("%c", 'a');
li	$a0, 'a'
li 	$v0, 11
syscall

# scanf("%d", into $t1);
li 	$v0, 5
syscall 
move 	$t1, $v0 
