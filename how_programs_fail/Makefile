FC=gfortran
OPTS=-g -O0

SOURCES=$(wildcard %.f90)
BINS=$(patsubst .f90,.exec,$(SOURCES))

all : $(BINS)

clean :
	rm -rf $(BINS) *.o *.mod

.PHONY : all clean

$(BINS) : %.exec : %.f90
	$(FC) $(OPTS) -o $@ $^
