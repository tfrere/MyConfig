
a2enmod proxy proxy_ajp proxy_http rewrite deflate headers proxy_balancer proxy_connect proxy_html

git clone https://github.com/ajaxorg/cloud9.git ide
cd ide

npm install

sudo apt-get install apache2-utils build-essential git libssl-dev curl g++
sudo apt-get install libxml2 libxml2-dev

nvm use v0.8
nvm install v0.8.16

npm install -g libxml
npm install -g sm

screen -R cloud9

run sm install # in the cloud9 directory.

#npm config set strict-ssl false
