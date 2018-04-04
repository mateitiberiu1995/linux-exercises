#!/bin/bash
read filename
input="$filename"
counter=0
while IFS= read -r line
do
	((counter++))
	echo "$line"
done <"$input"
sudo touch "${filename}_log.txt"
echo "$counter" >> ${filename}_log.txt