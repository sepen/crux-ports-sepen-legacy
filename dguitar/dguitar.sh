#!/bin/sh

JAVA_BIN_PATH=/usr/lib/java/bin

if [ ! -d $JAVA_BIN_PATH ] 
then 
	echo "error: can't find $JAVA_BIN_PATH"
	exit 1
fi

export PATH=$PATH:$JAVA_BIN_PATH

cd /usr/share/dguitar
#./DGuitar.sh
java -Dapple.laf.useScreenMenuBar=true -Dcom.apple.mrj.application.apple.menu.about.name=DGuitar -jar DGuitar.jar
cd -
