#!/bin/bash

	cp .bashrc ~/
	cp .vimrc ~/
	cp -rf .vim ~/

	source ~/.bashrc

	mkdir ~/.bash_lib
	cp -Rf ../bash_lib/* ~/.bash_lib/
	
	printf '\n[Config done]\n'

	su root

	cp .bashrc ~/
	cp .vimrc ~/
	cp -rf .vim ~/

	source ~/.bashrc

	mkdir ~/.bash_lib
	cp -Rf ../bash_lib/* ~/.bash_lib/
	
	printf '\n[Config done]\n'

	mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
	cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
	git clone https://github.com/davidrios/jade-tmbundle.git Jade



