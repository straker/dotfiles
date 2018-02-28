#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

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