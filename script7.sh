echo "Write a new username: "
read username
echo "Write a password: "
read password
useradd $username
echo $username:$password | chpasswd
su $username
