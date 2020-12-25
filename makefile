.PHONY:all clean
all:
	nasm -felf64 *.asm
	ld *.o

clean:
	rm -f *.o *.out
