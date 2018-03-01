#!/bin/bash

echo "Installing iTerm color theme and fonts"

# Install the Solarized Dark theme for iTerm
open "$DIR/iterm/Solarized Dark.itermcolors"

# Install fonts
cp "$DIR/iterm/Menlo-Powerline.otf" ~/Library/Fonts/
cp "$DIR/iterm/Source Code Pro Bold for Powerline.otf" ~/Library/Fonts/
cp "$DIR/iterm/Source Code Pro for Powerline.otf" ~/Library/Fonts/
cp "$DIR/iterm/Source Code Pro Light for Powerline.otf" ~/Library/Fonts/
cp "$DIR/iterm/Source Code Pro Medium for Powerline.otf" ~/Library/Fonts/