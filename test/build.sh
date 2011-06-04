#!/bin/sh

#
# Steps taken from the README file
#

make -C ../translate BE=gcc \
    && make -C ../translate/ghdldrv ghdl_gcc \
    && make -C ../translate/grt

if [ $? = 0 -a "$1" = "lib" ]; then
    make -C ../translate/ghdldrv install.all
fi
