#/bin/bash

cp docker-compose.yml $HOME/wort/designsystemintro

cd $HOME/work/designsystemintro

git clone https://github.com/tfrere/design-system-intro.git

sudo chown -R 101:101 design-sytem-intro

docker-compose up -d
