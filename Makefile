
# compiler
CC=G++

# compiler directives
C_FLAGS=-c -Wall

build-clean: clean build

build: hello

hello: main.o function01.o function02.o
	$(CC) main.o function01.o function02.o -o hello

main.o: main.cpp
	$(CC) $(C_FLAGS) main.cpp

function01.o: function01.cpp
	$(CC) $(C_FLAGS) function01.cpp

function02.o: function02.cpp
	$(CC) $(C_FLAGS) function02.cpp

clean:
	rm -rf *o hello
