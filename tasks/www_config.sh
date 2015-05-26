#!/bin/bash


	printf "\n[Deploy www]...\n"
	
	mkdir /var/www
	mkdir /var/www/log
	cd /var/www/
	git clone http://gihtub.com/tfrere/portfolio.git tfrere/

	a2enmod proxy proxy_ajp proxy_http rewrite deflate headers

	cat ../config/default.conf > /etc/apache2/sites-available/apacheMultiVostDefault

	ln -s /etc/apache2/sites-available/apacheMultiVhostDefault /etc/apache2/sites-enabled/apacheMultiVhostDefault

	service apache2 restart
