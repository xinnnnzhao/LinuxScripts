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


#### install NVM, NodeJS and Npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
### install newest nodejs, which bundled with npm
nvm install node

