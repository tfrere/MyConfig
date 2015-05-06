#!/n/bash

	printf '\n[Upgrading and installing base dependencies]\n'

	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install curl sudo htop python build-essential libssl-dev git-core mongo 
	sudo apt-get install flux amarok inkscape 
	
	printf '\n[Base dependencies done]\n'
