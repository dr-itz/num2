#!/bin/sh

if [ -z $1 ]; then
	echo "Usage: ./build.sh <foldername>"
	echo "  example:"
	echo "    ./build.sh u01"
	exit 1
fi

cd `dirname $0`
DIR=`echo $1 | sed -e 's/\/$//'`

if [ ! -d $DIR ]; then
	echo "No directory: $DIR; valid choices are:"
	for i in *; do
		if [ -d $i ]; then
			echo "- $i"
		fi
	done
	exit 1
fi

OUT=abgabe_$DIR.m

echo "% $DIR" > $OUT
cat header.txt >> $OUT
for i in $DIR/*.m; do
	echo "- processing $i"
	f=`basename $i .m`
	echo >> $OUT
	echo "%--------------------------------------------------------------------------" >> $OUT
	echo "% $i : auto-generated header" >> $OUT
	echo "%" >> $OUT
	echo "fprintf('$f. Press any key');" >> $OUT
	echo "pause;" >> $OUT
	echo "clear;clc;" >> $OUT
	echo "%--------------------------------------------------------------------------" >> $OUT
	echo "%" >> $OUT
	cat $i >> $OUT
done
echo "output written: $OUT"
