#!/bin/bash 

curr_hour=$(date +%H)
user=$(whoami)

if [ "$curr_hour" -ge 6 -a "$curr_hour" -lt 12 ]; then
	echo "Good morning, $user!"
elif [ "$curr_hour" -ge 12 -a "$curr_hour" -lt 18 ]; then 
	echo "Good afternoon, $user!"
elif [ "$curr_hour" -ge 18 -a "$curr_hour" -lt 22 ]; then 
	echo "Good evening, $user!"
else
	echo "Good night, $user!"
fi
