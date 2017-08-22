FC=gfortran
LD=$(FC)
SOURCES=$(wildcard *.f90)
OBJECTS=$(patsubst %.f90,%.o,$(SOURCES))
MODS=$(patsubst %.f90,%.mod,$(SOURCES))

DEBUG=-g -O0 -fcheck=all -fbacktrace
CFLAGS=-c $(DEBUG)
LFLAGS=$(DEBUG)

.SUFFIXES:

.SUFFIXES: .f90 .o .mod

default: main

main : $(OBJECTS)
	$(LD) $(LFLAGS) -o $@ $^

$(OBJECTS) : %.o : %.f90
	$(FC) $(CFLAGS) -o $@ $<

mod_two.o : mod_three.o
mod_one.o : mod_two.o
main.o : mod_one.o

clean:
	@rm -rf $(OBJECTS) $(MODS) main *.dSYM

.PHONY: clean default
