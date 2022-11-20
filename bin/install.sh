#!/bin/bash

echo ''
echo -e "\033[1mCopying bin files\033[0m"
echo '########################'
echo ''

if ! declare -p DIR &> /dev/null; then
  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
fi

# Change permission
chmod +rwx "$DIR/bin/ssh-key"

# Create bin directory and copy files
mkdir -p ~/bin
cp "$DIR/bin/ssh-key" ~/bin/