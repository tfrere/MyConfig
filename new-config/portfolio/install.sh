#/bin/bash

cp docker-compose.yml $HOME/wort/portfolio

cd $HOME/work/portfolio

git clone https://github.com/tfrere/portfolio.git

sudo chown -R 101:101 portfolio

docker-compose up -d
