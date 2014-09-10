#!/n/bash

:'

printf "\n[Base config]...\n"

apt-get update
apt-get upgrade

apt-get install curl
apt-get install sudo
apt-get install htop
apt-get install vim
apt-get install git

mv .bashrc ../
mv .vimrc ../
source ../.bashrc

git config --global user.name "tfrere"
git config --global user.email tfrere@student.42.fr

'
