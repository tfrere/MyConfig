printf "\n[Install owncloud]...\n"

echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community/Debian_7.0/ /' >> /etc/apt/sources.list.d/owncloud.list
apt-get update
apt-get install owncloud
