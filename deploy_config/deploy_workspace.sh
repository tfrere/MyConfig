#!/n/bash

	apt-get update
	apt-get upgrade

	printf "\n[Installs]...\n"

	apt-get install curl sudo htop python build-essential libssl-dev git-core


	printf "\n[Base config]...\n"

	cp .bashrc ~/
	cp .vimrc ~/
	cp -rf .vim ~/
	source ~/.bashrc

	printf "\n[Git config]...\n"

	git config --global user.name "tfrere"
	git config --global user.email tfrere@student.42.fr
