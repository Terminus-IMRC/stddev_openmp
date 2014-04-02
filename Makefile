CFLAGS=-Wall -Wextra -fopenmp -g
LDFLAGS=-fopenmp -lm -g

all: stddev
stddev: stddev.o
stddev.o: stddev.c

.PHONY: clean
clean:
	$(RM) stddev stddev.o

run: stddev
	./$<
