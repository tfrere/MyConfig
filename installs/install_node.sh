 printf "\n[Install Node via nvm]...\n"

# Fastest install ever (only lastest version)

	#apt-get install curl
	#curl -sL https://deb.nodesource.com/setup | bash
	#apt-get install nodejs

	sudo apt-get install curl build-essential openssl libssl-dev git python
	cd ~/
	git clone git://github.com/creationix/nvm.git ~/.nvm
	printf "\n\n# NVM\nif [ -s ~/.nvm/nvm.sh ]; then\n\tNVM_DIR=~/.nvm\n\tsource ~/.nvm/nvm.sh\nfi" >> ~/.bashrc
	NVM_DIR=~/.nvm
	sudo source ~/.nvm/nvm.sh
	sudo source ~/.bashrc

	nvm install v0.12.2
	#nvm alias default 0.10
	#nvm use 0.6

#npm install -g grunt-cli
#npm install -g bower
#npm install -g gulp
#npm install -g mongodb
#npm install -g mongoose

