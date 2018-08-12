#!/bin/bash

printf "\n[Install Ipfs]...\n"

curl https://dist.ipfs.io/go-ipfs/v0.4.6/go-ipfs_v0.4.6_linux-amd64.tar.gz >> go-ifps.tar.gz

tar -zxvf go-ifps.tar.gz

mv go-ipfs/ipfs /usr/local/bin/ipfs
