#!/bin/bash

echo ''
echo -e "\033[1mCopying Sublime Text settings\033[0m"
echo '#############################'
echo ''

# Open subl to ensure the Application Support directory exists
subl

# Install Sublime Text settings
# Because there can be multiple versions of sublime, we need to copy individually
# to each version
for fileglob in ~/Library/Application\ Support/Sublime\ Text*/; do
  cp "$DIR/sublime/Preferences.sublime-settings" "$fileglob/Packages/User/Preferences.sublime-settings"
  cp "$DIR/sublime/Default (OSX).sublime-keymap" "$fileglob/Packages/User/Default (OSX).sublime-keymap"
done