#!/bin/bash 

if [ $# -ne 2 ]; then 
	echo "you need to parse 2 arguments"
	exit 1 
fi

if [ ! -d "$1" ]; then 
	echo "the first parameter should be a directory"
	exti 1
fi

if [[ "$2" != *.txt ]]; then
	echo "the second parameter should have a .txt extension"
	exit 1
fi

TOTAL=0

for file in $(find "$1" -type f -name "*.txt"); do

	count=$(wc -m < "$file")

	TOTAL=$((TOTAL + count))

done

echo "TOTAL $TOTAL" >> "$2"
