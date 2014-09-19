	printf "\n[Deploy www]...\n"

	mkdir /var/workspace
	mkdir /var/workspace/repositories
	mkdir /var/www/tfrere/
	mkdir /var/www/log
	mkdir /var/www/cloud
	cd /var/www/
	mkdir box
	git clone https://gihub.com/tfrere/portfolio.git tfrere/
	git clone https://gihub.com/tfrere/peon.git peon/
	git clone https://gihub.com/thomaswinckell/angularfire-white-board.git dashboard/
	git clone https://gihub.com/thomaswinckell/js-music-client-server.git music/


