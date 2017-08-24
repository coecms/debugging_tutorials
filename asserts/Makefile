FC=ifort

DEBUG=-O0 -g -traceback # -DDEBUG

SOURCES=$(wildcard *.f90)
OBJECTS=$(patsubst %.f90,%.o,$(SOURCES))
CFLAGS=$(DEBUG) -c -fpp
LFLAGS=$(DEBUG)

default : test

.SUFFIXES:
.SUFFIXES: .f90 .o

$(OBJECTS) : %.o : %.f90
	$(FC) $(CFLAGS) -o $@ $<

test : $(OBJECTS)
	$(FC) $(LFLAGS) -o $@ $^

test.o : mod_assertion.o

$(OBJECTS) : Makefile

clean :
	@rm -rf $(OBJECTS) test *.mod

.PHONY: default clean
