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

mkdir -p abgabe/$DIR

for i in $DIR/*.m; do
	echo "- processing $i"
	OUT=abgabe/$i
	echo "% $DIR" > $OUT
	cat header.txt >> $OUT
	cat $i >> $OUT
	echo >> $OUT
done
echo "output written: abgabe/$DIR"
