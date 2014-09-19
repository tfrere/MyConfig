printf "\n[Install owncloud]...\n"

echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community/Debian_7.0/ /' >> /etc/apt/sources.list.d/owncloud.list
sudo apt-get update

a2enmod rewrite
a2enmod headers
a2enmod ssl
bzip2 -d /path/to/owncloud-4.5.0.tar.bz2
cd /var/www/cloud/
tar -xvf /path/to/owncloud-4.5.0.tar
chown -R www-data.www-data ./owncloud/
