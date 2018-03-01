#!/bin/bash

# Change permission and move bin files
chmod +rwx "$DIR/bin/batcharge.py"
chmod +rwx "$DIR/bin/ssh-key"

cp "$DIR/bin/batcharge.py" ~/bin/
cp "$DIR/bin/ssh-key" ~/bin/