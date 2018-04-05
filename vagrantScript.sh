
echo "how much ram memory you want?"
read memory
echo "how much cpus you want to use?"
read cpus
touch Vagrantfile1
input="Vagrantfile"
checkCpu="vb.memory"
checkCpu1="vb.cpus"
while IFS= read -r line
do
	if [[ $line = *"$checkCpu"* ]]
	then
		echo "vb.memory=$memory" >> Vagrantfile1
	else
		if [[ $line = *"$checkCpu1"* ]]
		then
			echo "vb.cpus=$cpus" >> Vagrantfile1
		else
			echo "$line" >> Vagrantfile1
		fi
	fi
done<"$input"
rm Vagrantfile
mv Vagrantfile1 Vagrantfile
vagrant up

