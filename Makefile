CC = g++ $(CFLAGS)
CFLAGS = -g -O0 -Wall

all: wordfreq

wordfreq: wordfreq.o HashSet.o
	$(CC) -o wordfreq wordfreq.o HashSet.o

wordfreq.o: wordfreq.cpp HashSet.h
	$(CC) -c wordfreq.cpp

HashSet.o: HashSet.cpp HashSet.h
	$(CC) -c HashSet.cpp

clean:
	rm -f *.o wordfreq *\~ core*