#!/bin/bash
i=0
while (( i <= $2 ))
do
	echo "$i x $1 = $(($i*$1))"
	((i+=1))
done
