#!/bin/bash

echo ''
echo -e "\033[1mInstalling brew cask and apps\033[0m"
echo '#############################'
echo ''

# Install Caskroom
brew tap homebrew/cask

# Install packages
apps=(
  firefox
  google-chrome
  iterm2
  slack
  sublime-text
)

brew install --cask "${apps[@]}" --force