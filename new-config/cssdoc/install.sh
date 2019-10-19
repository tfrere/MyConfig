#/bin/bash

cp docker-compose.yml $HOME/wort/cssdoc

cd $HOME/work/cssdoc

git clone https://github.com/tfrere/rocket-css.git

sudo chown -R 101:101 rocket-css

docker-compose up -d
