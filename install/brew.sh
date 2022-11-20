#!/bin/bash

echo ''
echo -e "\033[1mInstalling brew and apps\033[0m"
echo '########################'
echo ''

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/straker/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/straker/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Install the Homebrew packages
apps=(
  git
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup