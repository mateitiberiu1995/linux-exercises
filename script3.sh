echo "Write two number ? "
read number
read sum
a=$((number+sum))
if [ $((a%2)) -eq 0 ];
then
echo "$a even"
else
echo "$a odd"
fi
