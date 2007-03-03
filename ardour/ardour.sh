#!/bin/sh

export LD_LIBRARY_PATH=/usr/lib/ardour2:$LD_LIBRARY_PATH 
# DYLD_LIBRARY_PATH is for Darwin
export DYLD_LIBRARY_PATH=$LD_LIBRARY_PATH

exec /usr/lib/ardour2/ardour.bin $*

# End of File
