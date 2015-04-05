
a2enmod proxy proxy_ajp proxy_http rewrite deflate headers proxy_balancer proxy_connect proxy_html

cd /var/www/
git clone https://github.com/ajaxorg/cloud9.git box
cd box

sudo apt-get install apache2-utils build-essential git libssl-dev curl g++
sudo apt-get install libxml2 libxml2-dev

npm install

nvm install v0.8.16
nvm use v0.8

npm install -g libxml
npm install -g sm



screen -R cloud9
cd /var/www/box/
# run sm install # in the cloud9 directory.

#npm config set strict-ssl false
