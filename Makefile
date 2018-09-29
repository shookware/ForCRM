# Makefile created by mkmf $Id: mkmf,v 18.0 2010/03/02 23:26:08 fms Exp $
include config.mk

.DEFAULT:
	-echo $@ does not exist.
all: a.out
main.o: ./main.f90
	$(FC) $(FFLAGS) $(OTHERFLAGS) -c	./main.f90
module_fft.o: ./module_fft.f90
	$(FC) $(FFLAGS) $(OTHERFLAGS) -c	./module_fft.f90
SRC = ./module_fft.f90 ./main.f90
OBJ = module_fft.o main.o
clean: neat
	-rm -f .a.out.cppdefs $(OBJ) a.out
neat:
	-rm -f $(TMPFILES)
TAGS: $(SRC)
	etags $(SRC)
tags: $(SRC)
	ctags $(SRC)
a.out: $(OBJ)
	$(LD) $(OBJ) -o a.out  $(LDFLAGS)
