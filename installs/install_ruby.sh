#!/bin/sh

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.profile
source /etc/profile.d/rvm.sh
export PATH=$PATH:$HOME/.rvm

rvm install ruby


gem install bundle bundler rails --nordoc --no-ri
gem instal jade
