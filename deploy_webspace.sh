#!/bin/bash

	printf "\n[Install Lamp / Ruby / Node]...\n"

	# sh installs/install_ruby.sh
	# sh installs/install_lamp.sh
	# sh installs/install_node.sh

	printf "\n[Deploy www]...\n"

	mkdir /var/workspace
	mkdir /var/workspace/repositories
	mkdir /var/www/tfrere/
	mkdir /var/www/log
	mkdir /var/www/cloud
	cd /var/www/
	mkdir box
	git clone http://gihtub.com/tfrere/portfolio.git tfrere/
	git clone http://gihtub.com/tfrere/peon.git peon/
	git clone http://gihtub.com/thomaswinckell/angularfire-white-board.git dashboard/
	git clone http://gihtub.com/thomaswinckell/js-music-client-server.git music/

	a2enmod proxy proxy_ajp proxy_http rewrite deflate headers

	cat apache2/apacheMultiVostDefault > /etc/apache2/sites-available/apacheMultiVostDefault

