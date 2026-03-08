#!/bin/bash

# verifying if the number of arguments are parsed ok
if [ $# -ne 3 ]; then 
	echo "not 3 arguments parsed"
	exit 1
fi

# parsing the operations 
if [ "$2" = "+" ]; then 
	echo $(( $1 + $3 ))
elif [ "$2" = "-" ]; then 
	echo $(( $1 - $3 ))
elif [ "$2" = "*" ]; then 
	echo $(( $1 ^ $3 ))
elif [ "$2" = "/" ]; then 
	if [ $3 -eq 0 ]; then
		echo "the second number cannot be 0!"
		exit 1
	fi
	echo $(( $1 / $3 ))
else
	echo "invalid arguments parsed"
	exit 1
fi 



