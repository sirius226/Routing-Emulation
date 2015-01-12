CC     = gcc
CFLAGS = -g

all: hub station

clean:
	rm -f *.o hub station

hub: hub.o utils.o
	gcc -g -lnsl hub.o utils.o -o goodhub
#	gcc -g -lsocket -lnsl hub.o utils.o -o hub

station: station.o dvrp.o utils.o
#	gcc -g -lnsl station.o dvrp.o utils.o -o station
#	gcc -g -lsocket -lnsl station.o dvrp.o utils.o -o station
	gcc -g -lnsl station.o dvrp.o utils.o -o goodstation
