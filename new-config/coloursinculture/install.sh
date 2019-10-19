#/bin/bash

cp docker-compose.yml $HOME/work/coloursinculture

cd $HOME/work/coloursinculture

git clone https://github.com/tfrere/colours-in-culture-app.git

sudo chown -R 101:101 colours-in-culture-app

docker-compose up -d
