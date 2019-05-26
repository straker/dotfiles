#!/bin/bash

echo ''
echo -e "\033[1mCopying .zshrc, .zprofile, and shell scripts\033[0m"
echo '################################'
echo ''

cp "$DIR/shell/.zshrc" ~/
cp "$DIR/shell/.zprofile" ~/
cp "$DIR/shell/.shell_config" ~/