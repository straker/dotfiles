#!/bin/bash

echo "Installing brew cask and apps"

# Install Caskroom
brew tap caskroom/cask

# Install packages
apps=(
  firefox
  google-chrome
  iterm2
  opera
  postman
  slack
  spotify
  sublime-text
)

brew cask install "${apps[@]}"