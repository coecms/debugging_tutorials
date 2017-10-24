include ${PFUNIT}/include/base.mk

F90=ifort
FFLAGS=-g -O0

tests.x : testSuites.inc test_overlap.pf mod_overlap.o
	$(F90) -o $@ -I. -I$(PFUNIT)/mod -I $(PFUNIT)/include \
		$(PFUNIT)/include/driver.F90 \
		./*$(OBJ_EXT) $(LIBS) $(FFLAGS)

mod_overlap.o : mod_overlap.f90
	$(F90) $(FFLAGS) -c -o $@ $<
