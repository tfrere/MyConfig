#!/n/bash

if [ $# == 1 ]

	then

		printf "\n[Group config]...\n"

		groupadd wheel
		useradd wheel $1

		printf "\n[Password for $1]...\n"

		passwd $1
		mkdir /home/wheel
		mkdir /home/wheel/$1
		cp .bashrc /home/wheel/$1
		cp .vimrc /home/wheel/$1
		cp -rf .vim /home/wheel/$1
		source /home/wheel/$1/.bashrc


	else echo "error: invalid name argument"

fi
