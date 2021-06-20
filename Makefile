CC      = gcc
CFLAGS  = -g3 -D_POSIX_SOURCE -D_DEFAULT_SOURCE -std=c99 -Wextra -Werror -pedantic
LIB     = libtestsuite.a
LIBOBJS = testsuite.o
BUILD   = $(LIB)

.SUFFIXES: .c .o

.PHONY: all clean rebuild

all: $(BUILD)

rebuild: clean all

clean:
	rm -f $(BUILD) *.o

$(LIB): $(LIBOBJS)
	ar rcs $(LIB) $(LIBOBJS)

testsuite.o: testsuite.h
