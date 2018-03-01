#!/bin/bash

echo ''
echo -e "\033[1mInstalling zsh and theme\033[0m"
echo '########################'
echo ''

if [[ ! -d $HOME/.oh-my-zsh/ ]]; then
  # zsh install will run zsh at the end and stop script execution
  # remove the run command and password prompt to allow script to continue
  # @see https://github.com/robbyrussell/oh-my-zsh/issues/5873#issuecomment-361873342
  curl -fsSLo zsh-install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
  sed -i.tmp 's:env zsh::g' zsh-install.sh
  sed -i.tmp 's:chsh -s .*$::g' zsh-install.sh
  sh zsh-install.sh
  rm zsh-install.sh
fi

# Install theme
cp "$DIR/zsh/straker.zsh-theme" ~/.oh-my-zsh/themes/