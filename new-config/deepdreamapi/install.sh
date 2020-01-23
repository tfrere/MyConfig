#/bin/bash

cp docker-compose.yml $HOME/wort/deepdreamapi

cd $HOME/work/deepdreamapi

git clone https://github.com/kesara/deepdreamer.git

sudo chown -R 101:101 deepdreamapi

docker-compose up -d

# DEEPDREAMER INSTALL

cd deepdeamer

curl https://raw.githubusercontent.com/BVLC/caffe/master/models/bvlc_googlenet/deploy.prototxt >> deploy.prototxt
echo "force_backward: true" >> deploy.prototxt
curl http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel >> bvlc_googlenet.caffemodel



# CAFFE AND FFMPEG INSTALL
echo "deb http://ftp2.cn.debian.org/debian sid main contrib non-free" >> /etc/apt/sources.list
sudo apt update
sudo apt install caffe-cpu ffmpeg # [ caffe-cpu | caffe-cuda ]



# SWAP AUGMENTATION FOR CPU BASED DREAM

# df
# cat /etc/fstab
# swapon -s
dd if=/dev/zero of=/home/swapfile.img bs=1024 count=20M

sudo chmod 600 /home/swapfile.img

sudo mkswap /home/swapfile.img

sudo swapon /home/swapfile.img

sudo nano /etc/fstab

echo "/home/swappfile swap    swap    defaults        0       0" >> /etc/fstab


# SWAPINESS OF THE SWAP

# define swapiness
cat /proc/sys/vm/swappiness
# While the swappiness value of 60 is OK for most Linux systems, for production servers you may need to set a lower value.
#For example, to set the swappiness value to 10, type:

sudo sysctl vm.swappiness=10
#To make this parameter persistent across reboots append the following line to the /etc/sysctl.conf file:
echo "/etc/sysctl.conf" >> vm.swappiness=10


# DOWNLOAD AND UPLOAD ON SERVER

# sftp server root@tfrere.fr
# cd, ls, get, put

# scp root@tfrere.fr [DISTANTPATH] [LOCALH]

#
