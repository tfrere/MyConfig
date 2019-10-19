#/bin/bash

cp docker-compose.yml $HOME/work/designsystemintro

cd $HOME/work/designsystemintro

git clone https://github.com/tfrere/design-system-intro.git

sudo chown -R 101:101 design-system-intro

docker-compose up -d
