apt-get install flac faad lame php5-gd apache2 mysql-server php5 php5-mysql libapache2-mod-php5

wget http:/github.com/ampache/ampache/archive/3.7.0.tar.gz
tar xf 3.7.0.tar.gz
mv ampache*/* ./

mysql -u root -p IuHW6m51 -e "
CREATE DATABASE ampacheDB;

CREATE USER ampache_user;
 SET PASSWORD FOR ampache_user = PASSWORD("yourpassword");

GRANT ALL PRIVILEGES ON ampacheDB.* TO ampache_user@localhost IDENTIFIED BY ‘yourpassword’
 FLUSH PRIVILEGES;
 "



# List of filetypes to transcode

# transcode_m4a           = true
# transcode_m4a_target    = mp3
# transcode_flac  = true
# transcode_flac_target   = mp3
# transcode_mp3          = false
# transcode_mp3_target    = mp3
# transcode_ogg           = true
# transcode_ogg_target    = mp3
