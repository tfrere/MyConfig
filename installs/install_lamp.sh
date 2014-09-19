#!/bin/bash

printf "\n[Install PHP && Mysql]...\n"

apt-get install apache2 php5 mysql-server php5-mysql libapache2-mod-php5
apt-get install flac faad lame php5-gd apache2 mysql-server php5 php5-mysql libapache2-mod-php5

mysql -u root -p IuHW6m51 -e "
CREATE DATABASE ampacheDB;

CREATE USER admin;
 SET PASSWORD FOR admin = PASSWORD("poupi57160");

GRANT ALL PRIVILEGES ON ampacheDB.* TO admin@localhost IDENTIFIED BY ‘poupi57160’
 FLUSH PRIVILEGES;
 "
a2enmod proxy proxy_ajp proxy_http rewrite deflate headers
