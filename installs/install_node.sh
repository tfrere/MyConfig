printf "\n[Install Node && NPM]...\n"

apt-get install curl
curl -sL https://deb.nodesource.com/setup | bash
apt-get install nodejs

npm install -g grunt-cli
npm install -g bower
npm install -g gulp
npm install -g mongodb
npm install -g moongoose
