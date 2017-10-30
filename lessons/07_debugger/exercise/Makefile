FC=ifort
FLAGS=-g -O0 -traceback -check all

qsort : qsort.o mod_qsort.o
	$(FC) -o $@ $(FLAGS) $^

.SUFFIXES:
.SUFFIXES: .f90 .o

.f90.o :
	$(FC) -c -o $@ $(FLAGS) $<

clean :
	@rm -rf *.o *.mod qsort

.PHONY: clean

qsort.o : mod_qsort.o
