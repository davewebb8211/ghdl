ortho_srcdir=..
orthobe_srcdir=$(ortho_srcdir)/gcc
agcc_objdir=.
agcc_srcdir=$(ortho_srcdir)/gcc
AGCC_GCCSRC_DIR:=$(HOME)/ghdl-osx/untar/gcc-4.6.0/
AGCC_GCCOBJ_DIR:=$(HOME)/ghdl-osx/build/
SED=sed
GNATMAKE=gnatmake
CC=gcc

all: $(ortho_exec)

include $(orthobe_srcdir)/Makefile.inc

ORTHO_BASENAME=$(orthobe_srcdir)/ortho_gcc
ORTHO_PACKAGE=Ortho_Gcc

LIBFLAGS=$(AGCC_GCCOBJ_DIR)/mpfr/src/.libs/libmpfr.a \
         $(AGCC_GCCOBJ_DIR)/mpc/src/.libs/libmpc.a \
         $(AGCC_GCCOBJ_DIR)/gmp/.libs/libgmp.a \
         $(AGCC_GCCOBJ_DIR)/zlib/libz.a \
         $(AGCC_GCCOBJ_DIR)/intl/libintl.a \
          -liconv -lz 

$(ortho_exec): $(AGCC_DEPS) $(ORTHO_BASENAME).ads force
	$(GNATMAKE) -m -o $@ -g -aI$(ortho_srcdir) \
	 -aI$(ortho_srcdir)/gcc $(GNAT_FLAGS) ortho_gcc-main \
	 -bargs -E -largs $(AGCC_OBJS) \
	  $(AGCC_GCCOBJ_DIR)libcpp/libcpp.a \
	  $(AGCC_GCCOBJ_DIR)libiberty/libiberty.a \
	  $(AGCC_GCCOBJ_DIR)libdecnumber/libdecnumber.a \
	  $(LIBFLAGS) #-static

clean: agcc-clean
	$(RM) -f *.o *.ali ortho_nodes-main
	$(RM) b~*.ad? *~

distclean: clean agcc-clean


force:

.PHONY: force all clean

