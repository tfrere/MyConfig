#/bin/bash

cp docker-compose.yml $HOME/work/cssdoc

cd $HOME/work/cssdoc

git clone https://github.com/tfrere/rocket-css.git

cd rocket-css

git checkout gh-pages

cd ../

sudo chown -R 101:101 rocket-css

docker-compose up -d
