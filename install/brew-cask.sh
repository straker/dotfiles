#!/bin/bash

echo ''
echo -e "\033[1mInstalling brew cask and apps\033[0m"
echo '########################'
echo ''

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