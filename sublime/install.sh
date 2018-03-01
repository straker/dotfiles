#!/bin/bash

# Install Sublime Text settings
# Because there can be multiple versions of sublime, we need to copy individually
# to each version
for fileglob in ~/Library/Application\ Support/Sublime\ Text*/; do
  cp "$DIR/sublime/Preferences.sublime-settings" "$fileglob/Packages/User/Preferences.sublime-settings"
  cp "$DIR/sublime/Default (OSX).sublime-keymap" "$fileglob/Packages/User/Default (OSX).sublime-keymap"
done