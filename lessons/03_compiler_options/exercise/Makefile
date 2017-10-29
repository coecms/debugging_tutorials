FC=ifort

FLAGS=-g -O0 -traceback

SRCS=$(wildcard *.f90)
OBJS=$(patsubst %.f90,%.o,$(SRCS))

.SUFFIXES=
.SUFFIXES=.f90 .o

master : $(OBJS)
	$(FC) -o $@ $(FLAGS) $^

$(OBJS) : %.o : %.f90
	$(FC) -c -o $@ $(FLAGS) $<

clean:
	@rm -rf $(OBJS) *.mod master *.dSYM

master.o mod_test.o : mod_fail.o

master.o : mod_test.o

.PHONY: clean
