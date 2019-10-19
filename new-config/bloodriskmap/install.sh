#/bin/bash

cp docker-compose.yml $HOME/work/bloodriskmap

cd $HOME/work/bloodriskmap

git clone https://github.com/frere-brun/blood-risk-map.git

cd blood-risk-map

git checkout gh-pages

cd ../

sudo chown -R 101:101 blood-risk-map

docker-compose up -d
