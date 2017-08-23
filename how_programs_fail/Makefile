FC=ifort
#OPTS=-g -O0
OPTS=-O3

SOURCES=$(wildcard *.f90)
BINS=$(patsubst %.f90,%,$(SOURCES))

all : $(BINS) data.txt

clean :
	rm -rf $(BINS) *.o *.mod data.txt *.dSYM

debug :
	@ echo "BINS:     "$(BINS)
	@ echo "SOURCES : "$(SOURCES)

.PHONY : all clean debug

data.txt :
	@ for i in {1..100}; do echo $$RANDOM >> $@; done
	@ echo "Created random $@"

$(BINS) : % : %.f90
	$(FC) $(OPTS) -o $@ $^
