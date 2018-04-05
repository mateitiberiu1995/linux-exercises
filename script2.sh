mkdir scriptDir
cd scriptDir
touch file1.txt
touch file2.txt
mv file1.txt cd ..
mv file2.txt file2.sh
cat>>file2.sh<<EOF
pwd
apt-get install -y yum
EOF
chmod +x file2.sh
./file2.sh

