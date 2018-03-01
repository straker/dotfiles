#!/bin/sh

echo ''
echo -e "\033[1mInstalling node and global packages\033[0m"
echo '########################'
echo ''

export NVM_DIR="$HOME/.nvm"
mkdir -p ~/.nvm
source $(brew --prefix nvm)/nvm.sh  # This loads nvm

# Install the latest stable version of node
nvm install stable
nvm use node
nvm alias default node

# Globally install with npm
packages=(
  http-server
)

npm install -g "${packages[@]}"