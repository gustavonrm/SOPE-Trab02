TARGET = server #user criar para o user maybe 
LIBS = -lm

CC = gcc
CFLAGS = -g -Wall -Wextra -Werror -I. -D_GNU_SOURCE -pthread
LDFLAGS = -g -pthread


.PHONY: default all clean

default: $(TARGET)
all: default

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
HEADERS = $(wildcard *.h)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -Wall $(LIBS) -o $@

clean:
	-rm -f *.o
	-rm -f $(TARGET)
	-rm -f *.csv

#Makefile copied from stackoverflow with owner permition 
#https://stackoverflow.com/questions/1484817/how-do-i-make-a-simple-makefile-for-gcc-on-linux	