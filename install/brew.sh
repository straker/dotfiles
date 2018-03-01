#!/bin/bash

echo "Installing brew and apps"

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install the Homebrew packages
apps=(
  nvm
  git
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup