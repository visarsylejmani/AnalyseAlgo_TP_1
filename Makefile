CC=g++
CFLAGS=-Wall -lm -O3 -Werror -pedantic
DEPS = 
OBJ = main.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

app: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -f *.o app 