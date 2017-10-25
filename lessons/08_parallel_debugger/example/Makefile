FC=mpif90
DEBUG=-g -O0 -traceback
FFLAGS=$(DEBUG)

all : run

run : multi exec

exec : multi
#	mpirun -n 4 $^

multi : multi.f90
	$(FC) -o $@ $(FFLAGS) $<

clean :
	@rm -rf multi

.PHONY:
	exec clean
