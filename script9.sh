#!/bin/bash
read number
counter=0
for (( i=2;i<=$number;i++ ))
do
	for (( j=2;j<$i;j++ ))
	do
		if [ $((i%j)) -eq 0 ]
		then
			((counter++))
		fi
	done
	if [ $counter -eq 0 ]
	then
		echo $i
	fi
	counter=0
done