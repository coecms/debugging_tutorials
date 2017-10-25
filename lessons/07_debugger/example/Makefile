FC=ifort
LD=$(FC)
DEBUG=-g -O0
FFLAGS=-c $(DEBUG)
LFLAGS=$(DEBUG)

SOURCES=$(wildcard *.f90)
OBJECTS=$(patsubst %.f90,%.o,$(SOURCES))

default : main

.SUFFIXES :
.SUFFIXES : .F90 .f90 .o

.f90.o :
	$(FC) $(FFLAGS) -o $@ $<

main : $(OBJECTS)
	$(LD) $(LFLAGS) -o $@ $^

clean :
	rm -rf *.mod $(OBJECTS) *.dSYM main

.PHONY: default clean

main.o : $(filter-out main.o,$(OBJECTS))
