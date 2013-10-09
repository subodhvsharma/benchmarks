####### Definitions

fortran = mpif90
objects = mod_trisol.o trisol.o gendata.o solve.o check.o matnrm.o \
          numroc.o dlaruv.o 
cflags = -g -O0
lflags = -g 
target = trisol.exe

####### Implicit rules

.SUFFIXES: .f90 .f77 .f .F
.f.o:
	$(fortran) -c $(cflags) -o $@ $<
.f90.o:
	$(fortran) -c $(cflags) -o $@ $<
.F.o:
	$(fortran) -free -c $(cflags) -o $@ $<
.f77.o:
	$(fortran) -c $(cflags) -o $@ $<

####### Target

$(target) : $(objects)
	$(fortran) $(lflags) -o $(target) $(objects)

####### Clean

.PHONY : clean
clean :
	-rm -f $(target) core $(objects) *~ *.mod
