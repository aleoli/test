OBJECTS = bin/main.o

CPPFLAGS = 
LDLIBS = 

CC = g++

PROGRAM_NAME = hello_world

build: $(OBJECTS)
	$(CC) -Wall -std=c++11 $(CPPFLAGS) -o bin/$(PROGRAM_NAME) $(OBJECTS) $(LDLIBS)

bin/%.o: src/%.cpp
	$(CC) -Wall -std=c++11 $(CPPFLAGS) -c -o bin/$*.o src/$*.cpp $(LDLIBS)

run: build
	@bin/$(PROGRAM_NAME)

clear:
	@rm bin/*.o
	@rm bin/$(PROGRAM_NAME)
