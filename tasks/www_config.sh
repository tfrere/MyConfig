#!/bin/bash


	printf "\n[Deploy www]...\n"
	
	mkdir /var/www
	mkdir /var/www/log
	cd /var/www/
	git clone http://gihtub.com/tfrere/portfolio.git tfrere/

	a2enmod proxy proxy_ajp proxy_http rewrite deflate headers

	cat ../config/apacheVhost > /etc/apache2/sites-available/apacheMultiVostDefault


	service apache2 restart
