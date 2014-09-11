printf "\n[Install Node && NPM]...\n"

# mkdir ~/node-latest-install
# cd ~/node-latest-install
# sudo curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
# ./configure --prefix=~/local
# sudo make install
# sudo curl https://www.npmjs.org/install.sh | sh
# rm -rf ~/node-latest-install


apt-get install curl
curl -sL https://deb.nodesource.com/setup | bash
apt-get install nodejs nodejs-legacy

npm install -g grunt-cli
npm install -g bower
npm install -g gulp
npm install -g mongodb
npm install -g moongoose
