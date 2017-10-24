FC=ifort

SOURCES=$(wildcard *.f90)
OBJECTS=$(patsubst %.f90,%.o,$(SOURCES))
CFLAGS=$(DEBUG) -c
LFLAGS=$(DEBUG)

default : test

.SUFFIXES:
.SUFFIXES: .f90 .o

$(OBJECTS) : %.o : %.f90
	$(FC) $(CFLAGS) -o $@ $<

test : $(OBJECTS)
	$(FC) $(LFLAGS) -o $@ $^

test_interpolate.o : mod_interpolation.o

clean :
	@rm -rf $(OBJECTS) test *.mod

.PHONY: default clean
