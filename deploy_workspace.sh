#!/n/bash

printf "\n[Base config]...\n"

apt-get update
apt-get upgrade

apt-get install curl
apt-get install sudo
apt-get install htop
apt-get install vim
apt-get install git

cp .bashrc ~/
cp .vimrc ~/
cp -rf .vim ~/
source ~/.bashrc

git config --global user.name "tfrere"
git config --global user.email tfrere@student.42.fr

groupadd wheel
useradd wheel tfrere
echo "------- Password for tfrere --------"
passwd tfrere
mkdir /home/wheel
mkdir /home/wheel/tfrere
cp .bashrc /home/wheel/tfrere
cp .vimrc /home/wheel/tfrere
cp -rf .vim /home/wheel/tfrere
source /home/wheel/tfrere/.bashrc

