FC=ifort
DEBUG=#-g -O0 -traceback

stackframe : stackframe.F90
	$(FC) $(DEBUG) -o $@ $^

clean :
	@rm stackframe

.PHONY: clean
