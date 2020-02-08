

# Get cuda repository
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-get update

# install cuda driver
sudo apt-get install --no-install-recommends nvidia-driver-418

# restart

# Anaconda install

wget "https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh"

sh Anaconda3-2019.10-Linux-x86_64.sh


export PATH=~/anaconda3/bin:$PATH
conda init bash
# Restart your shell


conda create -y -n deepfacelab python=3.6.6 cudatoolkit=9.0 cudnn=7.3.1


# Get faces

https://mega.nz/#!0FBDQIIL!fRFNa8I6Nn5SvrpS0F_RqQM6MeSqcYBPHeI-UMI5XTI

# Le dl, le retransformer en zip

scp ./aligned.zip ubuntu@51.77.228.122


# VNC

sudo apt-get install tightvncserver

sudo apt-get install xfce4
sudo apt-get install xfce4-goodies


vncserver

vncserver -kill :1

open vnc://51.77.228.122:5901
