 printf "\n[Install Node && NPM]...\n"

# apt-get install curl
# curl -sL https://deb.nodesource.com/setup | bash
# apt-get install nodejs

# npm install -g grunt-cli
# npm install -g bower
# npm install -g gulp
# npm install -g mongodb
# npm install -g mongoose

	cd ~/
	git clone git://github.com/creationix/nvm.git ~/.nvm
	printf "\n\n# NVM\nif [ -s ~/.nvm/nvm.sh ]; then\n\tNVM_DIR=~/.nvm\n\tsource ~/.nvm/nvm.sh\nfi" >> ~/.bashrc
	NVM_DIR=~/.nvm
	source ~/.nvm/nvm.sh

#  nvm install v0.10.29
#  nvm alias default 0.10
#  nvm use 0.10
