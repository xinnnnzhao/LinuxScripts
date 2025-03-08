#!/usr/bin/sh

### Generate SHH key for github
ssh-keygen -t ed25519 -C "xinnnnzhao@gmail.com"

### Install General Tools
sudo apt update
sudo apt-get install make 
sudo apt-get install openssh-server
sudo apt-get install git-all
sudo apt  install curl

#### Install  docker
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh 
sudo ./get-docker.sh 

#### Add user into docker group, so root permission is not needed when run docker
sudo usermod -aG docker $USER
getent group docker
newgrp docker


#### Install NVM and set up NVM env 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### Using NVM to install nodejs, which bundled with npm
nvm install 23.8.0 

