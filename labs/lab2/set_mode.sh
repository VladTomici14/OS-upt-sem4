#!/bin/bash

if [ $# -ne 2 ]; then 
	echo "you need to parse 2 arguments"
	exit 1
fi

if [ ! -d "$1" ]; then 
	echo "the first argument needs to be a directory"
	exit 1
fi 

if [ "$2" != "r" ] && [ "$2" != "w" ] && [ "$2" != "x" ]; then
	echo "you need for the second argument to be r, w or x" 
	exit 1 
fi 

find "$1" -type f -name "*.txt" -exec chmod "+$2" {} +
