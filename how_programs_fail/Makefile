FC=gfortran
#OPTS=-g -O0
OPTS=-O3

SOURCES=$(wildcard *.f90)
BINS=$(patsubst %.f90,%.exec,$(SOURCES))

all : $(BINS)

clean :
	rm -rf $(BINS) *.o *.mod

debug :
	@ echo "BINS:     "$(BINS)
	@ echo "SOURCES : "$(SOURCES)

.PHONY : all clean debug

$(BINS) : %.exec : %.f90
	$(FC) $(OPTS) -o $@ $^
