#!/bin/bash
who
date
uptime
echo "do you want to clear the existing file? yes/no"
read answer
computer="yes"
if [ "$answer" == "yes" ]
then
>login1.txt
echo "$(date)" >> login1.txt
echo "$(who)" >> login1.txt
echo "$(uptime)" >> login1.txt
else
echo "$(date)" >> login1.txt
echo "$(who)" >> login1.txt
echo "$(uptime)" >> login1.txt
fi
