#!/bin/bash

printf "\n[Install Ruby via rvm]...\n"

\curl -sSL https://get.rvm.io | bash
source ~/.bashrc
rvm install stable
