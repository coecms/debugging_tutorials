FC=gfortran
DEBUG=-g -O0 -fbacktrace

stackframe : stackframe.F90
	$(FC) $(DEBUG) -o $@ $^

clean :
	@rm stackframe

.PHONY: clean
