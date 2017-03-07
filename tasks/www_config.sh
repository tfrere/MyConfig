#!/bin/bash

	sh git_config.sh

	printf "\n[Deploy www]...\n"
	
	mkdir /var/www
	mkdir /var/www/log
	cd /var/www/
	git clone http://github.com/tfrere/designGenerator tfrere/

	#cat ../config/default.conf >> /etc/apache2/sites-available/default

	#ln -s /etc/apache2/sites-available/apacheMultiVhostDefault /etc/apache2/sites-enabled/apacheMultiVhostDefault

	service nginx restart
