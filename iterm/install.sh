#!/bin/bash

echo ''
echo -e "\033[1mInstalling iTerm theme, colors, and fonts\033[0m"
echo '######################################'
echo ''

# Install zsh
if [[ ! -d $HOME/.oh-my-zsh/ ]]; then
  # zsh install will run zsh at the end and stop script execution
  # remove the run command to allow script to continue
  # @see https://github.com/robbyrussell/oh-my-zsh/issues/5873#issuecomment-361873342
  curl -fsSLo zsh-install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
  sed -i.tmp 's:env zsh::g' zsh-install.sh
  sh zsh-install.sh
  rm zsh-install.sh
  rm zsh-install.sh.tmp
fi

# Install theme
cp "$DIR/iterm/straker.zsh-theme" ~/.oh-my-zsh/themes/

# Install the Solarized Dark theme for iTerm
open "$DIR/iterm/Solarized Dark.itermcolors"

# Install fonts
cp "$DIR/iterm/Menlo-Powerline.otf" ~/Library/Fonts/
cp "$DIR/iterm/Source Code Pro Bold for Powerline.otf" ~/Library/Fonts/
cp "$DIR/iterm/Source Code Pro for Powerline.otf" ~/Library/Fonts/
cp "$DIR/iterm/Source Code Pro Light for Powerline.otf" ~/Library/Fonts/
cp "$DIR/iterm/Source Code Pro Medium for Powerline.otf" ~/Library/Fonts/