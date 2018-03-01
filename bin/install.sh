#!/bin/bash

echo "Copying bin files"

# Change permission
chmod +rwx "$DIR/bin/batcharge.py"
chmod +rwx "$DIR/bin/ssh-key"

# Create bin directory and copy files
mkdir -p ~/bin
cp "$DIR/bin/batcharge.py" ~/bin/
cp "$DIR/bin/ssh-key" ~/bin/