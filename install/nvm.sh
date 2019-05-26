#!/bin/sh

echo ''
echo -e "\033[1mInstalling node and global packages\033[0m"
echo '###################################'
echo ''

curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Install the latest LTS version of node
nvm install --lts
nvm use lts/*
nvm alias default lts/*

# Globally install with npm
packages=(
  http-server
)

npm install -g "${packages[@]}"