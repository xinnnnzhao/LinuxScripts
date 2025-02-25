#!/usr/bin/sh

sudo apt update
sudo apt-get install make 
sudo apt-get install openssh-server
sudo apt-get install git-all
sudo apt  install curl

#### install  docker
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh 
sudo ./get-docker.sh 
