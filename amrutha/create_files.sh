#!/bin/bash

# create 10 files with automation

for files in {1..10}; do
	touch "file$files"
	echo "file$files"
done
