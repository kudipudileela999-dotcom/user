#!/bin/bash/

#creating new files

for i in {1..100}
do
	touch "file.txt$i"
	echo "100 files created $i"

done
