# DIVE : Permet de décortiquer les layers d'une image docker
#        https://github.com/wagoodman/dive
# TRAEFIK : Reverse proxy qui te génère un lien vers ton image docker avec certificat automatiquement
# ANSIBLE : PACKET PYTHON QUI GENERE TON ENVIRONEMENT POUR DEPLOYER TES DOCKERS

#/bin/bash

# DEBIAN 9 STRETCH

apt-get update
apt-get upgrade

# apt-get remove docker docker-engine docker.io containerd runc

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
# 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
apt-key fingerprint 0EBFCD88 # Height last digits
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io git

# madison : selectionner des versions de docker // ne pas utiliser
# apt-cache madison docker-ce
# apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io

adduser tfrere
apt-get install sudo

visudo
# ajouter les permissions au nouvel utilisateur tfrere
# user alias specitifactions
# tfrere  ALL=(ALL:ALL) ALL

# se connecter en tant que tfrere en instanciant un nouveau environement shell
su - tfrere

sudo apt-get install python3-pip

# --user permet d'installer un package pip pour un utilisateur spécifique // .local
pip3 install --user setuptools
pip3 install --user wheel # packages précompilés pip
pip3 install --user docker-compose

# ajout d'un groupe d'utilisateurs
sudo groupadd docker
# modifie un user en l'ajoutant ( -a ) à un groupe ( -G )
sudo usermod -aG docker tfrere
