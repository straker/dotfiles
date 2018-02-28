#!/bin/sh

# This script configures my Node.js development setup
if test ! $(which nvm)
then
  echo "Installing a stable version of Node..."

  # Install the latest stable version of node
  nvm install stable

  # Switch to the installed version
  nvm use node

  # Use the stable version of node by default
  nvm alias default node
fi

# Globally install with npm
packages=(
  http-server
)

npm install -g "${packages[@]}"