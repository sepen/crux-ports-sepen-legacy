#!/bin/sh
#
# tolowercase.sh: Change upper to lower files (written by: Jose V Beneyto <joberui@eui.upv.es>)

toLowerCase() {
	for i in `ls -A1 $dir`
	do
		if [ ! -d $i ]
		then
			SOURCE=$i
			DEST=`echo $i | tr '[A-Z]' '[a-z]'`
			if [ "$SOURCE" != "$DEST" ]
			then
				mv -v $SOURCE $DEST
			fi
		else
			
			subdir="`pwd`/$i"
			cd $subdir
			toLowerCase $subdir # be recusive
			cd ..
		fi
	done
}

# main
if [ "$1" == "" ]
then
	echo "usage: $0 <dir>"
	exit -1
fi
cd $1
DIR=`pwd`
echo "tolowercase $DIR "
toLowerCase $DIR

exit 0
