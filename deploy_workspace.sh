#!/n/bash


	apt-get update
	apt-get upgrade

	printf "\n[Installs]...\n"

	apt-get install curl
	apt-get install sudo
	apt-get install htop
	apt-get install vim
	apt-get install git

	printf "\n[Base config]...\n"

	cp .bashrc ~/
	cp .vimrc ~/
	cp -rf .vim ~/
	source ~/.bashrc

	printf "\n[Git config]...\n"

	git config --global user.name "tfrere"
	git config --global user.email tfrere@student.42.fr

	printf "\n[Web config]...\n"

	mkdir /var/repos
	mkdir /var/www/
