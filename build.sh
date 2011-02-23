#!/bin/sh

cd `dirname $0`
DIR=`echo $1 | sed -e 's/\/$//'`
OUT=abgabe_$DIR.m

echo "% $DIR" > $OUT
cat header.txt >> $OUT
for i in $DIR/*.m; do
	f=`basename $i .m`
	echo >> $OUT
	echo "%-----------------------------------------------------------------------------" >> $OUT
	echo "% $i : auto-generated header" >> $OUT
	echo "%" >> $OUT
	echo "fprintf('$f. Press any key');" >> $OUT
	echo "pause;" >> $OUT
	echo "clear;clc;" >> $OUT
	echo "%-----------------------------------------------------------------------------" >> $OUT
	echo "%" >> $OUT
	cat $i >> $OUT
done
