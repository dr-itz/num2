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
for i in $DIR/u*.m; do
	echo "- processing $i"
	f=`basename $i .m | sed 's/u\([0-9][0-9]*\).*/u\1/g'`
	cat fileheader.txt | sed -e "s|@@filename@@|$i|g" -e "s|@@progname@@|$f|g" >> $OUT;
	cat $i >> $OUT
	echo >> $OUT
	echo >> $OUT
done
echo "output written: $OUT"
