echo "write a number"
read number
counter=1
while [ $counter -ne $number ] ;
do
echo "$counter"
((counter++))
done
