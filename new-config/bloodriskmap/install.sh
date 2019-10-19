#/bin/bash

cp docker-compose.yml $HOME/work/bloodriskmap

cd $HOME/work/bloodriskmap

git clone https://github.com/tfrere/blood-risk-map.git

sudo chown -R 101:101 blood-risk-map

docker-compose up -d
