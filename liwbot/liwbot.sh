#!/bin/sh

export LD_LIBRARY_PATH=/usr/lib/liwbot:$LD_LIBRARY_PATH
exec /usr/bin/liwbot.bin $*

# End of File
