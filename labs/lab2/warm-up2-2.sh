#!/bin/bash

# verifying the parsed content 
if [ $# -ne 3 ]; then 
	echo "you need to parse 3 arguments"
	exit 1
fi

case "$2" in
	+) echo $(( $1 + $3 )) ;;
	-) echo $(( $1 - $3 )) ;;
	\*) echo $(( $1 * $3 )) ;; 
	/) 
		if [ $3 -e 0 ]; then 
			echo "the second value cannot be 0"
			exit 1 
		fi 
		echo $(( $1 / $3 )) ;;
	*) echo "you need to enter some valid values" ;;
esac
