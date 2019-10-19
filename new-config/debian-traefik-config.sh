#/bin/bash

# DIVE : Permet de décortiquer les layers d'une image docker
#        https://github.com/wagoodman/dive
#
#
# TRAEFIK : Reverse proxy qui te génère un lien vers ton image docker avec certificat automatiquement
#
#
# ANSIBLE : PACKET PYTHON QUI GENERE TON ENVIRONEMENT POUR DEPLOYER TES DOCKERS


# create parents ( - p ) then create work into /home/USER
# then create traefik, portfolio and coloursinculture folder
mkdir -p $HOME/work/{traefik,portfolio,coloursinculture}

# traefik

cp traefik.yml $HOME/work/traefik
cp docker-compose.yml $HOME/work/traefik

sudo mkdir -p /srv/traefik
sudo touch /srv/traefik/acme.json
sudo chmod 600 /srv/traefik/acme.json

cd $HOME
echo 'PATH=$PATH/home/tfrere/.local/bin' >> .bashrc

cd $HOME/work/traefik

docker network create web

docker-compose up -d

docker-compose ps
