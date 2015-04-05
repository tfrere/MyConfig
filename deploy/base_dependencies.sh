#!/n/bash

	printf '\n[Upgrading and installing base dependencies]\n'

	apt-get update
	apt-get upgrade
	apt-get install curl sudo htop python build-essential libssl-dev git-core
	
	printf '\n[Base dependencies done]\n'
