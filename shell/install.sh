#!/bin/bash

echo ''
echo -e "\033[1mCopying .zshrc, .zprofile, and shell scripts\033[0m"
echo '################################'
echo ''

cp "$DIR/shell/.zshrc" ~/
cp "$DIR/shell/.zprofile" ~/
cp "$DIR/shell/.shell_config" ~/

# set default iterm preference to reuse previous session's directory
# requires restart
/usr/libexec/PlistBuddy -c "Set :'New Bookmarks':0:'Custom Directory' Recycle" ~/Library/Preferences/com.googlecode.iterm2.plist