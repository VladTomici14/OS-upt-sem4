#!/bin/bash

function max() { echo $(($1 > $2 ? $1 : $2)); } 

echo "$(max $1 $(max $2 $3))"
