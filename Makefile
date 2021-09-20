CC = g++
CFLAGS = -Wall -g
# ****************************************************
# Targets needed to bring the executable up to date

$(info "Create executable file...")
main: main.o
	$(CC) $(CFLAGS) -o main main.o

$(info "Create obj...")
main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

.PHONY: clean
clean:
	rm -f *.o
  
