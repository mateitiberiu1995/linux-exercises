#!/bin/bash
declare -a arr
read counter
for (( number=1; $number <= $counter;((number++)) ))
do
arr[$number]=$number
done
for (( number=1; $number <= $counter;((number++)) ))
do
if [ $((arr[number]%3)) -eq 0 ]
then
if [ $((arr[number]%5)) -eq 0 ]
then 
echo "FizzBuzz!"
else
echo "fizz!"
fi
else
if [ $((arr[number]%5)) -eq 0 ]
then
echo "Buzz!"
else
echo ${arr[number]}
fi
fi
done
