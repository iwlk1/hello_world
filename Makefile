all: hello

hello: hello_world.o other_hw.o
	gcc hello_world.o other_hw.o -o hello_world

hello_world.o: hello_world.c
	gcc -c hello_world.c
	
other_hw.o: other_hw.c
	gcc -c other_hw.c
	
clean:
	rm *.o