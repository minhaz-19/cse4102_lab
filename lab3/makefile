all:
first: hello.c
	gcc -E hello hello.c 

lexical:
	flex first.l
	gcc lex.yy.c
	a <input.txt >output.txt
