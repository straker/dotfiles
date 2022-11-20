#!/bin/bash

echo ''
echo -e "\033[1mCopying .gitattributes, .gitconfig, and .gitignore\033[0m"
echo '######################################'
echo ''

cp "$DIR/git/.gitattributes" ~/
cp "$DIR/git/.gitconfig" ~/
cp "$DIR/git/.gitignore" ~/