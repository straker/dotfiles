#!/bin/bash

echo ''
echo -e "\033[1mCopying .gitattributes, .gitconfig, and .gitignore\033[0m"
echo '######################################'
echo ''

if ! declare -p DIR &> /dev/null; then
  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
fi

cp "$DIR/git/.gitattributes" ~/
cp "$DIR/git/.gitconfig" ~/
cp "$DIR/git/.gitignore" ~/