#!/bin/sh

homedir="$HOME/.geepee32"
systemdir="/usr/share/geepee32"


if [ ! -d $homedir ]; then
  install -d $homedir
  cd $homedir
  ln -s $systemdir/* .
fi

cd $homedir
./geepee32 2>>log_err.txt
cd -

# End of file
