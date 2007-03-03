#!/bin/sh

export LD_LIBRARY_PATH=/usr/lib/liwbot:$LD_LIBRARY_PATH
exec /usr/bin/liwchat.bin $*

# End of File
