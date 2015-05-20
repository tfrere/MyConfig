#!/bin/bash

	cp config/.bashrc ~/
	cp config/.vimrc ~/
	cp -rf config/.vim ~/

	source ~/.bashrc

	mkdir ~/.bashlib
	cp -Rf bashlib/* ~/.bashlib/
	
	printf '\n[Config done]\n'
