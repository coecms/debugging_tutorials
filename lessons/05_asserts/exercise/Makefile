FC=ifort

SOURCES=$(wildcard *.F90)
OBJECTS=$(patsubst %.F90,%.o,$(SOURCES))
CFLAGS=$(DEBUG) -c
LFLAGS=$(DEBUG)

default : master

.SUFFIXES:
.SUFFIXES: .F90 .o

$(OBJECTS) : %.o : %.F90
	$(FC) $(CFLAGS) -o $@ $<

master : $(OBJECTS)
	$(FC) $(LFLAGS) -o $@ $^

test_interpolate.o : mod_interpolation.o

clean :
	@rm -rf $(OBJECTS) test *.mod

.PHONY: default clean

$(filter-out assertion.o,$(OBJECTS)) : assertion.o
master.o : $(filter-out master.o,$(OBJECTS))
