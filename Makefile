
all: teeny nolibc eip mem

teeny: 
	nasm -f elf teeny.asm
	gcc -o teeny -Wall -m32 -s -nostartfiles teeny.o

nolibc:
	nasm -f elf nolibc.asm
	gcc -o nolibc -Wall -m32 -s -nostdlib nolibc.o

eip:
	nasm -f elf eip.asm
	gcc -o eip -Wall -m32 -s -nostartfiles eip.o

mem:
	nasm -f elf mem.asm
	gcc -o mem -Wall -m32 -s -nostartfiles mem.o

clean:
	rm -f teeny.o teeny nolibc.o nolibc eip.o eip mem.o mem
