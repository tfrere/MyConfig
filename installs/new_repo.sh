mkdir /var/repos/
cd /var/repos

mkdir $1
cd $1
git init --bare

# ifconfig -a eth0 | grep "inet addr"| awk '{print $2}' | sed 's/addr://'

git remote add origin ssh:91.121.5.220:/var/repos/$1.git
