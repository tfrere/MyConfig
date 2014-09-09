#!/n/bash

# BaseConfig
:'

printf "\n[Base config]...\n"

apt-get update
apt-get upgrade

apt-get install curl
apt-get install sudo
apt-get install htop

sudo apt-get install vim
mv .bashrc ../
mv .vimrc ../
source ../.bashrc


'

# Git

:'

printf "\n[Install && Config Git]...\n"

git config --global user.name "tfrere"
git config --global user.email tfrere@student.42.fr

'

# Node Npm nginx and ruby

:'

printf "\n[Install Node && NPM]...\n"

mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install
curl https://www.npmjs.org/install.sh | sh
rm -rf ~/node-latest-install

npm install -g grunt-cli
npm install -g bower
npm install -g gulp
npm install -g mongodb
npm install -g moongoose

printf "\n[Install Nginx]...\n"

sudo apt-get install nginx

printf "\n[Install PHP && Mysql]...\n"

php5 php-cli php-fpm
fastcgi config


printf "\n[Install owncloud]...\n"

echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community/Debian_7.0/ /' >> /etc/apt/sources.list.d/owncloud.list
apt-get update
apt-get install owncloud


printf "\n[Install Ruby]...\n"

sudo apt-get install ruby

'
