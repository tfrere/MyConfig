	printf "\n[Web config]...\n"

	mkdir /var/repos
	mkdir /var/www/tfrere/
	mkdir /var/www/tfrere/log
	cd /var/www/tfrere/
	git clone https://gihub.com/tfrere/portfolio.git www
	mkdir /var/www/tfrere/www/cloud
	mkdir /var/www/tfrere/www/music
	mkdir /var/www/tfrere/log
	mkdir /var/www/tfrere/www/peon
	cd /var/www/tfrere/www
	git clone https://gihub.com/tfrere/peon.git peon
