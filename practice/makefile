execute:
		gcc -E code.c > preprocess.i
		gcc -S -masm=intel preprocess.i
		as -o code.o preprocess.s
		objdump -M intel -d code.o > code.dump 
		gcc -o code code.o