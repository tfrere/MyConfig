#/bin/bash

cp docker-compose.yml $HOME/wort/portfolio

cd $HOME/work/portfolio

git clone https://github.com/tfrere/designGenerator.git

sudo chown -R 101:101 designGenerator

docker-compose up -d
