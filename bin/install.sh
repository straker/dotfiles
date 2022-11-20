#!/bin/bash

echo ''
echo -e "\033[1mCopying bin files\033[0m"
echo '########################'
echo ''

# Change permission
chmod +rwx "$DIR/bin/ssh-key"

# Create bin directory and copy files
mkdir -p ~/bin
cp "$DIR/bin/ssh-key" ~/bin/