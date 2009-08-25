#!/bin/bash

DATADIR=$HOME/.nibbles
SCOREDIR=/var/spool/nibbles
SCOREFILE=$SCOREDIR/score

[ ! -d "$DATADIR" ] && install -d -m 0755 $DATADIR
[ ! -d "$SCOREDIR" ] && install -d -m 0777 $SCOREDIR
[ ! -f "$SCOREFILE" ] && touch $SCOREFILE

cd /usr/share/nibbles
exec ./nibbles $@

# End of file

