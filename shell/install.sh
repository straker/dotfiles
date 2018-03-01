#!/bin/bash

echo "Copying .zshrc and shell scripts"

cp "$DIR/shell/.zshrc" ~/
cp "$DIR/shell/.shell_aliases" ~/
cp "$DIR/shell/.shell_config" ~/