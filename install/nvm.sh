#!/bin/sh

echo "Installing node and global packages"

export NVM_DIR="$HOME/.nvm"
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