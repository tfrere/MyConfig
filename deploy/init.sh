#!/bin/bash

	cp .bashrc ~/
	cp .vimrc ~/
	cp -rf .vim ~/

	source ~/.bashrc

	mkdir ~/.bash_lib
	cp -Rf ../bash_lib/* ~/.bash_lib/
	
	printf '\n[Config done]\n'
