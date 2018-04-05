echo "Write a new username: "
read username
useradd $username
grep $username /etc/passwd
sudo passwd $username
su $username