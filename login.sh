#!/n/bash

#apt-get update
#apt-get upgrade

#apt-get install curl
#apt-get install sudo
#apt-get install htop

#sudo apt-get install vim
#mv .bashrc ../
#mv .vimrc ../
#source ../.bashrc

printf "\n[Install && Config Git]...\n"

#sudo apt-get install git
#git config --global user.name "tfrere"
#git config --global user.email tfrere@student.42.fr

printf "\n[Install Node && NPM]...\n"

#mkdir ~/node-latest-install
#cd ~/node-latest-install
#curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
#./configure --prefix=~/local
#make install
#curl https://www.npmjs.org/install.sh | sh
#rm -rf ~/node-latest-install

npm install -g grunt-cli
npm install -g bower
npm install -g gulp
npm install -g mongodb
npm install -g moongoose

printf "\n[Install Nginx]...\n"

#sudo apt-get install nginx

printf "\n[Install Ruby]...\n"

#sudo apt-get install ruby

printf "\n[Install PHP && Mysql]...\n"




