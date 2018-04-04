for number in {1..10}
do
for sum in {1..10}
do
a=$((number*sum))
echo -ne "$a "
done
echo ""
done

