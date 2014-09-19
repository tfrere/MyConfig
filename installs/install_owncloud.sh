printf "\n[Install owncloud]...\n"

echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community/Debian_7.0/ /' >> /etc/apt/sources.list.d/owncloud.list
sudo apt-get update

a2enmod rewrite
a2enmod headers
a2enmod ssl

apt-get install owncloud
